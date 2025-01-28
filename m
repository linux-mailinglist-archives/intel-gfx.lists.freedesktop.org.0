Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D78A20DB2
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 16:54:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDF1810E693;
	Tue, 28 Jan 2025 15:54:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nmVlL6WW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC9B610E69B;
 Tue, 28 Jan 2025 15:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738079687; x=1769615687;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u5vlcL16+WKQXI8DghDyUBk/l+1idw/jcKCCvfm1g3c=;
 b=nmVlL6WW2fre0wq91wt6ZTy6/9QqV7xmySUI5Uit1hpO4+StxygRbIla
 higNDgIJlIojVF75LYBLHbmOCJHNLafjvdeyJh45/Ko8sni2sYf8WSnPw
 Zx0badlzUwkzHZsP/CPOpme6YKjh18Y0UDS4Cxvl26goDJzf53HAo6JXb
 t2lEK99tp21xYdUOS+9Ggumc2k1DYFL8sIBwjmF1QrUfvlwcedbCHWYUH
 qVGpKRybXxwMwwpl9ZLSbqvWn5oSWLz8GFL9YrfJFd7/bbURxJH38LJus
 TcVsohV2xfspXwHLC4V7Yr3eREWK3oGv6GVFq1Op10V9+deZJm2KnYMty A==;
X-CSE-ConnectionGUID: 70w+19MRQPCjST3CjI+C3g==
X-CSE-MsgGUID: hkyQ86OyS6uAky1538eUOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="49228099"
X-IronPort-AV: E=Sophos;i="6.13,241,1732608000"; d="scan'208";a="49228099"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 07:54:46 -0800
X-CSE-ConnectionGUID: 7m9NnDtFSzShZHQCYfADYw==
X-CSE-MsgGUID: 3+HHAphcTJKPza6o5BR50g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="139635340"
Received: from slindbla-desk.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.171])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 07:54:44 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v5 3/7] drm/i915/display: get old_plane_state to the
 check_plane routine
Date: Tue, 28 Jan 2025 17:54:14 +0200
Message-ID: <20250128155418.305595-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250128155418.305595-1-vinod.govindapillai@intel.com>
References: <20250128155418.305595-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We are adding support to track and store the plane damage clips
in to plane state as part of plane atomich check routine. This
damage areas could be utilized for FBC dirty rect in xe3. We
would need to use a drm_helper function which generates a merged
damage area from damage clips set from the userspace. But this
helper require old_plane_state being passed as a parameter to it.
Add old_plane_state parameter to the check_plane() and update
all the affected function calls.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c          | 1 +
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c        | 2 ++
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_sprite.c        | 2 ++
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 1 +
 6 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index ed171fbf8720..840c76050355 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -320,6 +320,7 @@ int i9xx_check_plane_surface(struct intel_plane_state *plane_state)
 
 static int
 i9xx_plane_check(struct intel_crtc_state *crtc_state,
+		 const struct intel_plane_state *old_plane_state,
 		 struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index c558143f4f82..8da7ee13447c 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -616,7 +616,7 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
 	if (!new_plane_state->hw.crtc && !old_plane_state->hw.crtc)
 		return 0;
 
-	ret = plane->check_plane(new_crtc_state, new_plane_state);
+	ret = plane->check_plane(new_crtc_state, old_plane_state, new_plane_state);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 48c3d212f690..0f2a9f29391f 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -231,6 +231,7 @@ static bool i845_cursor_size_ok(const struct intel_plane_state *plane_state)
 }
 
 static int i845_check_cursor(struct intel_crtc_state *crtc_state,
+			     const struct intel_plane_state *old_plane_state,
 			     struct intel_plane_state *plane_state)
 {
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
@@ -470,6 +471,7 @@ static bool i9xx_cursor_size_ok(const struct intel_plane_state *plane_state)
 }
 
 static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
+			     const struct intel_plane_state *old_plane_state,
 			     struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index cb51b7936f93..bc65c4bd9dc0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1493,6 +1493,7 @@ struct intel_plane {
 			    const struct intel_crtc_state *crtc_state);
 	bool (*get_hw_state)(struct intel_plane *plane, enum pipe *pipe);
 	int (*check_plane)(struct intel_crtc_state *crtc_state,
+			   const struct intel_plane_state *old_plane_state,
 			   struct intel_plane_state *plane_state);
 	int (*min_cdclk)(const struct intel_crtc_state *crtc_state,
 			 const struct intel_plane_state *plane_state);
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 13996d7059ad..40729ff9338a 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -1321,6 +1321,7 @@ g4x_sprite_check_scaling(struct intel_crtc_state *crtc_state,
 
 static int
 g4x_sprite_check(struct intel_crtc_state *crtc_state,
+		 const struct intel_plane_state *old_plane_state,
 		 struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -1389,6 +1390,7 @@ int chv_plane_check_rotation(const struct intel_plane_state *plane_state)
 
 static int
 vlv_sprite_check(struct intel_crtc_state *crtc_state,
+		 const struct intel_plane_state *old_plane_state,
 		 struct intel_plane_state *plane_state)
 {
 	int ret;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 301ad3a22c4c..8d09a1f8c3e1 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2250,6 +2250,7 @@ static void check_protection(struct intel_plane_state *plane_state)
 }
 
 static int skl_plane_check(struct intel_crtc_state *crtc_state,
+			   const struct intel_plane_state *old_plane_state,
 			   struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-- 
2.43.0

