Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9041AAB00
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 17:01:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 077A288DD0;
	Wed, 15 Apr 2020 15:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85D666E9FC
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 15:01:18 +0000 (UTC)
IronPort-SDR: qbX8X4qn7baxN/86Uwe7O/4yhSHLbtNbGlJ/ZhuhafCmG2gEQIHhoNjxe65tqiLpNxtqtoKcTw
 mg4TVSwbd2Kg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 08:01:04 -0700
IronPort-SDR: GXnq/u/WlI1tEeq9H2Q5UQqMkCKX7fKCAlAABN2n7I531uZZRVYE9YlEj7LUC4gHvcXHImujnc
 CGQaxNV+JCXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,387,1580803200"; d="scan'208";a="256882419"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga006.jf.intel.com with ESMTP; 15 Apr 2020 08:01:02 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Apr 2020 17:57:40 +0300
Message-Id: <20200415145740.28241-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200415143911.10244-4-stanislav.lisovskiy@intel.com>
References: <20200415143911.10244-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v24 03/11] drm/i915: Prepare to extract gen
 specific functions from intel_can_enable_sagv
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Addressing one of the comments, recommending to extract platform
specific code from intel_can_enable_sagv as a preparation, before
we are going to add support for tgl+.

v2: - Removed whitespace
v3: - Removed premature debug and new cycle introduction(Ville)
    - Added missing no active pipes check(Ville)
v4: - Fixed stupid mistake with plane_state caused by stupid macro change

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 61 +++++++++++++++++++--------------
 1 file changed, 36 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index bd57f0bb8a54..cda2bc954193 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3757,42 +3757,22 @@ intel_disable_sagv(struct drm_i915_private *dev_priv)
 	return 0;
 }
 
-bool intel_can_enable_sagv(struct intel_atomic_state *state)
+static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_device *dev = state->base.dev;
+	struct drm_device *dev = crtc_state->uapi.crtc->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_crtc *crtc;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_plane *plane;
-	struct intel_crtc_state *crtc_state;
-	enum pipe pipe;
 	int level, latency;
 
-	if (!intel_has_sagv(dev_priv))
-		return false;
-
-	/*
-	 * If there are no active CRTCs, no additional checks need be performed
-	 */
-	if (hweight8(state->active_pipes) == 0)
+	if (!crtc_state->hw.active)
 		return true;
 
-	/*
-	 * SKL+ workaround: bspec recommends we disable SAGV when we have
-	 * more then one pipe enabled
-	 */
-	if (hweight8(state->active_pipes) > 1)
-		return false;
-
-	/* Since we're now guaranteed to only have one active CRTC... */
-	pipe = ffs(state->active_pipes) - 1;
-	crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
-	crtc_state = to_intel_crtc_state(crtc->base.state);
-
 	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
 		return false;
 
 	for_each_intel_plane_on_crtc(dev, crtc, plane) {
-		struct skl_plane_wm *wm =
+		const struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane->id];
 
 		/* Skip this plane if it's not enabled */
@@ -3823,6 +3803,37 @@ bool intel_can_enable_sagv(struct intel_atomic_state *state)
 	return true;
 }
 
+bool intel_can_enable_sagv(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc *crtc;
+	const struct intel_crtc_state *crtc_state;
+	enum pipe pipe;
+
+	if (!intel_has_sagv(dev_priv))
+		return false;
+
+	/*
+	 * If there are no active CRTCs, no additional checks need be performed
+	 */
+	if (hweight8(state->active_pipes) == 0)
+		return true;
+
+	/*
+	 * SKL+ workaround: bspec recommends we disable SAGV when we have
+	 * more then one pipe enabled
+	 */
+	if (hweight8(state->active_pipes) > 1)
+		return false;
+
+	/* Since we're now guaranteed to only have one active CRTC... */
+	pipe = ffs(state->active_pipes) - 1;
+	crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+	crtc_state = to_intel_crtc_state(crtc->base.state);
+
+	return intel_crtc_can_enable_sagv(crtc_state);
+}
+
 /*
  * Calculate initial DBuf slice offset, based on slice size
  * and mask(i.e if slice size is 1024 and second slice is enabled
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
