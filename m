Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9294CC5C1
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 20:12:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB84F10EF63;
	Thu,  3 Mar 2022 19:12:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2B0B10EF63
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 19:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646334758; x=1677870758;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ueqV/dScgyLLboZYerSirCh9WSXFcepYVDVo4Hxazfk=;
 b=U2dc1rEZslmL8X3nuEsMmXzYIRPTkACu6xzqtBWLd6GFV/FKYEFiG4WQ
 BlVkyIlT+5LybGNbUs/tk/NXCFAUoXTuDb9NLJn6t6QCtwB2idLp2Z0To
 y9phloksXbg4VZW8OkOyE3PLMXyRT/sdoT73zf/yzEXv1s2L3DU2V3Zq6
 O1UiBLtNs+cdliCtrKMViLFYmkG2fUC7gBkCYKWOAsjpZY+GjxEUBlggV
 vi9XEhAnkouLWTcDD0L+TyUVony7n4AEHWPZ66/23apvlsnGiHG13+27Z
 TyYhu6OjOynGDmJBnIixl60amr1QFmVNJAsfIg4HNh9tNzpqHhXq0WWvr w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="241205423"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="241205423"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 11:12:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="686620905"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 03 Mar 2022 11:12:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Mar 2022 21:12:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Mar 2022 21:12:07 +0200
Message-Id: <20220303191207.27931-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
References: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 9/9] drm/i915: Add "maximum pipe read
 bandwidth" checks
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

Make sure the CDCLK is high enough to support the so called
"maximum pipe read bandwidth" limitation. Specified as
51.2 x CDCLK.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 36 +++++++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_bw.h |  1 +
 2 files changed, 32 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index ed86f3e3c66c..e5e772c4fcfb 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -599,6 +599,18 @@ static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_
 	return data_rate;
 }
 
+/* "Maximum Pipe Read Bandwidth" */
+static int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	if (DISPLAY_VER(i915) < 12)
+		return 0;
+
+	return DIV_ROUND_UP_ULL(mul_u32_u32(intel_bw_crtc_data_rate(crtc_state), 10), 512);
+}
+
 void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 			  const struct intel_crtc_state *crtc_state)
 {
@@ -696,6 +708,9 @@ static bool intel_bw_state_changed(struct drm_i915_private *i915,
 			    old_crtc_bw->active_planes[slice] != new_crtc_bw->active_planes[slice])
 				return true;
 		}
+
+		if (old_bw_state->min_cdclk[pipe] != new_bw_state->min_cdclk[pipe])
+			return true;
 	}
 
 	return false;
@@ -788,7 +803,15 @@ intel_bw_dbuf_min_cdclk(struct drm_i915_private *i915,
 int intel_bw_min_cdclk(struct drm_i915_private *i915,
 		       const struct intel_bw_state *bw_state)
 {
-	return intel_bw_dbuf_min_cdclk(i915, bw_state);
+	enum pipe pipe;
+	int min_cdclk;
+
+	min_cdclk = intel_bw_dbuf_min_cdclk(i915, bw_state);
+
+	for_each_pipe(i915, pipe)
+		min_cdclk = max(bw_state->min_cdclk[pipe], min_cdclk);
+
+	return min_cdclk;
 }
 
 int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
@@ -814,6 +837,9 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 		old_bw_state = intel_atomic_get_old_bw_state(state);
 
 		skl_crtc_calc_dbuf_bw(new_bw_state, crtc_state);
+
+		new_bw_state->min_cdclk[crtc->pipe] =
+			intel_bw_crtc_min_cdclk(crtc_state);
 	}
 
 	if (!old_bw_state)
@@ -830,9 +856,9 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 
 	/*
 	 * No need to check against the cdclk state if
-	 * the min cdclk for the dbuf doesn't increase.
+	 * the min cdclk doesn't increase.
 	 *
-	 * Ie. we only ever increase the cdclk due to dbuf
+	 * Ie. we only ever increase the cdclk due to bandwidth
 	 * requirements. This can reduce back and forth
 	 * display blinking due to constant cdclk changes.
 	 */
@@ -845,9 +871,9 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 
 	/*
 	 * No need to recalculate the cdclk state if
-	 * the min cdclk for the dbuf doesn't increase.
+	 * the min cdclk doesn't increase.
 	 *
-	 * Ie. we only ever increase the cdclk due to dbuf
+	 * Ie. we only ever increase the cdclk due to bandwidth
 	 * requirements. This can reduce back and forth
 	 * display blinking due to constant cdclk changes.
 	 */
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 92fc09a8c824..cb7ee3a24a58 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -41,6 +41,7 @@ struct intel_bw_state {
 	 */
 	u16 qgv_points_mask;
 
+	int min_cdclk[I915_MAX_PIPES];
 	unsigned int data_rate[I915_MAX_PIPES];
 	u8 num_active_planes[I915_MAX_PIPES];
 };
-- 
2.34.1

