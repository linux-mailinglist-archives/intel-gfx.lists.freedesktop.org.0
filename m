Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B34E13A2426
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 07:58:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F30989DC7;
	Thu, 10 Jun 2021 05:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82AC289DC7
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 05:58:33 +0000 (UTC)
IronPort-SDR: +qIv3GSVCNSpPfCA0OrfXW+cAYk6eO6o3GJyMnQmm3V3wJTmDUjErsuN0fYkQrUos5syHkUkzO
 JJz3ZhIQaEhw==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="184923089"
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="184923089"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 22:58:30 -0700
IronPort-SDR: qd73qJVUiCf979G19DHRWoRqhwdJoPxKJtjZlm+POW/OhpCg2KqvggKTmJNOI7ZJYkhQGVPOFF
 /hJPzSS/g+qw==
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="552925590"
Received: from lfbrown-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.4.44])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 22:58:29 -0700
Date: Wed, 9 Jun 2021 22:58:28 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20210610055828.btsfj77pjrnyq2ve@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210604190128.24151-1-anusha.srivatsa@intel.com>
 <20210604190128.24151-2-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210604190128.24151-2-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [CI 1/4] drm/i915/dmc: Introduce DMC_FW_MAIN
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 04, 2021 at 12:01:25PM -0700, Anusha Srivatsa wrote:
>This is a prep patch for Pipe DMC plugging.
>
>Add dmc_info struct in intel_dmc to have all common fields
>shared between all DMC's in the package.
>Add DMC_FW_MAIN(dmc_id 0) to refer to the blob.
>
>v2: Remove dmc_offset and start_mmioaddr from dmc_info struct (Jose)
>
>Cc: Souza, Jose <jose.souza@intel.com>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dmc.c | 44 +++++++++++-------------
> drivers/gpu/drm/i915/display/intel_dmc.h | 18 +++++++---
> 2 files changed, 33 insertions(+), 29 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>index 97308da28059..b78cb44731fe 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -239,7 +239,7 @@ struct stepping_info {
>
> bool intel_dmc_has_payload(struct drm_i915_private *i915)
> {
>-	return i915->dmc.dmc_payload;
>+	return i915->dmc.dmc_info[DMC_FW_MAIN].payload;
> }
>
> static const struct stepping_info skl_stepping_info[] = {
>@@ -316,7 +316,8 @@ static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
>  */
> void intel_dmc_load_program(struct drm_i915_private *dev_priv)
> {
>-	u32 *payload = dev_priv->dmc.dmc_payload;
>+	struct intel_dmc *dmc = &dev_priv->dmc;
>+	struct dmc_fw_info *dmc_info = &dmc->dmc_info[DMC_FW_MAIN];
> 	u32 i, fw_size;
>
> 	if (!HAS_DMC(dev_priv)) {
>@@ -325,26 +326,26 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
> 		return;
> 	}
>
>-	if (!intel_dmc_has_payload(dev_priv)) {
>+	if (!dev_priv->dmc.dmc_info[DMC_FW_MAIN].payload) {
> 		drm_err(&dev_priv->drm,
> 			"Tried to program CSR with empty payload\n");
> 		return;
> 	}
>
>-	fw_size = dev_priv->dmc.dmc_fw_size;
>+	fw_size = dmc_info->dmc_fw_size;
> 	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
>
> 	preempt_disable();
>
> 	for (i = 0; i < fw_size; i++)
> 		intel_uncore_write_fw(&dev_priv->uncore, DMC_PROGRAM(i),
>-				      payload[i]);
>+				      dmc_info->payload[i]);
>
> 	preempt_enable();
>
>-	for (i = 0; i < dev_priv->dmc.mmio_count; i++) {
>-		intel_de_write(dev_priv, dev_priv->dmc.mmioaddr[i],
>-			       dev_priv->dmc.mmiodata[i]);
>+	for (i = 0; i < dmc_info->mmio_count; i++) {
>+		intel_de_write(dev_priv, dmc_info->mmioaddr[i],
>+			       dmc_info->mmiodata[i]);
> 	}
>
> 	dev_priv->dmc.dc_state = 0;
>@@ -401,13 +402,14 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
> 			       size_t rem_size)
> {
> 	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
>+	struct dmc_fw_info *dmc_info = &dmc->dmc_info[DMC_FW_MAIN];
> 	unsigned int header_len_bytes, dmc_header_size, payload_size, i;
> 	const u32 *mmioaddr, *mmiodata;
> 	u32 mmio_count, mmio_count_max;
> 	u8 *payload;
>
>-	BUILD_BUG_ON(ARRAY_SIZE(dmc->mmioaddr) < DMC_V3_MAX_MMIO_COUNT ||
>-		     ARRAY_SIZE(dmc->mmioaddr) < DMC_V1_MAX_MMIO_COUNT);
>+	BUILD_BUG_ON(ARRAY_SIZE(dmc_info->mmioaddr) < DMC_V3_MAX_MMIO_COUNT ||
>+		     ARRAY_SIZE(dmc_info->mmioaddr) < DMC_V1_MAX_MMIO_COUNT);
>
> 	/*
> 	 * Check if we can access common fields, we will checkc again below
>@@ -463,16 +465,10 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
> 	}
>
> 	for (i = 0; i < mmio_count; i++) {
>-		if (mmioaddr[i] < DMC_MMIO_START_RANGE ||
>-		    mmioaddr[i] > DMC_MMIO_END_RANGE) {
>-			drm_err(&i915->drm, "DMC firmware has wrong mmio address 0x%x\n",
>-				mmioaddr[i]);
>-			return 0;
>-		}

this code here should not be dropped. Yes, after the last patch the
hardcoded value may not make sense, but patches should be split
appropriately.

with this change removed,


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi


>-		dmc->mmioaddr[i] = _MMIO(mmioaddr[i]);
>-		dmc->mmiodata[i] = mmiodata[i];
>+		dmc_info->mmioaddr[i] = _MMIO(mmioaddr[i]);
>+		dmc_info->mmiodata[i] = mmiodata[i];
> 	}
>-	dmc->mmio_count = mmio_count;
>+	dmc_info->mmio_count = mmio_count;
>
> 	rem_size -= header_len_bytes;
>
>@@ -485,14 +481,14 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
> 		drm_err(&i915->drm, "DMC FW too big (%u bytes)\n", payload_size);
> 		return 0;
> 	}
>-	dmc->dmc_fw_size = dmc_header->fw_size;
>+	dmc_info->dmc_fw_size = dmc_header->fw_size;
>
>-	dmc->dmc_payload = kmalloc(payload_size, GFP_KERNEL);
>-	if (!dmc->dmc_payload)
>+	dmc_info->payload = kmalloc(payload_size, GFP_KERNEL);
>+	if (!dmc_info->payload)
> 		return 0;
>
> 	payload = (u8 *)(dmc_header) + header_len_bytes;
>-	memcpy(dmc->dmc_payload, payload, payload_size);
>+	memcpy(dmc_info->payload, payload, payload_size);
>
> 	return header_len_bytes + payload_size;
>
>@@ -827,5 +823,5 @@ void intel_dmc_ucode_fini(struct drm_i915_private *dev_priv)
> 	intel_dmc_ucode_suspend(dev_priv);
> 	drm_WARN_ON(&dev_priv->drm, dev_priv->dmc.wakeref);
>
>-	kfree(dev_priv->dmc.dmc_payload);
>+	kfree(dev_priv->dmc.dmc_info[DMC_FW_MAIN].payload);
> }
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
>index 4c22f567b61b..b872f3a4fd03 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.h
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
>@@ -16,17 +16,25 @@ struct drm_i915_private;
> #define DMC_VERSION_MAJOR(version)	((version) >> 16)
> #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
>
>+enum {
>+	DMC_FW_MAIN = 0,
>+	DMC_FW_MAX
>+};
>+
> struct intel_dmc {
> 	struct work_struct work;
> 	const char *fw_path;
> 	u32 required_version;
> 	u32 max_fw_size; /* bytes */
>-	u32 *dmc_payload;
>-	u32 dmc_fw_size; /* dwords */
> 	u32 version;
>-	u32 mmio_count;
>-	i915_reg_t mmioaddr[20];
>-	u32 mmiodata[20];
>+	struct dmc_fw_info {
>+		u32 mmio_count;
>+		i915_reg_t mmioaddr[20];
>+		u32 mmiodata[20];
>+		u32 dmc_fw_size; /*dwords */
>+		u32 *payload;
>+	} dmc_info[DMC_FW_MAX];
>+
> 	u32 dc_state;
> 	u32 target_dc_state;
> 	u32 allowed_dc_mask;
>-- 
>2.25.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
