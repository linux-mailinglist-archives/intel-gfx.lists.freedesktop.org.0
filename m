Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E94CC38D1C6
	for <lists+intel-gfx@lfdr.de>; Sat, 22 May 2021 01:01:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49E636E8A1;
	Fri, 21 May 2021 23:01:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE4AA6E8AE
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 23:01:18 +0000 (UTC)
IronPort-SDR: DA28oFE0AJ5h4Rz0X+XrgYNo3uvi07S5zYUPlxCgFIs9Jqkx08W3Wr5f/gffw/lEqip571qalo
 IaHu3vE1JjgQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9991"; a="188717270"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="188717270"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 16:01:16 -0700
IronPort-SDR: 0W+6tY9n2NqK4z5tuTeRqYHpNyHO51fx6A+Yhw74HrMqbLeVXuo6jeR11H4Tx4qrSBgeqM8UKK
 VWCULQAOmbrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="395509557"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga003.jf.intel.com with ESMTP; 21 May 2021 16:01:16 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 May 2021 16:01:09 -0700
Message-Id: <20210521230114.2563-3-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210521230114.2563-1-anusha.srivatsa@intel.com>
References: <20210521230114.2563-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/dmc: Add intel_dmc_has_payload()
 helper
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We check for dmc_payload being there at various points in the driver.
Replace it with the helper.

v2: rebased.
v3: Move intel_dmc to intel_dmc.h in another patch (Lucas)
v4: Remove headers not needed from intel_dmc.h

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../gpu/drm/i915/display/intel_display_debugfs.c |  4 ++--
 .../gpu/drm/i915/display/intel_display_power.c   | 16 ++++++++--------
 drivers/gpu/drm/i915/display/intel_dmc.c         | 13 +++++++++----
 drivers/gpu/drm/i915/display/intel_dmc.h         |  1 +
 drivers/gpu/drm/i915/i915_gpu_error.c            |  2 +-
 5 files changed, 21 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 94e5cbd86e77..88bb05d5c483 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -542,10 +542,10 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
 
 	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 
-	seq_printf(m, "fw loaded: %s\n", yesno(dmc->dmc_payload));
+	seq_printf(m, "fw loaded: %s\n", yesno(intel_dmc_has_payload(dev_priv)));
 	seq_printf(m, "path: %s\n", dmc->fw_path);
 
-	if (!dmc->dmc_payload)
+	if (!intel_dmc_has_payload(dev_priv))
 		goto out;
 
 	seq_printf(m, "version: %d.%d\n", DMC_VERSION_MAJOR(dmc->version),
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 991ceea06a07..b546672c9b00 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1220,7 +1220,7 @@ static void gen9_dc_off_power_well_enable(struct drm_i915_private *dev_priv,
 static void gen9_dc_off_power_well_disable(struct drm_i915_private *dev_priv,
 					   struct i915_power_well *power_well)
 {
-	if (!dev_priv->dmc.dmc_payload)
+	if (!intel_dmc_has_payload(dev_priv))
 		return;
 
 	switch (dev_priv->dmc.target_dc_state) {
@@ -5579,7 +5579,7 @@ static void skl_display_core_init(struct drm_i915_private *dev_priv,
 
 	gen9_dbuf_enable(dev_priv);
 
-	if (resume && dev_priv->dmc.dmc_payload)
+	if (resume && intel_dmc_has_payload(dev_priv))
 		intel_dmc_load_program(dev_priv);
 }
 
@@ -5646,7 +5646,7 @@ static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume
 
 	gen9_dbuf_enable(dev_priv);
 
-	if (resume && dev_priv->dmc.dmc_payload)
+	if (resume && intel_dmc_has_payload(dev_priv))
 		intel_dmc_load_program(dev_priv);
 }
 
@@ -5712,7 +5712,7 @@ static void cnl_display_core_init(struct drm_i915_private *dev_priv, bool resume
 	/* 6. Enable DBUF */
 	gen9_dbuf_enable(dev_priv);
 
-	if (resume && dev_priv->dmc.dmc_payload)
+	if (resume && intel_dmc_has_payload(dev_priv))
 		intel_dmc_load_program(dev_priv);
 }
 
@@ -5869,7 +5869,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	if (DISPLAY_VER(dev_priv) >= 12)
 		tgl_bw_buddy_init(dev_priv);
 
-	if (resume && dev_priv->dmc.dmc_payload)
+	if (resume && intel_dmc_has_payload(dev_priv))
 		intel_dmc_load_program(dev_priv);
 
 	/* Wa_14011508470 */
@@ -6230,7 +6230,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915,
 	 */
 	if (!(i915->dmc.allowed_dc_mask & DC_STATE_EN_DC9) &&
 	    suspend_mode == I915_DRM_SUSPEND_IDLE &&
-	    i915->dmc.dmc_payload) {
+	    intel_dmc_has_payload(i915)) {
 		intel_display_power_flush_work(i915);
 		intel_power_domains_verify_state(i915);
 		return;
@@ -6420,7 +6420,7 @@ void intel_display_power_resume(struct drm_i915_private *i915)
 	if (DISPLAY_VER(i915) >= 11) {
 		bxt_disable_dc9(i915);
 		icl_display_core_init(i915, true);
-		if (i915->dmc.dmc_payload) {
+		if (intel_dmc_has_payload(i915)) {
 			if (i915->dmc.allowed_dc_mask &
 			    DC_STATE_EN_UPTO_DC6)
 				skl_enable_dc6(i915);
@@ -6431,7 +6431,7 @@ void intel_display_power_resume(struct drm_i915_private *i915)
 	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
 		bxt_disable_dc9(i915);
 		bxt_display_core_init(i915, true);
-		if (i915->dmc.dmc_payload &&
+		if (intel_dmc_has_payload(i915) &&
 		    (i915->dmc.allowed_dc_mask & DC_STATE_EN_UPTO_DC5))
 			gen9_enable_dc5(i915);
 	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 5887453ff302..f9a0f194f9cf 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -237,6 +237,11 @@ struct stepping_info {
 	char substepping;
 };
 
+bool intel_dmc_has_payload(struct drm_i915_private *i915)
+{
+	return i915->dmc.dmc_payload;
+}
+
 static const struct stepping_info skl_stepping_info[] = {
 	{'A', '0'}, {'B', '0'}, {'C', '0'},
 	{'D', '0'}, {'E', '0'}, {'F', '0'},
@@ -320,7 +325,7 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 		return;
 	}
 
-	if (!dev_priv->dmc.dmc_payload) {
+	if (!intel_dmc_has_payload(dev_priv)) {
 		drm_err(&dev_priv->drm,
 			"Tried to program CSR with empty payload\n");
 		return;
@@ -656,7 +661,7 @@ static void dmc_load_work_fn(struct work_struct *work)
 	request_firmware(&fw, dev_priv->dmc.fw_path, dev_priv->drm.dev);
 	parse_dmc_fw(dev_priv, fw);
 
-	if (dev_priv->dmc.dmc_payload) {
+	if (intel_dmc_has_payload(dev_priv)) {
 		intel_dmc_load_program(dev_priv);
 		intel_dmc_runtime_pm_put(dev_priv);
 
@@ -785,7 +790,7 @@ void intel_dmc_ucode_suspend(struct drm_i915_private *dev_priv)
 	flush_work(&dev_priv->dmc.work);
 
 	/* Drop the reference held in case DMC isn't loaded. */
-	if (!dev_priv->dmc.dmc_payload)
+	if (!intel_dmc_has_payload(dev_priv))
 		intel_dmc_runtime_pm_put(dev_priv);
 }
 
@@ -805,7 +810,7 @@ void intel_dmc_ucode_resume(struct drm_i915_private *dev_priv)
 	 * Reacquire the reference to keep RPM disabled in case DMC isn't
 	 * loaded.
 	 */
-	if (!dev_priv->dmc.dmc_payload)
+	if (!intel_dmc_has_payload(dev_priv))
 		intel_dmc_runtime_pm_get(dev_priv);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 57dd99da0ced..64816f4a71b6 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -17,5 +17,6 @@ void intel_dmc_load_program(struct drm_i915_private *i915);
 void intel_dmc_ucode_fini(struct drm_i915_private *i915);
 void intel_dmc_ucode_suspend(struct drm_i915_private *i915);
 void intel_dmc_ucode_resume(struct drm_i915_private *i915);
+bool intel_dmc_has_payload(struct drm_i915_private *i915);
 
 #endif /* __INTEL_DMC_H__ */
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 8b964e355cb5..833d3e8b7631 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -792,7 +792,7 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 		struct intel_dmc *dmc = &m->i915->dmc;
 
 		err_printf(m, "DMC loaded: %s\n",
-			   yesno(dmc->dmc_payload));
+			   yesno(intel_dmc_has_payload(m->i915) != 0));
 		err_printf(m, "DMC fw version: %d.%d\n",
 			   DMC_VERSION_MAJOR(dmc->version),
 			   DMC_VERSION_MINOR(dmc->version));
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
