Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 754A0349BEA
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 22:48:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C7396EE62;
	Thu, 25 Mar 2021 21:48:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C0526EE5F
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 21:48:44 +0000 (UTC)
IronPort-SDR: pJjDzKYINiq9avARZMQ4J83N8l3AvpBuv/YAQ7RVofBpMzC6dkp5U4/YKYUvH0n6vEZmXTED8c
 skGXfMpB221Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="171005111"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="171005111"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:43 -0700
IronPort-SDR: 7siLiNOfR2kUr+sIbU/wCcmQz2IK9aoIn4VICa1XOSpn/BSKpAXO5LZUOc0FxxK5u1gmiG5PDW
 r/LlVnqNUhkQ==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375235757"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:42 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 23:48:08 +0200
Message-Id: <20210325214808.2071517-26-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210325214808.2071517-1-imre.deak@intel.com>
References: <20210325214808.2071517-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 25/25] drm/i915: For-CI: Force remapping the
 FB with a POT aligned stride
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
 drivers/gpu/drm/i915/display/intel_fb.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index a8fced4570e30..2094fb9b5ecab 100644
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
@@ -486,9 +494,13 @@ static bool intel_plane_can_remap(const struct intel_plane_state *plane_state)
 	return true;
 }
 
+#define FORCE_POT_STRIDE_REMAP	true
+
 static bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb)
 {
-	return false;
+	return FORCE_POT_STRIDE_REMAP &&
+	       fb->base.modifier != DRM_FORMAT_MOD_LINEAR &&
+	       intel_fb_can_remap(&fb->base);
 }
 
 static int intel_fb_pitch(const struct intel_framebuffer *fb, int color_plane, unsigned int rotation)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
