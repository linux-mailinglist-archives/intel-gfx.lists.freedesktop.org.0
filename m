Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB526424AC8
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 01:57:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED2DC6E5BD;
	Wed,  6 Oct 2021 23:57:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3FE66E5BD
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 23:57:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="226438904"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="226438904"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 16:57:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="568371183"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 06 Oct 2021 16:57:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Oct 2021 02:57:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Anshuman Gupta <anshuman.gupta@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Juston Li <juston.li@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Date: Thu,  7 Oct 2021 02:57:02 +0300
Message-Id: <20211006235704.28894-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211006235704.28894-1-ville.syrjala@linux.intel.com>
References: <20211006235704.28894-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Fix up skl_program_plane() pxp
 stuff
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

There's lots of expensive stuff inserted between the PLANE_CTL
and  PLANE_SURF writes even though the comment before the PLANE_CTL
write says not to put stuff there. Move it all to a more apporiate
place.

There's also a weird PLANE_COLOR_CTL RMW in there. I guess because
force_black was computed way too late originally, but that is now
sorted.

Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Juston Li <juston.li@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    | 30 +++++++++----------
 1 file changed, 14 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 1fcb41942c7e..55dae8c8fcad 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -985,6 +985,9 @@ static u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
 			plane_color_ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
 	}
 
+	if (plane_state->force_black)
+		plane_color_ctl |= PLANE_COLOR_PLANE_CSC_ENABLE;
+
 	return plane_color_ctl;
 }
 
@@ -1090,8 +1093,19 @@ skl_program_plane(struct intel_plane *plane,
 			aux_dist |= skl_plane_stride(plane_state, aux_plane);
 	}
 
+	plane_surf = intel_plane_ggtt_offset(plane_state) + surf_addr;
+	if (plane_state->decrypt)
+		plane_surf |= PLANE_SURF_DECRYPT;
+
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
+	/*
+	 * FIXME: pxp session invalidation can hit any time even at time of commit
+	 * or after the commit, display content will be garbage.
+	 */
+	if (plane_state->force_black)
+		intel_load_plane_csc_black(plane);
+
 	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id), stride);
 	intel_de_write_fw(dev_priv, PLANE_POS(pipe, plane_id),
 			  (crtc_y << 16) | crtc_x);
@@ -1146,22 +1160,6 @@ skl_program_plane(struct intel_plane *plane,
 	 * the control register just before the surface register.
 	 */
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
-	plane_surf = intel_plane_ggtt_offset(plane_state) + surf_addr;
-	plane_color_ctl = intel_de_read_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id));
-
-	/*
-	 * FIXME: pxp session invalidation can hit any time even at time of commit
-	 * or after the commit, display content will be garbage.
-	 */
-	if (plane_state->decrypt) {
-		plane_surf |= PLANE_SURF_DECRYPT;
-	} else if (plane_state->force_black) {
-		intel_load_plane_csc_black(plane);
-		plane_color_ctl |= PLANE_COLOR_PLANE_CSC_ENABLE;
-	}
-
-	intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id),
-			  plane_color_ctl);
 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), plane_surf);
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
-- 
2.32.0

