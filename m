Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9284841D076
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 02:08:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E9366E2B4;
	Thu, 30 Sep 2021 00:08:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39B096E2B4
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 00:08:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="212148097"
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="212148097"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 17:08:30 -0700
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="438658492"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 17:08:30 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Wed, 29 Sep 2021 17:14:03 -0700
Message-Id: <20210930001409.254817-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210930001409.254817-1-jose.souza@intel.com>
References: <20210930001409.254817-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/9] drm/i915/display: Drop unnecessary
 frontbuffer flushes
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

This unnecessary flushes are hurting power-savings are it causes
features like PSR, FBC and DRRS to disable it self to handle
frontbuffer rendering, below some explanation of why each removed
call is not necessary.

The flush in intel_prepare_plane_fb() is not required as framebuffer
will be flipped and power-saving features do the proper flip handling
in hardware.

intel_find_initial_plane_obj() flush is not required because it is
only executed during driver load and at this point the power-saving
features are not even enabled.

And the last one intelfb_create(), is also not required as at this
point the fbdev was just allocated, userspace will draw on
it what will trigger frontbuffer invalidates and flushes later on.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ---
 drivers/gpu/drm/i915/display/intel_fbdev.c   | 2 --
 2 files changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4ce80ca7751f0..9e9db1b0a907b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1711,8 +1711,6 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	plane_state->uapi.crtc = &crtc->base;
 	intel_plane_copy_uapi_to_hw_state(plane_state, plane_state, crtc);
 
-	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
-
 	atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
 }
 
@@ -10755,7 +10753,6 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 		return ret;
 
 	i915_gem_object_wait_priority(obj, 0, &attr);
-	i915_gem_object_flush_frontbuffer(obj, ORIGIN_DIRTYFB);
 
 	if (!new_plane_state->uapi.fence) { /* implicit fencing */
 		struct dma_fence *fence;
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 60d3ded270476..53484267b2a4a 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -230,8 +230,6 @@ static int intelfb_create(struct drm_fb_helper *helper,
 		goto out_unlock;
 	}
 
-	intel_frontbuffer_flush(to_frontbuffer(ifbdev), ORIGIN_DIRTYFB);
-
 	info = drm_fb_helper_alloc_fbi(helper);
 	if (IS_ERR(info)) {
 		drm_err(&dev_priv->drm, "Failed to allocate fb_info\n");
-- 
2.33.0

