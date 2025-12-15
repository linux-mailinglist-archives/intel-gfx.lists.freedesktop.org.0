Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93548CBEA5D
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 16:29:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30CB310E598;
	Mon, 15 Dec 2025 15:29:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UkwvSPrP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 186A310E598;
 Mon, 15 Dec 2025 15:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765812556; x=1797348556;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NCTvAqDAWlii86mWzO9Ys9NdpeBG7Z9weYnUJf/Rp+A=;
 b=UkwvSPrPovVAYCunG9sOuoW1t4YCZm7y1F/O5ZWkUUlqf6S2zCnvy3AG
 9vXnrB6FtjzQ5o0WFZsxbf1oQPiMB8TXBqBUq6/OMu9i8tJREOFcXPaWB
 bcHr5eN8bUacL+RET22b3PyHFRUjOHcU9NL57/C/uzoRm1L/2rCV8zCQi
 cg+o7HRlWerSTxlmFzXaIkaosmFbZ9fww1iV213Hp/hl3VFlsK7f4O5C3
 y3uGAHvqligVKeLvGrzDfuFmaI+UTCE4wXdP9mixvmQc1dhsi7x9Q9MJl
 8GFBIA3zOfNRJF+YOA5mHfg7PEIShd3s0ubRVVsGCtMLktkoMTkLj1aaz g==;
X-CSE-ConnectionGUID: CiD7SVmjRGWxiCnatlQ0+g==
X-CSE-MsgGUID: Ecwbv20jRIOKw9DtNUbC/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="85310377"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="85310377"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:16 -0800
X-CSE-ConnectionGUID: XlgU7/HVTRKULyCGoBAxXw==
X-CSE-MsgGUID: 068RdE8zTQ660rCKnIbTBw==
X-ExtLoop1: 1
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 09/15] drm/xe: return plane_state from
 intel_reuse_initial_plane_obj()
Date: Mon, 15 Dec 2025 17:28:23 +0200
Message-ID: <47d3272cff13dc8f5d7323c32bfb3cc34c0c977d.1765812266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1765812266.git.jani.nikula@intel.com>
References: <cover.1765812266.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Initialize fb in the same level as the other code path.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 26 +++++++++++--------
 1 file changed, 15 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index ddf22631240e..42d2c2f8138e 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -45,10 +45,9 @@ static void xe_initial_plane_vblank_wait(struct drm_crtc *_crtc)
 		drm_warn(&xe->drm, "waiting for early vblank failed with %i\n", ret);
 }
 
-static bool
+static const struct intel_plane_state *
 intel_reuse_initial_plane_obj(struct intel_crtc *this,
-			      const struct intel_initial_plane_config plane_configs[],
-			      struct drm_framebuffer **fb)
+			      const struct intel_initial_plane_config plane_configs[])
 {
 	struct xe_device *xe = to_xe_device(this->base.dev);
 	struct intel_crtc *crtc;
@@ -67,13 +66,11 @@ intel_reuse_initial_plane_obj(struct intel_crtc *this,
 		if (!plane_state->ggtt_vma)
 			continue;
 
-		if (plane_configs[this->pipe].base == plane_configs[crtc->pipe].base) {
-			*fb = plane_state->hw.fb;
-			return true;
-		}
+		if (plane_configs[this->pipe].base == plane_configs[crtc->pipe].base)
+			return plane_state;
 	}
 
-	return false;
+	return NULL;
 }
 
 static struct xe_bo *
@@ -217,10 +214,17 @@ xe_find_initial_plane_obj(struct drm_crtc *_crtc,
 	struct drm_framebuffer *fb;
 	struct i915_vma *vma;
 
-	if (intel_alloc_initial_plane_obj(crtc, plane_config))
+	if (intel_alloc_initial_plane_obj(crtc, plane_config)) {
 		fb = &plane_config->fb->base;
-	else if (!intel_reuse_initial_plane_obj(crtc, plane_configs, &fb))
-		return -EINVAL;
+	} else {
+		const struct intel_plane_state *other_plane_state;
+
+		other_plane_state = intel_reuse_initial_plane_obj(crtc, plane_configs);
+		if (!other_plane_state)
+			return -EINVAL;
+
+		fb = other_plane_state->hw.fb;
+	}
 
 	plane_state->uapi.rotation = plane_config->rotation;
 	intel_fb_fill_view(to_intel_framebuffer(fb),
-- 
2.47.3

