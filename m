Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC5EB1B2F5
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 13:59:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD8CF10E045;
	Tue,  5 Aug 2025 11:59:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OwvQOfH+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FA1210E045
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Aug 2025 11:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754395177; x=1785931177;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OOwoi0d3JdfD5NSXz7gF0UsB6OkVDxulm8Tv2TETC+g=;
 b=OwvQOfH++fTryPBOIUm9ZTa3NM8FpRSHrCzhdHfXKB8t99QpzVtvyQZi
 r6nil+Eh54h9lUXN9TjsrqPF8A2OQ/e0YpPM/EGcCZ/D96L0slHnFdk/N
 aLvskjA+I5r5T5g9hir0h56GwUaPsDwmUyoPF8VsM8ECRVlb2gtw/Y9zR
 EA3q4tAy2IUQLdWn7ZkBVX8YssnFt9k4V2nOJ2MBJ1qTeFjjK7nbrL4g3
 SxV37Wf3lp2riQ98rfODEiwWKaNgmIrnotoF5i1pjavgujuHZ0WVLnw6Z
 7YZ9EvWeVrAF+0lNgJsKdcmUoYuuqtQAfGavE2Qj1tkM+44n04o9qQJkl g==;
X-CSE-ConnectionGUID: 0NISopP9RZGpieTHAY7y8Q==
X-CSE-MsgGUID: FHaZ/WniTKeg4vUeF7iUKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="67389488"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="67389488"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 04:59:37 -0700
X-CSE-ConnectionGUID: +KnnzZPATZ+to+5UjpCgXA==
X-CSE-MsgGUID: m2LvVgTOQp6elBsjcYwSDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="164374873"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.8])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 04:59:34 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, "Jason A. Donenfeld"
 <Jason@zx2c4.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: i915 splat: RPM raw-wakeref not held, fwtable_read32
In-Reply-To: <aG18UCFD2-bZZFLV@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <aG0tWkfmxWtxl_xc@zx2c4.com> <aG18UCFD2-bZZFLV@intel.com>
Date: Tue, 05 Aug 2025 14:59:31 +0300
Message-ID: <fd1d2aa3c782c1a788901ade5242010f69f4d9fb@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 08 Jul 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Jul 08, 2025 at 04:38:18PM +0200, Jason A. Donenfeld wrote:
>> Hi,
>> 
>> I'm seeing this splat on 6.16-rc5. i7-11850H.
>
> Hi Jason,
>
> Could you please file a bug in our gitlab/issues so we can properly
> address and track that?
>
> https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html

If [1] fixes the issue and passes review, I think we can bypass filing
the bug. ;)

BR,
Jani.


[1] https://lore.kernel.org/r/20250805115656.832235-1-jani.nikula@intel.com

>
> Thanks in advance,
> Rodrigo.
>
>> 
>> Thanks,
>> Jason
>> 
>> [41251.218499] ------------[ cut here ]------------
>> [41251.218502] RPM raw-wakeref not held
>> [41251.218528] WARNING: CPU: 6 PID: 3718 at drivers/gpu/drm/i915/intel_runtime_pm.h:116 fwtable_read32+0x1c2/0x290 [i915]
>> [41251.218620] CPU: 6 UID: 1000 PID: 3718 Comm: chrome Tainted: G S   U              6.16.0-rc5+ #448 PREEMPT
>> [41251.218623] Tainted: [S]=CPU_OUT_OF_SPEC, [U]=USER
>> [41251.218623] Hardware name: LENOVO 20Y5CTO1WW/20Y5CTO1WW, BIOS N40ET39W (1.21 ) 12/01/2022
>> [41251.218624] RIP: 0010:fwtable_read32+0x1c2/0x290 [i915]
>> [41251.218651] Code: 4c 89 ff e8 40 d0 ff ff eb 92 80 3d 43 0b 20 00 00 0f 85 87 fe ff ff 48 c7 c7 0f 3c b9 a0 c6 05 2f 0b 20 00 01 e8 be 17 aa e0 <0f> 0b e9 6d fe ff ff 80 3d 1b 0b 20 00 00 0f 85 69 fe ff ff 48 c7
>> [41251.218652] RSP: 0000:ffff88815facfe30 EFLAGS: 00010086
>> [41251.218653] RAX: 0000000000000018 RBX: 0000000000000000 RCX: 0000000000000027
>> [41251.218654] RDX: ffff88901f597848 RSI: 0000000000000001 RDI: ffff88901f597840
>> [41251.218654] RBP: 00000000000444f8 R08: 00000000ffffdfff R09: 0000000000000000
>> [41251.218655] R10: 0000000000000003 R11: 0000000000000433 R12: 0000000000000000
>> [41251.218655] R13: 00000000000000c6 R14: 0000000000000001 R15: ffff8881059fdbe8
>> [41251.218656] FS:  00007f74dac2dec0(0000) GS:ffff88909cafa000(0000) knlGS:0000000000000000
>> [41251.218657] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> [41251.218657] CR2: 00007f74d9a4a52c CR3: 0000000116b45002 CR4: 0000000000772ef0
>> [41251.218658] PKRU: 55555554
>> [41251.218658] Call Trace:
>> [41251.218660]  <TASK>
>> [41251.218661]  gen11_gu_misc_irq_ack+0x3a/0x90 [i915]
>> [41251.218709]  gen11_irq_handler+0x6d/0xc0 [i915]
>> [41251.218733]  __handle_irq_event_percpu+0x3b/0x190
>> [41251.218737]  handle_irq_event+0x2f/0x80
>> [41251.218739]  handle_edge_irq+0x7d/0x1a0
>> [41251.218740]  __common_interrupt+0x34/0x90
>> [41251.218743]  common_interrupt+0x3e/0xa0
>> [41251.218746]  asm_common_interrupt+0x22/0x40
>> [41251.218747] RIP: 0033:0x564713a396c9
>> [41251.218748] Code: 89 ed b8 01 00 00 00 66 2e 0f 1f 84 00 00 00 00 00 4c 89 ce 48 c1 ee 2a 49 c1 e9 30 c4 e2 c9 f7 f3 4a 09 74 cc 30 4c 8b 4d 00 <4d> 85 c9 0f 84 d8 00 00 00 4d 89 ef 4d 21 c7 49 89 d4 4c 89 c6 49
>> [41251.218749] RSP: 002b:00007fffdf8442b0 EFLAGS: 00000206
>> [41251.218750] RAX: 0000000000000004 RBX: 0000000000000001 RCX: 0000275c0b948000
>> [41251.218750] RDX: 0000275c00000000 RSI: 0000000000001000 RDI: 0000000000000000
>> [41251.218751] RBP: 0000275c0b94a600 R08: fffffffc00000000 R09: 80a6940b00000000
>> [41251.218751] R10: 0000000800000000 R11: ffffffffffffffff R12: 0000275c0b94a600
>> [41251.218752] R13: 0000275c0b94a600 R14: 0000275800000000 R15: 000000000b94a600
>> [41251.218753]  </TASK>
>> [41251.218753] ---[ end trace 0000000000000000 ]---
>> [41251.218754] ------------[ cut here ]------------
>> [41251.218754] RPM wakelock ref not held during HW access
>> [41251.218760] WARNING: CPU: 6 PID: 3718 at drivers/gpu/drm/i915/intel_runtime_pm.h:124 fwtable_read32+0x1e9/0x290 [i915]
>> [41251.218820] CPU: 6 UID: 1000 PID: 3718 Comm: chrome Tainted: G S   U  W           6.16.0-rc5+ #448 PREEMPT
>> [41251.218822] Tainted: [S]=CPU_OUT_OF_SPEC, [U]=USER, [W]=WARN
>> [41251.218822] Hardware name: LENOVO 20Y5CTO1WW/20Y5CTO1WW, BIOS N40ET39W (1.21 ) 12/01/2022
>> [41251.218823] RIP: 0010:fwtable_read32+0x1e9/0x290 [i915]
>> [41251.218847] Code: 17 aa e0 0f 0b e9 6d fe ff ff 80 3d 1b 0b 20 00 00 0f 85 69 fe ff ff 48 c7 c7 28 b4 b4 a0 c6 05 07 0b 20 00 01 e8 97 17 aa e0 <0f> 0b e9 4f fe ff ff 49 8b bf 58 01 00 00 48 85 ff 0f 84 63 fe ff
>> [41251.218848] RSP: 0000:ffff88815facfe30 EFLAGS: 00010086
>> [41251.218848] RAX: 000000000000002a RBX: 0000000000000000 RCX: 0000000000000027
>> [41251.218849] RDX: ffff88901f597848 RSI: 0000000000000001 RDI: ffff88901f597840
>> [41251.218849] RBP: 00000000000444f8 R08: 00000000ffffdfff R09: 0000000000000000
>> [41251.218850] R10: 0000000000000003 R11: 000000000000045c R12: 0000000000000000
>> [41251.218850] R13: 00000000000000c6 R14: 0000000000000001 R15: ffff8881059fdbe8
>> [41251.218851] FS:  00007f74dac2dec0(0000) GS:ffff88909cafa000(0000) knlGS:0000000000000000
>> [41251.218852] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> [41251.218852] CR2: 00007f74d9a4a52c CR3: 0000000116b45002 CR4: 0000000000772ef0
>> [41251.218853] PKRU: 55555554
>> [41251.218853] Call Trace:
>> [41251.218853]  <TASK>
>> [41251.218854]  gen11_gu_misc_irq_ack+0x3a/0x90 [i915]
>> [41251.218896]  gen11_irq_handler+0x6d/0xc0 [i915]
>> [41251.218919]  __handle_irq_event_percpu+0x3b/0x190
>> [41251.218920]  handle_irq_event+0x2f/0x80
>> [41251.218921]  handle_edge_irq+0x7d/0x1a0
>> [41251.218923]  __common_interrupt+0x34/0x90
>> [41251.218924]  common_interrupt+0x3e/0xa0
>> [41251.218926]  asm_common_interrupt+0x22/0x40
>> [41251.218926] RIP: 0033:0x564713a396c9
>> [41251.218927] Code: 89 ed b8 01 00 00 00 66 2e 0f 1f 84 00 00 00 00 00 4c 89 ce 48 c1 ee 2a 49 c1 e9 30 c4 e2 c9 f7 f3 4a 09 74 cc 30 4c 8b 4d 00 <4d> 85 c9 0f 84 d8 00 00 00 4d 89 ef 4d 21 c7 49 89 d4 4c 89 c6 49
>> [41251.218927] RSP: 002b:00007fffdf8442b0 EFLAGS: 00000206
>> [41251.218928] RAX: 0000000000000004 RBX: 0000000000000001 RCX: 0000275c0b948000
>> [41251.218928] RDX: 0000275c00000000 RSI: 0000000000001000 RDI: 0000000000000000
>> [41251.218929] RBP: 0000275c0b94a600 R08: fffffffc00000000 R09: 80a6940b00000000
>> [41251.218929] R10: 0000000800000000 R11: ffffffffffffffff R12: 0000275c0b94a600
>> [41251.218930] R13: 0000275c0b94a600 R14: 0000275800000000 R15: 000000000b94a600
>> [41251.218931]  </TASK>
>> [41251.218931] ---[ end trace 0000000000000000 ]---
>> [41680.714071] i915 0000:00:02.0: Using 39-bit DMA addresses

-- 
Jani Nikula, Intel
