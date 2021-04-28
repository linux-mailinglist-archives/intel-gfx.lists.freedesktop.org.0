Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 491C536E0CF
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 23:13:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81D5D6E19A;
	Wed, 28 Apr 2021 21:13:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 256B86EC43
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 21:13:04 +0000 (UTC)
IronPort-SDR: 1rzwaxALPFnBXiV33sgHqaYU9nSPn6iAQLGUZ2Zxk+gG4sAPLeLQJwkcJmsDDRGG6DgoUMHGY3
 o9Mh5IMN2Vfg==
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="193665211"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="193665211"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 14:13:02 -0700
IronPort-SDR: /lPBaOln0H1w25Ql0oEtPGWfpvgYmcJH1Vt2BFJRRaem+8YwLOe1bd0Nvq5diYEDREcJjI8CS6
 Onz+w2JZ/+JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="423716017"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga008.fm.intel.com with ESMTP; 28 Apr 2021 14:13:01 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Apr 2021 14:12:48 -0700
Message-Id: <20210428211249.11037-3-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210428211249.11037-1-anusha.srivatsa@intel.com>
References: <20210428211249.11037-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/csr: Add
 intel_csr_has_dmc_payload() helper
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

While at it moving bits related to CSR to intel_csr.h

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_csr.c      | 13 +++++++----
 drivers/gpu/drm/i915/display/intel_csr.h      | 23 +++++++++++++++++++
 .../drm/i915/display/intel_display_debugfs.c  |  4 ++--
 .../drm/i915/display/intel_display_power.c    | 16 ++++++-------
 drivers/gpu/drm/i915/i915_drv.h               | 18 +--------------
 drivers/gpu/drm/i915/i915_gpu_error.c         |  2 +-
 6 files changed, 44 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
index bf60c3ffdf5d..66d369ec4f02 100644
--- a/drivers/gpu/drm/i915/display/intel_csr.c
+++ b/drivers/gpu/drm/i915/display/intel_csr.c
@@ -238,6 +238,11 @@ struct stepping_info {
 	char substepping;
 };
 
+bool intel_csr_has_dmc_payload(struct drm_i915_private *dev_priv)
+{
+	return dev_priv->csr.dmc_payload;
+}
+
 static const struct stepping_info skl_stepping_info[] = {
 	{'A', '0'}, {'B', '0'}, {'C', '0'},
 	{'D', '0'}, {'E', '0'}, {'F', '0'},
@@ -321,7 +326,7 @@ void intel_csr_load_program(struct drm_i915_private *dev_priv)
 		return;
 	}
 
-	if (!dev_priv->csr.dmc_payload) {
+	if (!intel_csr_has_dmc_payload(dev_priv)) {
 		drm_err(&dev_priv->drm,
 			"Tried to program CSR with empty payload\n");
 		return;
@@ -655,7 +660,7 @@ static void csr_load_work_fn(struct work_struct *work)
 	request_firmware(&fw, dev_priv->csr.fw_path, dev_priv->drm.dev);
 	parse_csr_fw(dev_priv, fw);
 
-	if (dev_priv->csr.dmc_payload) {
+	if (intel_csr_has_dmc_payload(dev_priv)) {
 		intel_csr_load_program(dev_priv);
 		intel_csr_runtime_pm_put(dev_priv);
 
@@ -784,7 +789,7 @@ void intel_csr_ucode_suspend(struct drm_i915_private *dev_priv)
 	flush_work(&dev_priv->csr.work);
 
 	/* Drop the reference held in case DMC isn't loaded. */
-	if (!dev_priv->csr.dmc_payload)
+	if (!intel_csr_has_dmc_payload(dev_priv))
 		intel_csr_runtime_pm_put(dev_priv);
 }
 
@@ -804,7 +809,7 @@ void intel_csr_ucode_resume(struct drm_i915_private *dev_priv)
 	 * Reacquire the reference to keep RPM disabled in case DMC isn't
 	 * loaded.
 	 */
-	if (!dev_priv->csr.dmc_payload)
+	if (!intel_csr_has_dmc_payload(dev_priv))
 		intel_csr_runtime_pm_get(dev_priv);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_csr.h b/drivers/gpu/drm/i915/display/intel_csr.h
index 03c64f8af7ab..9cab82dfb1ed 100644
--- a/drivers/gpu/drm/i915/display/intel_csr.h
+++ b/drivers/gpu/drm/i915/display/intel_csr.h
@@ -6,6 +6,10 @@
 #ifndef __INTEL_CSR_H__
 #define __INTEL_CSR_H__
 
+#include <drm/drm_util.h>
+#include "intel_wakeref.h"
+#include "i915_reg.h"
+
 struct drm_i915_private;
 
 #define CSR_VERSION(major, minor)	((major) << 16 | (minor))
@@ -18,4 +22,23 @@ void intel_csr_ucode_fini(struct drm_i915_private *i915);
 void intel_csr_ucode_suspend(struct drm_i915_private *i915);
 void intel_csr_ucode_resume(struct drm_i915_private *i915);
 
+struct intel_csr {
+	struct work_struct work;
+	const char *fw_path;
+	u32 required_version;
+	u32 max_fw_size; /* bytes */
+	u32 *dmc_payload;
+	u32 dmc_fw_size; /* dwords */
+	u32 version;
+	u32 mmio_count;
+	i915_reg_t mmioaddr[20];
+	u32 mmiodata[20];
+	u32 dc_state;
+	u32 target_dc_state;
+	u32 allowed_dc_mask;
+	intel_wakeref_t wakeref;
+};
+
+bool intel_csr_has_dmc_payload(struct drm_i915_private *dev_priv);
+
 #endif /* __INTEL_CSR_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 183c414d554a..a10c9d4c2536 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -541,10 +541,10 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
 
 	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 
-	seq_printf(m, "fw loaded: %s\n", yesno(csr->dmc_payload != NULL));
+	seq_printf(m, "fw loaded: %s\n", yesno(intel_csr_has_dmc_payload(dev_priv)));
 	seq_printf(m, "path: %s\n", csr->fw_path);
 
-	if (!csr->dmc_payload)
+	if (!intel_csr_has_dmc_payload(dev_priv))
 		goto out;
 
 	seq_printf(m, "version: %d.%d\n", CSR_VERSION_MAJOR(csr->version),
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index d48dd15a4f6e..6a9d99b80755 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1219,7 +1219,7 @@ static void gen9_dc_off_power_well_enable(struct drm_i915_private *dev_priv,
 static void gen9_dc_off_power_well_disable(struct drm_i915_private *dev_priv,
 					   struct i915_power_well *power_well)
 {
-	if (!dev_priv->csr.dmc_payload)
+	if (!intel_csr_has_dmc_payload(dev_priv))
 		return;
 
 	switch (dev_priv->csr.target_dc_state) {
@@ -5150,7 +5150,7 @@ static void skl_display_core_init(struct drm_i915_private *dev_priv,
 
 	gen9_dbuf_enable(dev_priv);
 
-	if (resume && dev_priv->csr.dmc_payload)
+	if (resume && intel_csr_has_dmc_payload(dev_priv))
 		intel_csr_load_program(dev_priv);
 }
 
@@ -5217,7 +5217,7 @@ static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume
 
 	gen9_dbuf_enable(dev_priv);
 
-	if (resume && dev_priv->csr.dmc_payload)
+	if (resume && intel_csr_has_dmc_payload(dev_priv))
 		intel_csr_load_program(dev_priv);
 }
 
@@ -5283,7 +5283,7 @@ static void cnl_display_core_init(struct drm_i915_private *dev_priv, bool resume
 	/* 6. Enable DBUF */
 	gen9_dbuf_enable(dev_priv);
 
-	if (resume && dev_priv->csr.dmc_payload)
+	if (resume && intel_csr_has_dmc_payload(dev_priv))
 		intel_csr_load_program(dev_priv);
 }
 
@@ -5440,7 +5440,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	if (DISPLAY_VER(dev_priv) >= 12)
 		tgl_bw_buddy_init(dev_priv);
 
-	if (resume && dev_priv->csr.dmc_payload)
+	if (resume && intel_csr_has_dmc_payload(dev_priv))
 		intel_csr_load_program(dev_priv);
 
 	/* Wa_14011508470 */
@@ -5797,7 +5797,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915,
 	 */
 	if (!(i915->csr.allowed_dc_mask & DC_STATE_EN_DC9) &&
 	    suspend_mode == I915_DRM_SUSPEND_IDLE &&
-	    i915->csr.dmc_payload) {
+	    intel_csr_has_dmc_payload(i915)) {
 		intel_display_power_flush_work(i915);
 		intel_power_domains_verify_state(i915);
 		return;
@@ -5987,7 +5987,7 @@ void intel_display_power_resume(struct drm_i915_private *i915)
 	if (DISPLAY_VER(i915) >= 11) {
 		bxt_disable_dc9(i915);
 		icl_display_core_init(i915, true);
-		if (i915->csr.dmc_payload) {
+		if (intel_csr_has_dmc_payload(i915)) {
 			if (i915->csr.allowed_dc_mask &
 			    DC_STATE_EN_UPTO_DC6)
 				skl_enable_dc6(i915);
@@ -5998,7 +5998,7 @@ void intel_display_power_resume(struct drm_i915_private *i915)
 	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
 		bxt_disable_dc9(i915);
 		bxt_display_core_init(i915, true);
-		if (i915->csr.dmc_payload &&
+		if (intel_csr_has_dmc_payload(i915) &&
 		    (i915->csr.allowed_dc_mask & DC_STATE_EN_UPTO_DC5))
 			gen9_enable_dc5(i915);
 	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 336b09f38aad..50f32d89e175 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -74,6 +74,7 @@
 #include "display/intel_global_state.h"
 #include "display/intel_gmbus.h"
 #include "display/intel_opregion.h"
+#include "display/intel_csr.h"
 
 #include "gem/i915_gem_context_types.h"
 #include "gem/i915_gem_shrinker.h"
@@ -329,23 +330,6 @@ struct drm_i915_display_funcs {
 	void (*read_luts)(struct intel_crtc_state *crtc_state);
 };
 
-struct intel_csr {
-	struct work_struct work;
-	const char *fw_path;
-	u32 required_version;
-	u32 max_fw_size; /* bytes */
-	u32 *dmc_payload;
-	u32 dmc_fw_size; /* dwords */
-	u32 version;
-	u32 mmio_count;
-	i915_reg_t mmioaddr[20];
-	u32 mmiodata[20];
-	u32 dc_state;
-	u32 target_dc_state;
-	u32 allowed_dc_mask;
-	intel_wakeref_t wakeref;
-};
-
 enum i915_cache_level {
 	I915_CACHE_NONE = 0,
 	I915_CACHE_LLC, /* also used for snoopable memory on non-LLC */
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index bb181fe5d47e..cbf485e8510a 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -793,7 +793,7 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 		struct intel_csr *csr = &m->i915->csr;
 
 		err_printf(m, "DMC loaded: %s\n",
-			   yesno(csr->dmc_payload != NULL));
+			   yesno(intel_csr_has_dmc_payload(m->i915) != 0));
 		err_printf(m, "DMC fw version: %d.%d\n",
 			   CSR_VERSION_MAJOR(csr->version),
 			   CSR_VERSION_MINOR(csr->version));
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
