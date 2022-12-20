Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C35CD6523FD
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 16:52:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5502B10E0A8;
	Tue, 20 Dec 2022 15:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B30BC10E0A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 15:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671551559; x=1703087559;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=WfxpPwz0gOHw8mrohKkaAF66bDrKqt25wum+nerwjNU=;
 b=Vi6Wut4/kYtrYLwmvVQ8Kfz+J1tppOUeQxDM4DSyjaxQHxFJnxIp80/n
 gjRGcGsICSr2h9citSgQUT/2nb7o6ODlmCRMno82EolxibVZbILrRGVJa
 DY/xSpk2NfxteG+r3VooGhPyKT1yvKvyIYXzW+CvItVoRI6Q1dBO2DSQ2
 ZE1nP32YLjic1qBLGXCSub17xKndBNA6WR5nIjpYjY1hYNyiYK/XTPdbY
 TTlmMvKEXIsr3lAw2iAbr2vbe0dUL2wUWjnxJQQm3Hxi5A9J9E1pn5a/y
 NdsTSzWqvAM8rEuP9emiUfN6uNRAymr/rAqSsCxgr5uLyIKCs/clY9WJk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="299315634"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="299315634"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 07:52:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="719616727"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="719616727"
Received: from downeyb-mobl1.ger.corp.intel.com (HELO [10.213.237.87])
 ([10.213.237.87])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 07:52:37 -0800
Message-ID: <15ef1bb9-7312-5d98-8bf0-0af1a37cfd2a@linux.intel.com>
Date: Tue, 20 Dec 2022 15:52:35 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: srinivas pandruvada <srinivas.pandruvada@linux.intel.com>,
 Mirsad Todorovac <mirsad.todorovac@alu.unizg.hr>,
 LKML <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <f849cc70-b21f-6476-ba26-08989d1243c2@alu.unizg.hr>
 <05424a5351a847786377a548dba0759917d8046c.camel@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <05424a5351a847786377a548dba0759917d8046c.camel@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] Possible regression in drm/i915 driver: memleak
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
Cc: intel-gfx@lists.freedesktop.org,
 Thorsten Leemhuis <regressions@leemhuis.info>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi,

On 20/12/2022 15:22, srinivas pandruvada wrote:
> +Added DRM mailing list and maintainers
> 
> On Tue, 2022-12-20 at 15:33 +0100, Mirsad Todorovac wrote:
>> Hi all,
>>
>> I have been unsuccessful to find any particular Intel i915 maintainer
>> emails, so my best bet is to post here, as you will must assuredly
>> already know them.

For future reference you can use ${kernel_dir}/scripts/get_maintainer.pl -f ...

>> The problem is a kernel memory leak that is repeatedly occurring
>> triggered during the execution of Chrome browser under the latest
>> 6.1.0+
>> kernel of this morning and Almalinux 8.6 on a Lenovo desktop box
>> with Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz CPU.
>>
>> The build is with KMEMLEAK, KASAN and MGLRU turned on during the
>> build,
>> on a vanilla mainline kernel from Mr. Torvalds' tree.
>>
>> The leaks look like this one:
>>
>> unreferenced object 0xffff888131754880 (size 64):
>>     comm "chrome", pid 13058, jiffies 4298568878 (age 3708.084s)
>>     hex dump (first 32 bytes):
>>       01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>> ................
>>       00 00 00 00 00 00 00 00 00 80 1e 3e 83 88 ff ff
>> ...........>....
>>     backtrace:
>>       [<ffffffff9e9b5542>] slab_post_alloc_hook+0xb2/0x340
>>       [<ffffffff9e9bbf5f>] __kmem_cache_alloc_node+0x1bf/0x2c0
>>       [<ffffffff9e8f767a>] kmalloc_trace+0x2a/0xb0
>>       [<ffffffffc08dfde5>] drm_vma_node_allow+0x45/0x150 [drm]
>>       [<ffffffffc0b33315>] __assign_mmap_offset_handle+0x615/0x820
>> [i915]
>>       [<ffffffffc0b34057>] i915_gem_mmap_offset_ioctl+0x77/0x110
>> [i915]
>>       [<ffffffffc08bc5e1>] drm_ioctl_kernel+0x181/0x280 [drm]
>>       [<ffffffffc08bc9cd>] drm_ioctl+0x2dd/0x6a0 [drm]
>>       [<ffffffff9ea54744>] __x64_sys_ioctl+0xc4/0x100
>>       [<ffffffff9fbc0178>] do_syscall_64+0x58/0x80
>>       [<ffffffff9fc000aa>] entry_SYSCALL_64_after_hwframe+0x72/0xdc
>>
>> The complete list of leaks in attachment, but they seem similar or
>> the same.
>>
>> Please find attached lshw and kernel build config file.
>>
>> I will probably check the same parms on my laptop at home, which is
>> also
>> Lenovo, but a different hw config and Ubuntu 22.10.

Could you try the below patch?

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index c3ea243d414d..0b07534c203a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -679,9 +679,10 @@ mmap_offset_attach(struct drm_i915_gem_object *obj,
  insert:
         mmo = insert_mmo(obj, mmo);
         GEM_BUG_ON(lookup_mmo(obj, mmap_type) != mmo);
-out:
+
         if (file)
                 drm_vma_node_allow(&mmo->vma_node, file);
+out:
         return mmo;

  err:

Maybe it is not the best fix but curious to know if it will make the leak go away.

Regards,

Tvrtko
