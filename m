Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FBA5F58D9
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 19:11:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5349D10E1E1;
	Wed,  5 Oct 2022 17:11:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D67A10E1E1
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 17:11:35 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id f23so15925406plr.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Oct 2022 10:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date;
 bh=8OoqcTjHvpDh7UImDu8JviJ+QMlDrz/TgMfEYGIJzHc=;
 b=FiIzdM4taxv76ttGrgcTmLiT9N5hi1FUQCFg0SW63GYQrvjgIXi5SWUOULSHOKVlcF
 VD8FZ5b3bHxXL/BmfMocub/2HcksZLZSq3PzcSGaohFF/+nOZHevhV8CWqmE491GmyEh
 aZhC2YKaE1S0efCEFXv5+1OHGnXVwYtADQsdwJB+1HNbL0hP6gVyFHE398JznNwdrOAX
 ErH1canqjntGkN9AKU0t6JzLDNkFQrFNN21v1Q+Py7Wx40E2tcbwzGoxm3PZS5THRhKu
 N8tr82t5g5qizwOccYXNsFLmLiGbJYK8Kv2RFSFEUF0b6v3+DAl8wG9ri0sCmQSrqrAr
 ExGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date;
 bh=8OoqcTjHvpDh7UImDu8JviJ+QMlDrz/TgMfEYGIJzHc=;
 b=C0UmTVnc+zW+1e7YukGecH9EeuEqV1M7cH5JVkzF79MDhd0+IQVucPrF5GT2BJ8tdW
 BAUcQ8FoNMsE9oyx3o5F55IxgFbMgjByHlCFA82jNkZ60kXfi+VjuX47meNO9FjfeC6Y
 SVKeke0zSqY15c04kJV6mo1MQU0H3utJDry4O2iRaRfoBMqmKDUct5/eBaQS0Rn8t/GI
 JU3z9eN2Y+D74dBb02Y4cO8sqIWZKxjnV78X9V89AL0H9ACbWddM/m3Qj7bRV+9IdW8D
 NkdW5/EM+c/5fV1Yd0skmKuwV8E09Oflc7MIwcWrlMf5BX+cUMNRwA/eFM0cB7Ifnfv1
 1lLw==
X-Gm-Message-State: ACrzQf3oSB23BNTVdK2KOskqAIOQCHLQ3qwhAenUFgKmfs5GKQmVsxtV
 GgaYCq6VGbM9MlXx/YJ6fPM=
X-Google-Smtp-Source: AMsMyM5n7k13Mpk/urTfjW9daIc4Kw2lwyFWI19Nmzr7LuG4cCnOryG+J8dZRkhE0hBE6dCu2a+xZg==
X-Received: by 2002:a17:90b:1d01:b0:203:2bda:abb1 with SMTP id
 on1-20020a17090b1d0100b002032bdaabb1mr5984963pjb.204.1664989895176; 
 Wed, 05 Oct 2022 10:11:35 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 m7-20020a170902bb8700b0017bdfbfcf8dsm10700718pls.63.2022.10.05.10.11.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Oct 2022 10:11:34 -0700 (PDT)
Date: Wed, 5 Oct 2022 10:11:32 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Robin Murphy <robin.murphy@arm.com>
Message-ID: <20221005171132.GA519999@roeck-us.net>
References: <20220922101036.87457-1-janusz.krzysztofik@linux.intel.com>
 <1f4899d2-52ed-ae94-f681-3953c82b4799@arm.com>
 <3185079.N7aMVyhfb1@jkrzyszt-mobl1.ger.corp.intel.com>
 <93eb2474-077f-2714-ccfb-77ff1a29a926@leemhuis.info>
 <20221005152537.GA2228081@roeck-us.net>
 <f4de969e-69a9-34dd-5637-50685d32738a@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f4de969e-69a9-34dd-5637-50685d32738a@arm.com>
Subject: Re: [Intel-gfx] [core-for-CI][PATCH] iommu: Remove iova cpu
 hotplugging flushing
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
Cc: linux-hwmon@vger.kernel.org, Fenghua Yu <fenghua.yu@intel.com>,
 regressions@lists.linux.dev, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, linux-kernel@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, iommu@lists.linux.dev,
 Thorsten Leemhuis <regressions@leemhuis.info>, Will Deacon <will@kernel.org>,
 Joerg Roedel <joro@8bytes.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 05, 2022 at 05:15:49PM +0100, Robin Murphy wrote:
> On 2022-10-05 16:25, Guenter Roeck wrote:
> > On Wed, Oct 05, 2022 at 04:26:28PM +0200, Thorsten Leemhuis wrote:
> > > [adding the coretemp maintainer (Fenghua Yu) and the appropriate mailing
> > > list to the list of recipients, as there apparently is a coretemp bug
> > > that results in a iommu change causing a regression]
> > > 
> > > On 30.09.22 18:57, Janusz Krzysztofik wrote:
> > > > I think this issue can hit any user with a platform that loads iommu and
> > > > coretemp drivers.  Adding regressions@lists.linux.dev to the loop.
> > > 
> > > f598a497bc7d was merged for 5.13-rc1, which is quite a while ago, so at
> > > least a quick revert is out of question as it might do more harm than
> > > good. The authors of the commit are kinda responsible for fixing
> > > situations like this; but well, did anybody ask the developers of the
> > > coretemp driver kindly if they are aware of the problem and maybe even
> > > willing to fix it? Doesn't look like it from here from search lore (hope
> > > I didn't miss anything), so let's give it a try.
> > > 
> > > Ciao, Thorsten
> > > 
> > > > On Thursday, 22 September 2022 14:09:35 CEST Robin Murphy wrote:
> > > > > On 22/09/2022 11:10 am, Janusz Krzysztofik wrote:
> > > > > > From: Chris Wilson <chris@chris-wilson.co.uk>
> > > > > > 
> > > > > > Manual revert of commit f598a497bc7d ("iova: Add CPU hotplug handler to
> > > > > > flush rcaches").  It is trying to instantiate a cpuhp notifier from inside
> > > > > > a cpuhp callback.  That code replaced intel_iommu implementation of
> > > > > > flushing per-IOVA domain CPU rcaches which used a single instance of cpuhp
> > > > > > held for the module lifetime.
> > > > > 
> > > > > OK, *now* I see what's going on. It doesn't seem unreasonable to me for
> > > > > bus notifiers to touch CPU hotplug - what seems more unexpected is the
> > > > > coretemp driver creating and adding a platform device from inside a
> > > > > hotplug callback.
> > 
> > It is only unexpected if it is documented that creating a platform driver
> > from a hotplug callback is off limits.
> > 
> > > > > 
> > > > > Once we start trying to revert multiple unrelated bits of important
> > > > > functionality from other subsystems because one driver is doing a weird
> > > > > thing, maybe it's time to instead question whether that driver should be
> > > > > doing a weird thing?
> > 
> > That isn't the point. This _used_ to work, after all. Maybe the functionality
> > introduced with f598a497bc7d is important, but there is still a regression
> > introduced by f598a497bc7d. Sure, maybe the coretemp driver is doing
> > "a weird thing", but if some generic code is changed causing something to fail
> > that previously worked, it is still a regression and the reponsibility of the
> > person or team making the generic code change to fix the problems caused by
> > that change.
> 
> Note that AFAICS I don't think anything's actually broken, and this is
> merely a lockdep false-positive. The coretemp device itself will not be
> associated with the IOMMU, so the IOMMU notifier will never get as far as
> taking any further locks in that particular instance.
> 
> Of course I *can* try writing the patch to fix things properly if I have to,
> but fair warning; I'm not familiar with this driver or the relevant hardware
> or the subsystem, and from a brief look it will involve some significant
> redesign that I have every chance of getting wrong. Plus I'm not sure I can
> test the hotplug stuff at all since the x86 box I have to hand only seems to
> have a single coretemp device.
> 
> The fact is, the wacky thing it's doing with platform_device_add() doesn't
> actually work *all* that well anyway:
> 

Hah, yes, that is obviously a bug. Unfortunately I don't have any systems
with Intel CPU left, so I can not test myself. FWIW, on v5.18.x (which is
what Google laptops use for whatever reason), I don't see the crash, but
"modprobe -r coretemp" followed by "modprobe coretemp" doesn't work -
the driver loads, but does not register with the hwmon subsystem.
There has been no relevant change to the driver since v5.13, so all
I can conclude at this point is that the driver is very likely still
broken in the mainline kernel.

Guenter

> $ sudo rmmod coretemp
> $ echo 0 | sudo tee /sys/bus/platform/drivers_autoprobe
> 0
> $ sudo modprobe coretemp
> 
> [7169271.187103] BUG: kernel NULL pointer dereference, address:
> 0000000000000418
> [7169271.187127] #PF: supervisor write access in kernel mode
> [7169271.187131] #PF: error_code(0x0002) - not-present page
> [7169271.187134] PGD 0 P4D 0
> [7169271.187139] Oops: 0002 [#1] SMP PTI
> [7169271.187144] CPU: 0 PID: 16 Comm: cpuhp/0 Not tainted 5.13.0-52-generic
> #59~20.04.1-Ubuntu
> [7169271.187150] Hardware name: LENOVO 30B6S08J03/1030, BIOS S01KT29A
> 06/20/2016
> [7169271.187152] RIP: 0010:create_core_data+0x3cb/0x510 [coretemp]
> [7169271.187163] Code: 44 89 e7 e8 67 99 7f c8 85 c0 75 17 0f b6 45 b9 41 83
> 46 24 01 69 c0 18 fc ff ff 41 03 46 08 41 89 46 04 48 8b 45 b0 4c 63 fb <4e>
> 89 b4 f8 10 04 00 00 48 8b 00 41 8b 56 24 48 89 45 a0 85 d2 7e
> [7169271.187167] RSP: 0018:ffffa5ddc015fd98 EFLAGS: 00010203
> [7169271.187172] RAX: 0000000000000000 RBX: 0000000000000001 RCX:
> 0000000000000002
> [7169271.187175] RDX: 0000000000000000 RSI: ffffffff89207b30 RDI:
> ffffa5ddc015fd40
> [7169271.187178] RBP: ffffa5ddc015fe00 R08: 0000000000000000 R09:
> ffff8e049c04c800
> [7169271.187181] R10: 0000000000019460 R11: 0000000000000000 R12:
> 0000000000000000
> [7169271.187184] R13: 000000000000005f R14: ffff8e049c04c800 R15:
> 0000000000000001
> [7169271.187187] FS:  0000000000000000(0000) GS:ffff8e0b5f600000(0000)
> knlGS:0000000000000000
> [7169271.187191] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [7169271.187194] CR2: 0000000000000418 CR3: 0000000190672002 CR4:
> 00000000003706f0
> [7169271.187198] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
> 0000000000000000
> [7169271.187200] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7:
> 0000000000000400
> [7169271.187203] Call Trace:
> [7169271.187206]  <TASK>
> [7169271.187212]  coretemp_cpu_online+0x14f/0x180 [coretemp]
> [7169271.187220]  ? create_core_data+0x510/0x510 [coretemp]
> [7169271.187226]  cpuhp_invoke_callback+0x10b/0x430
> [7169271.187237]  cpuhp_thread_fun+0x92/0x150
> [7169271.187244]  smpboot_thread_fn+0xd0/0x170
> [7169271.187253]  ? sort_range+0x30/0x30
> [7169271.187260]  kthread+0x12b/0x150
> [7169271.187264]  ? set_kthread_struct+0x40/0x40
> [7169271.187269]  ret_from_fork+0x22/0x30
> [7169271.187280]  </TASK>
> 
> Consider that a bug report, unless of course it's documented somewhere that
> users aren't allowed to turn off autoprobe ;)
> 
> Thanks,
> Robin.
