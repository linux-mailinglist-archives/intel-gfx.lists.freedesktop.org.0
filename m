Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 237CD4922A7
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 10:24:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5876410ECAF;
	Tue, 18 Jan 2022 09:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4679E10E21B
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 09:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642497881; x=1674033881;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=758GtzYKrt/dWOYfKw7OAhvUl/H7wo0E19/c4IzhD60=;
 b=X9zp1NqLVhwk4++0Uesq6pW/h9oknTFQpzlwcwPBG276Ep3bRAIVg6rN
 iS0pS1+Za+gbfPTPT8NYTe4Nyk339gbIoo7JORVjXoocY6ZWZnVSQERPG
 5wnQLYy7ihgcNKALG9Jw1hjziPWP3nBdIpn/mp6DtZU1Bzt5h9BGJMjV6
 VrzSZcD4NRzbCe//4JJpY1XuivdvnbUcMV9DGLf+dGVcqUn1r1Jkeq3ek
 Y6eNiv+UygK66SMvmVzE+NBJDPlHSTIrNExO6o3CZQfvQN/9JqTnj6Ht1
 nYw2jKls6L5XyaE+8Q9WLy6QyZ/9BWJflqlyfnJrwzRulYZJ7CcY34JTX w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="244570899"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="244570899"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 01:24:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="622081244"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga002.fm.intel.com with SMTP; 18 Jan 2022 01:24:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jan 2022 11:24:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 11:23:54 +0200
Message-Id: <20220118092354.11631-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/15] drm/i915: Add "maximum pipe read
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
index 072e5fcedc54..4b3e903c5d67 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -597,6 +597,18 @@ static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_
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
@@ -694,6 +706,9 @@ static bool intel_bw_state_changed(struct drm_i915_private *i915,
 			    old_crtc_bw->active_planes[slice] != new_crtc_bw->active_planes[slice])
 				return true;
 		}
+
+		if (old_bw_state->min_cdclk[pipe] != new_bw_state->min_cdclk[pipe])
+			return true;
 	}
 
 	return false;
@@ -786,7 +801,15 @@ intel_bw_dbuf_min_cdclk(struct drm_i915_private *i915,
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
@@ -812,6 +835,9 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 		old_bw_state = intel_atomic_get_old_bw_state(state);
 
 		skl_crtc_calc_dbuf_bw(new_bw_state, crtc_state);
+
+		new_bw_state->min_cdclk[crtc->pipe] =
+			intel_bw_crtc_min_cdclk(crtc_state);
 	}
 
 	if (!old_bw_state)
@@ -828,9 +854,9 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 
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
@@ -843,9 +869,9 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 
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
index 1edab79d120c..aaaf10f04d96 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -38,6 +38,7 @@ struct intel_bw_state {
 	 */
 	u8 qgv_points_mask;
 
+	int min_cdclk[I915_MAX_PIPES];
 	unsigned int data_rate[I915_MAX_PIPES];
 	u8 num_active_planes[I915_MAX_PIPES];
 
-- 
2.32.0

