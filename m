Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAE46E73C5
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 09:16:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F097810E24A;
	Wed, 19 Apr 2023 07:16:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0042B10E24A;
 Wed, 19 Apr 2023 07:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681888588; x=1713424588;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=aM5SuTvWuLUsX2JHnRTO4Al5bEvqWQPkgDavQVEVqdQ=;
 b=h6fc33GNPTAd2fSCAM3MN4PsdhArO84RlUTcX97mQWilrytN+/SELFxC
 hSqx4q40SHPCjytFii5+GWbGmIfUr+NEmDFKNyLkeXU8cGnBieuRX2EgD
 CB7A9MPWD0UKD0fp6Uag17HwoKZzh4/COA8BxfbQd04cZ9Pm5EvPwO9z5
 en7sX8tHmyhTCpkjH8DclebVbxulV8RDJ3V0P9M4gipFpbLtyJmDswUGM
 gnWUiOw1bCYH6mC4eI4fqB+zrc1BxCsn0VwhzQfZ9cFcNIyY5gROHo+nN
 56xcZWYZm9q90vVJrmpXkhTPsWUgiIFiKwjl+PC+rB1YapKvb6+L/ih1v w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="324992207"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="324992207"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 00:16:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="668829821"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="668829821"
Received: from mosnatme-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.56.142])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 00:16:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, =?utf-8?Q?Jos=C3=A9?=
 Roberto de Souza <jose.souza@intel.com>
In-Reply-To: <tfvlalzyff5hv5wxid4q5garmiburkapqo6xv3zdrdxicwt2un@64brrcp2ckgb>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230418164337.50303-1-jose.souza@intel.com>
 <uiz4v7ipqtw3mtgvccmi6vgiqojptaahydvh66aaqwq2tvy7sn@ne5s2vatg2zp>
 <tfvlalzyff5hv5wxid4q5garmiburkapqo6xv3zdrdxicwt2un@64brrcp2ckgb>
Date: Wed, 19 Apr 2023 10:16:22 +0300
Message-ID: <878reo1gvt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v4] drm/i915: Initialize dkl_phy
 spin lock from display code path
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 18 Apr 2023, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Tue, Apr 18, 2023 at 11:30:18PM -0700, Lucas De Marchi wrote:
>>On Tue, Apr 18, 2023 at 09:43:37AM -0700, Jose Souza wrote:
>>>Start to move the initialization of display locks from
>>>i915_driver_early_probe(), this way it is also executed when running
>>>Xe kmd.
>>>
>>>This will fix a warning in Xe kmd:
>>>
>>>[  201.894839] xe 0000:00:02.0: [drm] [ENCODER:235:DDI A/PHY A] failed to retrieve link info, disabling eDP
>>>[  202.136336] xe 0000:00:02.0: [drm] *ERROR* Failed to write source OUI
>>>[  202.175346] INFO: trying to register non-static key.
>>>[  202.175347] irq event stamp: 754060
>>>[  202.175359] hardirqs last  enabled at (754059): [<ffffffff8122cf79>] tick_nohz_idle_enter+0x59/0x80
>>>[  202.180294] The code is fine but needs lockdep annotation, or maybe
>>>[  202.183774] hardirqs last disabled at (754060): [<ffffffff811a5539>] do_idle+0x99/0x230
>>>[  202.192734] you didn't initialize this object before use?
>>>[  202.198951] softirqs last  enabled at (753948): [<ffffffff8114abae>] irq_exit_rcu+0xbe/0x130
>>>[  202.206882] turning off the locking correctness validator.
>>>[  202.212236] softirqs last disabled at (753943): [<ffffffff8114abae>] irq_exit_rcu+0xbe/0x130
>>>[  202.220592] CPU: 2 PID: 1415 Comm: modprobe Tainted: G        W          6.3.0-rc4+zeh-xe+ #909
>>>[  202.243002] Hardware name: Intel Corporation Raptor Lake Client Platform/RaptorLake-P LP5 RVP, BIOS RPLPFWI1.R00.3361.A14.2211151548 11/15/2022
>>>[  202.255737] Call Trace:
>>>[  202.258179]  <TASK>
>>>[  202.260275]  dump_stack_lvl+0x58/0xc0
>>>[  202.263922]  register_lock_class+0x756/0x7d0
>>>[  202.268165]  ? find_held_lock+0x2b/0x80
>>>[  202.271975]  __lock_acquire+0x72/0x28b0
>>>[  202.275786]  ? debug_object_free+0xb4/0x160
>>>[  202.279946]  lock_acquire+0xd1/0x2d0
>>>[  202.283503]  ? intel_dkl_phy_read+0x18/0x60 [xe]
>>>[  202.288181]  _raw_spin_lock+0x2a/0x40
>>>[  202.291825]  ? intel_dkl_phy_read+0x18/0x60 [xe]
>>>[  202.296475]  intel_dkl_phy_read+0x18/0x60 [xe]
>>>[  202.300949]  icl_aux_power_well_enable+0x2bd/0x400 [xe]
>>>[  202.306202]  ? intel_display_power_grab_async_put_ref+0x75/0x120 [xe]
>>>[  202.312649]  intel_power_well_enable+0x1c/0x70 [xe]
>>>[  202.317543]  __intel_display_power_get_domain.part.0+0x4d/0x70 [xe]
>>>[  202.323812]  intel_display_power_get+0x43/0x70 [xe]
>>>[  202.328708]  intel_tc_port_init+0x199/0x2a0 [xe]
>>>[  202.333363]  intel_ddi_init+0x6ad/0xb00 [xe]
>>>[  202.337678]  intel_modeset_init_nogem+0x536/0x6d0 [xe]
>>>[  202.342838]  xe_display_init_noaccel+0x19/0x40 [xe]
>>>[  202.347743]  xe_device_probe+0x1f5/0x2a0 [xe]
>>>[  202.352127]  xe_pci_probe+0x28c/0x480 [xe]
>>>[  202.356260]  pci_device_probe+0x9d/0x150
>>>[  202.360164]  really_probe+0x19a/0x400
>>>[  202.363809]  ? __pfx___driver_attach+0x10/0x10
>>>[  202.368226]  __driver_probe_device+0x73/0x170
>>>[  202.372558]  driver_probe_device+0x1a/0x90
>>>[  202.376632]  __driver_attach+0xcd/0x1c0
>>>[  202.380442]  bus_for_each_dev+0x72/0xc0
>>>[  202.384253]  bus_add_driver+0x110/0x210
>>>[  202.388063]  driver_register+0x50/0x100
>>>[  202.391873]  ? __pfx_init_module+0x10/0x10 [xe]
>>>[  202.396431]  do_one_initcall+0x55/0x260
>>>[  202.400245]  ? rcu_is_watching+0xd/0x40
>>>[  202.404058]  ? kmalloc_trace+0xa0/0xb0
>>>[  202.407786]  do_init_module+0x45/0x1e0
>>>[  202.411512]  __do_sys_finit_module+0xac/0x120
>>>[  202.415838]  do_syscall_64+0x37/0x90
>>>[  202.419397]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
>>>[  202.424409] RIP: 0033:0x7fd11291ea3d
>>>[  202.427967] Code: 5b 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d c3 a3 0f 00 f7 d8 64 89 01 48
>>>[  202.446530] RSP: 002b:00007ffffde11368 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
>>>[  202.454031] RAX: ffffffffffffffda RBX: 00005616a617f210 RCX: 00007fd11291ea3d
>>>[  202.461106] RDX: 0000000000000000 RSI: 00005616a617fe60 RDI: 000000000000000e
>>>[  202.468182] RBP: 0000000000040000 R08: 0000000000000000 R09: 0000000000000002
>>>[  202.475250] R10: 000000000000000e R11: 0000000000000246 R12: 00005616a617fe60
>>>[  202.482319] R13: 00005616a617f340 R14: 0000000000000000 R15: 00005616a6180650
>>>[  202.489396]  </TASK>
>>>
>>>v2:
>>>- added intel_display_locks_init()
>>>
>>>v3:
>>>- rebased
>>>
>>>v4:
>>>- drop intel_display_locks_init()
>>
>>why?
>
> ah... ok, now we have intel_display_driver_early_probe(). I thought you
> were dropping the call from i915_driver.c 
>
> Remaining question for display: do we want to spread the lock
> initialization to each compilation unit?  Or should we just keep a
>
> 	static locks_init() { <all the locks here> }
>
> the lock init seems a very cheap init that maybe doesn't deserve to be
> spread. Then this patch could just move all the mutexes initialization
> that were left behind.

I still think if only one file uses something, then that file should
include the init for it too, and nobody else should touch it. Including
locks. Ideally, they would be stowed away in allocated opaque structs
that can't even be accessed (or initialized) by anyone else.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
