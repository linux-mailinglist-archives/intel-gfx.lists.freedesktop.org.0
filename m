Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4EA36E0D0
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 23:13:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4565C6EC42;
	Wed, 28 Apr 2021 21:13:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35CF26EC48
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 21:13:04 +0000 (UTC)
IronPort-SDR: 1705gLs0wGfKpPcNZCdW7qWk70i1McbFkK+7t9+t0I/I11q9VTysZHVJHfjOjHO0+D0GDUVUjx
 jhkP3V3r9YVg==
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="193665214"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="193665214"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 14:13:03 -0700
IronPort-SDR: E3OaS8uoxT7UdnodF0p/necc9RAqEAsS7QC2qSHfKRZv3klGtqMIJaJwiE6wupjCMijINhMd7q
 EN7gY+gA3kpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="423716027"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga008.fm.intel.com with ESMTP; 28 Apr 2021 14:13:03 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Apr 2021 14:12:49 -0700
Message-Id: <20210428211249.11037-4-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210428211249.11037-1-anusha.srivatsa@intel.com>
References: <20210428211249.11037-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/csr: Introduce DMC_FW_MAIN
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

This is a prep patch for Pipe DMC plugging.

Add dmc_info struct in intel_csr, to have all common fields
shared between all DMC's in the package.
Add DMC_FW_MAIN(dmc_id 0) to refer to the blob.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_csr.c | 43 ++++++++++--------------
 drivers/gpu/drm/i915/display/intel_csr.h | 20 ++++++++---
 2 files changed, 33 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
index 66d369ec4f02..10cf7fb955d8 100644
--- a/drivers/gpu/drm/i915/display/intel_csr.c
+++ b/drivers/gpu/drm/i915/display/intel_csr.c
@@ -240,7 +240,7 @@ struct stepping_info {
 
 bool intel_csr_has_dmc_payload(struct drm_i915_private *dev_priv)
 {
-	return dev_priv->csr.dmc_payload;
+	return dev_priv->csr.dmc_info[DMC_FW_MAIN].payload;
 }
 
 static const struct stepping_info skl_stepping_info[] = {
@@ -317,7 +317,8 @@ static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
  */
 void intel_csr_load_program(struct drm_i915_private *dev_priv)
 {
-	u32 *payload = dev_priv->csr.dmc_payload;
+	struct intel_csr *csr = &dev_priv->csr;
+	struct dmc_fw_info *dmc_info = &csr->dmc_info[DMC_FW_MAIN];
 	u32 i, fw_size;
 
 	if (!HAS_CSR(dev_priv)) {
@@ -326,26 +327,26 @@ void intel_csr_load_program(struct drm_i915_private *dev_priv)
 		return;
 	}
 
-	if (!intel_csr_has_dmc_payload(dev_priv)) {
+	if (!dev_priv->csr.dmc_info[DMC_FW_MAIN].payload) {
 		drm_err(&dev_priv->drm,
 			"Tried to program CSR with empty payload\n");
 		return;
 	}
 
-	fw_size = dev_priv->csr.dmc_fw_size;
+	fw_size = dmc_info->dmc_fw_size;
 	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
 
 	preempt_disable();
 
 	for (i = 0; i < fw_size; i++)
 		intel_uncore_write_fw(&dev_priv->uncore, CSR_PROGRAM(i),
-				      payload[i]);
+				      dmc_info->payload[i]);
 
 	preempt_enable();
 
-	for (i = 0; i < dev_priv->csr.mmio_count; i++) {
-		intel_de_write(dev_priv, dev_priv->csr.mmioaddr[i],
-			       dev_priv->csr.mmiodata[i]);
+	for (i = 0; i < dmc_info->mmio_count; i++) {
+		intel_de_write(dev_priv, dmc_info->mmioaddr[i],
+			       dmc_info->mmiodata[i]);
 	}
 
 	dev_priv->csr.dc_state = 0;
@@ -402,14 +403,12 @@ static u32 parse_csr_fw_dmc(struct drm_i915_private *dev_priv,
 			    size_t rem_size)
 {
 	struct intel_csr *csr = &dev_priv->csr;
+	struct dmc_fw_info *dmc_info = &csr->dmc_info[DMC_FW_MAIN];
 	unsigned int header_len_bytes, dmc_header_size, payload_size, i;
 	const u32 *mmioaddr, *mmiodata;
 	u32 mmio_count, mmio_count_max;
 	u8 *payload;
 
-	BUILD_BUG_ON(ARRAY_SIZE(csr->mmioaddr) < DMC_V3_MAX_MMIO_COUNT ||
-		     ARRAY_SIZE(csr->mmioaddr) < DMC_V1_MAX_MMIO_COUNT);
-
 	/*
 	 * Check if we can access common fields, we will checkc again below
 	 * after we have read the version
@@ -464,16 +463,10 @@ static u32 parse_csr_fw_dmc(struct drm_i915_private *dev_priv,
 	}
 
 	for (i = 0; i < mmio_count; i++) {
-		if (mmioaddr[i] < CSR_MMIO_START_RANGE ||
-		    mmioaddr[i] > CSR_MMIO_END_RANGE) {
-			drm_err(&dev_priv->drm, "DMC firmware has wrong mmio address 0x%x\n",
-				  mmioaddr[i]);
-			return 0;
-		}
-		csr->mmioaddr[i] = _MMIO(mmioaddr[i]);
-		csr->mmiodata[i] = mmiodata[i];
+		dmc_info->mmioaddr[i] = _MMIO(mmioaddr[i]);
+		dmc_info->mmiodata[i] = mmiodata[i];
 	}
-	csr->mmio_count = mmio_count;
+	dmc_info->mmio_count = mmio_count;
 
 	rem_size -= header_len_bytes;
 
@@ -486,16 +479,16 @@ static u32 parse_csr_fw_dmc(struct drm_i915_private *dev_priv,
 		drm_err(&dev_priv->drm, "DMC FW too big (%u bytes)\n", payload_size);
 		return 0;
 	}
-	csr->dmc_fw_size = dmc_header->fw_size;
+	dmc_info->dmc_fw_size = dmc_header->fw_size;
 
-	csr->dmc_payload = kmalloc(payload_size, GFP_KERNEL);
-	if (!csr->dmc_payload) {
+	dmc_info->payload = kmalloc(payload_size, GFP_KERNEL);
+	if (!dmc_info->payload) {
 		drm_err(&dev_priv->drm, "Memory allocation failed for dmc payload\n");
 		return 0;
 	}
 
 	payload = (u8 *)(dmc_header) + header_len_bytes;
-	memcpy(csr->dmc_payload, payload, payload_size);
+	memcpy(dmc_info->payload, payload, payload_size);
 
 	return header_len_bytes + payload_size;
 
@@ -828,5 +821,5 @@ void intel_csr_ucode_fini(struct drm_i915_private *dev_priv)
 	intel_csr_ucode_suspend(dev_priv);
 	drm_WARN_ON(&dev_priv->drm, dev_priv->csr.wakeref);
 
-	kfree(dev_priv->csr.dmc_payload);
+	kfree(dev_priv->csr.dmc_info[DMC_FW_MAIN].payload);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_csr.h b/drivers/gpu/drm/i915/display/intel_csr.h
index 9cab82dfb1ed..2a03e7de0db0 100644
--- a/drivers/gpu/drm/i915/display/intel_csr.h
+++ b/drivers/gpu/drm/i915/display/intel_csr.h
@@ -22,17 +22,27 @@ void intel_csr_ucode_fini(struct drm_i915_private *i915);
 void intel_csr_ucode_suspend(struct drm_i915_private *i915);
 void intel_csr_ucode_resume(struct drm_i915_private *i915);
 
+enum {
+	DMC_FW_MAIN = 0,
+	DMC_FW_MAX
+};
+
 struct intel_csr {
 	struct work_struct work;
 	const char *fw_path;
 	u32 required_version;
 	u32 max_fw_size; /* bytes */
-	u32 *dmc_payload;
-	u32 dmc_fw_size; /* dwords */
 	u32 version;
-	u32 mmio_count;
-	i915_reg_t mmioaddr[20];
-	u32 mmiodata[20];
+	struct dmc_fw_info {
+		u32 mmio_count;
+		i915_reg_t mmioaddr[20];
+		u32 mmiodata[20];
+		u32 dmc_offset;
+		u32 start_mmioaddr;
+		u32 dmc_fw_size; /*dwords */
+		u32 *payload;
+	} dmc_info[DMC_FW_MAX];
+
 	u32 dc_state;
 	u32 target_dc_state;
 	u32 allowed_dc_mask;
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
