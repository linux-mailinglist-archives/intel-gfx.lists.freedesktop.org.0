Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFB7818849
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 14:08:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49F3110E19B;
	Tue, 19 Dec 2023 13:08:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD59910E19B
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 13:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702991283; x=1734527283;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+vPunn9QMqiFI1UZIqQw8MQDKk3h/1D3Dveqq59xibI=;
 b=Zf7nVMnDe8rKqQgfedG0vLGK1H6YLJxsUp4OqtJ/p2mgegdQK6TGdgVy
 ND3pvShHcsXx2fUFJiR2ziD88pGrQEa5yb3ByRxwa9vi9ww1WWAS8ZR18
 mz7edPvQtr+iXVIUCao4YGCLb3Gp/Wk94ujr64sX9M68fNRkKNrl/GldH
 WlHFp5VKqUqGLyGxD71nIyD0XPtoFLKut3qZW02M0/Rph+5uPFsRYIAsf
 DQMRicXW7Dkjz9JFtWUSb9ehHgi5NC1cE571WeEVWFk5d5nYDHVEsJ7x/
 UJJqMJPwNOaPlYiq11Fc1SZRTeLjNSKjqlSQDIfMRXwlQDypBXDSqGuYU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="17213547"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="17213547"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 05:08:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="769230554"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="769230554"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 19 Dec 2023 05:08:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Dec 2023 15:07:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915: Compute use_sagv_wm differently
Date: Tue, 19 Dec 2023 15:07:54 +0200
Message-ID: <20231219130756.25986-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231219130756.25986-1-ville.syrjala@linux.intel.com>
References: <20231219130756.25986-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

drm_atomic_check_only() gets upset if we try to add extra crtcs
to any commit that isn't flagged with DRM_MODE_ATOMIC_ALLOW_MODESET.
This conflicts with how SAGV watermarks work on pre-ADL as we
need to manually switch over the SAGV watermarks before we can
safely enable SAGV.

So in order to make SAGV usage possible we need to compute each
pipe's use of SAGV watermarks as if there aren't any other
active pipes. Ie. if the current pipe isn't the one blocking
SAGV then we make it use the SAGV watermarks, even if some
other pipe prevents SAGV from actually being used. Otherwise
we could end up with a pipes using the normal watermarks (but
not blocking SAGV), and some other pipe in parallel enabling
SAGV, which would likely cause underruns.

The alternative approach of preventing SAGV usage until all
pipes simultanously end up using SAGV watermarks would only
really work if userspace always adds all pipes to every
commits, which isn't the case typically.

The downside of this is that we will end up using the less
optimal SAGV watermarks even if some other pipe prevents
SAGV from actually being enabled. In which case the system
won't achieve the minimum possible power consumption.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 38 ++++++++++++--------
 1 file changed, 23 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 56588d6e24ae..9cee19cbe253 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -443,12 +443,35 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 
 	for_each_new_intel_crtc_in_state(state, crtc,
 					 new_crtc_state, i) {
+		struct skl_pipe_wm *pipe_wm = &new_crtc_state->wm.skl.optimal;
+
 		new_bw_state = intel_atomic_get_bw_state(state);
 		if (IS_ERR(new_bw_state))
 			return PTR_ERR(new_bw_state);
 
 		old_bw_state = intel_atomic_get_old_bw_state(state);
 
+		/*
+		 * We store use_sagv_wm in the crtc state rather than relying on
+		 * that bw state since we have no convenient way to get at the
+		 * latter from the plane commit hooks (especially in the legacy
+		 * cursor case).
+		 *
+		 * drm_atomic_check_only() gets upset if we pull more crtcs
+		 * into the state, so we have to calculate this based on the
+		 * individual intel_crtc_can_enable_sagv() rather than
+		 * the overall intel_crtc_can_enable_sagv(). Otherwise the
+		 * crtcs not included in the commit would not switch to the
+		 * SAGV watermarks when we are about to enable SAGV, and that
+		 * would lead to underruns. This does mean extra power draw
+		 * when only a subset of the crtcs are blocking SAGV as the
+		 * other crtcs can't be allowed to use the more optimal
+		 * normal (ie. non-SAGV) watermarks.
+		 */
+		pipe_wm->use_sagv_wm = !HAS_HW_SAGV_WM(i915) &&
+			DISPLAY_VER(i915) >= 12 &&
+			intel_crtc_can_enable_sagv(new_crtc_state);
+
 		if (intel_crtc_can_enable_sagv(new_crtc_state))
 			new_bw_state->pipe_sagv_reject &= ~BIT(crtc->pipe);
 		else
@@ -478,21 +501,6 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 			return ret;
 	}
 
-	for_each_new_intel_crtc_in_state(state, crtc,
-					 new_crtc_state, i) {
-		struct skl_pipe_wm *pipe_wm = &new_crtc_state->wm.skl.optimal;
-
-		/*
-		 * We store use_sagv_wm in the crtc state rather than relying on
-		 * that bw state since we have no convenient way to get at the
-		 * latter from the plane commit hooks (especially in the legacy
-		 * cursor case)
-		 */
-		pipe_wm->use_sagv_wm = !HAS_HW_SAGV_WM(i915) &&
-			DISPLAY_VER(i915) >= 12 &&
-			intel_can_enable_sagv(i915, new_bw_state);
-	}
-
 	return 0;
 }
 
-- 
2.41.0

