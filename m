Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7D58D1576
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 09:46:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D219610E097;
	Tue, 28 May 2024 07:46:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j3FeiCCH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92D8310E097
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 07:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716882380; x=1748418380;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JeVwiLQwwwp5mhGLHI7OOVXsuM6HX8f0mU6lblXWOkY=;
 b=j3FeiCCHQ4JwmHYM3KOzkcuAcU7YXndlem74Y1b7rXCnaaggGTQHickH
 jaIyONrihURekib4u3y8220eQP1+PPs05z06EIGF7ibiZmUa6ZnTg1Ov2
 /ZJZKV/zCOjWdE47zXkshZ9uEtCsKoN1zIyQOYhbyS//wXW3cJXDtRtQq
 6BKGvycZWLi+WmibSgjRbUZr4eTSinGP7rIbpkC0ldPG+PPZNepmcRRnX
 GOKH7BfBFdYaAwzsPMydcEROSQyw2AvkgktuFs2dc74s/6nbz19zDIJK3
 7suVZ+QAJGUWsc2J1LstFHKZYAQnkxoNXlsbd6Vf03S1gb+2+AaDqovUd Q==;
X-CSE-ConnectionGUID: 45kbDHspS4aSwol7DiDeMg==
X-CSE-MsgGUID: hjSsXvAxTIeXUrXH5kms/Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="23766541"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="23766541"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 00:46:20 -0700
X-CSE-ConnectionGUID: NaO2sUKjSxeHsvTjyemQzA==
X-CSE-MsgGUID: oaim6OL3QjWNA+4JA2oJJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="39807459"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 00:46:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [core-for-CI PATCH] Revert "igc: fix a log entry using uninitialized
 netdev"
Date: Tue, 28 May 2024 10:46:14 +0300
Message-Id: <20240528074614.3306301-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

This reverts commit 86167183a17e03ec77198897975e9fdfbd53cb0b.

The commit moved igc_ptp_init() which initializes spinlocks after
igt_reset() which ends up using the adapter->ptp_tx_lock. Lockdep isn't
happy:

<3>[   10.648947] INFO: trying to register non-static key.
<3>[   10.648950] The code is fine but needs lockdep annotation, or maybe
<3>[   10.648951] you didn't initialize this object before use?
<3>[   10.648952] turning off the locking correctness validator.
<4>[   10.648954] CPU: 2 PID: 313 Comm: systemd-udevd Not tainted 6.9.0-next-20240513-next-20240513-g6ba6c795dc73+ #1
<4>[   10.648958] Hardware name: Intel Corporation Arrow Lake Client Platform/MTL-S UDIMM 2DPC EVCRB, BIOS MTLSFWI1.R00.3473.D80.2311222130 11/22/2023
<4>[   10.648960] Call Trace:
<4>[   10.648962]  <TASK>
<4>[   10.648964]  dump_stack_lvl+0x82/0xd0
<4>[   10.648971]  register_lock_class+0x795/0x7e0
<4>[   10.648978]  ? __free_object+0xa1/0x340
<4>[   10.648983]  ? lockdep_hardirqs_on+0xc1/0x140
<4>[   10.648990]  __lock_acquire+0x75/0x2260
<4>[   10.648993]  ? __switch_to+0x123/0x600
<4>[   10.648997]  ? _raw_spin_unlock_irqrestore+0x58/0x70
<4>[   10.649002]  lock_acquire+0xd9/0x2f0
<4>[   10.649006]  ? igc_ptp_clear_tx_tstamp+0x28/0x60 [igc]
<4>[   10.649027]  _raw_spin_lock_irqsave+0x3d/0x60
<4>[   10.649030]  ? igc_ptp_clear_tx_tstamp+0x28/0x60 [igc]
<4>[   10.649038]  igc_ptp_clear_tx_tstamp+0x28/0x60 [igc]
<4>[   10.649048]  igc_ptp_set_timestamp_mode.isra.0+0x20b/0x230 [igc]
<4>[   10.649056]  igc_ptp_reset+0x31/0x180 [igc]
<4>[   10.649066]  igc_reset+0xb4/0x100 [igc]
<4>[   10.649079]  igc_probe+0x797/0x8e0 [igc]
<4>[   10.649091]  pci_device_probe+0x95/0x120
<4>[   10.649095]  really_probe+0xd9/0x370
<4>[   10.649099]  ? __pfx___driver_attach+0x10/0x10
<4>[   10.649101]  __driver_probe_device+0x73/0x150
<4>[   10.649103]  driver_probe_device+0x19/0xa0
<4>[   10.649105]  __driver_attach+0xb6/0x180
<4>[   10.649107]  ? __pfx___driver_attach+0x10/0x10
<4>[   10.649109]  bus_for_each_dev+0x77/0xd0
<4>[   10.649114]  bus_add_driver+0x110/0x240
<4>[   10.649117]  driver_register+0x5b/0x110
<4>[   10.649120]  ? __pfx_igc_init_module+0x10/0x10 [igc]
<4>[   10.649130]  do_one_initcall+0x5c/0x2b0
<4>[   10.649134]  ? kmalloc_trace_noprof+0x22f/0x290
<4>[   10.649141]  ? do_init_module+0x1e/0x210
<4>[   10.669989]  do_init_module+0x5f/0x210
<4>[   10.669993]  load_module+0x1d44/0x1fc0
<4>[   10.670001]  ? init_module_from_file+0x86/0xd0
<4>[   10.670004]  init_module_from_file+0x86/0xd0
<4>[   10.670009]  idempotent_init_module+0x17c/0x230
<4>[   10.670015]  __x64_sys_finit_module+0x56/0xb0
<4>[   10.670019]  do_syscall_64+0x69/0x140
<4>[   10.670023]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
<4>[   10.670027] RIP: 0033:0x7f6d2704595d
<4>[   10.670030] Code: 00 c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48
8b 0d 03 35 0d 00 f7 d8 64 89 01 48
<4>[   10.670032] RSP: 002b:00007ffc72aad018 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
<4>[   10.670036] RAX: ffffffffffffffda RBX: 000055d3f0e69690 RCX: 00007f6d2704595d
<4>[   10.670038] RDX: 0000000000000000 RSI: 00007f6d26f25ded RDI: 0000000000000010
<4>[   10.670039] RBP: 0000000000020000 R08: 0000000000000000 R09: 0000000000000000
<4>[   10.670041] R10: 0000000000000010 R11: 0000000000000246 R12: 00007f6d26f25ded
<4>[   10.670042] R13: 0000000000000000 R14: 000055d3f0c64d20 R15: 000055d3f0e69690
<4>[   10.670046]  </TASK>
<6>[   10.672046] pps pps0: new PPS source ptp0

References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11198
References: https://lore.kernel.org/r/87o78rmkhu.fsf@intel.com
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 12f004f46082..ace2fbfd87d6 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7028,6 +7028,8 @@ static int igc_probe(struct pci_dev *pdev,
 	device_set_wakeup_enable(&adapter->pdev->dev,
 				 adapter->flags & IGC_FLAG_WOL_SUPPORTED);
 
+	igc_ptp_init(adapter);
+
 	igc_tsn_clear_schedule(adapter);
 
 	/* reset the hardware with the new settings */
@@ -7049,9 +7051,6 @@ static int igc_probe(struct pci_dev *pdev,
 	/* Check if Media Autosense is enabled */
 	adapter->ei = *ei;
 
-	/* do hw tstamp init after resetting */
-	igc_ptp_init(adapter);
-
 	/* print pcie link status and MAC address */
 	pcie_print_link_status(pdev);
 	netdev_info(netdev, "MAC: %pM\n", netdev->dev_addr);
-- 
2.39.2

