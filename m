Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2592386DC5B
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 08:49:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83AEA10EBD6;
	Fri,  1 Mar 2024 07:49:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FRGDr+aW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 535DE10E78D
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 07:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709279380; x=1740815380;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uCg0tDdBJYqtMJYMzmvxwnSGCw2PGU0U8Dw3gEuTxAY=;
 b=FRGDr+aW1h9L+Df0SZnPbpVe5Diaa5SQOUcC418u4tOZZO9uTuBXCz5S
 S4iFmbYKG2Q3dVYt6kemaaBWFNHhEhJQ1JR2M8IDOpMnlg7hwlKANo5L1
 OZyQ5HVBWcoZSLUzymCb/yGg/BxdqbqyqCW8vYTgWsV0jkCM3lMicqJvB
 +90PdJhuqH6Viubrvcu9wL2PC1/Iu1hpreL0wcKBzQ4IF/vSt6a0zs9F7
 Rt6PFWEOk1/4lzrS1nJ7qJo/BNwZHmZXikSHMAGcdE1IZPaHKDgaIWuQU
 5FlIZbz2bETzUwjzfyKMemyKUf6aWiBm15QUuTnn2SU/XiYCH+5NesRev g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="4383186"
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; 
   d="scan'208";a="4383186"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 23:49:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; 
   d="scan'208";a="8012718"
Received: from charlton-desk1.sc.intel.com ([172.25.235.211])
 by fmviesa007.fm.intel.com with ESMTP; 29 Feb 2024 23:49:40 -0800
From: Charlton Lin <charlton.lin@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Charlton Lin <charlton.lin@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Sean Paul <seanpaul@chromium.org>
Subject: [RFC] drm/i915/dp: Log message when limiting SST link rate
 MIME-Version: 1.0 Content-Type: text/plain;
 charset=UTF-8 Content-Transfer-Encoding: 8bit
Date: Thu, 29 Feb 2024 23:49:23 -0800
Message-Id: <20240301074923.485807-1-charlton.lin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Driver currently limits link rate up to HBR3 in SST mode. Log a
message with monitor vendor, product id, and MSTM_CAP to
help understand what monitors are being downgraded by this limit.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
Cc: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Charlton Lin <charlton.lin@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6ece2c563c7a..0b2d6d88fd37 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2437,6 +2437,25 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 						     false,
 						     &limits);
 
+	if (intel_dp_max_common_rate(intel_dp) > limits.max_rate) {
+		u8 mstm_cap;
+		u32 panel_id = drm_edid_get_panel_id(&intel_dp->aux.ddc);
+		char vend[4];
+		u16 product_id;
+
+		drm_dbg_kms(&i915->drm,
+			    "Limiting LR from max common rate %d to %d\n",
+			    intel_dp_max_common_rate(intel_dp), limits.max_rate);
+
+		drm_edid_decode_panel_id(panel_id, vend, &product_id);
+
+		if (intel_dp->dpcd[DP_DPCD_REV] >= DP_DPCD_REV_12 &&
+		    drm_dp_dpcd_readb(&intel_dp->aux, DP_MSTM_CAP, &mstm_cap) == 1)
+			drm_dbg_kms(&i915->drm,
+				    "Manufacturer=%s Model=%x Sink MSTM_CAP=%x\n",
+				    vend, product_id, mstm_cap);
+	}
+
 	if (!dsc_needed) {
 		/*
 		 * Optimize for slow and wide for everything, because there are some
-- 
2.25.1

