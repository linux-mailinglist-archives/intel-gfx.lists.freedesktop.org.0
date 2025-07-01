Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F43AF03BA
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jul 2025 21:26:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E93C10E102;
	Tue,  1 Jul 2025 19:26:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hQORcmqR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE8DB10E102;
 Tue,  1 Jul 2025 19:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751397995; x=1782933995;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4hxXrbohhYEyUKQSRYEg0RW/WSrz4S9Y77Lp/ylyngc=;
 b=hQORcmqRCPd6c+Jxlhg0IqMZr14NrmWOyMOVPCgbhTFRSoOxhBpayFm3
 zFEktM1xlIvR4pA+KfqIX9IiROYRZtGPhpBRN/sVvkX2NSlvxRwhitMWS
 9ZtMUTo+JS2zpogcpJnSeim3VkBWfU7vfteUDiU2rXS2KeaCdoGni/59v
 LOCDTgoKtnCHZLrTNCZCVGqgYhLfq7px8TLUbpSTcenVnq2UMeWNBDvVv
 T/boJaX5R5PSEcx5end3bCXlaPs+b5maTaiyIhH956C0Mf17e3JjEfLUC
 xev4ArVZqGpU4n9F6+Om+HQVU9Z1Mxu5IqLGkTjxOXOINt3W9Fev21GDv w==;
X-CSE-ConnectionGUID: Aw2Ly+YVTBKnCTbtrdo+oQ==
X-CSE-MsgGUID: uD6iACl9SSigP0EFCN/BQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="53822702"
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="53822702"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 12:26:34 -0700
X-CSE-ConnectionGUID: oosFVAE8QpK5XbmJd6HCXQ==
X-CSE-MsgGUID: e6h6z4hsQSqEEUBgOccbVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="184805845"
Received: from kialmah1-desk5.jf.intel.com ([10.23.33.174])
 by fmviesa001.fm.intel.com with ESMTP; 01 Jul 2025 12:26:34 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Uma Shankar <uma.shankar@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH] drm/i915/display: Read DP_ADAPTER_CAP to pass LinkLayer
 DPCD&EDID tests
Date: Tue,  1 Jul 2025 12:26:31 -0700
Message-ID: <20250701192631.3750408-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.43.0
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

4.2.2.1 LinkLayer test states:
"Verify that Source DUT does the following within 5 seconds after HPD
being asserted:
Reads the DPCD Receiver Capability field (DPCD: 00000h:0000Fh)"
...

Fail1:
Source DUT failed to read the DPCD Receiver Capability field (DPCD:
00000h:0000Fh) through AUX_CH before link training."

Fix this by reading DP_ADAPTER_CAP(0x000F & 0x220F)

Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a479b63112ea..762dc073b824 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -252,6 +252,7 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	int lttpr_count = 0;
+	u8 adapter_cap = 0;
 
 	/*
 	 * Detecting LTTPRs must be avoided on platforms with an AUX timeout
@@ -277,6 +278,12 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
 		return -EIO;
 	}
 
+	/* Read DP_ADAPTET_CAP to pass LinkLayer CTS */
+	drm_dp_dpcd_readb(&intel_dp->aux, DP_ADAPTER_CAP,
+				   &adapter_cap);
+	drm_dp_dpcd_readb(&intel_dp->aux, 0x220f,
+				   &adapter_cap);
+
 	return lttpr_count;
 }
 
-- 
2.43.0

