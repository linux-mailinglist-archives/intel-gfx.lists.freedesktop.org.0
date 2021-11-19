Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4CF457287
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 17:12:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA2376EB49;
	Fri, 19 Nov 2021 16:12:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD2F36EB49
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 16:12:25 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id d24so19056956wra.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 08:12:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=ugr1swvvEJM7P07dTrUMW86aHmgr9RVOKFoLL2kQN7k=;
 b=lFlyvkBNI61mJyUJLQ1+hcFZu152Rj5qZK9mAkDP6bOJesLhBEd3Q4Oq83qIYEd64n
 YITNPwkZi9S7IB6Inh60GB/VEkSv28veKOaIGDMIPbCKTFzqAkbspPLR28oVvo5U5vKX
 ni4AocUEsv6MI6QlC5aDBhUxTPYJ6WUDtSoDVTmcNAcrcrW+S1gPrCGf3ON0VZfJ6JKa
 0KBtAUbroY6eHDRyQJdN136bKjpeWs281Zu15Ruh/5ySpQ1d5ekmM8Ta6jagf5CN7g3S
 kwp92bvu9VLsql4q4anafWvPndH2TGTUpGf0qg8qKM1C7v1a4tqdU9+hNI70/o/Awrbu
 5GRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ugr1swvvEJM7P07dTrUMW86aHmgr9RVOKFoLL2kQN7k=;
 b=vTVHVYtZhx/+10UpBooG2YgsBJpDI7vtgNzw2VXinD1LleCF7kRXENDi3Zj8yb8XE3
 rLCSMk4hdEGvZ835rTgncEXjypt2epypA58jtpTmzCtSvXyInUGrMpA8AXYNhN36OxTK
 MELfJv2FQd0fwFpbS2QBPHnnPBKiiRnSK+PcUuynHAgxeRJTPbkNXfJlgI7m0+JA6CYf
 JQbKLv8UcNmV8o9apCTNUyH7bLZBneAvM7CnyCkfxX8uoUm0YB2766pC6kPoWT5DdLd9
 hArR6a7DkutFe8ICKGOdhGCmaWvre9a0G+ch4jDmTLizLhycCfGpxHhqMDHcLp68pBTK
 DfxA==
X-Gm-Message-State: AOAM531TZWTtp/2lrF8zw3gJKZcDvtKcKmrF6ESZMyWZ3y7kB1cZrcTN
 9SuR3XQogQiIwkY8yl8j5Zs=
X-Google-Smtp-Source: ABdhPJxXT53cxKGwOTawEJZsAHGDZX4/cS9uLMXoPT1yRB0yOWFLwaopD6E8urQvNF7W4NC52G5yJw==
X-Received: by 2002:a05:6000:156a:: with SMTP id
 10mr8724643wrz.87.1637338343047; 
 Fri, 19 Nov 2021 08:12:23 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
 by smtp.gmail.com with ESMTPSA id a1sm191231wri.89.2021.11.19.08.12.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Nov 2021 08:12:22 -0800 (PST)
Message-ID: <f751fb48-d19c-88af-452e-680994a586b4@gmail.com>
Date: Fri, 19 Nov 2021 17:12:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Arnd Bergmann <arnd@arndb.de>
References: <20211119113644.1600-1-alx.manpages@gmail.com>
 <CAK8P3a0qT9tAxFkLN_vJYRcocDW2TcBq79WcYKZFyAG0udZx5Q@mail.gmail.com>
 <434296d3-8fe1-f1d2-ee9d-ea25d6c4e43e@gmail.com>
 <CAK8P3a2yVXw9gf8-BNvX_rzectNoiy0MqGKvBcXydiUSrc_fCA@mail.gmail.com>
From: "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <CAK8P3a2yVXw9gf8-BNvX_rzectNoiy0MqGKvBcXydiUSrc_fCA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
 Kees Cook <keescook@chromium.org>, John Hubbard <jhubbard@nvidia.com>,
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

Hi Arnd,

On 11/19/21 16:57, Arnd Bergmann wrote:
> 
> From what I can tell, linux/stddef.h is tiny, I don't think it's really
> worth optimizing this part. I have spent some time last year
> trying to untangle some of the more interesting headers, but ended
> up not completing this as there are some really hard problems
> once you start getting to the interesting bits.

In this case it was not about being worth it or not,
but that the fact that adding memberof() would break,
unless I use 0 instead of NULL for the implementation of memberof(),
which I'm against,
or I split stddef.

If I don't do either of those,
I'm creating a circular dependency,
and it doesn't compile.

> 
> The approach I tried was roughly:
> 
> - For each header in the kernel, create a preprocessed version
>   that includes all the indirect includes, from that start a set
>   of lookup tables that record which header is eventually included
>   by which ones, and the size of each preprocessed header in
>   bytes
> 
> - For a given kernel configuration (e.g. defconfig or allmodconfig)
>   that I'm most interested in, look at which files are built, and what
>   the direct includes are in the source files.
> 
> - Sort the headers by the product of the number of direct includes
>   and the preprocessed size: the largest ones are those that are
>   worth looking at first.
> 
> - use graphviz to visualize the directed graph showing the includes
>   between the top 100 headers in that list. You get something like
>   I had in [1], or the version afterwards at [2].
> 
> - split out unneeded indirect includes from the headers in the center
>   of that graph, typically by splitting out struct definitions.
> 
> - repeat.
> 
> The main problem with this approach is that as soon as you start
> actually reducing the unneeded indirect includes, you end up with
> countless .c files that no longer build because they are missing a
> direct include for something that was always included somewhere
> deep underneath, so I needed a second set of scripts to add
> direct includes to every .c file.
> 
> On the plus side, I did see something on the order of a 30%
> compile speed improvement with clang, which is insane
> given that this only removed dead definitions.

Huh!

I'd like to see the kernel some day
not having _any_ hidden dependencies.

For the moment,
since my intent is familiarizing with kernel programming,
and not necessarily improving performance considerably
(at least not in the first rounds of changes),
I prefer starting where it more directly affects
what I initially intended to change in the kernel,
which in this case was adding memberof().

> 
>> But I'll note that linux/fs.h, linux/sched.h, linux/mm.h are
>> interesting headers for further splitting.
>>
>>
>> BTW, I also have a longstanding doubt about
>> how header files are organized in the kernel,
>> and which headers can and cannot be included
>> from which other files.
>>
>> For example I see that files in samples or scripts or tools,
>> that redefine many things such as offsetof() or ARRAY_SIZE(),
>> and I don't know if there's a good reason for that,
>> or if I should simply remove all that stuff and
>> include <linux/offsetof.h> everywhere I see offsetof() being used.
> 
> The main issue here is that user space code should not
> include anything outside of include/uapi/ and arch/*/include/uapi/

Okay.  That's good to know.

So everything can use uapi code,
and uapi code can only use uapi code,
right?

Every duplicate definition of something outside of uapi
should/could be removed.

> 
> offsetof() is defined in include/linux/stddef.h, so this is by
> definition not accessible here. It appears that there is also
> an include/uapi/linux/stddef.h that is really strange because
> it includes linux/compiler_types.h, which in turn is outside
> of uapi/. This should probably be fixed.

I see.
Then,
perhaps it would be better to define offsetof() _only_ inside uapi/,
and use that definition from everywhere else,
and therefore remove the non-uapi version,
right?

Thanks,
Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
