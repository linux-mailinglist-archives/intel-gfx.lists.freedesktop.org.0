Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 233186532E4
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 16:07:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43C7710E457;
	Wed, 21 Dec 2022 15:07:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0364110E455
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 15:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671635220; x=1703171220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AscmtvaypLYDvDSpKNSZHb13JjkYmj59JR9IgzrpA8U=;
 b=hjSMnqqHf3r6rF1Ja+m28I9C/MiCioVVUraYG5lBnRRuNDqaXzcw085A
 RiNeMfP2Xps7P0DfDKAh3eM876c6f6Ek+kdxe72NAS+kSv1vL6VozkjIh
 JIfV8gN/zavuBZfkBQ2/rhvtMujrbUBEWs+b2UT1ItdRXtdlkG/WXMW0n
 kvYahOC7aTajqB3kPeLXTvH77oV2F8RwcbM9O24eCAWvZl/TEDjntDQ7+
 aZNxV/dOyOkO+tLbMKTrto61+9rj4spnwdtKFT5tKQiQ4aO7wRNaXJugL
 6YIMMqjM3zPFY8jLSYvIMB7+8E5t6iifgHfz7qJk8icQ56E2uACCAf1wk w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="321802436"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="321802436"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 07:06:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="775697930"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="775697930"
Received: from eolivagx-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.58.4])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 07:06:58 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Dec 2022 12:06:23 -0300
Message-Id: <20221221150624.402325-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221221150624.402325-1-gustavo.sousa@intel.com>
References: <20221221150624.402325-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/dmc: Do not require specific
 versions
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently there is no DMC version requirement with respect to how i915
interacts with it and new versions of the firmware serve as drop-in
replacements of older ones. As such, do not require specific versions.

References: https://lore.kernel.org/r/Y3081s7c5ksutpMW@intel.com
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 35 ------------------------
 drivers/gpu/drm/i915/display/intel_dmc.h |  1 -
 2 files changed, 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 905b5dcdca14..4124b3d37110 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -53,51 +53,40 @@
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
 #define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
-#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 8)
 MODULE_FIRMWARE(DG2_DMC_PATH);
 
 #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
-#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 16)
 MODULE_FIRMWARE(ADLP_DMC_PATH);
 
 #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
-#define ADLS_DMC_VERSION_REQUIRED	DMC_VERSION(2, 1)
 MODULE_FIRMWARE(ADLS_DMC_PATH);
 
 #define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
-#define DG1_DMC_VERSION_REQUIRED	DMC_VERSION(2, 2)
 MODULE_FIRMWARE(DG1_DMC_PATH);
 
 #define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
-#define RKL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 3)
 MODULE_FIRMWARE(RKL_DMC_PATH);
 
 #define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
-#define TGL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 12)
 MODULE_FIRMWARE(TGL_DMC_PATH);
 
 #define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
-#define ICL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 9)
 #define ICL_DMC_MAX_FW_SIZE		0x6000
 MODULE_FIRMWARE(ICL_DMC_PATH);
 
 #define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
-#define GLK_DMC_VERSION_REQUIRED	DMC_VERSION(1, 4)
 #define GLK_DMC_MAX_FW_SIZE		0x4000
 MODULE_FIRMWARE(GLK_DMC_PATH);
 
 #define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
-#define KBL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 4)
 #define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
 MODULE_FIRMWARE(KBL_DMC_PATH);
 
 #define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
-#define SKL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 27)
 #define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
 MODULE_FIRMWARE(SKL_DMC_PATH);
 
 #define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
-#define BXT_DMC_VERSION_REQUIRED	DMC_VERSION(1, 7)
 #define BXT_DMC_MAX_FW_SIZE		0x3000
 MODULE_FIRMWARE(BXT_DMC_PATH);
 
@@ -765,17 +754,6 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
 		return 0;
 	}
 
-	if (dmc->required_version &&
-	    css_header->version != dmc->required_version) {
-		drm_info(&i915->drm, "Refusing to load DMC firmware v%u.%u,"
-			 " please use v%u.%u\n",
-			 DMC_VERSION_MAJOR(css_header->version),
-			 DMC_VERSION_MINOR(css_header->version),
-			 DMC_VERSION_MAJOR(dmc->required_version),
-			 DMC_VERSION_MINOR(dmc->required_version));
-		return 0;
-	}
-
 	dmc->version = css_header->version;
 
 	return sizeof(struct intel_css_header);
@@ -903,49 +881,38 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
 
 	if (IS_DG2(dev_priv)) {
 		dmc->fw_path = DG2_DMC_PATH;
-		dmc->required_version = DG2_DMC_VERSION_REQUIRED;
 		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
 		dmc->fw_path = ADLP_DMC_PATH;
-		dmc->required_version = ADLP_DMC_VERSION_REQUIRED;
 		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
 	} else if (IS_ALDERLAKE_S(dev_priv)) {
 		dmc->fw_path = ADLS_DMC_PATH;
-		dmc->required_version = ADLS_DMC_VERSION_REQUIRED;
 		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
 	} else if (IS_DG1(dev_priv)) {
 		dmc->fw_path = DG1_DMC_PATH;
-		dmc->required_version = DG1_DMC_VERSION_REQUIRED;
 		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
 	} else if (IS_ROCKETLAKE(dev_priv)) {
 		dmc->fw_path = RKL_DMC_PATH;
-		dmc->required_version = RKL_DMC_VERSION_REQUIRED;
 		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
 	} else if (IS_TIGERLAKE(dev_priv)) {
 		dmc->fw_path = TGL_DMC_PATH;
-		dmc->required_version = TGL_DMC_VERSION_REQUIRED;
 		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
 	} else if (DISPLAY_VER(dev_priv) == 11) {
 		dmc->fw_path = ICL_DMC_PATH;
-		dmc->required_version = ICL_DMC_VERSION_REQUIRED;
 		dmc->max_fw_size = ICL_DMC_MAX_FW_SIZE;
 	} else if (IS_GEMINILAKE(dev_priv)) {
 		dmc->fw_path = GLK_DMC_PATH;
-		dmc->required_version = GLK_DMC_VERSION_REQUIRED;
 		dmc->max_fw_size = GLK_DMC_MAX_FW_SIZE;
 	} else if (IS_KABYLAKE(dev_priv) ||
 		   IS_COFFEELAKE(dev_priv) ||
 		   IS_COMETLAKE(dev_priv)) {
 		dmc->fw_path = KBL_DMC_PATH;
-		dmc->required_version = KBL_DMC_VERSION_REQUIRED;
 		dmc->max_fw_size = KBL_DMC_MAX_FW_SIZE;
 	} else if (IS_SKYLAKE(dev_priv)) {
 		dmc->fw_path = SKL_DMC_PATH;
-		dmc->required_version = SKL_DMC_VERSION_REQUIRED;
 		dmc->max_fw_size = SKL_DMC_MAX_FW_SIZE;
 	} else if (IS_BROXTON(dev_priv)) {
 		dmc->fw_path = BXT_DMC_PATH;
-		dmc->required_version = BXT_DMC_VERSION_REQUIRED;
 		dmc->max_fw_size = BXT_DMC_MAX_FW_SIZE;
 	}
 
@@ -958,8 +925,6 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
 		}
 
 		dmc->fw_path = dev_priv->params.dmc_firmware_path;
-		/* Bypass version check for firmware override. */
-		dmc->required_version = 0;
 	}
 
 	if (!dmc->fw_path) {
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 67e03315ef99..435eab9b016b 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -25,7 +25,6 @@ enum {
 struct intel_dmc {
 	struct work_struct work;
 	const char *fw_path;
-	u32 required_version;
 	u32 max_fw_size; /* bytes */
 	u32 version;
 	struct dmc_fw_info {
-- 
2.38.1

