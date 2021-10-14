Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6213642E3F8
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 00:09:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1309F6E8DF;
	Thu, 14 Oct 2021 22:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC5EE6E8D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 22:09:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="227754443"
X-IronPort-AV: E=Sophos;i="5.85,374,1624345200"; d="scan'208";a="227754443"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 15:09:31 -0700
X-IronPort-AV: E=Sophos;i="5.85,374,1624345200"; d="scan'208";a="492211777"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 15:09:30 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Date: Fri, 15 Oct 2021 01:09:14 +0300
Message-Id: <20211014220921.683870-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211014220921.683870-1-imre.deak@intel.com>
References: <20211014220921.683870-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 04/11] drm/i915: Simplify the modifier check
 for interlaced scanout support
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

Checking the modifiers that support interlacing makes the condition
simpler and avoids us having to add new modifiers to the list (presuming
all/most of the new modifiers won't support interlacing).

Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 264b9a422a224..e1f754270eb02 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1240,13 +1240,8 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 	/* Y-tiling is not supported in IF-ID Interlace mode */
 	if (crtc_state->hw.enable &&
 	    crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE &&
-	    (fb->modifier == I915_FORMAT_MOD_Y_TILED ||
-	     fb->modifier == I915_FORMAT_MOD_Yf_TILED ||
-	     fb->modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
-	     fb->modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
-	     fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
-	     fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
-	     fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC)) {
+	    fb->modifier != DRM_FORMAT_MOD_LINEAR &&
+	    fb->modifier != I915_FORMAT_MOD_X_TILED) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Y/Yf tiling not supported in IF-ID mode\n");
 		return -EINVAL;
-- 
2.27.0

