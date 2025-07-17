Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B929B084F7
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 08:33:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F2DF10E6B3;
	Thu, 17 Jul 2025 06:33:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LwarHwr/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5134D10E6B0;
 Thu, 17 Jul 2025 06:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752733991; x=1784269991;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5kf9TR8yC7PXjfK05wp/5B9i7Q5Gw7tKFXGpVwVk0Fg=;
 b=LwarHwr/AFLNx006dxfRNpVKEQG9n8aiDh99mHOr9OkLYivh0IOMRMXT
 /L3B6cpkTKgEpLMMzolnt5F6rHG6ilMGI92i3Wxw8WVv9R+G9cNBML7z9
 KXRJryfruiejxZr8pnmOjg3ET5VS/UhQ/yTK5WTkNWqpctVsnHcb5QM1Q
 CdsahzUSRU8uqBn5BRNawQHpzgHspJHSznnhsD5j//l6pOYSdEnfbZKlZ
 aRry1ujAOupPyIKv+Z1ZiLhgt3mPkgfQEBMhNeKCNC7/F96yCxX9ArBOz
 ex1rc/RthsbHwtTeIQ31lP4+pBbbjSWmJsH2uIzj/iuYqROGAOUlUC+09 g==;
X-CSE-ConnectionGUID: +A4l8hAkRLKE/k/UqY2y3Q==
X-CSE-MsgGUID: oP6lTrdGSSq0GauLTilj+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="55139741"
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="55139741"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 23:33:11 -0700
X-CSE-ConnectionGUID: Fix88chjQeGCpjE6Pk37qA==
X-CSE-MsgGUID: HTPgTBegTpOo3MUkjt0XEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="162000928"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.57])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 23:33:09 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/display: Write PHY_CMN1_CONTROL only when using
 AUXLess ALPM
Date: Thu, 17 Jul 2025 09:32:58 +0300
Message-ID: <20250717063259.440086-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

We are seeing "dmesg-warn/abort - *ERROR* PHY * failed after 3 retries"
since we started configuring LFPS sending. According to Bspec Configuring
LFPS sending is needed only when using AUXLess ALPM. This patch avoids
these failures by configuring LFPS sending only when using AUXLess ALPM.

Fixes: 9dc619680de4 ("drm/i915/display: Add function to configure LFPS sending")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index ed8e640b96b0..9cfc3187aeab 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3239,14 +3239,14 @@ void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
-	bool enable = intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encoder),
-						  crtc_state);
+	u8 owned_lane_mask;
 	int i;
 
-	if (DISPLAY_VER(display) < 20)
+	if (DISPLAY_VER(display) < 20 ||
+	    !intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encoder), crtc_state))
 		return;
 
+	owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
 	for (i = 0; i < 4; i++) {
 		int tx = i % 2 + 1;
 		u8 lane_mask = i < 2 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE1;
@@ -3256,8 +3256,7 @@ void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
 
 		intel_cx0_rmw(encoder, lane_mask, PHY_CMN1_CONTROL(tx, 0),
 			      CONTROL0_MAC_TRANSMIT_LFPS,
-			      enable ? CONTROL0_MAC_TRANSMIT_LFPS : 0,
-			      MB_WRITE_COMMITTED);
+			      CONTROL0_MAC_TRANSMIT_LFPS, MB_WRITE_COMMITTED);
 	}
 }
 
-- 
2.43.0

