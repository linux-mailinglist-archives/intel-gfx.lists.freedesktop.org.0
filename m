Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA87AFCE80
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 17:03:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3011410E67E;
	Tue,  8 Jul 2025 15:03:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H+UA1Pje";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE91C10E67E
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jul 2025 15:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751987027; x=1783523027;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=r2dSYoR3YXyCdBtxbzEh75s8oHPBBfphxHyavGqtVLA=;
 b=H+UA1PjeAWuKem9UHNH4r/9qA4gBLbfQijVTddhbaqiqJebxDW0FrKsU
 MIRJ4jXdXQpym9HId+jwXYjpUYnmgJVop3JX/t530mPdWCiDdGxjv2QV0
 sGfzM5cSAoAodi6zOHLQXeIVl7D7u7ZxqZdUtdWNrHYQMB0YVxnY8l1lz
 Rqr9625HfoIHloRhmk0UxrJOBfpUjyyjldHm/uUnhyucFDRJXZrtVn4Hk
 65o4kcxp9hBZzShSPewVFJo3g2BS5mimqiLQpxscMk2kbwlR6CXAf9pfU
 18G53qWxvYxvND8iS5X+w7tZ1M0E6UY2lZv7NYNlRoAe5aI8gmqm5438E g==;
X-CSE-ConnectionGUID: WGoyoDRHSUSldVeQL3ILxQ==
X-CSE-MsgGUID: wfjLUzDLQSu89GGihoCfUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="53944114"
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="53944114"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 08:03:36 -0700
X-CSE-ConnectionGUID: kizf/xffQvSGUuyaIHtg9w==
X-CSE-MsgGUID: ZIYwXNbeTvO2w1zuo6PJJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="161160231"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.55])
 by orviesa005.jf.intel.com with SMTP; 08 Jul 2025 08:03:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Jul 2025 18:03:33 +0300
Date: Tue, 8 Jul 2025 18:03:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: i915 splat: RPM raw-wakeref not held, fwtable_read32
Message-ID: <aG0zRTw4Hi-PQWNf@intel.com>
References: <aG0tWkfmxWtxl_xc@zx2c4.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aG0tWkfmxWtxl_xc@zx2c4.com>
X-Patchwork-Hint: comment
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

On Tue, Jul 08, 2025 at 04:38:18PM +0200, Jason A. Donenfeld wrote:
> Hi,
> 
> I'm seeing this splat on 6.16-rc5. i7-11850H.

Presumably a regression from commit 8d9908e8fe9c ("drm/i915/display: 
remove small micro-optimizations in irq handling")

I suppose we should just add intel_display_rpm_assert_{block,unblock}()
around that stuff.

Though arguably this GU_MISC irq handling shouldn't even be in the
display code since it's a Gunit interrupt, but I suppose it got moved
because we only enable the GSE interrupt which is only used for
display related stuff.

> 
> Thanks,
> Jason
> 
> [41251.218499] ------------[ cut here ]------------
> [41251.218502] RPM raw-wakeref not held
> [41251.218528] WARNING: CPU: 6 PID: 3718 at drivers/gpu/drm/i915/intel_runtime_pm.h:116 fwtable_read32+0x1c2/0x290 [i915]
> [41251.218620] CPU: 6 UID: 1000 PID: 3718 Comm: chrome Tainted: G S   U              6.16.0-rc5+ #448 PREEMPT
> [41251.218623] Tainted: [S]=CPU_OUT_OF_SPEC, [U]=USER
> [41251.218623] Hardware name: LENOVO 20Y5CTO1WW/20Y5CTO1WW, BIOS N40ET39W (1.21 ) 12/01/2022
> [41251.218624] RIP: 0010:fwtable_read32+0x1c2/0x290 [i915]
> [41251.218651] Code: 4c 89 ff e8 40 d0 ff ff eb 92 80 3d 43 0b 20 00 00 0f 85 87 fe ff ff 48 c7 c7 0f 3c b9 a0 c6 05 2f 0b 20 00 01 e8 be 17 aa e0 <0f> 0b e9 6d fe ff ff 80 3d 1b 0b 20 00 00 0f 85 69 fe ff ff 48 c7
> [41251.218652] RSP: 0000:ffff88815facfe30 EFLAGS: 00010086
> [41251.218653] RAX: 0000000000000018 RBX: 0000000000000000 RCX: 0000000000000027
> [41251.218654] RDX: ffff88901f597848 RSI: 0000000000000001 RDI: ffff88901f597840
> [41251.218654] RBP: 00000000000444f8 R08: 00000000ffffdfff R09: 0000000000000000
> [41251.218655] R10: 0000000000000003 R11: 0000000000000433 R12: 0000000000000000
> [41251.218655] R13: 00000000000000c6 R14: 0000000000000001 R15: ffff8881059fdbe8
> [41251.218656] FS:  00007f74dac2dec0(0000) GS:ffff88909cafa000(0000) knlGS:0000000000000000
> [41251.218657] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [41251.218657] CR2: 00007f74d9a4a52c CR3: 0000000116b45002 CR4: 0000000000772ef0
> [41251.218658] PKRU: 55555554
> [41251.218658] Call Trace:
> [41251.218660]  <TASK>
> [41251.218661]  gen11_gu_misc_irq_ack+0x3a/0x90 [i915]
> [41251.218709]  gen11_irq_handler+0x6d/0xc0 [i915]
> [41251.218733]  __handle_irq_event_percpu+0x3b/0x190
> [41251.218737]  handle_irq_event+0x2f/0x80
> [41251.218739]  handle_edge_irq+0x7d/0x1a0
> [41251.218740]  __common_interrupt+0x34/0x90
> [41251.218743]  common_interrupt+0x3e/0xa0
> [41251.218746]  asm_common_interrupt+0x22/0x40
> [41251.218747] RIP: 0033:0x564713a396c9
> [41251.218748] Code: 89 ed b8 01 00 00 00 66 2e 0f 1f 84 00 00 00 00 00 4c 89 ce 48 c1 ee 2a 49 c1 e9 30 c4 e2 c9 f7 f3 4a 09 74 cc 30 4c 8b 4d 00 <4d> 85 c9 0f 84 d8 00 00 00 4d 89 ef 4d 21 c7 49 89 d4 4c 89 c6 49
> [41251.218749] RSP: 002b:00007fffdf8442b0 EFLAGS: 00000206
> [41251.218750] RAX: 0000000000000004 RBX: 0000000000000001 RCX: 0000275c0b948000
> [41251.218750] RDX: 0000275c00000000 RSI: 0000000000001000 RDI: 0000000000000000
> [41251.218751] RBP: 0000275c0b94a600 R08: fffffffc00000000 R09: 80a6940b00000000
> [41251.218751] R10: 0000000800000000 R11: ffffffffffffffff R12: 0000275c0b94a600
> [41251.218752] R13: 0000275c0b94a600 R14: 0000275800000000 R15: 000000000b94a600
> [41251.218753]  </TASK>
> [41251.218753] ---[ end trace 0000000000000000 ]---
> [41251.218754] ------------[ cut here ]------------
> [41251.218754] RPM wakelock ref not held during HW access
> [41251.218760] WARNING: CPU: 6 PID: 3718 at drivers/gpu/drm/i915/intel_runtime_pm.h:124 fwtable_read32+0x1e9/0x290 [i915]
> [41251.218820] CPU: 6 UID: 1000 PID: 3718 Comm: chrome Tainted: G S   U  W           6.16.0-rc5+ #448 PREEMPT
> [41251.218822] Tainted: [S]=CPU_OUT_OF_SPEC, [U]=USER, [W]=WARN
> [41251.218822] Hardware name: LENOVO 20Y5CTO1WW/20Y5CTO1WW, BIOS N40ET39W (1.21 ) 12/01/2022
> [41251.218823] RIP: 0010:fwtable_read32+0x1e9/0x290 [i915]
> [41251.218847] Code: 17 aa e0 0f 0b e9 6d fe ff ff 80 3d 1b 0b 20 00 00 0f 85 69 fe ff ff 48 c7 c7 28 b4 b4 a0 c6 05 07 0b 20 00 01 e8 97 17 aa e0 <0f> 0b e9 4f fe ff ff 49 8b bf 58 01 00 00 48 85 ff 0f 84 63 fe ff
> [41251.218848] RSP: 0000:ffff88815facfe30 EFLAGS: 00010086
> [41251.218848] RAX: 000000000000002a RBX: 0000000000000000 RCX: 0000000000000027
> [41251.218849] RDX: ffff88901f597848 RSI: 0000000000000001 RDI: ffff88901f597840
> [41251.218849] RBP: 00000000000444f8 R08: 00000000ffffdfff R09: 0000000000000000
> [41251.218850] R10: 0000000000000003 R11: 000000000000045c R12: 0000000000000000
> [41251.218850] R13: 00000000000000c6 R14: 0000000000000001 R15: ffff8881059fdbe8
> [41251.218851] FS:  00007f74dac2dec0(0000) GS:ffff88909cafa000(0000) knlGS:0000000000000000
> [41251.218852] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [41251.218852] CR2: 00007f74d9a4a52c CR3: 0000000116b45002 CR4: 0000000000772ef0
> [41251.218853] PKRU: 55555554
> [41251.218853] Call Trace:
> [41251.218853]  <TASK>
> [41251.218854]  gen11_gu_misc_irq_ack+0x3a/0x90 [i915]
> [41251.218896]  gen11_irq_handler+0x6d/0xc0 [i915]
> [41251.218919]  __handle_irq_event_percpu+0x3b/0x190
> [41251.218920]  handle_irq_event+0x2f/0x80
> [41251.218921]  handle_edge_irq+0x7d/0x1a0
> [41251.218923]  __common_interrupt+0x34/0x90
> [41251.218924]  common_interrupt+0x3e/0xa0
> [41251.218926]  asm_common_interrupt+0x22/0x40
> [41251.218926] RIP: 0033:0x564713a396c9
> [41251.218927] Code: 89 ed b8 01 00 00 00 66 2e 0f 1f 84 00 00 00 00 00 4c 89 ce 48 c1 ee 2a 49 c1 e9 30 c4 e2 c9 f7 f3 4a 09 74 cc 30 4c 8b 4d 00 <4d> 85 c9 0f 84 d8 00 00 00 4d 89 ef 4d 21 c7 49 89 d4 4c 89 c6 49
> [41251.218927] RSP: 002b:00007fffdf8442b0 EFLAGS: 00000206
> [41251.218928] RAX: 0000000000000004 RBX: 0000000000000001 RCX: 0000275c0b948000
> [41251.218928] RDX: 0000275c00000000 RSI: 0000000000001000 RDI: 0000000000000000
> [41251.218929] RBP: 0000275c0b94a600 R08: fffffffc00000000 R09: 80a6940b00000000
> [41251.218929] R10: 0000000800000000 R11: ffffffffffffffff R12: 0000275c0b94a600
> [41251.218930] R13: 0000275c0b94a600 R14: 0000275800000000 R15: 000000000b94a600
> [41251.218931]  </TASK>
> [41251.218931] ---[ end trace 0000000000000000 ]---
> [41680.714071] i915 0000:00:02.0: Using 39-bit DMA addresses

-- 
Ville Syrjälä
Intel
