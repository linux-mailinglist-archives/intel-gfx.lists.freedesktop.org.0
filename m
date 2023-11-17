Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 481037EF6DF
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 18:18:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8650410E300;
	Fri, 17 Nov 2023 17:18:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 958FD10E300
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 17:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700241516; x=1731777516;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=G+gM/B1xsmec/H+L25VOPtjuwA/AVpvL6WzKMJcy5lc=;
 b=FIWNfyZE0MoozWdg+jJmZGmS4tBAGWBxdIow8urNLH8a+Pj0QsTlDvlo
 2sN8rNIFMRq6jmgBfTo7+yxVR/rrFy4CraFVPHrmw7jbz3yhjPYj1U8ip
 32rBp1Pt1JH5uNqMCZdNSvK1OLZboM18g4rePUg+i5qxHuhzMmYCW3mbC
 1q2V68RW7t3iKOp8IwWczQ1Bk5LMDJZOFRCAwW4uXcimYPZEXn56pRxSd
 H0+wcfjG082BKBQBiG+Nr0Z2UU9nfF0jVQqGHPCtZblGkks2lCzhMT52X
 XsbmyJz+wRIPjuIl2Tkw7MWZacpQBZXVgPvuH4nd+lpDzPfAjZpfVjosr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="422428571"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="422428571"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 09:18:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="759225801"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759225801"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 17 Nov 2023 09:18:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Nov 2023 19:18:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Nov 2023 19:18:31 +0200
Message-ID: <20231117171833.25816-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/fbc: Split plane size vs. surface
 size checks apart
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

Do separate checks for the visible plane size vs. the surface
size (which I take to mean offset+size). For now both use the
same max w/h, but we can relax the surface size limits as
a followup.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 32 +++++++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index b73cf1c5ba33..fe21371db38c 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1050,6 +1050,31 @@ static bool intel_fbc_hw_tracking_covers_screen(const struct intel_plane_state *
 	return effective_w <= max_w && effective_h <= max_h;
 }
 
+static bool intel_fbc_plane_size_valid(const struct intel_plane_state *plane_state)
+{
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	unsigned int w, h, max_w, max_h;
+
+	if (DISPLAY_VER(i915) >= 10) {
+		max_w = 5120;
+		max_h = 4096;
+	} else if (DISPLAY_VER(i915) >= 8 || IS_HASWELL(i915)) {
+		max_w = 4096;
+		max_h = 4096;
+	} else if (IS_G4X(i915) || DISPLAY_VER(i915) >= 5) {
+		max_w = 4096;
+		max_h = 2048;
+	} else {
+		max_w = 2048;
+		max_h = 1536;
+	}
+
+	w = drm_rect_width(&plane_state->uapi.src) >> 16;
+	h = drm_rect_height(&plane_state->uapi.src) >> 16;
+
+	return w <= max_w && h <= max_h;
+}
+
 static bool i8xx_fbc_tiling_valid(const struct intel_plane_state *plane_state)
 {
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
@@ -1247,11 +1272,16 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 		return 0;
 	}
 
-	if (!intel_fbc_hw_tracking_covers_screen(plane_state)) {
+	if (!intel_fbc_plane_size_valid(plane_state)) {
 		plane_state->no_fbc_reason = "plane size too big";
 		return 0;
 	}
 
+	if (!intel_fbc_hw_tracking_covers_screen(plane_state)) {
+		plane_state->no_fbc_reason = "surface size too big";
+		return 0;
+	}
+
 	/*
 	 * Work around a problem on GEN9+ HW, where enabling FBC on a plane
 	 * having a Y offset that isn't divisible by 4 causes FIFO underrun
-- 
2.41.0

