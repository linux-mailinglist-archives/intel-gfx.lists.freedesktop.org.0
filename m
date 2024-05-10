Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 721488C2653
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 16:07:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52D9D10E567;
	Fri, 10 May 2024 14:07:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EbJWURpB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1757910E567;
 Fri, 10 May 2024 14:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715350048; x=1746886048;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QaUcNCm/a+BamJrLrdY3E5oXAXyy4EKgqLmNWQnOaiU=;
 b=EbJWURpB/NAa52YNEpM0zYtGogWT3gxndbSsbQRnqBfId3pTou80l1mT
 1REE+VDg0Mz1j1HSSkpjWKr2s0MHBHPo7m+SOHM1/9xa6/aUCGkAXbO6T
 DeU+V0k2e/EpKaEQr3ir2ftsCbRPiS99lNBwZG2RDpaZ8XmqKZx3MJ20/
 KL2aKzqds/Ds3AgzZmx0bE6f0c/6bCz2VkpD1nPb4q+L4w4iihaR/Jly/
 P+pn9KeSCy7z7IXpdG4SdBwW00ROhbwRHbtbvPtnuy0jb1vzOZXThEPqa
 UmY0b8HetHyH7ju+735NGTjy2CusI2UxrPWV09tUN45IhNIcISdru36UC Q==;
X-CSE-ConnectionGUID: z47g9cGxTWiVS6EOvPZ0uA==
X-CSE-MsgGUID: 4WCUvyKCR/eKjZo5d549MA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="28815917"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="28815917"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 07:07:28 -0700
X-CSE-ConnectionGUID: fuqtex9LSDiT7YJzMVtyFg==
X-CSE-MsgGUID: i2zf0qRXSWuj7sLomb1yEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="52840049"
Received: from hcaldwel-desk1.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.124.223.133])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 07:07:27 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH] drm/i915/bmg: Load DMC
Date: Fri, 10 May 2024 11:05:33 -0300
Message-ID: <20240510140532.112352-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
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

Load Battlemage's DMC. We re-use XELPDP_DMC_MAX_FW_SIZE since BMG's
display is a derivative of Xe_LPD+ and has the same MMIO offset limits.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index cbd2ac5671b1..63fccdda56c0 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -115,6 +115,9 @@ static bool dmc_firmware_param_disabled(struct drm_i915_private *i915)
 #define XE2LPD_DMC_PATH			DMC_PATH(xe2lpd)
 MODULE_FIRMWARE(XE2LPD_DMC_PATH);
 
+#define BMG_DMC_PATH			DMC_PATH(bmg)
+MODULE_FIRMWARE(BMG_DMC_PATH);
+
 #define MTL_DMC_PATH			DMC_PATH(mtl)
 MODULE_FIRMWARE(MTL_DMC_PATH);
 
@@ -166,6 +169,9 @@ static const char *dmc_firmware_default(struct drm_i915_private *i915, u32 *size
 	if (DISPLAY_VER_FULL(i915) == IP_VER(20, 0)) {
 		fw_path = XE2LPD_DMC_PATH;
 		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
+	} else if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) {
+		fw_path = BMG_DMC_PATH;
+		max_fw_size = XELPDP_DMC_MAX_FW_SIZE;
 	} else if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0)) {
 		fw_path = MTL_DMC_PATH;
 		max_fw_size = XELPDP_DMC_MAX_FW_SIZE;
-- 
2.45.0

