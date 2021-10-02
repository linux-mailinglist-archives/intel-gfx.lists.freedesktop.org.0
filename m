Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4ACE41FADA
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Oct 2021 12:17:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E0E06E837;
	Sat,  2 Oct 2021 10:17:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com
 [IPv6:2607:f8b0:4864:20::72e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2789D6E837
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 Oct 2021 10:17:43 +0000 (UTC)
Received: by mail-qk1-x72e.google.com with SMTP id x12so1222111qkf.9
 for <intel-gfx@lists.freedesktop.org>; Sat, 02 Oct 2021 03:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=L04RaRlqH1ifPK8xvh6SS0IhEYtmxlsOrxlOabQ/lVs=;
 b=SvbJHFYxj0cT/VKP+yAaUVTejlYdkIjBw2jzhZTzg1tc/vQCihoHIHvuv29dIVp7l0
 WzY1XRv/plPcePEwwBqxu7JLq0MHjoIw7Qa7i2zFuVmpNwrBNsQa3lU55uVOqjWieaSK
 YtJlwBcFqYVZab/hi841e+1CHMAkqRPL713HK4fQEGK+/L378MskK14yydQcA5SZNooG
 LUzhh+YgcPAdD1DQvJueaPpqPr2sFioFPpw9CzAwgcvbHEP/uxZSr7aeykvAjGcLyVXb
 5+CKgm/YxzofKbqutwDRRcJMJ8h2EcYq1A58q8n0nlBpOu7lq7u2hGwK/OOptwxxxQjc
 T0hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=L04RaRlqH1ifPK8xvh6SS0IhEYtmxlsOrxlOabQ/lVs=;
 b=d9giaBnWH6i96D+3ZeDFvYwnB3HlrjUbMdUcIF/Td+9n5CLbHJRsz1WWKf8nzsj+7j
 r69mfrR9axkA4EKOUnYr7sDTHsyoDkCIevxrcU6bzzPODFdaEY521O7On2ZpqZZN8QkB
 BhVlpcAADsTJQdKbZiRBYMGOswvysfJqEw4r1472L+IXrMHz6DMSz3dH6HxRKgHMU/E/
 Q1gm+XQ3YjuOPeyJfIiZ6v84ffrbGkWuOtVmC3A8EhFY8wWHZhulJGd5oZ7z+TQUx76k
 No4fqJT52HVBj6jmfRXHRg0PzmkSG9ndhH/lAIDQyO0Lf/TMBIJul/tq3OXdJ+WNeZdg
 rhcw==
X-Gm-Message-State: AOAM530KHeb2BTcUeoSYhK2d9fKSdgdrclLvIg+d6D4ismgh/X0KT3kc
 Xg41qWkzj/CCEsCnziRrlqdPYQ==
X-Google-Smtp-Source: ABdhPJyhROMakybhDDzG86uIA1c9FvgY/j9InoVrCBK3aiffORLmH7+B+PoOiHB1+XM3qHWKKOSbKA==
X-Received: by 2002:a37:9e8d:: with SMTP id h135mr1920291qke.189.1633169862014; 
 Sat, 02 Oct 2021 03:17:42 -0700 (PDT)
Received: from ripple.attlocal.net
 (172-10-233-147.lightspeed.sntcca.sbcglobal.net. [172.10.233.147])
 by smtp.gmail.com with ESMTPSA id w1sm4961927qtv.71.2021.10.02.03.17.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Oct 2021 03:17:41 -0700 (PDT)
Date: Sat, 2 Oct 2021 03:17:29 -0700 (PDT)
From: Hugh Dickins <hughd@google.com>
X-X-Sender: hugh@ripple.anvils
To: Steven Rostedt <rostedt@goodmis.org>
cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, 
 Caz Yokoyama <caz.yokoyama@intel.com>, LKML <linux-kernel@vger.kernel.org>, 
 Linus Torvalds <torvalds@linux-foundation.org>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
In-Reply-To: <20211002020257.34a0e882@oasis.local.home>
Message-ID: <259ff554-76b8-8523-033-9e996f549c70@google.com>
References: <20211002020257.34a0e882@oasis.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [BUG 5.15-rc3] kernel BUG at
 drivers/gpu/drm/i915/i915_sw_fence.c:245!
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

On Sat, 2 Oct 2021, Steven Rostedt wrote:

> When I tried to test patches applied to v5.15-rc3, I hit this bug (and
> hence can not test my code), on 32 bit x86.
> 
> ------------[ cut here ]------------
> kernel BUG at drivers/gpu/drm/i915/i915_sw_fence.c:245!
> invalid opcode: 0000 [#1] SMP PTI
> CPU: 3 PID: 1 Comm: swapper/0 Not tainted 5.14.0-rc1-test+ #456
> Hardware name: MSI MS-7823/CSM-H87M-G43 (MS-7823), BIOS V1.6 02/22/2014
> EIP: __i915_sw_fence_init+0x15/0x38
> Code: 2b 3d 58 98 88 c1 74 05 e8 60 d9 58 00 8d 65 f4 5b 5e 5f 5d c3 3e
> 8d 74 26 00 55 89 e5 56 89 d6 53 85 d2 74 05 f6 c2 03 74 02 <0f> 0b 89
> ca 8b 4d 08 89 c3 e8 48 94 ab ff 89 73 34 c7 43 38 01 00
> EAX: c2508260 EBX: c2508000 ECX: c143de1e EDX: c09dfadd
> ESI: c09dfadd EDI: c45e7200 EBP: c26c9c68 ESP: c26c9c60
> DS: 007b ES: 007b FS: 00d8 GS: 0000 SS: 0068 EFLAGS: 00010202
> CR0: 80050033 CR2: 00000000 CR3: 019e2000 CR4: 001506f0
> Call Trace:
>  intel_context_init+0x112/0x145
>  intel_context_create+0x29/0x37
>  intel_ring_submission_setup+0x3cb/0x5a8
>  ? kfree+0x135/0x1c6
>  ? wa_init_finish+0x32/0x59
>  ? wa_init_finish+0x4f/0x59
>  ? intel_engine_init_ctx_wa+0x39a/0x3b3
>  intel_engines_init+0x2dd/0x4d0
>  ? gen6_bsd_submit_request+0x97/0x97
>  intel_gt_init+0x122/0x20d
>  i915_gem_init+0x80/0xef
>  i915_driver_probe+0x880/0xa90
>  ? i915_pci_remove+0x27/0x27
>  i915_pci_probe+0xdd/0xf6
>  ? __pm_runtime_resume+0x63/0x6b
>  ? i915_pci_remove+0x27/0x27
>  pci_device_probe+0xbc/0x11e
>  really_probe+0x13e/0x328
>  __driver_probe_device+0x140/0x176
>  driver_probe_device+0x1f/0x71
>  __driver_attach+0xf6/0x109
>  ? __device_attach_driver+0xbd/0xbd
>  bus_for_each_dev+0x5b/0x88
>  driver_attach+0x19/0x1b
>  ? __device_attach_driver+0xbd/0xbd
>  bus_add_driver+0xf2/0x199
>  driver_register+0x8c/0xbe
>  __pci_register_driver+0x5b/0x60
>  i915_register_pci_driver+0x19/0x1b
>  i915_init+0x15/0x67
>  ? radeon_module_init+0x6a/0x6a
>  do_one_initcall+0xce/0x21c
>  ? rcu_read_lock_sched_held+0x35/0x6d
>  ? trace_initcall_level+0x5f/0x99
>  kernel_init_freeable+0x1fb/0x247
>  ? rest_init+0x129/0x129
>  kernel_init+0x17/0xfd
>  ret_from_fork+0x1c/0x28
> Modules linked in:
> ---[ end trace 791dc89810d853da ]---
> EIP: __i915_sw_fence_init+0x15/0x38
> Code: 2b 3d 58 98 88 c1 74 05 e8 60 d9 58 00 8d 65 f4 5b 5e 5f 5d c3 3e
> 8d 74 26 00 55 89 e5 56 89 d6 53 85 d2 74 05 f6 c2 03 74 02 <0f> 0b 89
> ca 8b 4d 08 89 c3 e8 48 94 ab ff 89 73 34 c7 43 38 01 00
> EAX: c2508260 EBX: c2508000 ECX: c143de1e EDX: c09dfadd
> ESI: c09dfadd EDI: c45e7200 EBP: c26c9c68 ESP: c26c9c60
> DS: 007b ES: 007b FS: 00d8 GS: 0000 SS: 0068 EFLAGS: 00010202
> CR0: 80050033 CR2: 00000000 CR3: 019e2000 CR4: 001506f0
> Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b
> Kernel Offset: disabled
> ---[ end Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b ]---
> 
> Attached is the dmesg and the config.
> 
> I bisected it down to this commit:
> 
> 3ffe82d701a4 ("drm/i915/xehp: handle new steering options")

Yes (though bisection doesn't work right on this one): the fix
https://lore.kernel.org/lkml/1f955bff-fd9e-d2ee-132a-f758add9e9cb@google.com/
seems to have got lost in the system: it has not even appeared in
linux-next yet. I was going to send a reminder later this weekend.

Here it is again (but edited to replace "__aligned(4)" in the original
by the official "__i915_sw_fence_call" I discovered afterwards; and
ignoring recent discussions of where __attributes ought to appear :-)


[PATCH] drm/i915: fix blank screen booting crashes

5.15-rc1 crashes with blank screen when booting up on two ThinkPads
using i915.  Bisections converge convincingly, but arrive at different
and suprising "culprits", none of them the actual culprit.

netconsole (with init_netconsole() hacked to call i915_init() when
logging has started, instead of by module_init()) tells the story:

kernel BUG at drivers/gpu/drm/i915/i915_sw_fence.c:245!
with RSI: ffffffff814d408b pointing to sw_fence_dummy_notify().
I've been building with CONFIG_CC_OPTIMIZE_FOR_SIZE=y, and that
function needs to be 4-byte aligned.

Fixes: 62eaf0ae217d ("drm/i915/guc: Support request cancellation")
Signed-off-by: Hugh Dickins <hughd@google.com>
---

 drivers/gpu/drm/i915/gt/intel_context.c |    1 +
 1 file changed, 1 insertion(+)

--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -362,6 +362,7 @@ static int __intel_context_active(struct
 	return 0;
 }
 
+__i915_sw_fence_call	/* Respect the I915_SW_FENCE_MASK */
 static int sw_fence_dummy_notify(struct i915_sw_fence *sf,
 				 enum i915_sw_fence_notify state)
 {
