Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4014254E3
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 15:57:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7382C6E530;
	Thu,  7 Oct 2021 13:57:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB6986F45B
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 12:57:07 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id r18so18844195wrg.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Oct 2021 05:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=N30/MBTwS+Uh/LIlGbEIqFdk1AkjpH20+xKaNdff4pY=;
 b=SBQx1KMmmmsm+z2oMTejuljsJBIT1DUA90zhgkFNjWL+MLpi/GZpi8KxcyRei+5HuU
 txTHbqHlRyzpfleB0Tok+hOLLPRweFePQaLyno4bAYyK2QgCR3A/37IV5zTdwdRxEL39
 QXPysxJyy6UqYGFmPFtwQhZQovN9qbS/epRpJgM5VcMz4qYXmmKjG9mUlXrk2tMQxdGq
 jRv4rKOSFH83f9hRlROYezxnimibpmHRC9Xl8KONS0+HSUJewWD1+y9+VxFBrZLJaTZP
 z/1PjsY6HuxyLfQhUF2RUqvIZA2HOX+f8T/PtZBJxjAd/Zv/TgtXY7HccNdOYzQotnDW
 7ftg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=N30/MBTwS+Uh/LIlGbEIqFdk1AkjpH20+xKaNdff4pY=;
 b=zBQLaAm4mfXS2mtCaYgWqIWzXjjDwcRCeBhAfvsxZRP7XmOukCifgWNZfXE+LDeAsR
 FBaAvx+mE05+L1F7bJn7yR7k7yDswcWIH6/3Ay6jKUboTzEmHYqIjhXC3cBxU9VCA647
 1A2AX7YttpGMtuKmMDf/bysegico4g7bgfLjFJD4v5OcXL1XbzmrJNzMwKeYuxmeKEPq
 Bl3jBiZB3G+TjMNaaSkT4tzqyHosu524ACq1FlFyZ8iZ62392S31ojjOARcAF0Y/e56M
 pyL1tGU77zfALQq9e3hNYcEZvIfbyeqXgB90Vy0djgyqG7uj/8uC+Ijdna3aU5Ge1hZW
 WMJA==
X-Gm-Message-State: AOAM530pcIRdRF8yphoToGm7+hhA+CGSbVPy4y3k/CLPifyyXzUQq7lU
 /ijqrxqNTmoGwXPQzYRw8r2bNpaIRGM=
X-Google-Smtp-Source: ABdhPJw3pbtKi/+ovZyo1aT9JeHicshNIyUz2Cx9cwbbVprjLSSxWmojey2vg4TUPl8UscRrLWXooA==
X-Received: by 2002:a5d:64ca:: with SMTP id f10mr5102821wri.93.1633611426426; 
 Thu, 07 Oct 2021 05:57:06 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id c14sm23636527wrd.50.2021.10.07.05.57.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Oct 2021 05:57:05 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20211006091614.970596-1-matthew.auld@intel.com>
 <163353397200.5959.9158572900274841139@emeril.freedesktop.org>
 <d50b2987-6343-fc87-e197-1cc8ac2c4f93@linux.intel.com>
 <cb93ee61-9ac1-587e-0182-6c6ba6671d79@gmail.com>
 <ae2222c4-7167-9047-2430-1d59b9b1fa32@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <c022d4eb-b831-a4ae-6127-01bc526fc9c1@gmail.com>
Date: Thu, 7 Oct 2021 14:57:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <ae2222c4-7167-9047-2430-1d59b9b1fa32@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-Mailman-Approved-At: Thu, 07 Oct 2021 13:57:12 +0000
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv7=2C1/8=5D_drm/i915/gem=3A_Break_out_some?=
 =?utf-8?q?_shmem_backend_utils?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Am 07.10.21 um 12:51 schrieb Tvrtko Ursulin:
>
> On 07/10/2021 10:19, Christian König wrote:
>> Am 07.10.21 um 11:15 schrieb Tvrtko Ursulin:
>>> Hi,
>>>
>>> On 06/10/2021 16:26, Patchwork wrote:
>>>> *Patch Details*
>>>> *Series:*    series starting with [v7,1/8] drm/i915/gem: Break out 
>>>> some shmem backend utils
>>>> *URL:*    https://patchwork.freedesktop.org/series/95501/ 
>>>> <https://patchwork.freedesktop.org/series/95501/>
>>>> *State:*    failure
>>>> *Details:* 
>>>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/index.html 
>>>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/index.html>
>>>>
>>>>
>>>>   CI Bug Log - changes from CI_DRM_10688_full -> Patchwork_21264_full
>>>>
>>>>
>>>>     Summary
>>>>
>>>> *FAILURE*
>>>>
>>>> Serious unknown changes coming with Patchwork_21264_full absolutely 
>>>> need to be
>>>> verified manually.
>>>>
>>>> If you think the reported changes have nothing to do with the changes
>>>> introduced in Patchwork_21264_full, please notify your bug team to 
>>>> allow them
>>>> to document this new failure mode, which will reduce false 
>>>> positives in CI.
>>>>
>>>>
>>>>     Possible new issues
>>>>
>>>> Here are the unknown changes that may have been introduced in 
>>>> Patchwork_21264_full:
>>>>
>>>>
>>>>       IGT changes
>>>>
>>>>
>>>>         Possible regressions
>>>>
>>>>   *
>>>>
>>>>     igt@gem_sync@basic-many-each:
>>>>
>>>>       o shard-apl: NOTRUN -> INCOMPLETE
>>>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl7/igt@gem_sync@basic-many-each.html> 
>>>>
>>> Something still fishy in the unlocked iterator? Or 
>>> dma_resv_get_fences using it?
>>
>> Probably the later. I'm going to take a look.
>>
>> Thanks for the notice,
>> Christian.
>>
>>>
>>> <6> [187.551235] [IGT] gem_sync: starting subtest basic-many-each
>>> <1> [188.935462] BUG: kernel NULL pointer dereference, address: 
>>> 0000000000000010
>>> <1> [188.935485] #PF: supervisor write access in kernel mode
>>> <1> [188.935495] #PF: error_code(0x0002) - not-present page
>>> <6> [188.935504] PGD 0 P4D 0
>>> <4> [188.935512] Oops: 0002 [#1] PREEMPT SMP NOPTI
>>> <4> [188.935521] CPU: 2 PID: 1467 Comm: gem_sync Not tainted 
>>> 5.15.0-rc4-CI-Patchwork_21264+ #1
>>> <4> [188.935535] Hardware name:  /NUC6CAYB, BIOS 
>>> AYAPLCEL.86A.0049.2018.0508.1356 05/08/2018
>>> <4> [188.935546] RIP: 0010:dma_resv_get_fences+0x116/0x2d0
>>> <4> [188.935560] Code: 10 85 c0 7f c9 be 03 00 00 00 e8 15 8b df ff 
>>> eb bd e8 8e c6 ff ff eb b6 41 8b 04 24 49 8b 55 00 48 89 e7 8d 48 01 
>>> 41 89 0c 24 <4c> 89 34 c2 e8 41 f2 ff ff 49 89 c6 48 85 c0 75 8c 48 
>>> 8b 44 24 10
>>> <4> [188.935583] RSP: 0018:ffffc900011dbcc8 EFLAGS: 00010202
>>> <4> [188.935593] RAX: 0000000000000000 RBX: 00000000ffffffff RCX: 
>>> 0000000000000001
>>> <4> [188.935603] RDX: 0000000000000010 RSI: ffffffff822e343c RDI: 
>>> ffffc900011dbcc8
>>> <4> [188.935613] RBP: ffffc900011dbd48 R08: ffff88812d255bb8 R09: 
>>> 00000000fffffffe
>>> <4> [188.935623] R10: 0000000000000001 R11: 0000000000000000 R12: 
>>> ffffc900011dbd44
>>> <4> [188.935633] R13: ffffc900011dbd50 R14: ffff888113d29cc0 R15: 
>>> 0000000000000000
>>> <4> [188.935643] FS:  00007f68d17e9700(0000) 
>>> GS:ffff888277900000(0000) knlGS:0000000000000000
>>> <4> [188.935655] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>>> <4> [188.935665] CR2: 0000000000000010 CR3: 000000012d0a4000 CR4: 
>>> 00000000003506e0
>>> <4> [188.935676] Call Trace:
>>> <4> [188.935685]  i915_gem_object_wait+0x1ff/0x410 [i915]
>>> <4> [188.935988]  i915_gem_wait_ioctl+0xf2/0x2a0 [i915]
>>> <4> [188.936272]  ? i915_gem_object_wait+0x410/0x410 [i915]
>>> <4> [188.936533]  drm_ioctl_kernel+0xae/0x140
>>> <4> [188.936546]  drm_ioctl+0x201/0x3d0
>>> <4> [188.936555]  ? i915_gem_object_wait+0x410/0x410 [i915]
>>> <4> [188.936820]  ? __fget_files+0xc2/0x1c0
>>> <4> [188.936830]  ? __fget_files+0xda/0x1c0
>>> <4> [188.936839]  __x64_sys_ioctl+0x6d/0xa0
>>> <4> [188.936848]  do_syscall_64+0x3a/0xb0
>>> <4> [188.936859] entry_SYSCALL_64_after_hwframe+0x44/0xae
>
> FWIW if you disassemble the code it seems to be crashing in:
>
>   (*shared)[(*shared_count)++] = fence; // mov %r14, (%rdx, %rax, 8)
>
> RDX is *shared, RAX is *shared_count, RCX is *shared_count++ (for the 
> next iteration. R13 is share and R12 shared_count.
>
> That *shared can contain 0000000000000010 makes no sense to me. At 
> least yet. :)

Yeah, me neither. I've gone over the whole code multiple time now and 
absolutely don't get what's happening here.

Adding some more selftests didn't helped either. As far as I can see the 
code works as intended.

Do we have any other reports of crashes?

Thanks,
Christian.

>
> Regards,
>
> Tvrtko

