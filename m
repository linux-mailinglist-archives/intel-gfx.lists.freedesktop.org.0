Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B2E4095A3
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 16:44:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BAEB6E13C;
	Mon, 13 Sep 2021 14:44:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 381D56E13C
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 14:44:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10105"; a="282693629"
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="282693629"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 07:44:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="609011063"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 13 Sep 2021 07:44:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Sep 2021 17:44:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Sep 2021 17:44:28 +0300
Message-Id: <20210913144440.23008-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/16] drm/i915: Flatten hsw_crtc_compute_clock()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

hsw_crtc_compute_clock() has become spaghetti. Flatten
it a bit to make it at least semi-legible.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 210f91f4a576..ace9157a1c30 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -937,16 +937,18 @@ static int hsw_crtc_compute_clock(struct intel_crtc_state *crtc_state)
 	struct intel_encoder *encoder =
 		intel_get_crtc_new_encoder(state, crtc_state);
 
-	if (IS_DG2(dev_priv)) {
+	if (IS_DG2(dev_priv))
 		return intel_mpllb_calc_state(crtc_state, encoder);
-	} else if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) ||
-		   DISPLAY_VER(dev_priv) >= 11) {
-		if (!intel_reserve_shared_dplls(state, crtc, encoder)) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "failed to find PLL for pipe %c\n",
-				    pipe_name(crtc->pipe));
-			return -EINVAL;
-		}
+
+	if (DISPLAY_VER(dev_priv) < 11 &&
+	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
+		return 0;
+
+	if (!intel_reserve_shared_dplls(state, crtc, encoder)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "failed to find PLL for pipe %c\n",
+			    pipe_name(crtc->pipe));
+		return -EINVAL;
 	}
 
 	return 0;
-- 
2.32.0

