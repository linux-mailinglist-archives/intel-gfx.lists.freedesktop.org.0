Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0C47A02CE
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 13:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9BC010E568;
	Thu, 14 Sep 2023 11:39:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 193F810E264
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 11:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694691551; x=1726227551;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BSxPcsOFSikr1DxB5jalf5k82fabJdMHLF/HnDzZ43Y=;
 b=OhMgBvjJfKfcgBR7pTpOEPxKD8+SLe9ptMa+d4QMgTfkDlnsFR9wcIZX
 R9ZwBmuiL0BIujEm079fO51MkeW7svNV28MdLbLrmQY3LSYlHqNfLul3I
 SYIark2NCdl9refocXujixv8p0YE2G4xaOKbbD/NCNcOqKwn1gEnO06S8
 QGE9ubm7lkCTLOGu/Rl9qCkd9T6W7lLLix9TKooFmFSS1TWlAuL2Nlys8
 BLwEGLFp7P+x3bSJp3gmTf7ZwaFuJZPcpxrWQYBoGlGNI0h4JnDIji0+C
 lEy7hWx5aREjNksEKOjoY/hrae0RhE6N0GLUPdBdqcLYeMAwNTjGT3aVv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="359186758"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="359186758"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 04:39:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="810028957"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="810028957"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga008.fm.intel.com with SMTP; 14 Sep 2023 04:39:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Sep 2023 14:39:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 14:38:52 +0300
Message-ID: <20230914113854.10008-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
References: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/fbc: Split plane tiling checks
 per-platform
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

Carve up tiling_is_valid() into per-platform variants to
make it easier to see what limits are actually being imposed.

TODO: maybe go for vfuncs later

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 21 ++++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 4c4626c84666..052f9d8b53d4 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -984,16 +984,21 @@ static bool intel_fbc_hw_tracking_covers_screen(const struct intel_plane_state *
 	return effective_w <= max_w && effective_h <= max_h;
 }
 
-static bool tiling_is_valid(const struct intel_plane_state *plane_state)
+static bool i8xx_fbc_tiling_valid(const struct intel_plane_state *plane_state)
+{
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+
+	return fb->modifier == I915_FORMAT_MOD_X_TILED;
+}
+
+static bool skl_fbc_tiling_valid(const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 
 	switch (fb->modifier) {
 	case DRM_FORMAT_MOD_LINEAR:
 	case I915_FORMAT_MOD_Y_TILED:
 	case I915_FORMAT_MOD_Yf_TILED:
-		return DISPLAY_VER(i915) >= 9;
 	case I915_FORMAT_MOD_4_TILED:
 	case I915_FORMAT_MOD_X_TILED:
 		return true;
@@ -1002,6 +1007,16 @@ static bool tiling_is_valid(const struct intel_plane_state *plane_state)
 	}
 }
 
+static bool tiling_is_valid(const struct intel_plane_state *plane_state)
+{
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+
+	if (DISPLAY_VER(i915) >= 9)
+		return skl_fbc_tiling_valid(plane_state);
+	else
+		return i8xx_fbc_tiling_valid(plane_state);
+}
+
 static void intel_fbc_update_state(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc,
 				   struct intel_plane *plane)
-- 
2.41.0

