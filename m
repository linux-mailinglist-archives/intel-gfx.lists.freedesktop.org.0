Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F973334B53
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:17:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DC3D6EA9A;
	Wed, 10 Mar 2021 22:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EAC76EA7B
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:17:48 +0000 (UTC)
IronPort-SDR: GISV1KuUhKgW757Eg0uzTiG52wd5iP++tbXPkIKscwQzwwZ3xEe4Y5CsmuJV7Xjc2i5hzwFe/a
 HD5+G+UkFXjQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592070"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592070"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:48 -0800
IronPort-SDR: o4n1aNmGne09++uf1P1tO+fXilbFKj4CjeTWQ641kEn3Ak2cV+GmQbvlH1PSmlS9E8BhI9V1p0
 2/2m+2zllfMQ==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852223"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:47 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:22 +0200
Message-Id: <20210310221736.2963264-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/23] drm/i915/intel_fb: Pull
 is_surface_linear() from intel_display.c/skl_universal_plane.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move is_surface_linear() to intel_fb.c and export it from here, also
removing the duplicate definitions of it.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 6 ------
 drivers/gpu/drm/i915/display/intel_fb.c            | 6 ++++++
 drivers/gpu/drm/i915/display/intel_fb.h            | 2 ++
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 6 ------
 4 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 39584a82550d..deaf7ddadff1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1262,12 +1262,6 @@ static u32 intel_adjust_tile_offset(int *x, int *y,
 	return new_offset;
 }
 
-static bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane)
-{
-	return fb->modifier == DRM_FORMAT_MOD_LINEAR ||
-	       is_gen12_ccs_plane(fb, color_plane);
-}
-
 static u32 intel_adjust_aligned_offset(int *x, int *y,
 				       const struct drm_framebuffer *fb,
 				       int color_plane,
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 977ee2acaed1..74157d5f2d7f 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -27,6 +27,12 @@ bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane)
 	       plane == 2;
 }
 
+bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane)
+{
+	return fb->modifier == DRM_FORMAT_MOD_LINEAR ||
+	       is_gen12_ccs_plane(fb, color_plane);
+}
+
 int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane)
 {
 	drm_WARN_ON(fb->dev, !is_ccs_modifier(fb->modifier) ||
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 3cde53c75cb3..6ea220438f9a 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -14,6 +14,8 @@ bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
 bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
 bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane);
 
+bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane);
+
 int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane);
 int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plane);
 int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane);
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 9a456b3d19a9..2f1a7b88f66a 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -562,12 +562,6 @@ icl_program_input_csc(struct intel_plane *plane,
 			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 2), 0x0);
 }
 
-static bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane)
-{
-	return fb->modifier == DRM_FORMAT_MOD_LINEAR ||
-	       is_gen12_ccs_plane(fb, color_plane);
-}
-
 static unsigned int skl_plane_stride_mult(const struct drm_framebuffer *fb,
 					  int color_plane, unsigned int rotation)
 {
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
