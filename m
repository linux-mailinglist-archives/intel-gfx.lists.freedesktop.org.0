Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9C519C083
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 13:50:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 952246EA6C;
	Thu,  2 Apr 2020 11:50:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8DC16EA6C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 11:50:53 +0000 (UTC)
IronPort-SDR: hs1vGfaXaPvPHdKjLgUsDnuwgV7sWr2W3IlvphpiT0RasXDWgu1zzvvROdiXwJnejWO6FB+hIO
 tXZUGDpRhoQA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 04:50:53 -0700
IronPort-SDR: DPRNZfCMbTWe2ElFGUFyfToONvYj8a+BTaKgWqUe3e1XK/sulm6YY0193JxATblYkBg1pbejZ0
 J6/zryOCHWHg==
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="284747337"
Received: from assenmac-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.35.117])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 04:50:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Apr 2020 14:48:19 +0300
Message-Id: <20200402114819.17232-17-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200402114819.17232-1-jani.nikula@intel.com>
References: <20200402114819.17232-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 17/17] drm/i915/uc: prefer struct drm_device
 based logging
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
Cc: jani.nikula@intel.com, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prefer struct drm_device based logging over struct device based logging.

No functional changes.

Cc: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.c    | 14 +++++++-------
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 18 +++++++++---------
 2 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 4681cdd24da4..f518fe05c6f9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -63,25 +63,25 @@ static void __confirm_options(struct intel_uc *uc)
 	}
 
 	if (!intel_uc_supports_guc(uc))
-		dev_info(i915->drm.dev,
+		drm_info(&i915->drm,
 			 "Incompatible option enable_guc=%d - %s\n",
 			 i915_modparams.enable_guc, "GuC is not supported!");
 
 	if (i915_modparams.enable_guc & ENABLE_GUC_LOAD_HUC &&
 	    !intel_uc_supports_huc(uc))
-		dev_info(i915->drm.dev,
+		drm_info(&i915->drm,
 			 "Incompatible option enable_guc=%d - %s\n",
 			 i915_modparams.enable_guc, "HuC is not supported!");
 
 	if (i915_modparams.enable_guc & ENABLE_GUC_SUBMISSION &&
 	    !intel_uc_supports_guc_submission(uc))
-		dev_info(i915->drm.dev,
+		drm_info(&i915->drm,
 			 "Incompatible option enable_guc=%d - %s\n",
 			 i915_modparams.enable_guc, "GuC submission is N/A");
 
 	if (i915_modparams.enable_guc & ~(ENABLE_GUC_SUBMISSION |
 					  ENABLE_GUC_LOAD_HUC))
-		dev_info(i915->drm.dev,
+		drm_info(&i915->drm,
 			 "Incompatible option enable_guc=%d - %s\n",
 			 i915_modparams.enable_guc, "undocumented flag");
 }
@@ -480,14 +480,14 @@ static int __uc_init_hw(struct intel_uc *uc)
 	if (intel_uc_uses_guc_submission(uc))
 		intel_guc_submission_enable(guc);
 
-	dev_info(i915->drm.dev, "%s firmware %s version %u.%u %s:%s\n",
+	drm_info(&i915->drm, "%s firmware %s version %u.%u %s:%s\n",
 		 intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_GUC), guc->fw.path,
 		 guc->fw.major_ver_found, guc->fw.minor_ver_found,
 		 "submission",
 		 enableddisabled(intel_uc_uses_guc_submission(uc)));
 
 	if (intel_uc_uses_huc(uc)) {
-		dev_info(i915->drm.dev, "%s firmware %s version %u.%u %s:%s\n",
+		drm_info(&i915->drm, "%s firmware %s version %u.%u %s:%s\n",
 			 intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_HUC),
 			 huc->fw.path,
 			 huc->fw.major_ver_found, huc->fw.minor_ver_found,
@@ -508,7 +508,7 @@ static int __uc_init_hw(struct intel_uc *uc)
 	__uc_sanitize(uc);
 
 	if (!ret) {
-		dev_notice(i915->drm.dev, "GuC is uninitialized\n");
+		drm_notice(&i915->drm, "GuC is uninitialized\n");
 		/* We want to run without GuC submission */
 		return 0;
 	}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 129db476f69e..572e34f28f0e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -299,7 +299,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 
 	/* Check the size of the blob before examining buffer contents */
 	if (unlikely(fw->size < sizeof(struct uc_css_header))) {
-		dev_warn(dev, "%s firmware %s: invalid size: %zu < %zu\n",
+		drm_warn(&i915->drm, "%s firmware %s: invalid size: %zu < %zu\n",
 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
 			 fw->size, sizeof(struct uc_css_header));
 		err = -ENODATA;
@@ -312,7 +312,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 	size = (css->header_size_dw - css->key_size_dw - css->modulus_size_dw -
 		css->exponent_size_dw) * sizeof(u32);
 	if (unlikely(size != sizeof(struct uc_css_header))) {
-		dev_warn(dev,
+		drm_warn(&i915->drm,
 			 "%s firmware %s: unexpected header size: %zu != %zu\n",
 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
 			 fw->size, sizeof(struct uc_css_header));
@@ -325,7 +325,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 
 	/* now RSA */
 	if (unlikely(css->key_size_dw != UOS_RSA_SCRATCH_COUNT)) {
-		dev_warn(dev, "%s firmware %s: unexpected key size: %u != %u\n",
+		drm_warn(&i915->drm, "%s firmware %s: unexpected key size: %u != %u\n",
 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
 			 css->key_size_dw, UOS_RSA_SCRATCH_COUNT);
 		err = -EPROTO;
@@ -336,7 +336,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 	/* At least, it should have header, uCode and RSA. Size of all three. */
 	size = sizeof(struct uc_css_header) + uc_fw->ucode_size + uc_fw->rsa_size;
 	if (unlikely(fw->size < size)) {
-		dev_warn(dev, "%s firmware %s: invalid size: %zu < %zu\n",
+		drm_warn(&i915->drm, "%s firmware %s: invalid size: %zu < %zu\n",
 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
 			 fw->size, size);
 		err = -ENOEXEC;
@@ -346,7 +346,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 	/* Sanity check whether this fw is not larger than whole WOPCM memory */
 	size = __intel_uc_fw_get_upload_size(uc_fw);
 	if (unlikely(size >= i915->wopcm.size)) {
-		dev_warn(dev, "%s firmware %s: invalid size: %zu > %zu\n",
+		drm_warn(&i915->drm, "%s firmware %s: invalid size: %zu > %zu\n",
 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
 			 size, (size_t)i915->wopcm.size);
 		err = -E2BIG;
@@ -361,7 +361,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 
 	if (uc_fw->major_ver_found != uc_fw->major_ver_wanted ||
 	    uc_fw->minor_ver_found < uc_fw->minor_ver_wanted) {
-		dev_notice(dev, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
+		drm_notice(&i915->drm, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
 			   intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
 			   uc_fw->major_ver_found, uc_fw->minor_ver_found,
 			   uc_fw->major_ver_wanted, uc_fw->minor_ver_wanted);
@@ -389,9 +389,9 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 				  INTEL_UC_FIRMWARE_MISSING :
 				  INTEL_UC_FIRMWARE_ERROR);
 
-	dev_notice(dev, "%s firmware %s: fetch failed with error %d\n",
+	drm_notice(&i915->drm, "%s firmware %s: fetch failed with error %d\n",
 		   intel_uc_fw_type_repr(uc_fw->type), uc_fw->path, err);
-	dev_info(dev, "%s firmware(s) can be downloaded from %s\n",
+	drm_info(&i915->drm, "%s firmware(s) can be downloaded from %s\n",
 		 intel_uc_fw_type_repr(uc_fw->type), INTEL_UC_FIRMWARE_URL);
 
 	release_firmware(fw);		/* OK even if fw is NULL */
@@ -476,7 +476,7 @@ static int uc_fw_xfer(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
 	/* Wait for DMA to finish */
 	ret = intel_wait_for_register_fw(uncore, DMA_CTRL, START_DMA, 0, 100);
 	if (ret)
-		dev_err(gt->i915->drm.dev, "DMA for %s fw failed, DMA_CTRL=%u\n",
+		drm_err(&gt->i915->drm, "DMA for %s fw failed, DMA_CTRL=%u\n",
 			intel_uc_fw_type_repr(uc_fw->type),
 			intel_uncore_read_fw(uncore, DMA_CTRL));
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
