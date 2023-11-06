public class BeanTest {

    public static void main(String[] args) {

        Author will = new Author();

        Quote q1 = new Quote();

        Album album1 = new Album();
        Album album2 = new Album();

        album1.setArtist("Drake");
        album1.setName("For the Dogs");
        album1.setGenre("Rap");

        System.out.println(album1.getArtist());
        System.out.println(album1.getName());
        System.out.println(album1.getId());

    }

}
