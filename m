Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CD74B20F8
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 10:06:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AABB210E463;
	Fri, 11 Feb 2022 09:06:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BF7F10EA2E
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 09:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644570399; x=1676106399;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EVIWq2jlVgYgO2+MfIS0qRVSd45IwzstKKUZvtazM7o=;
 b=dajHoXkX4Ib+KlrgOdV/tPmYyFzgtQkMS/DCrJVow4oh3iAsVw0+QMOl
 bwFxAqEpWlWiDhR+iDqelooB+ZLh65rfCGfRSZOCmenaRb5qQ+a1RvgGu
 SqtVjF9r0DDrwvz7jU4LTDkzsQQOj7gcqM8irJqtHVaq9+75arpFj2S5A
 VZyI8EoSCQ7N4kvqg8di1Tetc8Rq10SFENtE60ULhLDebiE95R8lOAPd0
 hOh69wUfDCy26gsT1EzFkHHaPl/bdmPcEqvjebTkHELy2hqQw3wxEvjaG
 iu7CkHzDccad6wmflv2tfpHdumneLQlnpTpdJRDXbUfZ6iHHajjozd5Wi A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="229660956"
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="229660956"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 01:06:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="542010250"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 11 Feb 2022 01:06:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Feb 2022 11:06:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Feb 2022 11:06:23 +0200
Message-Id: <20220211090629.15555-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/8] drm/i915: Introduce
 intel_arm_planes_on_crtc()
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

No reason the high level intel_update_crtc() needs to know
that there is something magical about the commit order of
planes between different platforms. So let's hide that
detail even better.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 19 +++++++++++++++----
 .../gpu/drm/i915/display/intel_atomic_plane.h |  6 ++----
 drivers/gpu/drm/i915/display/intel_display.c  |  6 +-----
 3 files changed, 18 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 3355eb637eac..bba2f105b7dd 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -716,8 +716,8 @@ void intel_update_planes_on_crtc(struct intel_atomic_state *state,
 	}
 }
 
-void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
-			    struct intel_crtc *crtc)
+static void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
+				   struct intel_crtc *crtc)
 {
 	struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
@@ -751,8 +751,8 @@ void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
 	}
 }
 
-void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
-			     struct intel_crtc *crtc)
+static void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc)
 {
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -777,6 +777,17 @@ void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
 	}
 }
 
+void intel_arm_planes_on_crtc(struct intel_atomic_state *state,
+			      struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+
+	if (DISPLAY_VER(i915) >= 9)
+		skl_arm_planes_on_crtc(state, crtc);
+	else
+		i9xx_arm_planes_on_crtc(state, crtc);
+}
+
 int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 				      struct intel_crtc_state *crtc_state,
 				      int min_scale, int max_scale,
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 9822b921279c..b7973e932e78 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -46,10 +46,8 @@ void intel_plane_destroy_state(struct drm_plane *plane,
 			       struct drm_plane_state *state);
 void intel_update_planes_on_crtc(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc);
-void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
-			    struct intel_crtc *crtc);
-void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
-			     struct intel_crtc *crtc);
+void intel_arm_planes_on_crtc(struct intel_atomic_state *state,
+			      struct intel_crtc *crtc);
 int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_state,
 					struct intel_crtc_state *crtc_state,
 					const struct intel_plane_state *old_plane_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3f68fb656fb5..aac1695657df 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7796,7 +7796,6 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 static void intel_update_crtc(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
@@ -7824,10 +7823,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 	commit_pipe_pre_planes(state, crtc);
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		skl_arm_planes_on_crtc(state, crtc);
-	else
-		i9xx_arm_planes_on_crtc(state, crtc);
+	intel_arm_planes_on_crtc(state, crtc);
 
 	commit_pipe_post_planes(state, crtc);
 
-- 
2.34.1

