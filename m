Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 254A1678469
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 19:21:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B14610E530;
	Mon, 23 Jan 2023 18:21:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D7BF10E52B
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 18:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674498082; x=1706034082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lkaex8p4dxUtaAFkEOHRBZNE68O9qZ4U47DVzqEwkS8=;
 b=Su33skEG4gn+Tn7sUOIb1Ln9KrN1csq1I4TAZonCCCowrV0t6K7yHqLj
 /GYXe86u7TLfKPzXaQbxFX6i+sUji3aWxBPWZiBVcJoAD2mnAHde+Ttox
 q8rtBD2E9EXe769mWijCAulcVdbKx1qQsiiL8F6M1TL/8D2y1S9eXf2L1
 q8z1ym7EjgFWWWobMZUgYXhrpXqXvT28okQU6xhsZxCdxT80aPiIR/E2z
 WGawjH8POrrhIKWU0iDJBlbaI4wYXxHK1WL7tVdoGLU7HdH3R5j/3KgBk
 URqpHIAWfDPaXEKZz2Kf0VVnmQbnSfCbRytNUV/jPFICU9bOGf4alBdt4 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="327370833"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="327370833"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 10:21:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="730382924"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="730382924"
Received: from tyen-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.41.157])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 10:21:05 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Jan 2023 15:20:20 -0300
Message-Id: <20230123182021.31239-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230123182021.31239-1-gustavo.sousa@intel.com>
References: <20230123182021.31239-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dmc: Prepare to use unversioned
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

New DMC releases in linux-firmware will stop using version number in
blob filenames. This new convention provides the following benefits:

  1. It simplifies code maintenance, as new DMC releases for a platform
     using the new convention will always use the same filename for the
     blob.

  2. It allows DMC to be loaded even if the target system does not have
     the most recent firmware installed.

Prepare the driver by:

  - Using the new convention for DMC_PATH() and renaming the currently
    used one to make it clear it is for the legacy scheme.

  - Implementing a fallback mechanism for future transitions from
    versioned to unversioned paths so that we do not cause a regression
    for systems not having the most up-to-date linux-firmware files.

v2:
  - Keep using request_firmware() instead of firmware_request_nowarn().
    (Jani)
v3:
  - Keep current DMC paths instead of directly using unversioned ones,
    so that we do not disturb initrd generation.
    (Lucas, Rodrigo)

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 62 ++++++++++++++++++------
 1 file changed, 46 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 370c91d323fc..2464796c769d 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -42,51 +42,59 @@
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
+#define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
 MODULE_FIRMWARE(DG2_DMC_PATH);
 
-#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
+#define ADLP_DMC_PATH			DMC_LEGACY_PATH(adlp, 2, 16)
 MODULE_FIRMWARE(ADLP_DMC_PATH);
 
-#define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
+#define ADLS_DMC_PATH			DMC_LEGACY_PATH(adls, 2, 01)
 MODULE_FIRMWARE(ADLS_DMC_PATH);
 
-#define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
+#define DG1_DMC_PATH			DMC_LEGACY_PATH(dg1, 2, 02)
 MODULE_FIRMWARE(DG1_DMC_PATH);
 
-#define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
+#define RKL_DMC_PATH			DMC_LEGACY_PATH(rkl, 2, 03)
 MODULE_FIRMWARE(RKL_DMC_PATH);
 
-#define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
+#define TGL_DMC_PATH			DMC_LEGACY_PATH(tgl, 2, 12)
 MODULE_FIRMWARE(TGL_DMC_PATH);
 
-#define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
+#define ICL_DMC_PATH			DMC_LEGACY_PATH(icl, 1, 09)
 #define ICL_DMC_MAX_FW_SIZE		0x6000
 MODULE_FIRMWARE(ICL_DMC_PATH);
 
-#define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
+#define GLK_DMC_PATH			DMC_LEGACY_PATH(glk, 1, 04)
 #define GLK_DMC_MAX_FW_SIZE		0x4000
 MODULE_FIRMWARE(GLK_DMC_PATH);
 
-#define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
+#define KBL_DMC_PATH			DMC_LEGACY_PATH(kbl, 1, 04)
 #define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
 MODULE_FIRMWARE(KBL_DMC_PATH);
 
-#define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
+#define SKL_DMC_PATH			DMC_LEGACY_PATH(skl, 1, 27)
 #define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
 MODULE_FIRMWARE(SKL_DMC_PATH);
 
-#define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
+#define BXT_DMC_PATH			DMC_LEGACY_PATH(bxt, 1, 07)
 #define BXT_DMC_MAX_FW_SIZE		0x3000
 MODULE_FIRMWARE(BXT_DMC_PATH);
 
@@ -845,16 +853,38 @@ static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
 	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
 }
 
+static const char *dmc_fallback_path(struct drm_i915_private *i915)
+{
+	/* No fallback paths for now. */
+	return NULL;
+}
+
 static void dmc_load_work_fn(struct work_struct *work)
 {
 	struct drm_i915_private *dev_priv;
 	struct intel_dmc *dmc;
 	const struct firmware *fw = NULL;
+	const char *fallback_path;
+	int err;
 
 	dev_priv = container_of(work, typeof(*dev_priv), display.dmc.work);
 	dmc = &dev_priv->display.dmc;
 
-	request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
+	err = request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
+
+	if (err == -ENOENT && !dev_priv->params.dmc_firmware_path) {
+		fallback_path = dmc_fallback_path(dev_priv);
+		if (fallback_path) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "%s not found, falling back to %s\n",
+				    dmc->fw_path,
+				    fallback_path);
+			err = request_firmware(&fw, fallback_path, dev_priv->drm.dev);
+			if (err == 0)
+				dev_priv->display.dmc.fw_path = fallback_path;
+		}
+	}
+
 	parse_dmc_fw(dev_priv, fw);
 
 	if (intel_dmc_has_payload(dev_priv)) {
-- 
2.39.0

