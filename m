Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 082B54027F9
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 13:44:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67C1289F4A;
	Tue,  7 Sep 2021 11:44:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBD4489F4A
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 11:44:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10099"; a="220201615"
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="220201615"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 04:44:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="464794077"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga007.fm.intel.com with ESMTP; 07 Sep 2021 04:44:19 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Sep 2021 17:06:58 +0530
Message-Id: <20210907113658.1351456-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Add HDR mode helper function
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

Add helper function with returns if HDR mode in on

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1f447ba776c7..51008600a180 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -182,6 +182,12 @@ static void intel_update_czclk(struct drm_i915_private *dev_priv)
 		dev_priv->czclk_freq);
 }
 
+static bool is_hdr_mode(const struct intel_crtc_state *crtc_state)
+{
+	return (crtc_state->active_planes & ~(icl_hdr_plane_mask() |
+		BIT(PLANE_CURSOR))) == 0;
+}
+
 /* WA Display #0827: Gen9:all */
 static void
 skl_wa_827(struct drm_i915_private *dev_priv, enum pipe pipe, bool enable)
@@ -5257,8 +5263,7 @@ static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
 			PIPEMISC_YUV420_MODE_FULL_BLEND;
 
 	if (DISPLAY_VER(dev_priv) >= 11 &&
-	    (crtc_state->active_planes & ~(icl_hdr_plane_mask() |
-					   BIT(PLANE_CURSOR))) == 0)
+	    is_hdr_mode(crtc_state))
 		val |= PIPEMISC_HDR_MODE_PRECISION;
 
 	if (DISPLAY_VER(dev_priv) >= 12)
-- 
2.31.1

