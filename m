Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC306DCACB
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Apr 2023 20:32:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F377010E117;
	Mon, 10 Apr 2023 18:32:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C047C10E117;
 Mon, 10 Apr 2023 18:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681151545; x=1712687545;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uAamV6O3kl7gaIs3vlh3ZmxHMVFc8PWoVTfPlPhwWks=;
 b=LoLIoLKMOTtGJoha/ff7nl5FvzLnZtMQTgvhWb7G+3fBHEMurj0sLRQH
 Ya/nd+cNaakWBgChfdLQtSfo4Gt4jshzdB5rXT7S3wAS87w7xR1HZ3Ytp
 SYPPegFzJY0rBgMkTFwepdd3xhmI07zB4ONFq8e8PGG74PF8XaS6Lf09R
 JXpdm+Bf1CtPPceT3v0+L0um6QP//F+pOkFaCErOKRLsn1vElIk/XtyrK
 2MiGK86EMaBH2pAkYEgT4dR7owY5gDLU8SW/9NynW4Db+3qwf5agGs6fO
 ZvdGSsCkZhbP6i4Mrkk6V/KF31AAiKUrSff/UXF+4x3t3pWtOLmEKAoAY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="408563404"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="408563404"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 11:32:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="681800957"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="681800957"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.148])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 11:32:22 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Mon, 10 Apr 2023 11:32:14 -0700
Message-Id: <20230410183219.191543-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/6] drm/i915: Initialize dkl_phy spin lock
 from display code path
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Start to move the initialization of some lock from
i915_driver_early_probe().
No dkl function is called prior to intel_setup_outputs(), so this is
a good place to initialize it.

This will also fix a warning in Xe kmd:

[  201.894839] xe 0000:00:02.0: [drm] [ENCODER:235:DDI A/PHY A] failed to retrieve link info, disabling eDP
[  202.136336] xe 0000:00:02.0: [drm] *ERROR* Failed to write source OUI
[  202.175346] INFO: trying to register non-static key.
[  202.175347] irq event stamp: 754060
[  202.175359] hardirqs last  enabled at (754059): [<ffffffff8122cf79>] tick_nohz_idle_enter+0x59/0x80
[  202.180294] The code is fine but needs lockdep annotation, or maybe
[  202.183774] hardirqs last disabled at (754060): [<ffffffff811a5539>] do_idle+0x99/0x230
[  202.192734] you didn't initialize this object before use?
[  202.198951] softirqs last  enabled at (753948): [<ffffffff8114abae>] irq_exit_rcu+0xbe/0x130
[  202.206882] turning off the locking correctness validator.
[  202.212236] softirqs last disabled at (753943): [<ffffffff8114abae>] irq_exit_rcu+0xbe/0x130
[  202.220592] CPU: 2 PID: 1415 Comm: modprobe Tainted: G        W          6.3.0-rc4+zeh-xe+ #909
[  202.243002] Hardware name: Intel Corporation Raptor Lake Client Platform/RaptorLake-P LP5 RVP, BIOS RPLPFWI1.R00.3361.A14.2211151548 11/15/2022
[  202.255737] Call Trace:
[  202.258179]  <TASK>
[  202.260275]  dump_stack_lvl+0x58/0xc0
[  202.263922]  register_lock_class+0x756/0x7d0
[  202.268165]  ? find_held_lock+0x2b/0x80
[  202.271975]  __lock_acquire+0x72/0x28b0
[  202.275786]  ? debug_object_free+0xb4/0x160
[  202.279946]  lock_acquire+0xd1/0x2d0
[  202.283503]  ? intel_dkl_phy_read+0x18/0x60 [xe]
[  202.288181]  _raw_spin_lock+0x2a/0x40
[  202.291825]  ? intel_dkl_phy_read+0x18/0x60 [xe]
[  202.296475]  intel_dkl_phy_read+0x18/0x60 [xe]
[  202.300949]  icl_aux_power_well_enable+0x2bd/0x400 [xe]
[  202.306202]  ? intel_display_power_grab_async_put_ref+0x75/0x120 [xe]
[  202.312649]  intel_power_well_enable+0x1c/0x70 [xe]
[  202.317543]  __intel_display_power_get_domain.part.0+0x4d/0x70 [xe]
[  202.323812]  intel_display_power_get+0x43/0x70 [xe]
[  202.328708]  intel_tc_port_init+0x199/0x2a0 [xe]
[  202.333363]  intel_ddi_init+0x6ad/0xb00 [xe]
[  202.337678]  intel_modeset_init_nogem+0x536/0x6d0 [xe]
[  202.342838]  xe_display_init_noaccel+0x19/0x40 [xe]
[  202.347743]  xe_device_probe+0x1f5/0x2a0 [xe]
[  202.352127]  xe_pci_probe+0x28c/0x480 [xe]
[  202.356260]  pci_device_probe+0x9d/0x150
[  202.360164]  really_probe+0x19a/0x400
[  202.363809]  ? __pfx___driver_attach+0x10/0x10
[  202.368226]  __driver_probe_device+0x73/0x170
[  202.372558]  driver_probe_device+0x1a/0x90
[  202.376632]  __driver_attach+0xcd/0x1c0
[  202.380442]  bus_for_each_dev+0x72/0xc0
[  202.384253]  bus_add_driver+0x110/0x210
[  202.388063]  driver_register+0x50/0x100
[  202.391873]  ? __pfx_init_module+0x10/0x10 [xe]
[  202.396431]  do_one_initcall+0x55/0x260
[  202.400245]  ? rcu_is_watching+0xd/0x40
[  202.404058]  ? kmalloc_trace+0xa0/0xb0
[  202.407786]  do_init_module+0x45/0x1e0
[  202.411512]  __do_sys_finit_module+0xac/0x120
[  202.415838]  do_syscall_64+0x37/0x90
[  202.419397]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
[  202.424409] RIP: 0033:0x7fd11291ea3d
[  202.427967] Code: 5b 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d c3 a3 0f 00 f7 d8 64 89 01 48
[  202.446530] RSP: 002b:00007ffffde11368 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
[  202.454031] RAX: ffffffffffffffda RBX: 00005616a617f210 RCX: 00007fd11291ea3d
[  202.461106] RDX: 0000000000000000 RSI: 00005616a617fe60 RDI: 000000000000000e
[  202.468182] RBP: 0000000000040000 R08: 0000000000000000 R09: 0000000000000002
[  202.475250] R10: 000000000000000e R11: 0000000000000246 R12: 00005616a617fe60
[  202.482319] R13: 00005616a617f340 R14: 0000000000000000 R15: 00005616a6180650
[  202.489396]  </TASK>

Cc: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 +++
 drivers/gpu/drm/i915/display/intel_dkl_phy.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_dkl_phy.h | 2 ++
 drivers/gpu/drm/i915/i915_driver.c           | 1 -
 4 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 24c96f388d521..cf3a3b3afdd13 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -83,6 +83,7 @@
 #include "intel_display_debugfs.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
+#include "intel_dkl_phy.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
@@ -7883,6 +7884,8 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
+	intel_dkl_phy_init(dev_priv);
+
 	if (IS_DG2(dev_priv)) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
index 57cc3edba0163..5bce7b5b27bc7 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
@@ -104,3 +104,9 @@ intel_dkl_phy_posting_read(struct drm_i915_private *i915, struct intel_dkl_phy_r
 
 	spin_unlock(&i915->display.dkl.phy_lock);
 }
+
+void
+intel_dkl_phy_init(struct drm_i915_private *i915)
+{
+	spin_lock_init(&i915->display.dkl.phy_lock);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.h b/drivers/gpu/drm/i915/display/intel_dkl_phy.h
index 570ee36f9386f..615429b6392c5 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.h
@@ -20,5 +20,7 @@ void
 intel_dkl_phy_rmw(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg, u32 clear, u32 set);
 void
 intel_dkl_phy_posting_read(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg);
+void
+intel_dkl_phy_init(struct drm_i915_private *i915);
 
 #endif /* __INTEL_DKL_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 066d79c2069c4..6fe1a97cc246d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -224,7 +224,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	mutex_init(&dev_priv->display.wm.wm_mutex);
 	mutex_init(&dev_priv->display.pps.mutex);
 	mutex_init(&dev_priv->display.hdcp.comp_mutex);
-	spin_lock_init(&dev_priv->display.dkl.phy_lock);
 
 	i915_memcpy_init_early(dev_priv);
 	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
-- 
2.40.0

