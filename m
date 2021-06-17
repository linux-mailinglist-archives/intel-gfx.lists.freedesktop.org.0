Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD5C3ABDCF
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 23:12:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DCC56E95D;
	Thu, 17 Jun 2021 21:12:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EB826E95D
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 21:12:27 +0000 (UTC)
IronPort-SDR: Vxa/YulnlXhTkxNEK5gMtVlspOOcj6IWtrIggmRKZaUk1bGe2Ef6yOYo5CApiBAW+P5kJXSpWN
 gy3MpJr3oKcw==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="227972394"
X-IronPort-AV: E=Sophos;i="5.83,281,1616482800"; d="scan'208";a="227972394"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 14:12:26 -0700
IronPort-SDR: t3LCp7ZwLxxbMZNh30Y7dHkJ/shHAXky++xAel97r1BCgvyimGoLl9Fv4F6+NQvEzXAV4HyFDI
 GzqT838pOsIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,281,1616482800"; d="scan'208";a="622168080"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga005.jf.intel.com with ESMTP; 17 Jun 2021 14:12:25 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Jun 2021 14:12:22 -0700
Message-Id: <20210617211225.13549-3-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210617211225.13549-1-anusha.srivatsa@intel.com>
References: <20210617211225.13549-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/dmc: Introduce DMC_FW_MAIN
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a prep patch for Pipe DMC plugging.

Add dmc_info struct in intel_dmc to have all common fields
shared between all DMC's in the package.
Add DMC_FW_MAIN(dmc_id 0) to refer to the blob.

v2: Remove dmc_offset and start_mmioaddr from dmc_info struct (Jose)

Cc: Souza, Jose <jose.souza@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 38 +++++++++++++-----------
 drivers/gpu/drm/i915/display/intel_dmc.h | 18 +++++++----
 2 files changed, 33 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 97308da28059..269a57d936ab 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -239,7 +239,7 @@ struct stepping_info {
 
 bool intel_dmc_has_payload(struct drm_i915_private *i915)
 {
-	return i915->dmc.dmc_payload;
+	return i915->dmc.dmc_info[DMC_FW_MAIN].payload;
 }
 
 static const struct stepping_info skl_stepping_info[] = {
@@ -316,7 +316,8 @@ static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
  */
 void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 {
-	u32 *payload = dev_priv->dmc.dmc_payload;
+	struct intel_dmc *dmc = &dev_priv->dmc;
+	struct dmc_fw_info *dmc_info = &dmc->dmc_info[DMC_FW_MAIN];
 	u32 i, fw_size;
 
 	if (!HAS_DMC(dev_priv)) {
@@ -325,26 +326,26 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 		return;
 	}
 
-	if (!intel_dmc_has_payload(dev_priv)) {
+	if (!dev_priv->dmc.dmc_info[DMC_FW_MAIN].payload) {
 		drm_err(&dev_priv->drm,
 			"Tried to program CSR with empty payload\n");
 		return;
 	}
 
-	fw_size = dev_priv->dmc.dmc_fw_size;
+	fw_size = dmc_info->dmc_fw_size;
 	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
 
 	preempt_disable();
 
 	for (i = 0; i < fw_size; i++)
 		intel_uncore_write_fw(&dev_priv->uncore, DMC_PROGRAM(i),
-				      payload[i]);
+				      dmc_info->payload[i]);
 
 	preempt_enable();
 
-	for (i = 0; i < dev_priv->dmc.mmio_count; i++) {
-		intel_de_write(dev_priv, dev_priv->dmc.mmioaddr[i],
-			       dev_priv->dmc.mmiodata[i]);
+	for (i = 0; i < dmc_info->mmio_count; i++) {
+		intel_de_write(dev_priv, dmc_info->mmioaddr[i],
+			       dmc_info->mmiodata[i]);
 	}
 
 	dev_priv->dmc.dc_state = 0;
@@ -401,13 +402,14 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 			       size_t rem_size)
 {
 	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
+	struct dmc_fw_info *dmc_info = &dmc->dmc_info[DMC_FW_MAIN];
 	unsigned int header_len_bytes, dmc_header_size, payload_size, i;
 	const u32 *mmioaddr, *mmiodata;
 	u32 mmio_count, mmio_count_max;
 	u8 *payload;
 
-	BUILD_BUG_ON(ARRAY_SIZE(dmc->mmioaddr) < DMC_V3_MAX_MMIO_COUNT ||
-		     ARRAY_SIZE(dmc->mmioaddr) < DMC_V1_MAX_MMIO_COUNT);
+	BUILD_BUG_ON(ARRAY_SIZE(dmc_info->mmioaddr) < DMC_V3_MAX_MMIO_COUNT ||
+		     ARRAY_SIZE(dmc_info->mmioaddr) < DMC_V1_MAX_MMIO_COUNT);
 
 	/*
 	 * Check if we can access common fields, we will checkc again below
@@ -469,10 +471,10 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 				mmioaddr[i]);
 			return 0;
 		}
-		dmc->mmioaddr[i] = _MMIO(mmioaddr[i]);
-		dmc->mmiodata[i] = mmiodata[i];
+		dmc_info->mmioaddr[i] = _MMIO(mmioaddr[i]);
+		dmc_info->mmiodata[i] = mmiodata[i];
 	}
-	dmc->mmio_count = mmio_count;
+	dmc_info->mmio_count = mmio_count;
 
 	rem_size -= header_len_bytes;
 
@@ -485,14 +487,14 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 		drm_err(&i915->drm, "DMC FW too big (%u bytes)\n", payload_size);
 		return 0;
 	}
-	dmc->dmc_fw_size = dmc_header->fw_size;
+	dmc_info->dmc_fw_size = dmc_header->fw_size;
 
-	dmc->dmc_payload = kmalloc(payload_size, GFP_KERNEL);
-	if (!dmc->dmc_payload)
+	dmc_info->payload = kmalloc(payload_size, GFP_KERNEL);
+	if (!dmc_info->payload)
 		return 0;
 
 	payload = (u8 *)(dmc_header) + header_len_bytes;
-	memcpy(dmc->dmc_payload, payload, payload_size);
+	memcpy(dmc_info->payload, payload, payload_size);
 
 	return header_len_bytes + payload_size;
 
@@ -827,5 +829,5 @@ void intel_dmc_ucode_fini(struct drm_i915_private *dev_priv)
 	intel_dmc_ucode_suspend(dev_priv);
 	drm_WARN_ON(&dev_priv->drm, dev_priv->dmc.wakeref);
 
-	kfree(dev_priv->dmc.dmc_payload);
+	kfree(dev_priv->dmc.dmc_info[DMC_FW_MAIN].payload);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 4c22f567b61b..b872f3a4fd03 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -16,17 +16,25 @@ struct drm_i915_private;
 #define DMC_VERSION_MAJOR(version)	((version) >> 16)
 #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
 
+enum {
+	DMC_FW_MAIN = 0,
+	DMC_FW_MAX
+};
+
 struct intel_dmc {
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
+		u32 dmc_fw_size; /*dwords */
+		u32 *payload;
+	} dmc_info[DMC_FW_MAX];
+
 	u32 dc_state;
 	u32 target_dc_state;
 	u32 allowed_dc_mask;
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
