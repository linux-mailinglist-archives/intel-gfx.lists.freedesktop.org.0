Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 907EA6B0E9A
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 17:25:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FCE510E656;
	Wed,  8 Mar 2023 16:25:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE1D510E677
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 16:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678292708; x=1709828708;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KcdXJplZr4vUOyPIxu3LIH5H1JmSkjiMKTo/ZLW7PZc=;
 b=LQdRbDvtOf60InTomLRUYST9UecM2wRce24mqAMGkBcaGf4f0sp00xtt
 sICnhWfVFxyEP6Ev79VFr88reHF28dT9xe/WRvByamOkOET4PO16IxpMh
 f5lkYZW46eA4wiROl4BTv2WzhmsoTAsedLdIY9zTAOjB/EfRMoICyF1fj
 mo9lFoltlvCcKG+7eZOo0YYt3dB2AOz9SzwahtnU2At2zKZXJiMdcoL0Y
 GNI/N3qhaDGALPlcnwioQVcEmqIRZSuwCRB3T/lDX/CAkegL2+vx3Xs4A
 iyoO3JD4eYkimAd81R26KfZ44l2jUBGNoEkhNN16UtnPB+jJr+eqhcNzB Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="422471580"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="422471580"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 08:25:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="626976785"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="626976785"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 08:25:04 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Mar 2023 18:25:01 +0200
Message-Id: <20230308162503.3219200-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/3] drm/i915/opregion: Fix opregion setup during
 system resume on platforms without display
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Atm, during system resume, the driver updates the display connector
information required by the opregion video extensions during system
resume, on platforms both with and without display being present. On
!HAS_DISPLAY platforms this will result in the crash with the stack
trace below, since the driver's connector state is not initialized on
those.

Bspec doesn't specify when each of the opregion functionality is
supported (depending on the presence of display), however we can presume
that none of the video extensions, nor the ACPI _DSM functions are
supported on !HAS_DISPLAY platforms; accordingly skip the corresponding
opregion/ACPI setup on those (also matching the Windows driver in this).

Keep sending the opregion notification about suspending/resuming the
whole adapter (vs. the display only which is a separate power state
notification) on all platforms, similarly to runtime suspend/resume.

This fixes the following:
Oops: 0000 [#1] PREEMPT SMP NOPTI
CPU: 4 PID: 1443 Comm: kworker/u40:55 Tainted: G U 6.2.0-rc8+ #58
Hardware name: LENOVO 82VB/LNVNB161216, BIOS KMCN09WW 04/26/2022
Workqueue: events_unbound async_run_entry_fn
RIP: 0010:drm_connector_list_iter_next+0x4f/0xb0

Call Trace:
 <TASK>
 intel_acpi_device_id_update+0x80/0x160 [i915]
 intel_opregion_resume+0x2f/0x1e0 [i915]
 ? dg2_init_clock_gating+0x49/0xf0 [i915]
 i915_drm_resume+0x137/0x190 [i915]
 ? __pfx_pci_pm_resume+0x10/0x10
 dpm_run_callback+0x47/0x150

Cc: iczero <iczero@hellomouse.net>
Reported-and-tested-by: iczero <iczero@hellomouse.net>
References: https://gitlab.freedesktop.org/drm/intel/-/issues/8015
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 36 +++++++++++++------
 1 file changed, 26 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index b8dce0576512a..bbcc2142d7df5 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1159,13 +1159,10 @@ void intel_opregion_register(struct drm_i915_private *i915)
 	intel_opregion_resume(i915);
 }
 
-void intel_opregion_resume(struct drm_i915_private *i915)
+static void intel_opregion_resume_display(struct drm_i915_private *i915)
 {
 	struct intel_opregion *opregion = &i915->display.opregion;
 
-	if (!opregion->header)
-		return;
-
 	if (opregion->acpi) {
 		intel_didl_outputs(i915);
 		intel_setup_cadls(i915);
@@ -1186,19 +1183,25 @@ void intel_opregion_resume(struct drm_i915_private *i915)
 
 	/* Some platforms abuse the _DSM to enable MUX */
 	intel_dsm_get_bios_data_funcs_supported(i915);
+}
+
+void intel_opregion_resume(struct drm_i915_private *i915)
+{
+	struct intel_opregion *opregion = &i915->display.opregion;
+
+	if (!opregion->header)
+		return;
+
+	if (HAS_DISPLAY(i915))
+		intel_opregion_resume_display(i915);
 
 	intel_opregion_notify_adapter(i915, PCI_D0);
 }
 
-void intel_opregion_suspend(struct drm_i915_private *i915, pci_power_t state)
+static void intel_opregion_suspend_display(struct drm_i915_private *i915)
 {
 	struct intel_opregion *opregion = &i915->display.opregion;
 
-	if (!opregion->header)
-		return;
-
-	intel_opregion_notify_adapter(i915, state);
-
 	if (opregion->asle)
 		opregion->asle->ardy = ASLE_ARDY_NOT_READY;
 
@@ -1208,6 +1211,19 @@ void intel_opregion_suspend(struct drm_i915_private *i915, pci_power_t state)
 		opregion->acpi->drdy = 0;
 }
 
+void intel_opregion_suspend(struct drm_i915_private *i915, pci_power_t state)
+{
+	struct intel_opregion *opregion = &i915->display.opregion;
+
+	if (!opregion->header)
+		return;
+
+	intel_opregion_notify_adapter(i915, state);
+
+	if (HAS_DISPLAY(i915))
+		intel_opregion_suspend_display(i915);
+}
+
 void intel_opregion_unregister(struct drm_i915_private *i915)
 {
 	struct intel_opregion *opregion = &i915->display.opregion;
-- 
2.37.1

