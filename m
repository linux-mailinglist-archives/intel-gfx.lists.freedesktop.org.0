Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D621EAA725F
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 14:43:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4410010E192;
	Fri,  2 May 2025 12:43:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CX6i+vdA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BDAC10E192;
 Fri,  2 May 2025 12:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746189807; x=1777725807;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=eGlk8tDfek17myGxrm76+wbsrGXz/JoMadZgwULGCnM=;
 b=CX6i+vdAgqJbvtfdyzuMlJ6Hit0/bgEbEj5eWf9FX9/WuZEM1ygJLXNO
 JrnKcosencysmhly3L25rLauUagA/eO2x0WIxI0dxKUrOPvayjLlWPdqW
 /MzJVoE/Mar3e9NbTDInsBrhSNxfCVirwWSOuH3PqxUsa3SylPnEvIBQn
 G8pbMln8ly7uQpPBNl27T1mKbqLYp6XucOeIB9is9eThiA2l5943q9GvE
 nYr+fkO9C518uP7M4HrZVGcn1G2kyXprhokzMznDBNb27me+TEF/zrm/J
 KBjvApgPGZXPoDmMKenbfDCrLLKIckS8K+sIUnMGt27kBZ5DKUo3o6QQ6 g==;
X-CSE-ConnectionGUID: OYJW8olAQH+Tmi/2Hf82bg==
X-CSE-MsgGUID: sH9BrxPDTyuXtWTQdrcoAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11421"; a="48011493"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="48011493"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 05:43:26 -0700
X-CSE-ConnectionGUID: vwAiWRjMQM2q2mdKAx9ajg==
X-CSE-MsgGUID: NZ0aEJ+BTdynxd+swnb/8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="134589917"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 05:43:24 -0700
Date: Fri, 2 May 2025 15:43:21 +0300
From: Raag Jadav <raag.jadav@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Wang, X" <x.wang@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: Rare divide error during display resume
Message-ID: <aBS96fLjUvWp071L@black.fi.intel.com>
References: <aA5xvOhy9qKiVcE0@black.fi.intel.com> <87ldrkyc6s.fsf@intel.com>
 <aA81eHChYSQMYrOB@black.fi.intel.com>
 <2ffe2f710fc22c8af43cc9d15a5c992a546ee37d.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2ffe2f710fc22c8af43cc9d15a5c992a546ee37d.camel@intel.com>
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

On Tue, Apr 29, 2025 at 01:16:56AM +0530, Vivi, Rodrigo wrote:
> On Mon, 2025-04-28 at 10:59 +0300, Raag Jadav wrote:
> > On Mon, Apr 28, 2025 at 10:31:23AM +0300, Jani Nikula wrote:
> > > 
> > > PCI ID of the platform? 
> > 
> > Apologies for missing information.
> > 
> > BMG ID: 0xe20b
> > 
> > Side note: I came across this while debugging possible vram
> > corruption.
> > But regardless of it, we should atleast not be oopsing IMHO.
> > 
> 
> Yeap, there are 2 misterious BMG bugs related to off->on scenarios
> and depending on the host+BMG combination:
> 
> 1. D3Cold -> D0 blows up with PCI upper bridge port link training
> failing and device lost
> 2. D3Cold -> D0 or S3 -> S0: Some random memory corruptions.
> 
> It looks like you hit the second case here. And you have the Raptor
> Lake board what is another indication.
> 
> Cc: Xin (X Wang) who is working on this case number 2. 
> 
> https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/4037
> jira GSD-10774
> 
> The mitigation for the case number 2 is to disable RC6 in the BIOS
> afaik.

The signature seems different here. In any case, perhaps some of the
corner cases left uncovered in PM path that need revisiting.

Raag

> > > On Sun, 27 Apr 2025, Raag Jadav <raag.jadav@intel.com> wrote:
> > > > I came across this while testing an unrelated feature. It's not
> > > > easily
> > > > reproducible so thought I'd share here.
> > > > 
> > > > [ 1802.992726] PM: suspend entry (s2idle)
> > > > [ 1802.993986] Filesystems sync: 0.001 seconds
> > > > [ 1826.223060] xe 0000:03:00.0: [drm] *ERROR* Writing dc state to
> > > > 0xbffffff4 failed, now 0xffffffff
> > > > [ 1826.315308] xe 0000:03:00.0: [drm] *ERROR* DC state mismatch
> > > > (0x0 -> 0x4000000b)
> > > > [ 1830.528929] xe 0000:03:00.0: [drm] *ERROR* Writing dc state to
> > > > 0xbffffff4 failed, now 0xffffffff
> > > > [ 1831.130028] xe 0000:03:00.0: [drm] *ERROR* timeout waiting for
> > > > CDCLK PLL unlock
> > > > [ 1831.140420] Oops: divide error: 0000 [#1] PREEMPT SMP NOPTI
> > > > [ 1831.145976] CPU: 14 UID: 0 PID: 9834 Comm: kworker/u128:32
> > > > Kdump: loaded Tainted: G     U  W          6.14.0-xe+ #14
> > > > [ 1831.156426] Tainted: [U]=USER, [W]=WARN
> > > > [ 1831.160246] Hardware name: Intel Corporation Raptor Lake
> > > > Client Platform/RPL-S ADP-S DDR5 UDIMM CRB, BIOS
> > > > RPLSFWI1.R00.5045.A00.2401260733 01/26/2024
> > > > [ 1831.173536] Workqueue: async async_run_entry_fn
> > > > [ 1831.178051] RIP: 0010:bxt_cdclk_ctl.isra.0+0x6c/0x2a0 [xe]
> > > > [ 1831.183599] Code: c2 c1 e1 04 0f b7 f8 f3 0f b8 c7 90 0f af c3
> > > > 85 c0 40 0f 9e c6 85 c9 0f 9f c2 40 38 d6 89 ca 0f 84 71 01 00 00
> > > > d1 fa 01 d0 99 <f7> f9 83 f8 04 0f 84 71 01 00 00 0f 8f 90 00 00
> > > > 00 45 31 ff 83 f8
> > > > [ 1831.202219] RSP: 0018:ffffc9000b69fa18 EFLAGS: 00010246
> > > > [ 1831.207419] RAX: 0000000000000000 RBX: 0000000000000000 RCX:
> > > > 0000000000000000
> > > > [ 1831.214515] RDX: 0000000000000000 RSI: 0000000000000001 RDI:
> > > > 000000000000ffff
> > > > [ 1831.221611] RBP: ffffc9000b69fa58 R08: 0000000000000000 R09:
> > > > ffffc9000b69f858
> > > > [ 1831.228706] R10: ffffc9000b69f850 R11: ffff88888c5fffe8 R12:
> > > > 0000000000000000
> > > > [ 1831.235796] R13: ffff888173adb3f0 R14: ffffffffffffffff R15:
> > > > 0000000000000000
> > > > [ 1831.242891] FS:  0000000000000000(0000)
> > > > GS:ffff88888d500000(0000) knlGS:0000000000000000
> > > > [ 1831.250931] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > > [ 1831.256647] CR2: 00005632ddf55000 CR3: 0000000003258001 CR4:
> > > > 0000000000f72ef0
> > > > [ 1831.263741] PKRU: 55555554
> > > > [ 1831.266450] Call Trace:
> > > > [ 1831.268900]  <TASK>
> > > > [ 1831.271006]  ? show_regs+0x6d/0x80
> > > > [ 1831.274400]  ? die+0x3c/0xa0
> > > > [ 1831.277276]  ? do_trap+0xcf/0xf0
> > > > [ 1831.280497]  ? do_error_trap+0x7a/0x100
> > > > [ 1831.284319]  ? bxt_cdclk_ctl.isra.0+0x6c/0x2a0 [xe]
> > > > [ 1831.289264]  ? exc_divide_error+0x3f/0x60
> > > > [ 1831.293260]  ? bxt_cdclk_ctl.isra.0+0x6c/0x2a0 [xe]
> > > > [ 1831.298200]  ? asm_exc_divide_error+0x1f/0x30
> > > > [ 1831.302539]  ? bxt_cdclk_ctl.isra.0+0x6c/0x2a0 [xe]
> > > > [ 1831.307479]  ? bxt_cdclk_ctl.isra.0+0x35/0x2a0 [xe]
> > > > [ 1831.312421]  ? cdclk_squash_waveform+0x9f/0xc0 [xe]
> > > > [ 1831.317361]  _bxt_set_cdclk+0x295/0x650 [xe]
> > > > [ 1831.321699]  bxt_set_cdclk+0x80/0x570 [xe]
> > > > [ 1831.325863]  ? bxt_calc_cdclk_pll_vco+0xa2/0xc0 [xe]
> > > > [ 1831.330890]  intel_cdclk_init_hw+0x238/0x470 [xe]
> > > > [ 1831.335655]  icl_display_core_init+0xde/0x800 [xe]
> > > > [ 1831.340513]  intel_power_domains_init_hw+0x1bc/0x660 [xe]
> > > > [ 1831.345972]  intel_power_domains_resume+0xa4/0x100 [xe]
> > > > [ 1831.351256]  intel_display_power_resume_early+0x5a/0xf0 [xe]
> > > > [ 1831.356971]  xe_display_pm_resume_early+0x27/0x30 [xe]
> > > > [ 1831.362172]  xe_pm_resume+0x12c/0x280 [xe]
> > > > [ 1831.366324]  ? __pfx_pci_pm_resume+0x10/0x10
> > > > [ 1831.370580]  xe_pci_resume+0x60/0x70 [xe]
> > > > [ 1831.374645]  pci_pm_resume+0x78/0x110
> > > > [ 1831.378300]  dpm_run_callback+0x58/0x100
> > > > [ 1831.382213]  device_resume+0x13c/0x350
> > > > [ 1831.385950]  ? __pfx_dpm_watchdog_handler+0x10/0x10
> > > > [ 1831.390808]  async_resume+0x22/0x40
> > > > [ 1831.394287]  async_run_entry_fn+0x36/0x140
> > > > [ 1831.398368]  process_one_work+0x217/0x680
> > > > [ 1831.402365]  worker_thread+0x1a2/0x340
> > > > [ 1831.406103]  ? __pfx_worker_thread+0x10/0x10
> > > > [ 1831.410358]  kthread+0x10b/0x270
> > > > [ 1831.413585]  ? __pfx_kthread+0x10/0x10
> > > > [ 1831.417324]  ret_from_fork+0x3d/0x60
> > > > [ 1831.420894]  ? __pfx_kthread+0x10/0x10
> > > > [ 1831.424632]  ret_from_fork_asm+0x1a/0x30
> > > > [ 1831.428546]  </TASK>
> > > 
> > > -- 
> > > Jani Nikula, Intel
