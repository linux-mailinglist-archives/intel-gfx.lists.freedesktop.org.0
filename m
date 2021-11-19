Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7086C4571C0
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 16:38:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCDB26E194;
	Fri, 19 Nov 2021 15:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1337A6E194
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 15:38:51 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 r9-20020a7bc089000000b00332f4abf43fso7982746wmh.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 07:38:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=AFmWJJSoUz1GaSVge39mjbycrDT+hCXLvixsJ9Vd/mM=;
 b=ODBGo6Iv/FduaI9j0vjuZl2NIBuAxnbGU2bcovlrBdrVJzhUS8rZrJbsWWThxKF4YM
 2piqpAuwsNCJaU29VFoQO7tYp0p/gz57fLRCb6NKGAYpsf7vZMEwatmAL2pakRYrkGS3
 5CyApPlAsK96e4LS/ADUfaZIM6u9y3xUyqMhnbblZWK2zi7mqI87xxyPxJjl4cr+/jre
 TLKuGOqq84YkD9L4lOHMJstQssFNG/qb6pVtF5F1cB7J9M9uCr9cT69YM7CQNz4GtnWJ
 HylPvDX49+FriE9yIj2XYmJ+i5Fb1PUieUloxr46vjRuxiOg6D7glHMfGbWoTqqKniMy
 hK7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=AFmWJJSoUz1GaSVge39mjbycrDT+hCXLvixsJ9Vd/mM=;
 b=qCSKqbRdta4so/2vRc57xw461c3X3xJKejK7T/kc0lOmzFCkE39GVNwB7WCLu3DMvi
 oZpa/OqMN5NF8DNa0X2XUSWJwet/YK7v9tjFPyaExdEaGonLkhAqxzZ4wZ/+4NhqSrod
 GoDJKOp4uhk1CjkntgSw8UrWYZJtwCJiJBdYW7GU4SrI4ksE0AIjhnSKbZoXI3Xes325
 NwIKRXkeBm8xFIIeUE1ooE17O0t1KdLbmp+a9yCpnJojkjS9IG9vkVTPX7KqwWSQQYwE
 McceJooYSP0lSQeX8UWS27ZaOh1T4XJHbmyylgpka1dDlsXoXZq8CNIU5/zLEcYIztgq
 m5ww==
X-Gm-Message-State: AOAM532vKvjP4nFwrwAKLj0sjRu69B/qgye6aOvqLGY3+b0fQdZE9MEO
 PSiduIM29/EQg0d0fOf/JPs=
X-Google-Smtp-Source: ABdhPJyzLCj+QPqjCFbp0MdNnUqJ9A2TJYw2WJIoMils7KWBN9n8betYgJkYA9Hvx/wFV4EI5SabHA==
X-Received: by 2002:a1c:790d:: with SMTP id l13mr641345wme.101.1637336329656; 
 Fri, 19 Nov 2021 07:38:49 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
 by smtp.gmail.com with ESMTPSA id g18sm15729789wmq.4.2021.11.19.07.38.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Nov 2021 07:38:49 -0800 (PST)
Message-ID: <f1a90f53-060e-2960-3926-e30b44a1be28@gmail.com>
Date: Fri, 19 Nov 2021 16:38:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20211119113644.1600-1-alx.manpages@gmail.com>
 <CAK8P3a0qT9tAxFkLN_vJYRcocDW2TcBq79WcYKZFyAG0udZx5Q@mail.gmail.com>
 <434296d3-8fe1-f1d2-ee9d-ea25d6c4e43e@gmail.com>
 <YZfEHZa3f5MXeqoH@smile.fi.intel.com>
From: "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <YZfEHZa3f5MXeqoH@smile.fi.intel.com>
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
 Ketan Mukadam <ketan.mukadam@broadcom.com>, linux-scsi@vger.kernel.org,
 Subbu Seetharaman <subbu.seetharaman@broadcom.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, linux-acpi@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, Borislav Petkov <bp@suse.de>,
 virtualization@lists.linux-foundation.org, Len Brown <lenb@kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 Josef Bacik <josef@toxicpanda.com>,
 Jitendra Bhivare <jitendra.bhivare@broadcom.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 David Sterba <dsterba@suse.com>, Somnath Kotur <somnath.kotur@broadcom.com>,
 linux-arm-kernel@lists.infradead.org,
 Sriharsha Basavapatna <sriharsha.basavapatna@broadcom.com>,
 netdev@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, "John S . Gruber" <JohnSGruber@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-btrfs@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andy,

On 11/19/21 16:34, Andy Shevchenko wrote:
> On Fri, Nov 19, 2021 at 04:06:27PM +0100, Alejandro Colomar (man-pages) wrote:
>> Yes, I would like to untangle the dependencies.
>>
>> The main reason I started doing this splitting
>> is because I wouldn't be able to include
>> <linux/stddef.h> in some headers,
>> because it pulled too much stuff that broke unrelated things.
>>
>> So that's why I started from there.
>>
>> I for example would like to get NULL in memberof()
>> without puling anything else,
>> so <linux/NULL.h> makes sense for that.
> 
> I don't believe that the code that uses NULL won't include types.h.

I'm not sure about the error I got (I didn't write it down),
but I got a compilation error.
That's why I split NULL.

If one could anwer my doubt,
I would be in better position to learn how to avoid them.
See below.

On 11/19/21 16:06, Alejandro Colomar (man-pages) wrote:
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

Thanks,
Alex



-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
