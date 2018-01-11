package main;

public class PaginationDTO {
	public static int pageSize = 10; // 한 페이지에 보일 게시글 갯수
	public static int paginationSize = 10;  // 10개짜리 글이 들어있는 리스트를 몇개까지 보여줄것인가.
	
	public PaginationDTO init(String pg, int countAll ) {
		curPagination = ((pg==null || pg.equals(""))? 1 : Integer.parseInt(pg));
		// 현재 페이지가 전달되는 값이 없거나, 공백일 경우는 현재 페이지가 설정이 안된 것이기 때문에 기본값 1 설정. 전달되는 값이 있을 경우 누른 숫자가 현재 페이지.
		
		numPages = ((countAll -1 ) /pageSize ) +1; 
		//페이지의 전체 갯수는 전체 글 갯수 -1 한거 에다가 1을 더해야함.
		// 전체 글 갯수 -1한 이유는 9번과 10번글을 비교. 10으로 나눴을 경우 1~10번까지는 1번 페이지에 들어가야함. 
		/* 9번 게시글의 경우 -1을 하지 않아도 9를 10으로 나누면 몫 0 나머지 9이기 때문에 1번 페이지에 들어감.
		 * 하지만 10번의 경우 -1을 하지 않으면 10/10 몫은 1 나머지는 0이기 때문에 2페이지로 들어감. 따라서 -1을 해주는 겁니당.
		 *  마지막에 +1을 해주는 이유는 위에서 본 것 처럼 몫이 0이 나오기 때문에 몫을 1로 만들어 주기 위해 +1 해주는 것!
		 */
		
		paginationStart = ((curPagination-1)/paginationSize)*pageSize + 1;
		paginationEnd = paginationStart + paginationSize -1;
		if(numPages<paginationEnd){
			paginationEnd = numPages;
		} 
		// 전체 페이지 갯수보다 페이지네이션 엔드의 값이 크면 게시글이 없는 페이지네이션이 생김.
		// 따라서 전체 페이지 갯수보다 높은 애들을 없애기 위해 페이지네이션 엔드 값을 전체 페이지 갯수로 정함.
		return this;
	}
	
	private int curPagination = 1;//현재 페이지
	private int numPages = 1;//전체 페이지 갯수
	
	private int paginationStart = 0;  // 초기화
	private int paginationEnd = 0; // 초기화
	
	private boolean hasPrevPagination;
	private boolean hasNextPagination;
	
	
	public void setHasPrevPagination(boolean hasPrevPagination) {
		this.hasPrevPagination = hasPrevPagination;
	}
	public void setHasNextPagination(boolean hasNextPagination) {
		this.hasNextPagination = hasNextPagination;
	}
	public int getCurPagination(){return curPagination;} // 현재 페이지 반환해주는 메소드
	public int getPaginationStart(){return paginationStart;} // 페이지네이션 스타트 값 반환
	public int getPaginationEnd(){return paginationEnd;} // 페이지네이션 엔드 값 반환
	
	public boolean getHasPrevPagination(){return paginationStart != 1;} // 페이지가 1페이지가 아니면 이전태그 생성
	public boolean getHasNextPagination(){return paginationEnd != numPages;} // 페이지가 전체 페이지 수(끝 페이지)와 같지 않으면 다음태그 생성
	
	public int getSkip(){
		return ( curPagination == 1 ) ? 0 : (curPagination -1 ) * paginationSize;
	}
	
}
