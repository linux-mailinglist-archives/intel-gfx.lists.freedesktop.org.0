Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADE86E4DDB
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 17:59:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E41CC10E40D;
	Mon, 17 Apr 2023 15:59:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC1E110E419;
 Mon, 17 Apr 2023 15:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681747138; x=1713283138;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+bf3g7DEupjk3db0oJpPwvhwi83iJ+w9SdZ6wPSXd8c=;
 b=katSQ5kZ9Z8nCKMN5gxXDVuJ/doN+q4awEy8lBzNh/4WQW/Bb6GKZjzz
 u1lK65oKxJ2haRKvJZuRcp6I4FjiqNjfuyWRO/a+u8pAD7fQFvgS1bQ5G
 TjygjnW2XofaspCphpkJtgfzV8IK9R0cI/y7fpl03mrfYkelylp1njBBk
 h5j0Mc8YXYmb4dD1B69hs7o2pPmPnAZUIMSlU7a9O73z/sUbLzdUyW3bv
 0Pd6WayPrtTWEJdVBsCIGTU6DaVgXF30Y+dFYY9ybny1//Ofcw+nHhk0e
 efxwW1jn4f5Dqh5mtCfHxQt4Ld75miDcw1VrN4hL+PRVyCcz28MSClVAc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="372805026"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="372805026"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 08:58:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="690718618"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="690718618"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.148])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 08:58:55 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Apr 2023 08:58:48 -0700
Message-Id: <20230417155849.60297-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915: Initialize dkl_phy spin lock from
 display code path
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Start to move the initialization of display locks from
i915_driver_early_probe(), this way it is also executed when running
Xe kmd.

This will fix a warning in Xe kmd:

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

v2:
- added intel_display_locks_init()

v3:
- rebased

Cc: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_dkl_phy.c        | 5 +++++
 drivers/gpu/drm/i915/display/intel_dkl_phy.h        | 1 +
 drivers/gpu/drm/i915/i915_driver.c                  | 1 -
 4 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index b3dbfe2a892e6..5e587b972ce0a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -30,6 +30,7 @@
 #include "intel_display_driver.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
+#include "intel_dkl_phy.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
 #include "intel_dpll.h"
@@ -170,11 +171,18 @@ static void intel_plane_possible_crtcs_init(struct drm_i915_private *dev_priv)
 	}
 }
 
+static void
+intel_display_locks_init(struct drm_i915_private *i915)
+{
+	intel_dkl_phy_init(i915);
+}
+
 void intel_display_driver_early_probe(struct drm_i915_private *i915)
 {
 	if (!HAS_DISPLAY(i915))
 		return;
 
+	intel_display_locks_init(i915);
 	intel_color_init_hooks(i915);
 	intel_init_cdclk_hooks(i915);
 	intel_audio_hooks_init(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
index 57cc3edba0163..69d863dfb3a03 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
@@ -104,3 +104,8 @@ intel_dkl_phy_posting_read(struct drm_i915_private *i915, struct intel_dkl_phy_r
 
 	spin_unlock(&i915->display.dkl.phy_lock);
 }
+
+void intel_dkl_phy_init(struct drm_i915_private *i915)
+{
+	spin_lock_init(&i915->display.dkl.phy_lock);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.h b/drivers/gpu/drm/i915/display/intel_dkl_phy.h
index 570ee36f9386f..a0183d322e058 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.h
@@ -20,5 +20,6 @@ void
 intel_dkl_phy_rmw(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg, u32 clear, u32 set);
 void
 intel_dkl_phy_posting_read(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg);
+void intel_dkl_phy_init(struct drm_i915_private *i915);
 
 #endif /* __INTEL_DKL_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index a52db8a809006..fd198700272b1 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -223,7 +223,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	mutex_init(&dev_priv->display.wm.wm_mutex);
 	mutex_init(&dev_priv->display.pps.mutex);
 	mutex_init(&dev_priv->display.hdcp.comp_mutex);
-	spin_lock_init(&dev_priv->display.dkl.phy_lock);
 
 	i915_memcpy_init_early(dev_priv);
 	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
-- 
2.40.0

