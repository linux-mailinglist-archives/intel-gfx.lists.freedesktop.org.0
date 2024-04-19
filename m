Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DCF8AABA6
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 11:42:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EF1C10E8DE;
	Fri, 19 Apr 2024 09:42:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i24sM64P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33E0D10E809;
 Fri, 19 Apr 2024 09:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713519744; x=1745055744;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dqHxg++oZdGqKeLgQ1sLPtturKZfyaic7w5NRmTCb4k=;
 b=i24sM64PAVLo2kp+t71OuDAtsNf6TaDdj/fLQHPiYvUK1hIfeSR7WEwG
 gqbglHa1usO4mXwRLzJxvrhEsFSKrZmy1EeeHh7zEe6WYqqmQKoiUF0X0
 v9796quF7W32EDFA9wLV9zLcmfY1fQTLV0ENnNtsjwCdH1axDaXrA+45P
 JLjp65ZS9ObBhNGw+5rPbIEu872Ofap5jy0F+fKy8NMM1FwslAFX9rvnr
 f5IMwHnwhKsV0ljT4iwlwfe72ziWiBD7k+lRbz73w2NcL1AIDRdYNKl2y
 S6YjsSLNWu91giERoKO+VNhAur8qnMwZAXjLv6ZiZ9oKa6CdwL9zKA2Cs w==;
X-CSE-ConnectionGUID: OQ5++JElRu2yPqYDGS0rRg==
X-CSE-MsgGUID: WSIZVdSxSdqy6Z5LWtjHYA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="20503850"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="20503850"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 02:42:24 -0700
X-CSE-ConnectionGUID: N9OD/Kg/RoOCtVpUnh6yFQ==
X-CSE-MsgGUID: WnIybaLaQNebgdQKHQccRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="28117165"
Received: from agherasi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.119])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 02:42:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, Gustavo Sousa <gustavo.sousa@intel.com>,
 jani.nikula@intel.com
Subject: [PATCH v2 3/5] drm/i915/dmc: split out per-platform firmware path
 selection
Date: Fri, 19 Apr 2024 12:41:56 +0300
Message-Id: <fe3d7b2b18c317a2f924f2023271d38afee3b18a.1713519628.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713519628.git.jani.nikula@intel.com>
References: <cover.1713519628.git.jani.nikula@intel.com>
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

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 96 +++++++++++++-----------
 1 file changed, 54 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 2e06a39579df..a2027c6cf4f1 100644
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
@@ -1009,48 +1062,7 @@ void intel_dmc_init(struct drm_i915_private *i915)
 
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

