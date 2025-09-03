Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 718D4B4135E
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 06:04:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 012E710E0FC;
	Wed,  3 Sep 2025 04:04:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YOI2tqtl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBB1910E087;
 Wed,  3 Sep 2025 04:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756872240; x=1788408240;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Fy5S6M55puxva0x923YNRmVsTeNL4Y9uzIqqNUZQqik=;
 b=YOI2tqtlIdkrS1QtbDkTUboGA6J46PDiu0IuOF8hUGmvm5wvPw0QiexW
 ho/9LGS195yzjmPuR/YBpvCFqAZ0rfMHc97+7p2S9/xiN6Rhu107D364q
 a3rw03ePg6okfpFTyd5vZ5iKI7fMLqNoi7S3JbBFuIFdUEbI9rib7oTvh
 0ueEd9fP4BsCuyXXTR54zadHxyXYHBLCtc0Hm3RFR4HvQ0GIrrh62IpUi
 oRUqIK0oA/fXSs+1xE27MTZ5zOHWSXRF6YammjcUXx4vdpV5w9g2M1SFq
 rCmwlmAs/yGK92Q8aq8qzJ5h5bi3bUfQE+4A1dc4ITJ6N2rnafIHm461O g==;
X-CSE-ConnectionGUID: t2ugAOCATQGG72Z203KETA==
X-CSE-MsgGUID: /rKjaIsgROu6wPZ9aPfZbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="46750879"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="46750879"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 21:03:59 -0700
X-CSE-ConnectionGUID: C5DZ8RZeSkCR5YReB/G0/A==
X-CSE-MsgGUID: hkSNhIPmT9COhVTL5fVctw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="171436377"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 21:03:58 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH] drm/i915/hdmi: Fix potential overflow while using
 intel_encoder_to_tc
Date: Wed,  3 Sep 2025 09:20:22 +0530
Message-ID: <20250903035022.3654997-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

The helper intel_encoder_to_tc() can potentially return TC_PORT_NONE
(-1) and cause overflow while computing ddc pins in
icl_encoder_to_ddc_pin().

Check for TC_PORT_NONE before deriving the ddc pins for TC port.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index cbee628eb26b..85f70cedc40c 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2791,10 +2791,16 @@ static u8 icl_encoder_to_ddc_pin(struct intel_encoder *encoder)
 	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 
-	if (intel_encoder_is_combo(encoder))
+	if (intel_encoder_is_combo(encoder)) {
 		return GMBUS_PIN_1_BXT + port;
-	else if (intel_encoder_is_tc(encoder))
-		return GMBUS_PIN_9_TC1_ICP + intel_encoder_to_tc(encoder);
+	} else if (intel_encoder_is_tc(encoder)) {
+		enum tc_port tc_port = intel_encoder_to_tc(encoder);
+
+		if (tc_port != TC_PORT_NONE)
+			return GMBUS_PIN_9_TC1_ICP + tc_port;
+
+		drm_WARN(display->drm, 1, "Invalid TC port\n");
+	}
 
 	drm_WARN(display->drm, 1, "Unknown port:%c\n", port_name(port));
 	return GMBUS_PIN_2_BXT;
-- 
2.45.2

