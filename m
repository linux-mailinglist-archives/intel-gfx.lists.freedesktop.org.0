Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE67425311
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 14:30:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1BA66F46C;
	Thu,  7 Oct 2021 12:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3E0A6F3D6
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 09:19:18 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id v17so16924829wrv.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Oct 2021 02:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=oO/NvW/L45yNIkS5G9nKwuYXqBe7ka+u/BUMOvud85I=;
 b=SCi4kjXrBLUd0tG9AlrglC+XIfI69XRDmGMx76jvX9uyN1lMI78zpajJKiXPXAFuCl
 qsJNeaoc8Mt6eql4pYLBGiZYRj0dG7zY6BaDHIxhAaMWCp5YlgnT6Dy6i0Sw5gycyOcb
 IkZ/1OwIbXWeiy/m9DsCILa4SBz/cOpVdc9/Rha1S3mliG0ykRA8YN/UrrSThakDwR8i
 LiyZ4e/f8ckXNxAuCrgVUAu37v9191xLgMbh832L+Wpe0rXolzQc9rQ7FXm/4xTnStsD
 jNZtm6B7eeGqDmEkz0qoiYqUdF83MFDxGmsbDWcYAY4QGQPhIzCp/0ozaixHk6Gnr/Df
 YjQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=oO/NvW/L45yNIkS5G9nKwuYXqBe7ka+u/BUMOvud85I=;
 b=492T02i87FtagScqulnt0aTUWshxI12ytLUVpKjsgp4QleY3cg7m0ds7yrirXp6+Dx
 AcwZetK/vnugvMOcZClDnTP77uQFpe6WDbxGeF3LpG3bO7eCvq6Yr25QJmpm/BrfesXF
 3wwCHoZgHRK7aVwWl7Ea6BqrrGPt6EIvWbEPWj/beGrCRHvy7TYMWj7BIfH844rdtqYK
 TpmZ2wvrQJ9+du2YPlc7dNzuGG40QsaKdcL4OSI9r1sZBt1owqn7nemnCON/O9fTFcZH
 EZKdaQZu6ajP0TrFaermbQHnW6pCWOjghqxgXT61PEHpuisSn6RiazC4nt+UyyE/OdTp
 LG+Q==
X-Gm-Message-State: AOAM530TZtxuNqTX+N8/b8x4f0pPSw7ah53uCZiASJh1+s8uga19uM5W
 lN7ZoLaTIo7CfE8B5+6lyRpMHTMwkAE=
X-Google-Smtp-Source: ABdhPJw+2UYqYA/vFYRiY8ZjAWakHkiRUFLGLtWZcmhlLrdMpQU0l5Ml6AWa/9UY3bUMIiTs1xn5fA==
X-Received: by 2002:a7b:c4cb:: with SMTP id g11mr1434868wmk.112.1633598357499; 
 Thu, 07 Oct 2021 02:19:17 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id c17sm7485379wmr.15.2021.10.07.02.19.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Oct 2021 02:19:17 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20211006091614.970596-1-matthew.auld@intel.com>
 <163353397200.5959.9158572900274841139@emeril.freedesktop.org>
 <d50b2987-6343-fc87-e197-1cc8ac2c4f93@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <cb93ee61-9ac1-587e-0182-6c6ba6671d79@gmail.com>
Date: Thu, 7 Oct 2021 11:19:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <d50b2987-6343-fc87-e197-1cc8ac2c4f93@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-Mailman-Approved-At: Thu, 07 Oct 2021 12:29:48 +0000
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

Am 07.10.21 um 11:15 schrieb Tvrtko Ursulin:
> Hi,
>
> On 06/10/2021 16:26, Patchwork wrote:
>> *Patch Details*
>> *Series:*    series starting with [v7,1/8] drm/i915/gem: Break out 
>> some shmem backend utils
>> *URL:*    https://patchwork.freedesktop.org/series/95501/ 
>> <https://patchwork.freedesktop.org/series/95501/>
>> *State:*    failure
>> *Details:* 
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/index.html 
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/index.html>
>>
>>
>>   CI Bug Log - changes from CI_DRM_10688_full -> Patchwork_21264_full
>>
>>
>>     Summary
>>
>> *FAILURE*
>>
>> Serious unknown changes coming with Patchwork_21264_full absolutely 
>> need to be
>> verified manually.
>>
>> If you think the reported changes have nothing to do with the changes
>> introduced in Patchwork_21264_full, please notify your bug team to 
>> allow them
>> to document this new failure mode, which will reduce false positives 
>> in CI.
>>
>>
>>     Possible new issues
>>
>> Here are the unknown changes that may have been introduced in 
>> Patchwork_21264_full:
>>
>>
>>       IGT changes
>>
>>
>>         Possible regressions
>>
>>   *
>>
>>     igt@gem_sync@basic-many-each:
>>
>>       o shard-apl: NOTRUN -> INCOMPLETE
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl7/igt@gem_sync@basic-many-each.html>
> Something still fishy in the unlocked iterator? Or dma_resv_get_fences 
> using it?

Probably the later. I'm going to take a look.

Thanks for the notice,
Christian.

>
> <6> [187.551235] [IGT] gem_sync: starting subtest basic-many-each
> <1> [188.935462] BUG: kernel NULL pointer dereference, address: 
> 0000000000000010
> <1> [188.935485] #PF: supervisor write access in kernel mode
> <1> [188.935495] #PF: error_code(0x0002) - not-present page
> <6> [188.935504] PGD 0 P4D 0
> <4> [188.935512] Oops: 0002 [#1] PREEMPT SMP NOPTI
> <4> [188.935521] CPU: 2 PID: 1467 Comm: gem_sync Not tainted 
> 5.15.0-rc4-CI-Patchwork_21264+ #1
> <4> [188.935535] Hardware name:  /NUC6CAYB, BIOS 
> AYAPLCEL.86A.0049.2018.0508.1356 05/08/2018
> <4> [188.935546] RIP: 0010:dma_resv_get_fences+0x116/0x2d0
> <4> [188.935560] Code: 10 85 c0 7f c9 be 03 00 00 00 e8 15 8b df ff eb 
> bd e8 8e c6 ff ff eb b6 41 8b 04 24 49 8b 55 00 48 89 e7 8d 48 01 41 
> 89 0c 24 <4c> 89 34 c2 e8 41 f2 ff ff 49 89 c6 48 85 c0 75 8c 48 8b 44 
> 24 10
> <4> [188.935583] RSP: 0018:ffffc900011dbcc8 EFLAGS: 00010202
> <4> [188.935593] RAX: 0000000000000000 RBX: 00000000ffffffff RCX: 
> 0000000000000001
> <4> [188.935603] RDX: 0000000000000010 RSI: ffffffff822e343c RDI: 
> ffffc900011dbcc8
> <4> [188.935613] RBP: ffffc900011dbd48 R08: ffff88812d255bb8 R09: 
> 00000000fffffffe
> <4> [188.935623] R10: 0000000000000001 R11: 0000000000000000 R12: 
> ffffc900011dbd44
> <4> [188.935633] R13: ffffc900011dbd50 R14: ffff888113d29cc0 R15: 
> 0000000000000000
> <4> [188.935643] FS:  00007f68d17e9700(0000) GS:ffff888277900000(0000) 
> knlGS:0000000000000000
> <4> [188.935655] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4> [188.935665] CR2: 0000000000000010 CR3: 000000012d0a4000 CR4: 
> 00000000003506e0
> <4> [188.935676] Call Trace:
> <4> [188.935685]  i915_gem_object_wait+0x1ff/0x410 [i915]
> <4> [188.935988]  i915_gem_wait_ioctl+0xf2/0x2a0 [i915]
> <4> [188.936272]  ? i915_gem_object_wait+0x410/0x410 [i915]
> <4> [188.936533]  drm_ioctl_kernel+0xae/0x140
> <4> [188.936546]  drm_ioctl+0x201/0x3d0
> <4> [188.936555]  ? i915_gem_object_wait+0x410/0x410 [i915]
> <4> [188.936820]  ? __fget_files+0xc2/0x1c0
> <4> [188.936830]  ? __fget_files+0xda/0x1c0
> <4> [188.936839]  __x64_sys_ioctl+0x6d/0xa0
> <4> [188.936848]  do_syscall_64+0x3a/0xb0
> <4> [188.936859]  entry_SYSCALL_64_after_hwframe+0x44/0xae
>
> Regards,
>
> Tvrtko

