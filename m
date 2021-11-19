Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE40545724D
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 17:03:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2110C6EB22;
	Fri, 19 Nov 2021 16:03:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 303 seconds by postgrey-1.36 at gabe;
 Fri, 19 Nov 2021 16:03:21 UTC
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD59D6EAC3
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 16:03:21 +0000 (UTC)
Received: from mail-lf1-f44.google.com ([209.85.167.44]) by
 mrelayeu.kundenserver.de (mreue012 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1N3Gok-1mea5K1Npq-010KMU for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov
 2021 16:58:16 +0100
Received: by mail-lf1-f44.google.com with SMTP id l22so45149470lfg.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 07:58:15 -0800 (PST)
X-Gm-Message-State: AOAM530h96Ef1VnL62QjRqZJpNxKMNzB4tpw5M14OSIwPxrDjVhCSnsn
 cutIwXv+w1SxpEwnTww3mYOzAQaGZqHR7JeIFHI=
X-Google-Smtp-Source: ABdhPJwnsTso3SJsyzelpHMk45ZnrIpUGUkP3Z97jucoO4GjyflpBdZvuKfoRBo685VC8w89e5cIDe6TdYLQkVPBgCM=
X-Received: by 2002:adf:efc6:: with SMTP id i6mr8808061wrp.428.1637337483020; 
 Fri, 19 Nov 2021 07:58:03 -0800 (PST)
MIME-Version: 1.0
References: <20211119113644.1600-1-alx.manpages@gmail.com>
 <CAK8P3a0qT9tAxFkLN_vJYRcocDW2TcBq79WcYKZFyAG0udZx5Q@mail.gmail.com>
 <434296d3-8fe1-f1d2-ee9d-ea25d6c4e43e@gmail.com>
In-Reply-To: <434296d3-8fe1-f1d2-ee9d-ea25d6c4e43e@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 19 Nov 2021 16:57:46 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2yVXw9gf8-BNvX_rzectNoiy0MqGKvBcXydiUSrc_fCA@mail.gmail.com>
Message-ID: <CAK8P3a2yVXw9gf8-BNvX_rzectNoiy0MqGKvBcXydiUSrc_fCA@mail.gmail.com>
To: "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:+Qkp/SrYCJd3dC0s83iqF9TV+flZ//ZfM8GZ677ZQoRMvjU2XO2
 J+H2EQ2lXdeq4InuJu3OZMHjoM6q3QSFOSF/TPTcdLsu746uJLGNm3mET/narlShM4NJNdH
 lQkEOZJx81y9pm1tsfyfWHGFShDNmCrOOw3BDwFy/1lpH0MuzyPivYTBrb81/El4X56dI7w
 1o1lxJAQQEV2IGJRdEQrA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:I6CPl/a+lxg=:k/7hoDafiIhNE7BP/5AP0n
 1xIIfIfLuZ8i7m+DBip5JAzzMByj42s9lAXEwWm6sMs6uZ2uGixd58n/b+HYw9Xj7e108YBzH
 rV6FaBlscDIC/RxHTxoLcG8RhMNvp9gO4ZQJsBzDGYi9giz1gPHZPORPgjqrZnxWLBvdHWdyR
 feeWlLd010UJxtidZ7QTtDDuzZBgluwbFdo9ikNvmz5PH+JDQp/mVDL8ustl0GRiQKB1P/2A7
 /SXCjwUo9bEHC16BYDm6XAVjbu1MRLKSXahsV/jhbAg6yuYjFVpSZjvOTowfv38aYv4g5BO3U
 z+gklWJPzuU8tgAeB3si62osiod+B5HS/pErhXDZeGz4TKFw+j0Z4SRNLqj6S4qY8ie3J9iXG
 BzVUSPJ/bJF6HgA4n0sCw3fKbojaW7gRTWBcDHy5BneJTeff3Uor0KwUx9JHQw3VlDpK19M75
 0HsKR4pflWn6DEHDIPEFvEn3+AEk/YdN49MkaqyCqc1gCk0YPtY8p1h+FvCEVFmbwC82sHGzG
 9nlnIENGwvz/d33Lmz4/nbdTv0y8djACb1yyqhDcJ9+p5dL4e0CR+VW3/0pvdlVDl4V5Z1W8Y
 DD4yehiHi6hyUpuTSwaR2JGQw3cSFMMEfxHnNkEIn2bL6Dc7zRiBB2SA5MQ3yK6lCopX+40Pn
 hti4sdkq1k9+0Aww61ddCVm0ZZqT+WqY5Y9IdFAdJOLqibGyKcCK6NyM0Kqx3a7y54bpRFWId
 1Svz6j1xm+1z/L/DFOwdHupQwX/0yXb/20NB50m6BWK0dwZccPnDqWE31H/ZTAvEQafIXsQba
 KseaWxZ++CjSqLcciHZPp8X2iTSudNLGwQD+YYIC35YHB/UKFQvvkphlp8hsIojkv/QM2DfUw
 uOwPYPBuOsGITZzhjstQ==
Subject: Re: [Intel-gfx] [PATCH 00/17] Add memberof(), split some headers,
 and slightly simplify code
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Corey Minyard <cminyard@mvista.com>,
 Ajit Khaparde <ajit.khaparde@broadcom.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Chris Mason <clm@fb.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Ketan Mukadam <ketan.mukadam@broadcom.com>,
 Somnath Kotur <somnath.kotur@broadcom.com>,
 linux-scsi <linux-scsi@vger.kernel.org>,
 Subbu Seetharaman <subbu.seetharaman@broadcom.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Miguel Ojeda <ojeda@kernel.org>, Borislav Petkov <bp@suse.de>,
 "open list:DRM DRIVER FOR QEMU'S CIRRUS DEVICE"
 <virtualization@lists.linux-foundation.org>, Len Brown <lenb@kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 John Hubbard <jhubbard@nvidia.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Josef Bacik <josef@toxicpanda.com>,
 Jitendra Bhivare <jitendra.bhivare@broadcom.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 David Sterba <dsterba@suse.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sriharsha Basavapatna <sriharsha.basavapatna@broadcom.com>,
 Networking <netdev@vger.kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, "John S . Gruber" <JohnSGruber@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-btrfs <linux-btrfs@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 19, 2021 at 4:06 PM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
> On 11/19/21 15:47, Arnd Bergmann wrote:
> > On Fri, Nov 19, 2021 at 12:36 PM Alejandro Colomar
>
> Yes, I would like to untangle the dependencies.
>
> The main reason I started doing this splitting
> is because I wouldn't be able to include
> <linux/stddef.h> in some headers,
> because it pulled too much stuff that broke unrelated things.
>
> So that's why I started from there.
>
> I for example would like to get NULL in memberof()
> without puling anything else,
> so <linux/NULL.h> makes sense for that.
>
> It's clear that every .c wants NULL,
> but it's not so clear that every .c wants
> everything that <linux/stddef.h> pulls indirectly.

From what I can tell, linux/stddef.h is tiny, I don't think it's really
worth optimizing this part. I have spent some time last year
trying to untangle some of the more interesting headers, but ended
up not completing this as there are some really hard problems
once you start getting to the interesting bits.

The approach I tried was roughly:

- For each header in the kernel, create a preprocessed version
  that includes all the indirect includes, from that start a set
  of lookup tables that record which header is eventually included
  by which ones, and the size of each preprocessed header in
  bytes

- For a given kernel configuration (e.g. defconfig or allmodconfig)
  that I'm most interested in, look at which files are built, and what
  the direct includes are in the source files.

- Sort the headers by the product of the number of direct includes
  and the preprocessed size: the largest ones are those that are
  worth looking at first.

- use graphviz to visualize the directed graph showing the includes
  between the top 100 headers in that list. You get something like
  I had in [1], or the version afterwards at [2].

- split out unneeded indirect includes from the headers in the center
  of that graph, typically by splitting out struct definitions.

- repeat.

The main problem with this approach is that as soon as you start
actually reducing the unneeded indirect includes, you end up with
countless .c files that no longer build because they are missing a
direct include for something that was always included somewhere
deep underneath, so I needed a second set of scripts to add
direct includes to every .c file.

On the plus side, I did see something on the order of a 30%
compile speed improvement with clang, which is insane
given that this only removed dead definitions.

> But I'll note that linux/fs.h, linux/sched.h, linux/mm.h are
> interesting headers for further splitting.
>
>
> BTW, I also have a longstanding doubt about
> how header files are organized in the kernel,
> and which headers can and cannot be included
> from which other files.
>
> For example I see that files in samples or scripts or tools,
> that redefine many things such as offsetof() or ARRAY_SIZE(),
> and I don't know if there's a good reason for that,
> or if I should simply remove all that stuff and
> include <linux/offsetof.h> everywhere I see offsetof() being used.

The main issue here is that user space code should not
include anything outside of include/uapi/ and arch/*/include/uapi/

offsetof() is defined in include/linux/stddef.h, so this is by
definition not accessible here. It appears that there is also
an include/uapi/linux/stddef.h that is really strange because
it includes linux/compiler_types.h, which in turn is outside
of uapi/. This should probably be fixed.

      Arnd

[1] https://drive.google.com/file/d/14IKifYDadg2W5fMsefxr4373jizo9bLl/view?usp=sharing
[2] https://drive.google.com/file/d/1pWQcv3_ZXGqZB8ogV-JOfoV-WJN2UNnd/view?usp=sharing
