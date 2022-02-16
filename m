Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5324B947D
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 00:28:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E0B110E64C;
	Wed, 16 Feb 2022 23:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AAF710E64C
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 23:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645054093; x=1676590093;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aDTamv+huh+iCSZjBQgJEBco+vDvtyuUs/+dzg0hS1g=;
 b=LAi1Wse5fuWRWVBd5u4chEY5P3N319t2ZYMg0FoHT7HFvhNXyiNIErio
 mD2QhAWOPjWYSaIL86a1GmSXbgxKzM9qFsLqMv2E7LckH2DTQdlRsgFlO
 56h2AbTzg8I7LRR1V7gbCnaBEgTuhyFiEzC78ZBkL6z0XQaa/MGznXYVW
 hxWjl5jQ0fRVHnpKwQCmNMp6Fl65SLl96O7jzfxr7nxYgZX7ATQ6fWMTG
 P3E0zlTM89jJP3ans925HW72nSeWvHOsFQmTShTjxH+cdgL6Zq32A4AQP
 Y35GVn/7Go6dFq71YDMMldhoiBWSaEI6xQ4bEKiY1tXXp4rSoSlvECD9H w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="275332385"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="275332385"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 15:28:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="503249331"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 16 Feb 2022 15:28:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Feb 2022 01:28:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Feb 2022 01:28:04 +0200
Message-Id: <20220216232806.6194-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220216232806.6194-1-ville.syrjala@linux.intel.com>
References: <20220216232806.6194-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915: Introduce
 intel_crtc_planes_update_arm()
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

No reason the high level intel_update_crtc() needs to know
that there is something magical about the commit order of
planes between different platforms. So let's hide that
detail even better.

In order to keep to somewhat consistent naming between
things we shall call this intel_crtc_planes_update_arm()
to match the plane->update_arm() vfunc naming convention.
And let's rename the noarm counterpart to
intel_crtc_planes_update_noarm() to more clearly associate
it with the plane->update_noarm() vfunc.

v2: Change the naming convention a bit

Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 23 ++++++++++++++-----
 .../gpu/drm/i915/display/intel_atomic_plane.h | 10 ++++----
 drivers/gpu/drm/i915/display/intel_display.c  |  8 ++-----
 3 files changed, 23 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index e9893e314037..c53aa6a4c7a0 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -693,8 +693,8 @@ void intel_plane_disable_arm(struct intel_plane *plane,
 	plane->disable_arm(plane, crtc_state);
 }
 
-void intel_update_planes_on_crtc(struct intel_atomic_state *state,
-				 struct intel_crtc *crtc)
+void intel_crtc_planes_update_noarm(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc)
 {
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -722,8 +722,8 @@ void intel_update_planes_on_crtc(struct intel_atomic_state *state,
 	}
 }
 
-void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
-			    struct intel_crtc *crtc)
+static void skl_crtc_planes_update_arm(struct intel_atomic_state *state,
+				       struct intel_crtc *crtc)
 {
 	struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
@@ -757,8 +757,8 @@ void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
 	}
 }
 
-void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
-			     struct intel_crtc *crtc)
+static void i9xx_crtc_planes_update_arm(struct intel_atomic_state *state,
+					struct intel_crtc *crtc)
 {
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -783,6 +783,17 @@ void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
 	}
 }
 
+void intel_crtc_planes_update_arm(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+
+	if (DISPLAY_VER(i915) >= 9)
+		skl_crtc_planes_update_arm(state, crtc);
+	else
+		i9xx_crtc_planes_update_arm(state, crtc);
+}
+
 int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 				      struct intel_crtc_state *crtc_state,
 				      int min_scale, int max_scale,
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 9822b921279c..f4763a53541e 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -44,12 +44,10 @@ void intel_plane_free(struct intel_plane *plane);
 struct drm_plane_state *intel_plane_duplicate_state(struct drm_plane *plane);
 void intel_plane_destroy_state(struct drm_plane *plane,
 			       struct drm_plane_state *state);
-void intel_update_planes_on_crtc(struct intel_atomic_state *state,
-				 struct intel_crtc *crtc);
-void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
-			    struct intel_crtc *crtc);
-void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
-			     struct intel_crtc *crtc);
+void intel_crtc_planes_update_noarm(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc);
+void intel_crtc_planes_update_arm(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc);
 int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_state,
 					struct intel_crtc_state *crtc_state,
 					const struct intel_plane_state *old_plane_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 59961621fe4a..740620ef07ad 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7954,7 +7954,6 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 static void intel_update_crtc(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
@@ -7975,17 +7974,14 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 	intel_fbc_update(state, crtc);
 
-	intel_update_planes_on_crtc(state, crtc);
+	intel_crtc_planes_update_noarm(state, crtc);
 
 	/* Perform vblank evasion around commit operation */
 	intel_pipe_update_start(new_crtc_state);
 
 	commit_pipe_pre_planes(state, crtc);
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		skl_arm_planes_on_crtc(state, crtc);
-	else
-		i9xx_arm_planes_on_crtc(state, crtc);
+	intel_crtc_planes_update_arm(state, crtc);
 
 	commit_pipe_post_planes(state, crtc);
 
-- 
2.34.1

