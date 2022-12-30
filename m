Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B29E7659B5E
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Dec 2022 19:25:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E7B110E47C;
	Fri, 30 Dec 2022 18:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8C7610E478
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Dec 2022 18:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672424706; x=1703960706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U/4fZ3xOJ5ssEW6gVpRWEidqkRHe6G9JKk1NgMCSFbQ=;
 b=Csk7XkmOUOW/1aA45T9EIM11MRTJxrdA6hhDUKpM/xmSLXCHlg+QTuYQ
 haJQPXx+9RgCsQHlwFEIA4YXd+oin8o9Ms8uNoKfeaMqVTPdrQgK8NTAr
 O/wPjJSa5B1Bv4N/8bzYW49FMSb1PR9C+42/Bjx6fr5n5GnZ7DxTu7Ab/
 UlzfJ1EPspS/A80UnEEXZ2mRlB4oYQT53RtHSkA+lt27crgOqjiPdXfMP
 TKiLP1q/uQMxRxJgiLBb7mQy7Hm/p6qczqDFjeMGmDCzNp3/nAkGBKPZ+
 2hhNfutU0BTHNWpKGfjWWvWf1GbO99d1K6icFjbABeJ7w2bsDwVLme7TU g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10576"; a="300929450"
X-IronPort-AV: E=Sophos;i="5.96,288,1665471600"; d="scan'208";a="300929450"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2022 10:25:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10576"; a="828024093"
X-IronPort-AV: E=Sophos;i="5.96,288,1665471600"; d="scan'208";a="828024093"
Received: from vramamur-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.115.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2022 10:25:03 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Dec 2022 15:24:22 -0300
Message-Id: <20221230182422.29680-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221230182422.29680-1-gustavo.sousa@intel.com>
References: <20221230182422.29680-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/1] drm/i915/dmc: Do not require specific
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently, i915 interacts with the Hardware and not with any DMC
ABI/API, so the API is fixed within the platform, hence no need to get
this so-tied version requirement.

v2:
  - Use link to firmware guide from kernel documentation for
    "References:" instead of mailing list thread. (Rodrigo)
  - Provide a more elaborate justification in the commit message.
    (Rodrigo)

References: https://www.kernel.org/doc/html/v6.1/driver-api/firmware/firmware-usage-guidelines.html
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
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
2.39.0

