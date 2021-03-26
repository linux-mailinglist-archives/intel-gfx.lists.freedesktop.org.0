Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1F034B237
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 23:35:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 827066F4EA;
	Fri, 26 Mar 2021 22:35:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD2CD6F4EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 22:35:31 +0000 (UTC)
IronPort-SDR: zbVWdu6lP1NdvVWnAwdk7tc5wu230K2oFJPcgz56xBiJNyyXCkEyaHnFsH6iOH2BA4BZIqZuPo
 qhWon6EOXyKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="178358720"
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="178358720"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 15:35:29 -0700
IronPort-SDR: s6BMago9ODLkFLfa1rhbP5HPAsuPnegTfeZPrhaLpYAqwI/XwwRP4yFLj3jdB4EgHZXMpLSgTV
 EmfRnjVxnlwQ==
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="410095259"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 15:35:28 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 27 Mar 2021 00:35:26 +0200
Message-Id: <20210326223526.10388-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210325214808.2071517-26-imre.deak@intel.com>
References: <20210325214808.2071517-26-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 25/25] drm/i915: For-CI: Force remapping the
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

v3:
- Test now without forcing the remapping on, which is the actual case
  for all platforms before ADL_P.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index a8fced4570e30..175a1271e7db9 100644
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
 
+#define FORCE_POT_STRIDE_REMAP	false
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
