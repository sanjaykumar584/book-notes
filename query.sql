-- books Table Creation
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    rating INT,
    isbn BIGINT,
    title VARCHAR(45),
    summary VARCHAR(1000),
    brief TEXT,
    date DATE
);

-- adding VALUES
INSERT INTO books (rating, isbn, title, summary, brief, date)
VALUES (10, 
9781612680194, 
'Rich Dad Poor Dad', 
'The book provides a guide to financial literacy and teaches readers about the importance of financial education, creating wealth, and achieving financial freedom. In the first chapter of the book, Kiyosaki introduces readers to his two fathers - his biological father (poor dad) and his best friend''s father (rich dad).',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et elementum nisl. Sed eget sem ac ex congue posuere. Maecenas nec leo nec ligula bibendum gravida sit amet vitae neque. Aliquam lobortis aliquam ligula tristique porta. Quisque a sodales lectus, at egestas ipsum. Curabitur aliquet, dui sed sagittis malesuada, neque risus gravida nulla, eu pharetra lacus tellus ac quam. Morbi euismod maximus accumsan. Aenean in lectus magna. Pellentesque rutrum dui pulvinar, consequat enim eu, dictum eros. Phasellus porttitor vehicula condimentum. Phasellus ac ullamcorper velit, nec interdum augue.
Cras interdum purus in efficitur semper. Nullam elementum convallis leo eu cursus. Fusce tincidunt porta lacinia. Mauris tempus libero non justo vulputate semper. Nam id lacus arcu. Maecenas imperdiet suscipit orci ornare iaculis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;
Donec posuere vulputate augue id varius. Integer tristique, sem in finibus ultricies, nisi sapien feugiat enim, et consequat quam felis et velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris nunc est, ullamcorper vitae porttitor sed, elementum vel diam. Aliquam erat volutpat. Vivamus molestie viverra arcu, vel fermentum erat egestas vel. Interdum et malesuada fames ac ante ipsum primis in faucibus.
Curabitur finibus ex dolor, eu tempor mauris dictum aliquet. Donec quam sem, cursus ut consequat ut, placerat in sapien. Donec nisl risus, maximus id dapibus ut, ullamcorper a leo. In hac habitasse platea dictumst. Maecenas id ornare mauris, nec dapibus dolor. Vestibulum et arcu facilisis, eleifend magna at, volutpat arcu. Integer at justo dapibus, maximus metus id, molestie nunc. Vestibulum consequat euismod neque vel porta. Praesent iaculis magna vel dui porttitor scelerisque sit amet sed elit. Duis vulputate eget nisl vel hendrerit. Etiam molestie viverra lacus, ut pellentesque orci efficitur quis. Morbi pulvinar blandit arcu non sollicitudin. Pellentesque at nunc tempor, ultrices neque iaculis, congue ligula.
Morbi posuere ultricies leo, vitae fermentum ipsum lobortis id. Vivamus sed arcu sed turpis rhoncus imperdiet eget at est. Curabitur vel diam id tellus accumsan ornare id eget erat. Nam suscipit tellus arcu, vitae volutpat enim lobortis nec. Aliquam ultrices pellentesque finibus. Ut iaculis faucibus felis non blandit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam augue massa, vehicula eu ligula eu, consectetur vestibulum magna.',
'2021-8-9'
);