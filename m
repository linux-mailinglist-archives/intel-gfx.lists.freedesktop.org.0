Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 305173886C9
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 07:40:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7858B6E1A4;
	Wed, 19 May 2021 05:40:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9842C6E1A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 05:40:17 +0000 (UTC)
IronPort-SDR: H+pQ5xvqlLhr+IyK8jIiRR8wDEx8HP86Y1qYgygy7ciwJC4ev8SwndvkXEwn+vt0cIsO9e2GVo
 ydDHXyYDilRQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="181173669"
X-IronPort-AV: E=Sophos;i="5.82,311,1613462400"; d="scan'208";a="181173669"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 22:40:17 -0700
IronPort-SDR: uT+DsvtsGJ6EnsnrHeKcRKsDXQgh1VwiPu9kkUjBRkFddXHjp5vAbvCezWRaRms8RXQeOMetvO
 MWNiywJsRdAA==
X-IronPort-AV: E=Sophos;i="5.82,311,1613462400"; d="scan'208";a="405349939"
Received: from marora1-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.1.180])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 22:40:17 -0700
Date: Tue, 18 May 2021 22:40:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20210519054008.r4e3m7y53xouqodx@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210518213444.11420-1-anusha.srivatsa@intel.com>
 <20210518213444.11420-2-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210518213444.11420-2-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [CI 1/5] drm/i915/dmc: s/intel_csr/intel_dmc
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

On Tue, May 18, 2021 at 02:34:40PM -0700, Anusha Srivatsa wrote:
>No functional change.
>
>v2: Chchpatch fixes.
>
>Cc: Jani Nikula <jani.nikula@linux.intel.com>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

`git show -U0 --word-diff=color` really helps here. Not sure if I would
split the patch per struct/functions/macro like was done, but I'm ok
with it.

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_csr.c      | 170 +++++++++---------
> .../drm/i915/display/intel_display_debugfs.c  |  14 +-
> .../drm/i915/display/intel_display_power.c    |  52 +++---
> drivers/gpu/drm/i915/display/intel_psr.c      |   2 +-
> drivers/gpu/drm/i915/i915_drv.h               |   4 +-
> drivers/gpu/drm/i915/i915_gpu_error.c         |   8 +-
> 6 files changed, 125 insertions(+), 125 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
>index 26a922d34263..a22339ebdffd 100644
>--- a/drivers/gpu/drm/i915/display/intel_csr.c
>+++ b/drivers/gpu/drm/i915/display/intel_csr.c
>@@ -312,7 +312,7 @@ static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
>  */
> void intel_csr_load_program(struct drm_i915_private *dev_priv)
> {
>-	u32 *payload = dev_priv->csr.dmc_payload;
>+	u32 *payload = dev_priv->dmc.dmc_payload;
> 	u32 i, fw_size;
>
> 	if (!HAS_CSR(dev_priv)) {
>@@ -321,13 +321,13 @@ void intel_csr_load_program(struct drm_i915_private *dev_priv)
> 		return;
> 	}
>
>-	if (!dev_priv->csr.dmc_payload) {
>+	if (!dev_priv->dmc.dmc_payload) {
> 		drm_err(&dev_priv->drm,
> 			"Tried to program CSR with empty payload\n");
> 		return;
> 	}
>
>-	fw_size = dev_priv->csr.dmc_fw_size;
>+	fw_size = dev_priv->dmc.dmc_fw_size;
> 	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
>
> 	preempt_disable();
>@@ -338,12 +338,12 @@ void intel_csr_load_program(struct drm_i915_private *dev_priv)
>
> 	preempt_enable();
>
>-	for (i = 0; i < dev_priv->csr.mmio_count; i++) {
>-		intel_de_write(dev_priv, dev_priv->csr.mmioaddr[i],
>-			       dev_priv->csr.mmiodata[i]);
>+	for (i = 0; i < dev_priv->dmc.mmio_count; i++) {
>+		intel_de_write(dev_priv, dev_priv->dmc.mmioaddr[i],
>+			       dev_priv->dmc.mmiodata[i]);
> 	}
>
>-	dev_priv->csr.dc_state = 0;
>+	dev_priv->dmc.dc_state = 0;
>
> 	gen9_set_dc_state_debugmask(dev_priv);
> }
>@@ -392,7 +392,7 @@ static u32 find_dmc_fw_offset(const struct intel_fw_info *fw_info,
> 	return dmc_offset;
> }
>
>-static u32 parse_csr_fw_dmc(struct intel_csr *csr,
>+static u32 parse_csr_fw_dmc(struct intel_dmc *dmc,
> 			    const struct intel_dmc_header_base *dmc_header,
> 			    size_t rem_size)
> {
>@@ -401,8 +401,8 @@ static u32 parse_csr_fw_dmc(struct intel_csr *csr,
> 	u32 mmio_count, mmio_count_max;
> 	u8 *payload;
>
>-	BUILD_BUG_ON(ARRAY_SIZE(csr->mmioaddr) < DMC_V3_MAX_MMIO_COUNT ||
>-		     ARRAY_SIZE(csr->mmioaddr) < DMC_V1_MAX_MMIO_COUNT);
>+	BUILD_BUG_ON(ARRAY_SIZE(dmc->mmioaddr) < DMC_V3_MAX_MMIO_COUNT ||
>+		     ARRAY_SIZE(dmc->mmioaddr) < DMC_V1_MAX_MMIO_COUNT);
>
> 	/*
> 	 * Check if we can access common fields, we will checkc again below
>@@ -464,10 +464,10 @@ static u32 parse_csr_fw_dmc(struct intel_csr *csr,
> 				  mmioaddr[i]);
> 			return 0;
> 		}
>-		csr->mmioaddr[i] = _MMIO(mmioaddr[i]);
>-		csr->mmiodata[i] = mmiodata[i];
>+		dmc->mmioaddr[i] = _MMIO(mmioaddr[i]);
>+		dmc->mmiodata[i] = mmiodata[i];
> 	}
>-	csr->mmio_count = mmio_count;
>+	dmc->mmio_count = mmio_count;
>
> 	rem_size -= header_len_bytes;
>
>@@ -476,20 +476,20 @@ static u32 parse_csr_fw_dmc(struct intel_csr *csr,
> 	if (rem_size < payload_size)
> 		goto error_truncated;
>
>-	if (payload_size > csr->max_fw_size) {
>+	if (payload_size > dmc->max_fw_size) {
> 		DRM_ERROR("DMC FW too big (%u bytes)\n", payload_size);
> 		return 0;
> 	}
>-	csr->dmc_fw_size = dmc_header->fw_size;
>+	dmc->dmc_fw_size = dmc_header->fw_size;
>
>-	csr->dmc_payload = kmalloc(payload_size, GFP_KERNEL);
>-	if (!csr->dmc_payload) {
>+	dmc->dmc_payload = kmalloc(payload_size, GFP_KERNEL);
>+	if (!dmc->dmc_payload) {
> 		DRM_ERROR("Memory allocation failed for dmc payload\n");
> 		return 0;
> 	}
>
> 	payload = (u8 *)(dmc_header) + header_len_bytes;
>-	memcpy(csr->dmc_payload, payload, payload_size);
>+	memcpy(dmc->dmc_payload, payload, payload_size);
>
> 	return header_len_bytes + payload_size;
>
>@@ -499,7 +499,7 @@ static u32 parse_csr_fw_dmc(struct intel_csr *csr,
> }
>
> static u32
>-parse_csr_fw_package(struct intel_csr *csr,
>+parse_csr_fw_package(struct intel_dmc *dmc,
> 		     const struct intel_package_header *package_header,
> 		     const struct stepping_info *si,
> 		     size_t rem_size)
>@@ -558,7 +558,7 @@ parse_csr_fw_package(struct intel_csr *csr,
> }
>
> /* Return number of bytes parsed or 0 on error */
>-static u32 parse_csr_fw_css(struct intel_csr *csr,
>+static u32 parse_csr_fw_css(struct intel_dmc *dmc,
> 			    struct intel_css_header *css_header,
> 			    size_t rem_size)
> {
>@@ -575,18 +575,18 @@ static u32 parse_csr_fw_css(struct intel_csr *csr,
> 		return 0;
> 	}
>
>-	if (csr->required_version &&
>-	    css_header->version != csr->required_version) {
>+	if (dmc->required_version &&
>+	    css_header->version != dmc->required_version) {
> 		DRM_INFO("Refusing to load DMC firmware v%u.%u,"
> 			 " please use v%u.%u\n",
> 			 CSR_VERSION_MAJOR(css_header->version),
> 			 CSR_VERSION_MINOR(css_header->version),
>-			 CSR_VERSION_MAJOR(csr->required_version),
>-			 CSR_VERSION_MINOR(csr->required_version));
>+			 CSR_VERSION_MAJOR(dmc->required_version),
>+			 CSR_VERSION_MINOR(dmc->required_version));
> 		return 0;
> 	}
>
>-	csr->version = css_header->version;
>+	dmc->version = css_header->version;
>
> 	return sizeof(struct intel_css_header);
> }
>@@ -597,7 +597,7 @@ static void parse_csr_fw(struct drm_i915_private *dev_priv,
> 	struct intel_css_header *css_header;
> 	struct intel_package_header *package_header;
> 	struct intel_dmc_header_base *dmc_header;
>-	struct intel_csr *csr = &dev_priv->csr;
>+	struct intel_dmc *dmc = &dev_priv->dmc;
> 	const struct stepping_info *si = intel_get_stepping_info(dev_priv);
> 	u32 readcount = 0;
> 	u32 r;
>@@ -607,7 +607,7 @@ static void parse_csr_fw(struct drm_i915_private *dev_priv,
>
> 	/* Extract CSS Header information */
> 	css_header = (struct intel_css_header *)fw->data;
>-	r = parse_csr_fw_css(csr, css_header, fw->size);
>+	r = parse_csr_fw_css(dmc, css_header, fw->size);
> 	if (!r)
> 		return;
>
>@@ -615,7 +615,7 @@ static void parse_csr_fw(struct drm_i915_private *dev_priv,
>
> 	/* Extract Package Header information */
> 	package_header = (struct intel_package_header *)&fw->data[readcount];
>-	r = parse_csr_fw_package(csr, package_header, si, fw->size - readcount);
>+	r = parse_csr_fw_package(dmc, package_header, si, fw->size - readcount);
> 	if (!r)
> 		return;
>
>@@ -623,20 +623,20 @@ static void parse_csr_fw(struct drm_i915_private *dev_priv,
>
> 	/* Extract dmc_header information */
> 	dmc_header = (struct intel_dmc_header_base *)&fw->data[readcount];
>-	parse_csr_fw_dmc(csr, dmc_header, fw->size - readcount);
>+	parse_csr_fw_dmc(dmc, dmc_header, fw->size - readcount);
> }
>
> static void intel_csr_runtime_pm_get(struct drm_i915_private *dev_priv)
> {
>-	drm_WARN_ON(&dev_priv->drm, dev_priv->csr.wakeref);
>-	dev_priv->csr.wakeref =
>+	drm_WARN_ON(&dev_priv->drm, dev_priv->dmc.wakeref);
>+	dev_priv->dmc.wakeref =
> 		intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
> }
>
> static void intel_csr_runtime_pm_put(struct drm_i915_private *dev_priv)
> {
> 	intel_wakeref_t wakeref __maybe_unused =
>-		fetch_and_zero(&dev_priv->csr.wakeref);
>+		fetch_and_zero(&dev_priv->dmc.wakeref);
>
> 	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
> }
>@@ -644,28 +644,28 @@ static void intel_csr_runtime_pm_put(struct drm_i915_private *dev_priv)
> static void csr_load_work_fn(struct work_struct *work)
> {
> 	struct drm_i915_private *dev_priv;
>-	struct intel_csr *csr;
>+	struct intel_dmc *dmc;
> 	const struct firmware *fw = NULL;
>
>-	dev_priv = container_of(work, typeof(*dev_priv), csr.work);
>-	csr = &dev_priv->csr;
>+	dev_priv = container_of(work, typeof(*dev_priv), dmc.work);
>+	dmc = &dev_priv->dmc;
>
>-	request_firmware(&fw, dev_priv->csr.fw_path, dev_priv->drm.dev);
>+	request_firmware(&fw, dev_priv->dmc.fw_path, dev_priv->drm.dev);
> 	parse_csr_fw(dev_priv, fw);
>
>-	if (dev_priv->csr.dmc_payload) {
>+	if (dev_priv->dmc.dmc_payload) {
> 		intel_csr_load_program(dev_priv);
> 		intel_csr_runtime_pm_put(dev_priv);
>
> 		drm_info(&dev_priv->drm,
> 			 "Finished loading DMC firmware %s (v%u.%u)\n",
>-			 dev_priv->csr.fw_path, CSR_VERSION_MAJOR(csr->version),
>-			 CSR_VERSION_MINOR(csr->version));
>+			 dev_priv->dmc.fw_path, CSR_VERSION_MAJOR(dmc->version),
>+			 CSR_VERSION_MINOR(dmc->version));
> 	} else {
> 		drm_notice(&dev_priv->drm,
> 			   "Failed to load DMC firmware %s."
> 			   " Disabling runtime power management.\n",
>-			   csr->fw_path);
>+			   dmc->fw_path);
> 		drm_notice(&dev_priv->drm, "DMC firmware homepage: %s",
> 			   INTEL_UC_FIRMWARE_URL);
> 	}
>@@ -682,9 +682,9 @@ static void csr_load_work_fn(struct work_struct *work)
>  */
> void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
> {
>-	struct intel_csr *csr = &dev_priv->csr;
>+	struct intel_dmc *dmc = &dev_priv->dmc;
>
>-	INIT_WORK(&dev_priv->csr.work, csr_load_work_fn);
>+	INIT_WORK(&dev_priv->dmc.work, csr_load_work_fn);
>
> 	if (!HAS_CSR(dev_priv))
> 		return;
>@@ -700,70 +700,70 @@ void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
> 	intel_csr_runtime_pm_get(dev_priv);
>
> 	if (IS_ALDERLAKE_S(dev_priv)) {
>-		csr->fw_path = ADLS_CSR_PATH;
>-		csr->required_version = ADLS_CSR_VERSION_REQUIRED;
>-		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
>+		dmc->fw_path = ADLS_CSR_PATH;
>+		dmc->required_version = ADLS_CSR_VERSION_REQUIRED;
>+		dmc->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
> 	} else if (IS_DG1(dev_priv)) {
>-		csr->fw_path = DG1_CSR_PATH;
>-		csr->required_version = DG1_CSR_VERSION_REQUIRED;
>-		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
>+		dmc->fw_path = DG1_CSR_PATH;
>+		dmc->required_version = DG1_CSR_VERSION_REQUIRED;
>+		dmc->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
> 	} else if (IS_ROCKETLAKE(dev_priv)) {
>-		csr->fw_path = RKL_CSR_PATH;
>-		csr->required_version = RKL_CSR_VERSION_REQUIRED;
>-		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
>+		dmc->fw_path = RKL_CSR_PATH;
>+		dmc->required_version = RKL_CSR_VERSION_REQUIRED;
>+		dmc->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
> 	} else if (DISPLAY_VER(dev_priv) >= 12) {
>-		csr->fw_path = TGL_CSR_PATH;
>-		csr->required_version = TGL_CSR_VERSION_REQUIRED;
>-		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
>+		dmc->fw_path = TGL_CSR_PATH;
>+		dmc->required_version = TGL_CSR_VERSION_REQUIRED;
>+		dmc->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
> 	} else if (DISPLAY_VER(dev_priv) == 11) {
>-		csr->fw_path = ICL_CSR_PATH;
>-		csr->required_version = ICL_CSR_VERSION_REQUIRED;
>-		csr->max_fw_size = ICL_CSR_MAX_FW_SIZE;
>+		dmc->fw_path = ICL_CSR_PATH;
>+		dmc->required_version = ICL_CSR_VERSION_REQUIRED;
>+		dmc->max_fw_size = ICL_CSR_MAX_FW_SIZE;
> 	} else if (IS_CANNONLAKE(dev_priv)) {
>-		csr->fw_path = CNL_CSR_PATH;
>-		csr->required_version = CNL_CSR_VERSION_REQUIRED;
>-		csr->max_fw_size = CNL_CSR_MAX_FW_SIZE;
>+		dmc->fw_path = CNL_CSR_PATH;
>+		dmc->required_version = CNL_CSR_VERSION_REQUIRED;
>+		dmc->max_fw_size = CNL_CSR_MAX_FW_SIZE;
> 	} else if (IS_GEMINILAKE(dev_priv)) {
>-		csr->fw_path = GLK_CSR_PATH;
>-		csr->required_version = GLK_CSR_VERSION_REQUIRED;
>-		csr->max_fw_size = GLK_CSR_MAX_FW_SIZE;
>+		dmc->fw_path = GLK_CSR_PATH;
>+		dmc->required_version = GLK_CSR_VERSION_REQUIRED;
>+		dmc->max_fw_size = GLK_CSR_MAX_FW_SIZE;
> 	} else if (IS_KABYLAKE(dev_priv) ||
> 		   IS_COFFEELAKE(dev_priv) ||
> 		   IS_COMETLAKE(dev_priv)) {
>-		csr->fw_path = KBL_CSR_PATH;
>-		csr->required_version = KBL_CSR_VERSION_REQUIRED;
>-		csr->max_fw_size = KBL_CSR_MAX_FW_SIZE;
>+		dmc->fw_path = KBL_CSR_PATH;
>+		dmc->required_version = KBL_CSR_VERSION_REQUIRED;
>+		dmc->max_fw_size = KBL_CSR_MAX_FW_SIZE;
> 	} else if (IS_SKYLAKE(dev_priv)) {
>-		csr->fw_path = SKL_CSR_PATH;
>-		csr->required_version = SKL_CSR_VERSION_REQUIRED;
>-		csr->max_fw_size = SKL_CSR_MAX_FW_SIZE;
>+		dmc->fw_path = SKL_CSR_PATH;
>+		dmc->required_version = SKL_CSR_VERSION_REQUIRED;
>+		dmc->max_fw_size = SKL_CSR_MAX_FW_SIZE;
> 	} else if (IS_BROXTON(dev_priv)) {
>-		csr->fw_path = BXT_CSR_PATH;
>-		csr->required_version = BXT_CSR_VERSION_REQUIRED;
>-		csr->max_fw_size = BXT_CSR_MAX_FW_SIZE;
>+		dmc->fw_path = BXT_CSR_PATH;
>+		dmc->required_version = BXT_CSR_VERSION_REQUIRED;
>+		dmc->max_fw_size = BXT_CSR_MAX_FW_SIZE;
> 	}
>
> 	if (dev_priv->params.dmc_firmware_path) {
> 		if (strlen(dev_priv->params.dmc_firmware_path) == 0) {
>-			csr->fw_path = NULL;
>+			dmc->fw_path = NULL;
> 			drm_info(&dev_priv->drm,
>-				 "Disabling CSR firmware and runtime PM\n");
>+				 "Disabling DMC firmware and runtime PM\n");
> 			return;
> 		}
>
>-		csr->fw_path = dev_priv->params.dmc_firmware_path;
>+		dmc->fw_path = dev_priv->params.dmc_firmware_path;
> 		/* Bypass version check for firmware override. */
>-		csr->required_version = 0;
>+		dmc->required_version = 0;
> 	}
>
>-	if (csr->fw_path == NULL) {
>+	if (!dmc->fw_path) {
> 		drm_dbg_kms(&dev_priv->drm,
>-			    "No known CSR firmware for platform, disabling runtime PM\n");
>+			    "No known DMC firmware for platform, disabling runtime PM\n");
> 		return;
> 	}
>
>-	drm_dbg_kms(&dev_priv->drm, "Loading %s\n", csr->fw_path);
>-	schedule_work(&dev_priv->csr.work);
>+	drm_dbg_kms(&dev_priv->drm, "Loading %s\n", dmc->fw_path);
>+	schedule_work(&dev_priv->dmc.work);
> }
>
> /**
>@@ -779,10 +779,10 @@ void intel_csr_ucode_suspend(struct drm_i915_private *dev_priv)
> 	if (!HAS_CSR(dev_priv))
> 		return;
>
>-	flush_work(&dev_priv->csr.work);
>+	flush_work(&dev_priv->dmc.work);
>
> 	/* Drop the reference held in case DMC isn't loaded. */
>-	if (!dev_priv->csr.dmc_payload)
>+	if (!dev_priv->dmc.dmc_payload)
> 		intel_csr_runtime_pm_put(dev_priv);
> }
>
>@@ -802,7 +802,7 @@ void intel_csr_ucode_resume(struct drm_i915_private *dev_priv)
> 	 * Reacquire the reference to keep RPM disabled in case DMC isn't
> 	 * loaded.
> 	 */
>-	if (!dev_priv->csr.dmc_payload)
>+	if (!dev_priv->dmc.dmc_payload)
> 		intel_csr_runtime_pm_get(dev_priv);
> }
>
>@@ -819,7 +819,7 @@ void intel_csr_ucode_fini(struct drm_i915_private *dev_priv)
> 		return;
>
> 	intel_csr_ucode_suspend(dev_priv);
>-	drm_WARN_ON(&dev_priv->drm, dev_priv->csr.wakeref);
>+	drm_WARN_ON(&dev_priv->drm, dev_priv->dmc.wakeref);
>
>-	kfree(dev_priv->csr.dmc_payload);
>+	kfree(dev_priv->dmc.dmc_payload);
> }
>diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>index d77a0ab5cacf..a875f3c9b358 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>@@ -532,24 +532,24 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
> {
> 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> 	intel_wakeref_t wakeref;
>-	struct intel_csr *csr;
>+	struct intel_dmc *dmc;
> 	i915_reg_t dc5_reg, dc6_reg = {};
>
> 	if (!HAS_CSR(dev_priv))
> 		return -ENODEV;
>
>-	csr = &dev_priv->csr;
>+	dmc = &dev_priv->dmc;
>
> 	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
>
>-	seq_printf(m, "fw loaded: %s\n", yesno(csr->dmc_payload != NULL));
>-	seq_printf(m, "path: %s\n", csr->fw_path);
>+	seq_printf(m, "fw loaded: %s\n", yesno(dmc->dmc_payload));
>+	seq_printf(m, "path: %s\n", dmc->fw_path);
>
>-	if (!csr->dmc_payload)
>+	if (!dmc->dmc_payload)
> 		goto out;
>
>-	seq_printf(m, "version: %d.%d\n", CSR_VERSION_MAJOR(csr->version),
>-		   CSR_VERSION_MINOR(csr->version));
>+	seq_printf(m, "version: %d.%d\n", CSR_VERSION_MAJOR(dmc->version),
>+		   CSR_VERSION_MINOR(dmc->version));
>
> 	if (DISPLAY_VER(dev_priv) >= 12) {
> 		if (IS_DGFX(dev_priv)) {
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>index 54c6d65011ee..0a05d0f90f28 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -829,8 +829,8 @@ static void gen9_sanitize_dc_state(struct drm_i915_private *dev_priv)
>
> 	drm_dbg_kms(&dev_priv->drm,
> 		    "Resetting DC state tracking from %02x to %02x\n",
>-		    dev_priv->csr.dc_state, val);
>-	dev_priv->csr.dc_state = val;
>+		    dev_priv->dmc.dc_state, val);
>+	dev_priv->dmc.dc_state = val;
> }
>
> /**
>@@ -865,8 +865,8 @@ static void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32 state)
> 		return;
>
> 	if (drm_WARN_ON_ONCE(&dev_priv->drm,
>-			     state & ~dev_priv->csr.allowed_dc_mask))
>-		state &= dev_priv->csr.allowed_dc_mask;
>+			     state & ~dev_priv->dmc.allowed_dc_mask))
>+		state &= dev_priv->dmc.allowed_dc_mask;
>
> 	val = intel_de_read(dev_priv, DC_STATE_EN);
> 	mask = gen9_dc_mask(dev_priv);
>@@ -874,16 +874,16 @@ static void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32 state)
> 		    val & mask, state);
>
> 	/* Check if DMC is ignoring our DC state requests */
>-	if ((val & mask) != dev_priv->csr.dc_state)
>+	if ((val & mask) != dev_priv->dmc.dc_state)
> 		drm_err(&dev_priv->drm, "DC state mismatch (0x%x -> 0x%x)\n",
>-			dev_priv->csr.dc_state, val & mask);
>+			dev_priv->dmc.dc_state, val & mask);
>
> 	val &= ~mask;
> 	val |= state;
>
> 	gen9_write_dc_state(dev_priv, val);
>
>-	dev_priv->csr.dc_state = val & mask;
>+	dev_priv->dmc.dc_state = val & mask;
> }
>
> static u32
>@@ -902,7 +902,7 @@ sanitize_target_dc_state(struct drm_i915_private *dev_priv,
> 		if (target_dc_state != states[i])
> 			continue;
>
>-		if (dev_priv->csr.allowed_dc_mask & target_dc_state)
>+		if (dev_priv->dmc.allowed_dc_mask & target_dc_state)
> 			break;
>
> 		target_dc_state = states[i + 1];
>@@ -1016,7 +1016,7 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
>
> 	state = sanitize_target_dc_state(dev_priv, state);
>
>-	if (state == dev_priv->csr.target_dc_state)
>+	if (state == dev_priv->dmc.target_dc_state)
> 		goto unlock;
>
> 	dc_off_enabled = power_well->desc->ops->is_enabled(dev_priv,
>@@ -1028,7 +1028,7 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
> 	if (!dc_off_enabled)
> 		power_well->desc->ops->enable(dev_priv, power_well);
>
>-	dev_priv->csr.target_dc_state = state;
>+	dev_priv->dmc.target_dc_state = state;
>
> 	if (!dc_off_enabled)
> 		power_well->desc->ops->disable(dev_priv, power_well);
>@@ -1181,7 +1181,7 @@ static void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
> {
> 	struct intel_cdclk_config cdclk_config = {};
>
>-	if (dev_priv->csr.target_dc_state == DC_STATE_EN_DC3CO) {
>+	if (dev_priv->dmc.target_dc_state == DC_STATE_EN_DC3CO) {
> 		tgl_disable_dc3co(dev_priv);
> 		return;
> 	}
>@@ -1220,10 +1220,10 @@ static void gen9_dc_off_power_well_enable(struct drm_i915_private *dev_priv,
> static void gen9_dc_off_power_well_disable(struct drm_i915_private *dev_priv,
> 					   struct i915_power_well *power_well)
> {
>-	if (!dev_priv->csr.dmc_payload)
>+	if (!dev_priv->dmc.dmc_payload)
> 		return;
>
>-	switch (dev_priv->csr.target_dc_state) {
>+	switch (dev_priv->dmc.target_dc_state) {
> 	case DC_STATE_EN_DC3CO:
> 		tgl_enable_dc3co(dev_priv);
> 		break;
>@@ -5090,10 +5090,10 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
> 	dev_priv->params.disable_power_well =
> 		sanitize_disable_power_well_option(dev_priv,
> 						   dev_priv->params.disable_power_well);
>-	dev_priv->csr.allowed_dc_mask =
>+	dev_priv->dmc.allowed_dc_mask =
> 		get_allowed_dc_mask(dev_priv, dev_priv->params.enable_dc);
>
>-	dev_priv->csr.target_dc_state =
>+	dev_priv->dmc.target_dc_state =
> 		sanitize_target_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
>
> 	BUILD_BUG_ON(POWER_DOMAIN_NUM > 64);
>@@ -5573,7 +5573,7 @@ static void skl_display_core_init(struct drm_i915_private *dev_priv,
>
> 	gen9_dbuf_enable(dev_priv);
>
>-	if (resume && dev_priv->csr.dmc_payload)
>+	if (resume && dev_priv->dmc.dmc_payload)
> 		intel_csr_load_program(dev_priv);
> }
>
>@@ -5640,7 +5640,7 @@ static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume
>
> 	gen9_dbuf_enable(dev_priv);
>
>-	if (resume && dev_priv->csr.dmc_payload)
>+	if (resume && dev_priv->dmc.dmc_payload)
> 		intel_csr_load_program(dev_priv);
> }
>
>@@ -5706,7 +5706,7 @@ static void cnl_display_core_init(struct drm_i915_private *dev_priv, bool resume
> 	/* 6. Enable DBUF */
> 	gen9_dbuf_enable(dev_priv);
>
>-	if (resume && dev_priv->csr.dmc_payload)
>+	if (resume && dev_priv->dmc.dmc_payload)
> 		intel_csr_load_program(dev_priv);
> }
>
>@@ -5863,7 +5863,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
> 	if (DISPLAY_VER(dev_priv) >= 12)
> 		tgl_bw_buddy_init(dev_priv);
>
>-	if (resume && dev_priv->csr.dmc_payload)
>+	if (resume && dev_priv->dmc.dmc_payload)
> 		intel_csr_load_program(dev_priv);
>
> 	/* Wa_14011508470 */
>@@ -6222,9 +6222,9 @@ void intel_power_domains_suspend(struct drm_i915_private *i915,
> 	 * resources as required and also enable deeper system power states
> 	 * that would be blocked if the firmware was inactive.
> 	 */
>-	if (!(i915->csr.allowed_dc_mask & DC_STATE_EN_DC9) &&
>+	if (!(i915->dmc.allowed_dc_mask & DC_STATE_EN_DC9) &&
> 	    suspend_mode == I915_DRM_SUSPEND_IDLE &&
>-	    i915->csr.dmc_payload) {
>+	    i915->dmc.dmc_payload) {
> 		intel_display_power_flush_work(i915);
> 		intel_power_domains_verify_state(i915);
> 		return;
>@@ -6414,19 +6414,19 @@ void intel_display_power_resume(struct drm_i915_private *i915)
> 	if (DISPLAY_VER(i915) >= 11) {
> 		bxt_disable_dc9(i915);
> 		icl_display_core_init(i915, true);
>-		if (i915->csr.dmc_payload) {
>-			if (i915->csr.allowed_dc_mask &
>+		if (i915->dmc.dmc_payload) {
>+			if (i915->dmc.allowed_dc_mask &
> 			    DC_STATE_EN_UPTO_DC6)
> 				skl_enable_dc6(i915);
>-			else if (i915->csr.allowed_dc_mask &
>+			else if (i915->dmc.allowed_dc_mask &
> 				 DC_STATE_EN_UPTO_DC5)
> 				gen9_enable_dc5(i915);
> 		}
> 	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
> 		bxt_disable_dc9(i915);
> 		bxt_display_core_init(i915, true);
>-		if (i915->csr.dmc_payload &&
>-		    (i915->csr.allowed_dc_mask & DC_STATE_EN_UPTO_DC5))
>+		if (i915->dmc.dmc_payload &&
>+		    (i915->dmc.allowed_dc_mask & DC_STATE_EN_UPTO_DC5))
> 			gen9_enable_dc5(i915);
> 	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
> 		hsw_disable_pc8(i915);
>diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>index acaf3d459821..0905386b2270 100644
>--- a/drivers/gpu/drm/i915/display/intel_psr.c
>+++ b/drivers/gpu/drm/i915/display/intel_psr.c
>@@ -669,7 +669,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
> 	if (crtc_state->enable_psr2_sel_fetch)
> 		return;
>
>-	if (!(dev_priv->csr.allowed_dc_mask & DC_STATE_EN_DC3CO))
>+	if (!(dev_priv->dmc.allowed_dc_mask & DC_STATE_EN_DC3CO))
> 		return;
>
> 	/* B.Specs:49196 DC3CO only works with pipeA and DDIA.*/
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>index 9aee6a045590..3c9f6bbb5dd7 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -328,7 +328,7 @@ struct drm_i915_display_funcs {
> 	void (*read_luts)(struct intel_crtc_state *crtc_state);
> };
>
>-struct intel_csr {
>+struct intel_dmc {
> 	struct work_struct work;
> 	const char *fw_path;
> 	u32 required_version;
>@@ -824,7 +824,7 @@ struct drm_i915_private {
>
> 	struct intel_wopcm wopcm;
>
>-	struct intel_csr csr;
>+	struct intel_dmc dmc;
>
> 	struct intel_gmbus gmbus[GMBUS_NUM_PINS];
>
>diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
>index 99ca242ec13b..03d1221de13b 100644
>--- a/drivers/gpu/drm/i915/i915_gpu_error.c
>+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>@@ -789,13 +789,13 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
> 	err_printf(m, "IOMMU enabled?: %d\n", error->iommu);
>
> 	if (HAS_CSR(m->i915)) {
>-		struct intel_csr *csr = &m->i915->csr;
>+		struct intel_dmc *dmc = &m->i915->dmc;
>
> 		err_printf(m, "DMC loaded: %s\n",
>-			   yesno(csr->dmc_payload != NULL));
>+			   yesno(dmc->dmc_payload));
> 		err_printf(m, "DMC fw version: %d.%d\n",
>-			   CSR_VERSION_MAJOR(csr->version),
>-			   CSR_VERSION_MINOR(csr->version));
>+			   CSR_VERSION_MAJOR(dmc->version),
>+			   CSR_VERSION_MINOR(dmc->version));
> 	}
>
> 	err_printf(m, "RPM wakelock: %s\n", yesno(error->wakelock));
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
