Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 260AF8A9D4D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 16:40:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F361113D12;
	Thu, 18 Apr 2024 14:40:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JMq3bU7A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF4E3113D08;
 Thu, 18 Apr 2024 14:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713451217; x=1744987217;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GAiQSOAQlH0qB0JsxW+UxmFPSe9pOi9MDZ1yiDOLPeY=;
 b=JMq3bU7AYXp+T3Hw1gINU8MdGAaRQZkALeUcC0fmOOM6Du4ZPOWmWuDf
 j0nv7U7jEkGJ9ShzoahzrngI6Bwqz+ySfXIkVs5DqNx+6dyf1vnt4vF4n
 vGUlRUzkIBKBz4w3FsAXeWp3JnNl/dp6exThI3u/Y9wa726diXxx6biWA
 ckTv2d9X0eDSsQev3y0IASXAdjpE1Hu/oZ56/Ux+CQ55FfWbSYAmchty0
 STwB7hbTbn5X9f/2MuKd8ekwODVYndZtj2FdwFviGfRSCnU+cppUhIjKu
 qojm7QK6ahzy4umAN4Vui/EKC8Fs6KWsyjarGCiNR2xy+u6T57WPQjZpo A==;
X-CSE-ConnectionGUID: UN4EYnFBTjCTQUSRn60k1Q==
X-CSE-MsgGUID: 0PwONB8/RYiNjwdCltcSkQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19701134"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="19701134"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 07:40:17 -0700
X-CSE-ConnectionGUID: 5CaQXn6MQxC6sjpe+G6fDg==
X-CSE-MsgGUID: A3cNbvCVRZ+lcr8eUmeUyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="27781003"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 07:40:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 3/5] drm/i915/dmc: split out per-platform firmware path
 selection
Date: Thu, 18 Apr 2024 17:39:52 +0300
Message-Id: <5e25c5fb8fcb88214b7b21bd42d52ffddf0afa48.1713450693.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713450693.git.jani.nikula@intel.com>
References: <cover.1713450693.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The big if ladder clutters intel_dmc_init(). Split it out to a separate
function.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 96 +++++++++++++-----------
 1 file changed, 54 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index ee5db1aafd50..740c05ce83cc 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -142,6 +142,59 @@ MODULE_FIRMWARE(SKL_DMC_PATH);
 #define BXT_DMC_MAX_FW_SIZE		0x3000
 MODULE_FIRMWARE(BXT_DMC_PATH);
 
+static const char *dmc_firmware_default(struct drm_i915_private *i915, u32 *size)
+{
+	const char *fw_path = NULL;
+	u32 max_fw_size = 0;
+
+	if (DISPLAY_VER_FULL(i915) == IP_VER(20, 0)) {
+		fw_path = XE2LPD_DMC_PATH;
+		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
+	} else if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0)) {
+		fw_path = MTL_DMC_PATH;
+		max_fw_size = XELPDP_DMC_MAX_FW_SIZE;
+	} else if (IS_DG2(i915)) {
+		fw_path = DG2_DMC_PATH;
+		max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
+	} else if (IS_ALDERLAKE_P(i915)) {
+		fw_path = ADLP_DMC_PATH;
+		max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
+	} else if (IS_ALDERLAKE_S(i915)) {
+		fw_path = ADLS_DMC_PATH;
+		max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
+	} else if (IS_DG1(i915)) {
+		fw_path = DG1_DMC_PATH;
+		max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
+	} else if (IS_ROCKETLAKE(i915)) {
+		fw_path = RKL_DMC_PATH;
+		max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
+	} else if (IS_TIGERLAKE(i915)) {
+		fw_path = TGL_DMC_PATH;
+		max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
+	} else if (DISPLAY_VER(i915) == 11) {
+		fw_path = ICL_DMC_PATH;
+		max_fw_size = ICL_DMC_MAX_FW_SIZE;
+	} else if (IS_GEMINILAKE(i915)) {
+		fw_path = GLK_DMC_PATH;
+		max_fw_size = GLK_DMC_MAX_FW_SIZE;
+	} else if (IS_KABYLAKE(i915) ||
+		   IS_COFFEELAKE(i915) ||
+		   IS_COMETLAKE(i915)) {
+		fw_path = KBL_DMC_PATH;
+		max_fw_size = KBL_DMC_MAX_FW_SIZE;
+	} else if (IS_SKYLAKE(i915)) {
+		fw_path = SKL_DMC_PATH;
+		max_fw_size = SKL_DMC_MAX_FW_SIZE;
+	} else if (IS_BROXTON(i915)) {
+		fw_path = BXT_DMC_PATH;
+		max_fw_size = BXT_DMC_MAX_FW_SIZE;
+	}
+
+	*size = max_fw_size;
+
+	return fw_path;
+}
+
 #define DMC_DEFAULT_FW_OFFSET		0xFFFFFFFF
 #define PACKAGE_MAX_FW_INFO_ENTRIES	20
 #define PACKAGE_V2_MAX_FW_INFO_ENTRIES	32
@@ -1007,48 +1060,7 @@ void intel_dmc_init(struct drm_i915_private *i915)
 
 	INIT_WORK(&dmc->work, dmc_load_work_fn);
 
-	if (DISPLAY_VER_FULL(i915) == IP_VER(20, 0)) {
-		dmc->fw_path = XE2LPD_DMC_PATH;
-		dmc->max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
-	} else if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0)) {
-		dmc->fw_path = MTL_DMC_PATH;
-		dmc->max_fw_size = XELPDP_DMC_MAX_FW_SIZE;
-	} else if (IS_DG2(i915)) {
-		dmc->fw_path = DG2_DMC_PATH;
-		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
-	} else if (IS_ALDERLAKE_P(i915)) {
-		dmc->fw_path = ADLP_DMC_PATH;
-		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
-	} else if (IS_ALDERLAKE_S(i915)) {
-		dmc->fw_path = ADLS_DMC_PATH;
-		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
-	} else if (IS_DG1(i915)) {
-		dmc->fw_path = DG1_DMC_PATH;
-		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
-	} else if (IS_ROCKETLAKE(i915)) {
-		dmc->fw_path = RKL_DMC_PATH;
-		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
-	} else if (IS_TIGERLAKE(i915)) {
-		dmc->fw_path = TGL_DMC_PATH;
-		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
-	} else if (DISPLAY_VER(i915) == 11) {
-		dmc->fw_path = ICL_DMC_PATH;
-		dmc->max_fw_size = ICL_DMC_MAX_FW_SIZE;
-	} else if (IS_GEMINILAKE(i915)) {
-		dmc->fw_path = GLK_DMC_PATH;
-		dmc->max_fw_size = GLK_DMC_MAX_FW_SIZE;
-	} else if (IS_KABYLAKE(i915) ||
-		   IS_COFFEELAKE(i915) ||
-		   IS_COMETLAKE(i915)) {
-		dmc->fw_path = KBL_DMC_PATH;
-		dmc->max_fw_size = KBL_DMC_MAX_FW_SIZE;
-	} else if (IS_SKYLAKE(i915)) {
-		dmc->fw_path = SKL_DMC_PATH;
-		dmc->max_fw_size = SKL_DMC_MAX_FW_SIZE;
-	} else if (IS_BROXTON(i915)) {
-		dmc->fw_path = BXT_DMC_PATH;
-		dmc->max_fw_size = BXT_DMC_MAX_FW_SIZE;
-	}
+	dmc->fw_path = dmc_firmware_default(i915, &dmc->max_fw_size);
 
 	if (i915->params.dmc_firmware_path) {
 		if (strlen(i915->params.dmc_firmware_path) == 0) {
-- 
2.39.2

