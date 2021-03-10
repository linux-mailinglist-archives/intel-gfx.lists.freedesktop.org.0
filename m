Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4036334B61
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:18:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBDB36EA88;
	Wed, 10 Mar 2021 22:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C221C6EA88
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:18:02 +0000 (UTC)
IronPort-SDR: NhDiIPRyBDQeLVkGnojA4Dbacf2EXzw/ihkb90Nz+7gnoB1kEjz4n5NIfSUiAIAiwOPjDMzHM7
 5Jf+RonIDdwQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592112"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592112"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:18:02 -0800
IronPort-SDR: QkKbQMQkSOClTZpq1GzFwhA9WeoZu6BBzyKJL6g1MbfjLlRPNUfx6WWnkWYJtQPCXKG/5PHNA3
 1vHtTva/XJqQ==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852318"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:18:01 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:36 +0200
Message-Id: <20210310221736.2963264-24-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/23] drm/i915: For-CI: Force remapping the FB
 with a POT aligned stride
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

To test the POT stride padding functionality until it's taken into use
by the actual platform needing it, enable the padding whenever the FB
remapping is possible. An exception is to pad linear FBs when this would
be otherwise possible (stride is page size aligned), because this won't
be anyway needed. Padding of linear FBs will be still tested whenever
a big stride requires remapping (so by igt/kms_big_fb).

By this both the FB creation time and commit time remapping setup will
be tested.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 3e278fe77040..85ef3362afd9 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -446,17 +446,25 @@ static int intel_fb_check_ccs_xy(const struct drm_framebuffer *fb, int ccs_plane
 	return 0;
 }
 
+static bool intel_fb_can_remap(const struct drm_framebuffer *fb);
+
 static bool intel_plane_can_remap(const struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
-	int i;
 
 	/* We don't want to deal with remapping with cursors */
 	if (plane->id == PLANE_CURSOR)
 		return false;
 
+	return intel_fb_can_remap(fb);
+}
+
+static bool intel_fb_can_remap(const struct drm_framebuffer *fb)
+{
+	struct drm_i915_private *i915 = to_i915(fb->dev);
+	int i;
+
 	/*
 	 * The display engine limits already match/exceed the
 	 * render engine limits, so not much point in remapping.
@@ -488,7 +496,8 @@ static bool intel_plane_can_remap(const struct intel_plane_state *plane_state)
 
 static bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb)
 {
-	return false;
+	return fb->base.modifier != DRM_FORMAT_MOD_LINEAR &&
+	       intel_fb_can_remap(&fb->base);
 }
 
 int intel_fb_pitch(const struct drm_framebuffer *drm_fb, int color_plane, unsigned int rotation)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
