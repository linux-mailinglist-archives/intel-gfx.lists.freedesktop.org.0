Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF31394A678
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 12:59:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A39D810E4A9;
	Wed,  7 Aug 2024 10:59:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="cyylSkWU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5991F10E4A9
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 10:59:12 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id
 5b1f17b1804b1-428163f7635so11977705e9.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Aug 2024 03:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1723028351; x=1723633151;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=5O2rit9Q+ZZhRmqaKun7IBIxVijWuGY2dSoTeZQJZF0=;
 b=cyylSkWUGf4FFC2qSLRvzpV80TN8IhrtMrrswDGyQrQZvPotzNoyO5PQCJOHnxrsxm
 6pKX6zDyN9Ki0bxhFPFFOUhWgUzVGAEopoR69pVg7b2/WXHplxp6tN0suHSgucB4HJKv
 JeL3de5f5vstCdGBqlb9fkfO1f+gzwJVdMeGsIkdKE/lBeJb1ksOpmcAkzY9L3n1ofa1
 Jv0oGbeyjNSEtjf8NSdWka2jVMGuguqXIz3PDQYAgRRyBvw9OwoAgHlxSB4Mc9io6dTA
 QGItsTaprIg897WS8+aeNM0mTsbtEoFQoIxusyJ6mbxESXRPiFIU60uwroPPt7rESZCA
 wsgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723028351; x=1723633151;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5O2rit9Q+ZZhRmqaKun7IBIxVijWuGY2dSoTeZQJZF0=;
 b=H8u4kLWOQfnOr89xyHWcLcu15bMryPdc1+8FLH8QQSEr05sX/kMT1iYEQwJ/RbVe4r
 cDPosFV5yAynFH6So1NvNuRpNeQJUKNEOrAhSIyryoG8pzun+/5nGdetX/up9/qACcvc
 /Zt5gFsEUEgWMoya7Hv60QOmvDaPkIL/n9nDospzx9mAIfTWNB7vyPX9e4pVQt4DOFSg
 Qp1Hls0rfQxwYix4P8NOuzOf8JfZhdr4E/kEAYgHogHcGkYJYvojYcZGWfb3Rkxgkp0j
 TThCzYQA3zqa0e3jxdLNQd/hBgEDmU5ihK3XJR/WYjjKIa94t8MuUu7SddwLCtjV4KAV
 qUIg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU0FalHBS8qfkr9929TuSbftFTmXOTlvT4wJ7G76tZKPCdXCR4BV1SvHHZgN0nVdNQCrIbj2PoIhxCu1Z8hKel5bTXXAEeau3Gl0f75422P
X-Gm-Message-State: AOJu0Yx61yvqwntv9aqMySzxnkZfVmlTNjVX5QwDa5i1bmdybaBYcaJH
 rKqjgRlOjS1DvLUhaf63xul/7X/29OMA5qKCjAlpSfEpiuCE0l1HxjtyUgTlkNA=
X-Google-Smtp-Source: AGHT+IHu8VOa75qPUk9i12DMFYh6diJZyO59h33/RoK30l2WFmOpb5mk6OaZrGPRV7EwsO5iH9crDw==
X-Received: by 2002:a05:600c:4ece:b0:426:5ee5:3130 with SMTP id
 5b1f17b1804b1-428e6ae2802mr110158745e9.3.1723028350414; 
 Wed, 07 Aug 2024 03:59:10 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-429059a8912sm23963875e9.38.2024.08.07.03.59.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 07 Aug 2024 03:59:10 -0700 (PDT)
Message-ID: <363ceea7-4168-408d-a6bf-3a46d971dd48@ursulin.net>
Date: Wed, 7 Aug 2024 11:59:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Too large alloc in gem_exec_reloc test? (was Re: [linus:master]
 [mm/slab] 2e8000b826: WARNING:at_mm/util.c:#__kvmalloc_node_noprof)
To: Kees Cook <kees@kernel.org>, kernel test robot <oliver.sang@intel.com>
Cc: oe-lkp@lists.linux.dev, lkp@intel.com, linux-kernel@vger.kernel.org,
 Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org,
 Dave Airlie <airlied@redhat.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 linux-hardening@vger.kernel.org
References: <202408041614.dbe4b7fd-lkp@intel.com>
 <202408051141.7FB8D9C98@keescook>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <202408051141.7FB8D9C98@keescook>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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


Hi,

On 05/08/2024 19:48, Kees Cook wrote:
> This seems like some kind of pre-existing issue in the igt test, reachable
> via eb_copy_relocations(). The only warning in kvmalloc_node_noprof() is:
> 
>          /* Don't even allow crazy sizes */
>          if (unlikely(size > INT_MAX)) {
>                  WARN_ON_ONCE(!(flags & __GFP_NOWARN));
>                  return NULL;
>          }
> 
> So, something is too big in the test?

Yes, and I think it was reported before, _and_ I tried to fix it.. 
(https://patchwork.freedesktop.org/patch/594928/?series=133871&rev=1) It 
looks it fell through the cracks. Now pushed, thank you for reviews!

Regards,

Tvrtko

> -Kees
> 
> On Sun, Aug 04, 2024 at 04:56:40PM +0800, kernel test robot wrote:
>>
>> hi, Kees Cook,
>>
>> as we understand, this commit is not the root cause of WARNING. the WARNING just
>> changes the form from (2) to (1) due to this commit.
>>
>> 67f2df3b82d091ed 2e8000b826fcd2716449d09753d
>> ---------------- ---------------------------
>>         fail:runs  %reproduction    fail:runs
>>             |             |             |
>>             :6          100%           6:6     dmesg.WARNING:at_mm/util.c:#__kvmalloc_node_noprof  <--- (1)
>>            6:6          -67%            :6     dmesg.WARNING:at_mm/util.c:#kvmalloc_node_noprof    <--- (2)
>>
>> however, we failed to bisect (2). so below report is FYI what we observed in our
>> tests. not sure if it can give any hint to some real issues.
>>
>>
>>
>> Hello,
>>
>> kernel test robot noticed "WARNING:at_mm/util.c:#__kvmalloc_node_noprof" on:
>>
>> commit: 2e8000b826fcd2716449d09753d5ed843067881e ("mm/slab: Introduce kvmalloc_buckets_node() that can take kmem_buckets argument")
>> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git master
>>
>> [test failed on linus/master      786c8248dbd33a5a7a07f7c6e55a7bfc68d2ca48]
>> [test failed on linux-next/master 9ec6ec93f2c1e6cd2911e2a4acd5ac85e13bb3e2]
>>
>> in testcase: igt
>> version: igt-x86_64-73e21b2bb-1_20240623
>> with following parameters:
>>
>> 	group: gem_exec_reloc
>>
>>
>>
>> compiler: gcc-13
>> test machine: 8 threads 1 sockets Intel(R) Core(TM) i7-7700 CPU @ 3.60GHz (Kaby Lake) with 32G memory
>>
>> (please refer to attached dmesg/kmsg for entire log/backtrace)
>>
>>
>>
>> If you fix the issue in a separate patch/commit (i.e. not just a new version of
>> the same patch/commit), kindly add following tags
>> | Reported-by: kernel test robot <oliver.sang@intel.com>
>> | Closes: https://lore.kernel.org/oe-lkp/202408041614.dbe4b7fd-lkp@intel.com
>>
>>
>>
>> The kernel config and materials to reproduce are available at:
>> https://download.01.org/0day-ci/archive/20240804/202408041614.dbe4b7fd-lkp@intel.com
>>
>>
>> [  928.741334][ T5136] ------------[ cut here ]------------
>> [  928.747005][ T5136] WARNING: CPU: 2 PID: 5136 at mm/util.c:650 __kvmalloc_node_noprof+0x142/0x190
>> [  928.755967][ T5136] Modules linked in: btrfs blake2b_generic xor zstd_compress raid6_pq libcrc32c intel_rapl_msr intel_rapl_common x86_pkg_temp_thermal ipmi_devintf ipmi_msghandler sd_mod intel_powerclamp t10_pi coretemp crc64_rocksoft_generic crc64_rocksoft crc64 kvm_intel sg i915 kvm crct10dif_pclmul crc32_pclmul crc32c_intel drm_buddy ghash_clmulni_intel intel_gtt sha512_ssse3 drm_display_helper mei_wdt ttm rapl drm_kms_helper ahci wmi_bmof libahci mei_me video intel_cstate intel_uncore idma64 libata mei i2c_designware_platform i2c_i801 i2c_designware_core i2c_smbus pinctrl_sunrisepoint wmi acpi_pad binfmt_misc loop drm fuse dm_mod ip_tables
>> [  928.812981][ T5136] CPU: 2 PID: 5136 Comm: gem_exec_reloc Tainted: G S                 6.10.0-rc1-00009-g2e8000b826fc #1
>> [  928.823924][ T5136] Hardware name: Dell Inc. OptiPlex 7050/062KRH, BIOS 1.2.0 12/22/2016
>> [  928.832080][ T5136] RIP: 0010:__kvmalloc_node_noprof+0x142/0x190
>> [  928.838186][ T5136] Code: c4 06 0e 00 48 83 c4 18 48 83 c4 08 5b 5d 41 5c 41 5d 41 5e c3 cc cc cc cc 49 be 00 00 00 00 00 20 00 00 eb 9f 80 e7 20 75 de <0f> 0b eb da 48 c7 c7 f0 fe cf 84 e8 5e 2c 19 00 e9 3f ff ff ff 48
>> [  928.857727][ T5136] RSP: 0018:ffffc9000e82f6f8 EFLAGS: 00010246
>> [  928.863744][ T5136] RAX: 0000000000000000 RBX: 00000000000000c0 RCX: 0000000000000013
>> [  928.871647][ T5136] RDX: 000000000007ffff RSI: ffffffff81a13806 RDI: 0000000000000000
>> [  928.879565][ T5136] RBP: 0000000080000000 R08: 0000000000000001 R09: 0000000000000000
>> [  928.887466][ T5136] R10: ffffc9000e82f6f8 R11: 0000000000000000 R12: 00000000ffffffff
>> [  928.895375][ T5136] R13: 0000000000000000 R14: 0000000004000000 R15: ffffc9000e82f9b0
>> [  928.903288][ T5136] FS:  00007f0ff830d8c0(0000) GS:ffff88879db00000(0000) knlGS:0000000000000000
>> [  928.912151][ T5136] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> [  928.918679][ T5136] CR2: 00007f0ff8100000 CR3: 00000008162e0004 CR4: 00000000003706f0
>> [  928.926595][ T5136] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
>> [  928.934489][ T5136] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
>> [  928.942382][ T5136] Call Trace:
>> [  928.945631][ T5136]  <TASK>
>> [  928.948499][ T5136]  ? __warn+0xcc/0x260
>> [  928.952503][ T5136]  ? __kvmalloc_node_noprof+0x142/0x190
>> [  928.957994][ T5136]  ? report_bug+0x261/0x2c0
>> [  928.962429][ T5136]  ? handle_bug+0x6d/0x90
>> [  928.966692][ T5136]  ? exc_invalid_op+0x17/0x40
>> [  928.971327][ T5136]  ? asm_exc_invalid_op+0x1a/0x20
>> [  928.976295][ T5136]  ? __kmalloc_node_noprof+0x3b6/0x4e0
>> [  928.981709][ T5136]  ? __kvmalloc_node_noprof+0x142/0x190
>> [  928.987199][ T5136]  ? __kvmalloc_node_noprof+0x53/0x190
>> [  928.992590][ T5136]  eb_copy_relocations+0x166/0x450 [i915]
>> [  928.998467][ T5136]  eb_relocate_parse_slow+0xd5/0x860 [i915]
>> [  929.004513][ T5136]  i915_gem_do_execbuffer+0xaa5/0x2420 [i915]
>> [  929.010657][ T5136]  ? unwind_get_return_address+0x5e/0xa0
>> [  929.016135][ T5136]  ? arch_stack_walk+0xac/0x100
>> [  929.020836][ T5136]  ? __pfx_i915_gem_do_execbuffer+0x10/0x10 [i915]
>> [  929.027424][ T5136]  ? kasan_save_track+0x14/0x30
>> [  929.032147][ T5136]  ? __kasan_kmalloc+0x8f/0xa0
>> [  929.036759][ T5136]  ? __pfx___might_resched+0x10/0x10
>> [  929.041892][ T5136]  ? check_heap_object+0x6f/0x4b0
>> [  929.046766][ T5136]  i915_gem_execbuffer2_ioctl+0x2b2/0x680 [i915]
>> [  929.053171][ T5136]  ? __pfx_i915_gem_execbuffer2_ioctl+0x10/0x10 [i915]
>> [  929.060100][ T5136]  drm_ioctl_kernel+0x16f/0x2e0 [drm]
>> [  929.065417][ T5136]  ? __pfx_drm_ioctl_kernel+0x10/0x10 [drm]
>> [  929.071239][ T5136]  drm_ioctl+0x4d0/0xad0 [drm]
>> [  929.075948][ T5136]  ? __pfx_i915_gem_execbuffer2_ioctl+0x10/0x10 [i915]
>> [  929.082882][ T5136]  ? __pfx_drm_ioctl+0x10/0x10 [drm]
>> [  929.088119][ T5136]  ? __fget_light+0x57/0x420
>> [  929.092587][ T5136]  __x64_sys_ioctl+0x137/0x1b0
>> [  929.097212][ T5136]  do_syscall_64+0x5f/0x170
>> [  929.101572][ T5136]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
>> [  929.107321][ T5136] RIP: 0033:0x7f0ffa6b7c5b
>> [  929.111603][ T5136] Code: 00 48 89 44 24 18 31 c0 48 8d 44 24 60 c7 04 24 10 00 00 00 48 89 44 24 08 48 8d 44 24 20 48 89 44 24 10 b8 10 00 00 00 0f 05 <89> c2 3d 00 f0 ff ff 77 1c 48 8b 44 24 18 64 48 2b 04 25 28 00 00
>> [  929.131013][ T5136] RSP: 002b:00007ffda154ae00 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
>> [  929.139261][ T5136] RAX: ffffffffffffffda RBX: 0000000000000004 RCX: 00007f0ffa6b7c5b
>> [  929.147077][ T5136] RDX: 00007ffda154af10 RSI: 0000000040406469 RDI: 0000000000000004
>> [  929.154890][ T5136] RBP: 00007ffda154af10 R08: 0000000000000004 R09: 0000000100000000
>> [  929.162704][ T5136] R10: 00007f0ffa7a8298 R11: 0000000000000246 R12: 0000000040406469
>> [  929.170515][ T5136] R13: 0000000000000004 R14: 00007f0f78200000 R15: 0000000000000002
>> [  929.178329][ T5136]  </TASK>
>> [  929.181207][ T5136] ---[ end trace 0000000000000000 ]---
>>
>>
>> -- 
>> 0-DAY CI Kernel Test Service
>> https://github.com/intel/lkp-tests/wiki
>>
> 
