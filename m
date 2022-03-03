Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AA04CC5C0
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 20:12:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0F8C10EF53;
	Thu,  3 Mar 2022 19:12:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D40C310EF64
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 19:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646334758; x=1677870758;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=sM9AXxe4EA2G6DGQ2n7+BDhI6da50z2Ob2jpyOeMlRA=;
 b=ND1Nusm6V+LGGtsZkZ002GYyMbA+DWSZfNY5+dzUhOmcB/oHf0kLZw+7
 FA+a4WIJA49ZIkGqOCeoU+l75JSniW2LGsEx6bi6ZUIoy43rFGOFzZXwv
 ejL0Ft9JbApqEm/MkaHRgZZc7F6akaRG89IRsLOHWjGoGEf95tf5QZUC6
 W2QRenb5WRQXz71riBd0O83WWmbCyaKdDevAbBBJFJeBOHFpCCw262HRl
 HW/1/1s4A8ZxIIm7NVz9/bjgaDhIZONoximF14r2NYUPisn1Q6+XvJeg0
 Tszz+uqek5XLpCMEh8uDAJii+Q6SMJdKseJYydxs52PW4irfYTjfGamFl A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="278471757"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="278471757"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 11:12:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="640312842"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 03 Mar 2022 11:12:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Mar 2022 21:12:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Mar 2022 21:12:05 +0200
Message-Id: <20220303191207.27931-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
References: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/9] drm/i915: Properly write lock bw_state
 when it changes
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

The current code also forgets to call intel_atomic_lock_global_state()
when other stuff besides the final min_cdlck changes in the state.
That means we may throw away data which actually has changed, and
thus we can't be at all sure what the code ends up doing during
subsequent commits. Do the write lock properly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 0759bb95ea4b..56eebccd16e2 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -678,6 +678,28 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
 	return to_intel_bw_state(bw_state);
 }
 
+static bool intel_bw_state_changed(struct drm_i915_private *i915,
+				   const struct intel_bw_state *old_bw_state,
+				   const struct intel_bw_state *new_bw_state)
+{
+	enum pipe pipe;
+
+	for_each_pipe(i915, pipe) {
+		const struct intel_dbuf_bw *old_crtc_bw =
+			&old_bw_state->dbuf_bw[pipe];
+		const struct intel_dbuf_bw *new_crtc_bw =
+			&new_bw_state->dbuf_bw[pipe];
+		enum dbuf_slice slice;
+
+		for_each_dbuf_slice(i915, slice) {
+			if (old_crtc_bw->used_bw[slice] != new_crtc_bw->used_bw[slice])
+				return true;
+		}
+	}
+
+	return old_bw_state->min_cdclk != new_bw_state->min_cdclk;
+}
+
 static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
 				  const struct intel_crtc_state *crtc_state)
 {
@@ -765,7 +787,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
 
 	new_bw_state->min_cdclk = DIV_ROUND_UP(max_bw, 64);
 
-	if (new_bw_state->min_cdclk != old_bw_state->min_cdclk) {
+	if (intel_bw_state_changed(dev_priv, old_bw_state, new_bw_state)) {
 		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
 
 		if (ret)
-- 
2.34.1

