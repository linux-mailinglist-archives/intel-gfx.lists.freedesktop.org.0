Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD87467622
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 12:20:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52DA973C36;
	Fri,  3 Dec 2021 11:20:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0578673C46
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 11:20:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="223832720"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="223832720"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 03:20:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="501154497"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 03 Dec 2021 03:20:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 Dec 2021 13:20:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Dec 2021 13:20:28 +0200
Message-Id: <20211203112029.1057-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211203112029.1057-1-ville.syrjala@linux.intel.com>
References: <20211203112029.1057-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Relocate intel_crtc_for_plane()
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

Move intel_crtc_for_plane() next to its only user. No one
else should ever use this.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 14 --------------
 drivers/gpu/drm/i915/display/intel_crtc.h |  2 --
 drivers/gpu/drm/i915/intel_pm.c           | 14 ++++++++++++++
 3 files changed, 14 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 96554f5652f1..6a9640767a05 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -54,20 +54,6 @@ struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
 	return NULL;
 }
 
-struct intel_crtc *intel_crtc_for_plane(struct drm_i915_private *i915,
-					enum i9xx_plane_id i9xx_plane)
-{
-	struct intel_plane *plane;
-
-	for_each_intel_plane(&i915->drm, plane) {
-		if (plane->id == PLANE_PRIMARY &&
-		    plane->i9xx_plane == i9xx_plane)
-			return intel_crtc_for_pipe(i915, plane->pipe);
-	}
-
-	return NULL;
-}
-
 void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc)
 {
 	drm_crtc_wait_one_vblank(&crtc->base);
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index 4654f0eb65a2..f397f4b8ec47 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -32,8 +32,6 @@ void intel_wait_for_vblank_workers(struct intel_atomic_state *state);
 struct intel_crtc *intel_get_first_crtc(struct drm_i915_private *i915);
 struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
 				       enum pipe pipe);
-struct intel_crtc *intel_crtc_for_plane(struct drm_i915_private *i915,
-					enum i9xx_plane_id plane);
 void intel_wait_for_vblank_if_active(struct drm_i915_private *i915,
 				     enum pipe pipe);
 void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc);
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 408fe891a2af..52eece0d6918 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -2336,6 +2336,20 @@ static void i965_update_wm(struct drm_i915_private *dev_priv)
 
 #undef FW_WM
 
+static struct intel_crtc *intel_crtc_for_plane(struct drm_i915_private *i915,
+					       enum i9xx_plane_id i9xx_plane)
+{
+	struct intel_plane *plane;
+
+	for_each_intel_plane(&i915->drm, plane) {
+		if (plane->id == PLANE_PRIMARY &&
+		    plane->i9xx_plane == i9xx_plane)
+			return intel_crtc_for_pipe(i915, plane->pipe);
+	}
+
+	return NULL;
+}
+
 static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 {
 	const struct intel_watermark_params *wm_info;
-- 
2.32.0

