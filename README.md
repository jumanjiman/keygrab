keygrab
=======

What
----

Trivial script to fetch and print ssh public keys from Github.


Example
-------

From a bash shell, run:

    $ ./keygrab.sh <handle>

Example for https://github.com/jumanjiman/

    $ ./keygrab.sh jumanjiman
    ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEArSm80/8UD/eMolUXU3j6geyNrxthnQxbE4dpwRhXU+F6fbQG+wk9SdWev9NcLLWg9a4zBUSMJUXrrU/8ik3WshSpZpqQary4ZiFFQKgSfYriouchc20S3wwFQZcbOJgH5t5wgGeNaDMzc2GRFhqbuuBiBBF+W5llk0X9CGE1o1iAlyVPAn4UfrJ4//5OXMhYwmU+fO9df3y5Kpn/0SY/lRwWuZeVVIXC+nZcFYXNzPyBVTNEooOXLVXivddtU82jfp65ggTMdLfUafZqia1/smfWQP23lU8F4ySayAOa1lhXXvrGtpxl3lu7vaSvdEg7+F4YaIhxnWZqt769joDraw==
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQCrODEA36F1EQMkOyQvfTy8JCPKrDEql16Wn9DkOPnZZ1i58q52BrPcyvQN8TMkRYg1jDpqmqf9EbVP/uGqdfqFnnb4QinBB7iemcpOghyJIkKQrcWuoc6NGED8jTvtAFFwI1acpmYOl5WbkGgN0JD0N+SUN+tGm9N7QFYLpqRcSQ==
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDLIqyXA1BXyPhss1Qv3iKhMdB1+u2ejdGPSaIRvNREgsAIinZiumRuRCBNqjr73tUzYqdnxmrkhYh/bKFYlE3pfFPxuadurbAJ07lTGtObfKmoKe5N0qfndHVZS7y/tjNg4J6LkXZEZnecMr83pYmbc0R09E2o0pc/aBcWfXkJ2Q==
    ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAyc0e+WI8MVZIQKEztgC8EdWJzXgm2XyrRd2Q3HsOXdDtjtAHf5VGpxqTx4+CI+ibXlP8LwrqOmVuNzwvVF8yO20WR+GLvqKLT0U7bx+2PxXbBtxJJhAAqHWSE4syv3wxLuuaMhnbFUEKotbb3NTjQ0JqEZtc4f6YVPow2IrF/dOGiRocS9eX8ASh2jShU4SJpyheKjZ3EavETYgQyRPUDykTvRbmBBwNNV3amXxaLOB17ZZ7FKOX4SbpZVHkYjzahY9PT6FEly6dWs5MPKBHQsUm86IKJ7Ua3LVPcnP6wkUtgKsWMLwGL4DOLuBax9avyHTwYo89k484nAQjHxONrQ==

To work with individual keys, do something like:

    $ IFS=$'\n' keys=$(./keygrab.sh jumanjiman)
    $ for key in $keys; do echo $key; done

:warning: You should regularly check the keys on your account at
https://github.com/settings/ssh


License
-------

See LICENSE in this repo.
