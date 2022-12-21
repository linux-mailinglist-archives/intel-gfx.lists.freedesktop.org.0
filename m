Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E97FA6532E5
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 16:07:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12ED710E458;
	Wed, 21 Dec 2022 15:07:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F10F10E457
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 15:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671635222; x=1703171222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+egNmzwcCE2fjgk8KbRDoXV2gI0ca5h/+fy6XSlk2TM=;
 b=I5p86MN+94UiPgn8dYE1vo/FjHoR2HUJCP20Sag6uGFqFyoQxcDf4W3C
 TzWiaFsegn0zpERiO1Q3Qu/5oGXRO2c849CL2E62TGpuYQXoq45YpjZ9F
 A2+kMRkM0YcOHwrSU66WX9nlGD9VkYC3EsQbmma8PIGQ/JK++lxabDOL9
 YbsrnwA+KT67x4DhTVaJp5tK24vZo3jszIwmdMIMTh+OvPShWoQfoD5xp
 KVR3alMd2KLRyMxRfnL6n4OrhAKZTB1UmPet3WDRW1DDxPRj56UxZ2xfF
 qFa3e5N/0VdGj7lF1r3q6nYlJSUenNI2XVgeMO4gsPl1b84S1iN3RiCWB g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="321802445"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="321802445"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 07:07:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="775697942"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="775697942"
Received: from eolivagx-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.58.4])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 07:07:00 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Dec 2022 12:06:24 -0300
Message-Id: <20221221150624.402325-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221221150624.402325-1-gustavo.sousa@intel.com>
References: <20221221150624.402325-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/dmc: Use unversioned firmware
 paths
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

As we do not require specific versions anymore, change the convention
for blob filenames to stop using version numbers. This simplifies code
maintenance, since we do not need to keep updating blob paths for new
DMC releases, and also makes DMC loading compatible with systems that do
not have the latest firmware release.

v2:
  - Keep using request_firmware() instead of firmware_request_nowarn().
    (Jani)

References: https://lore.kernel.org/r/Y3081s7c5ksutpMW@intel.com
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 98 ++++++++++++++++++++----
 1 file changed, 82 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 4124b3d37110..1e4cd58671d7 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -42,51 +42,70 @@
 #define DMC_VERSION_MAJOR(version)	((version) >> 16)
 #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
 
-#define DMC_PATH(platform, major, minor) \
-	"i915/"				 \
-	__stringify(platform) "_dmc_ver" \
-	__stringify(major) "_"		 \
+#define DMC_PATH(platform) \
+	"i915/" __stringify(platform) "_dmc.bin"
+
+/*
+ * New DMC additions should not use this. This is used solely to remain
+ * compatible with systems that have not yet updated DMC blobs to use
+ * unversioned file names.
+ */
+#define DMC_LEGACY_PATH(platform, major, minor) \
+	"i915/"					\
+	__stringify(platform) "_dmc_ver"	\
+	__stringify(major) "_"			\
 	__stringify(minor) ".bin"
 
 #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
 
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
-#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
+#define DG2_DMC_PATH			DMC_PATH(dg2)
+#define DG2_DMC_LEGACY_PATH		DMC_LEGACY_PATH(dg2, 2, 08)
 MODULE_FIRMWARE(DG2_DMC_PATH);
 
-#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
+#define ADLP_DMC_PATH			DMC_PATH(adlp)
+#define ADLP_DMC_LEGACY_PATH		DMC_LEGACY_PATH(adlp, 2, 16)
 MODULE_FIRMWARE(ADLP_DMC_PATH);
 
-#define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
+#define ADLS_DMC_PATH			DMC_PATH(adls)
+#define ADLS_DMC_LEGACY_PATH		DMC_LEGACY_PATH(adls, 2, 01)
 MODULE_FIRMWARE(ADLS_DMC_PATH);
 
-#define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
+#define DG1_DMC_PATH			DMC_PATH(dg1)
+#define DG1_DMC_LEGACY_PATH		DMC_LEGACY_PATH(dg1, 2, 02)
 MODULE_FIRMWARE(DG1_DMC_PATH);
 
-#define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
+#define RKL_DMC_PATH			DMC_PATH(rkl)
+#define RKL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(rkl, 2, 03)
 MODULE_FIRMWARE(RKL_DMC_PATH);
 
-#define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
+#define TGL_DMC_PATH			DMC_PATH(tgl)
+#define TGL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(tgl, 2, 12)
 MODULE_FIRMWARE(TGL_DMC_PATH);
 
-#define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
+#define ICL_DMC_PATH			DMC_PATH(icl)
+#define ICL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(icl, 1, 09)
 #define ICL_DMC_MAX_FW_SIZE		0x6000
 MODULE_FIRMWARE(ICL_DMC_PATH);
 
-#define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
+#define GLK_DMC_PATH			DMC_PATH(glk)
+#define GLK_DMC_LEGACY_PATH		DMC_LEGACY_PATH(glk, 1, 04)
 #define GLK_DMC_MAX_FW_SIZE		0x4000
 MODULE_FIRMWARE(GLK_DMC_PATH);
 
-#define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
+#define KBL_DMC_PATH			DMC_PATH(kbl)
+#define KBL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(kbl, 1, 04)
 #define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
 MODULE_FIRMWARE(KBL_DMC_PATH);
 
-#define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
+#define SKL_DMC_PATH			DMC_PATH(skl)
+#define SKL_DMC_LEGACY_PATH		DMC_LEGACY_PATH(skl, 1, 27)
 #define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
 MODULE_FIRMWARE(SKL_DMC_PATH);
 
-#define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
+#define BXT_DMC_PATH			DMC_PATH(bxt)
+#define BXT_DMC_LEGACY_PATH		DMC_LEGACY_PATH(bxt, 1, 07)
 #define BXT_DMC_MAX_FW_SIZE		0x3000
 MODULE_FIRMWARE(BXT_DMC_PATH);
 
@@ -821,16 +840,63 @@ static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
 	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
 }
 
+static const char *dmc_legacy_path(struct drm_i915_private *i915)
+{
+	if (IS_DG2(i915)) {
+		return DG2_DMC_LEGACY_PATH;
+	} else if (IS_ALDERLAKE_P(i915)) {
+		return ADLP_DMC_LEGACY_PATH;
+	} else if (IS_ALDERLAKE_S(i915)) {
+		return ADLS_DMC_LEGACY_PATH;
+	} else if (IS_DG1(i915)) {
+		return DG1_DMC_LEGACY_PATH;
+	} else if (IS_ROCKETLAKE(i915)) {
+		return RKL_DMC_LEGACY_PATH;
+	} else if (IS_TIGERLAKE(i915)) {
+		return TGL_DMC_LEGACY_PATH;
+	} else if (DISPLAY_VER(i915) == 11) {
+		return ICL_DMC_LEGACY_PATH;
+	} else if (IS_GEMINILAKE(i915)) {
+		return GLK_DMC_LEGACY_PATH;
+	} else if (IS_KABYLAKE(i915) ||
+		   IS_COFFEELAKE(i915) ||
+		   IS_COMETLAKE(i915)) {
+		return KBL_DMC_LEGACY_PATH;
+	} else if (IS_SKYLAKE(i915)) {
+		return SKL_DMC_LEGACY_PATH;
+	} else if (IS_BROXTON(i915)) {
+		return BXT_DMC_LEGACY_PATH;
+	}
+
+	return NULL;
+}
+
 static void dmc_load_work_fn(struct work_struct *work)
 {
 	struct drm_i915_private *dev_priv;
 	struct intel_dmc *dmc;
 	const struct firmware *fw = NULL;
+	const char *legacy_path;
+	int err;
 
 	dev_priv = container_of(work, typeof(*dev_priv), display.dmc.work);
 	dmc = &dev_priv->display.dmc;
 
-	request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
+	err = request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
+
+	if (err == -ENOENT && !dev_priv->params.dmc_firmware_path) {
+		legacy_path = dmc_legacy_path(dev_priv);
+		if (legacy_path) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "%s not found, falling back to %s\n",
+				    dmc->fw_path,
+				    legacy_path);
+			err = request_firmware(&fw, legacy_path, dev_priv->drm.dev);
+			if (err == 0)
+				dev_priv->display.dmc.fw_path = legacy_path;
+		}
+	}
+
 	parse_dmc_fw(dev_priv, fw);
 
 	if (intel_dmc_has_payload(dev_priv)) {
-- 
2.38.1

