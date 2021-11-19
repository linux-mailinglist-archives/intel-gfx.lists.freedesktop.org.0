Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 875874572C9
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 17:22:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 995316EE73;
	Fri, 19 Nov 2021 16:22:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68CDC6EE73
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 16:22:53 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id b12so19052494wrh.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 08:22:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=gJ7nvh3PYL8XuI32u9B1gA3gTx9kf/bMqpXsk3AEZsU=;
 b=fpsj7+4SpFXqpTSemI06B9IcXVdlbuued/IQBN4FCqBdSC/xtpTgB2iz9UIQnOPSv5
 7dinU35yvOUDiH/9vJWKbZ9GctdBbeB/cRDVHk0phW4F/NxhOCWoSFMTVcX26VVw3HMt
 GPKNYBxNtyTgnGx50kBrFXzcpurXEIcb4r3vdAScw53cOY82S+nnM1F4LxEs39YLMQ/S
 uDHYEpfJs9WPfjtx2YvKeV+ilwmoATVlGw8z6GW1nGOzQsTXfXgbQ/sMgtuNKtzjMgO+
 m/GWqEfFdALvOcc/k4vNSzQQ8s1MyiSdciXJWtO0mjZ1O20qNFBqF7s2UCtRG1bgp0aS
 YbJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=gJ7nvh3PYL8XuI32u9B1gA3gTx9kf/bMqpXsk3AEZsU=;
 b=KLkPZWOsB2M7gbqVyS+wmdC/YNXxVSdpGKUgsCU9GCoiEvhX+dsUBJadrRTJWGXw3v
 hznF95Mn+ZwEaC0vQEk3TodYBhK3DYYtiEGvLiRtv/5r8w2Wj1oSJ77oolK9vnrBCJyw
 KwDxse829YY7+2AFTc/h2snYAyoCrf0rpxFRtvMcNs9PdpNK6BGIPC10VceruKu3Pbzk
 W3FAgJoYu1yvZop3e2VCs14acl6qaxZENqRwCZm7OWHgDtelYLRtmDNsY5zO0YGvOf9Q
 Kal31CR3KVEF2ia5+09I0sD8oZ2Z8YDKHcGmLY4UE0J7Dqp0gqRxL1BUCuTLhgQOI5ad
 q9uQ==
X-Gm-Message-State: AOAM530oacHF72ltdWCf4iCPXbQXzDnKmNZDgRvEHceeC3cm5fihyq4f
 EMls2KRWNuDONFGyQhtKz0s=
X-Google-Smtp-Source: ABdhPJz+RkhKg2oPM+DFfdJrmKTihG8D5yySz9/H4aR55REMYZ6fa+PNcb8l7yv++672VBes+PtaDw==
X-Received: by 2002:a5d:5986:: with SMTP id n6mr9039788wri.297.1637338971943; 
 Fri, 19 Nov 2021 08:22:51 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
 by smtp.gmail.com with ESMTPSA id n2sm12993701wmi.36.2021.11.19.08.22.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Nov 2021 08:22:51 -0800 (PST)
Message-ID: <2d790206-124b-f850-895f-a57a74c55f79@gmail.com>
Date: Fri, 19 Nov 2021 17:22:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Arnd Bergmann <arnd@arndb.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20211119113644.1600-1-alx.manpages@gmail.com>
 <CAK8P3a0qT9tAxFkLN_vJYRcocDW2TcBq79WcYKZFyAG0udZx5Q@mail.gmail.com>
 <434296d3-8fe1-f1d2-ee9d-ea25d6c4e43e@gmail.com>
 <CAK8P3a2yVXw9gf8-BNvX_rzectNoiy0MqGKvBcXydiUSrc_fCA@mail.gmail.com>
 <YZfMXlqvG52ls2TE@smile.fi.intel.com>
 <CAK8P3a06CMzWVj2C3P5v0u8ZVPumXJKrq=TdjSq1NugmeT7-RQ@mail.gmail.com>
From: "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <CAK8P3a06CMzWVj2C3P5v0u8ZVPumXJKrq=TdjSq1NugmeT7-RQ@mail.gmail.com>
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
 David Sterba <dsterba@suse.com>, Somnath Kotur <somnath.kotur@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sriharsha Basavapatna <sriharsha.basavapatna@broadcom.com>,
 Networking <netdev@vger.kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, "John S . Gruber" <JohnSGruber@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-btrfs <linux-btrfs@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 11/19/21 17:18, Arnd Bergmann wrote:
> On Fri, Nov 19, 2021 at 5:10 PM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
>> On Fri, Nov 19, 2021 at 04:57:46PM +0100, Arnd Bergmann wrote:
> 
>>> The main problem with this approach is that as soon as you start
>>> actually reducing the unneeded indirect includes, you end up with
>>> countless .c files that no longer build because they are missing a
>>> direct include for something that was always included somewhere
>>> deep underneath, so I needed a second set of scripts to add
>>> direct includes to every .c file.
>>
>> Can't it be done with cocci support?
> 
> There are many ways of doing it, but they all tend to suffer from the
> problem of identifying which headers are actually needed based on
> the contents of a file, and also figuring out where to put the extra
> #include if there are complex #ifdefs.
> 
> For reference, see below for the naive pattern matching I tried.
> This is obviously incomplete and partially wrong.

FYI, if you may not know the tool,
theres include-what-you-use(1) (a.k.a. iwyu(1))[1],
although it is still not mature,
and I'm helping improve it a bit.

If I understood better the kernel Makefiles,
I'd try it.

You can try it yourselves.
I still can't use it for my own code,
since it has a lot of false positives.

Cheers,
Alex

[1]: <https://include-what-you-use.org/>


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
