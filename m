Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 242C2431817
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 13:50:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 750896E9E9;
	Mon, 18 Oct 2021 11:50:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C979F6E9E9
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 11:50:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="289082561"
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="289082561"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 04:50:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="526221172"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 18 Oct 2021 04:50:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Oct 2021 14:50:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Anshuman Gupta <anshuman.gupta@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Juston Li <juston.li@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Uma Shankar <uma.shankar@intel.com>, Karthik B S <karthik.b.s@intel.com>
Date: Mon, 18 Oct 2021 14:50:23 +0300
Message-Id: <20211018115030.3547-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211018115030.3547-1-ville.syrjala@linux.intel.com>
References: <20211018115030.3547-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/9] drm/i915: Fix async flip with decryption
 and/or DPT
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

We're currently forgetting to set the PLANE_SURF_DECRYPT
flag in the async flip path. So if the hardware were to
latch that bit despite this being an async flip we'd start
scanning out garbage. And if it doesn't latch it then I
guess we'd just end up with a weird register value that
doesn't actually match the hardware state, which isn't
great for anyone starting at register dumps.

Similarly the async flip path also forgets to call
skl_surf_address() which means the DPT address space to
GGTT address space downshift is not being applied to
the offset. Which means we are pointing PLANE_SURF
at some random location in GGTT instead of the correct
DPT page.

So let's fix two birds with one stone and extract the
PLANE_SURF calculation from skl_program_plane() into
a small helper and use it in the async flip path as well.

Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Juston Li <juston.li@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Karthik B S <karthik.b.s@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    | 30 ++++++++++++-------
 1 file changed, 20 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 7444b88829ea..e2f024449149 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1011,6 +1011,20 @@ static u32 skl_surf_address(const struct intel_plane_state *plane_state,
 	}
 }
 
+static u32 skl_plane_surf(const struct intel_plane_state *plane_state,
+			  int color_plane)
+{
+	u32 plane_surf;
+
+	plane_surf = intel_plane_ggtt_offset(plane_state) +
+		skl_surf_address(plane_state, color_plane);
+
+	if (plane_state->decrypt)
+		plane_surf |= PLANE_SURF_DECRYPT;
+
+	return plane_surf;
+}
+
 static void icl_plane_csc_load_black(struct intel_plane *plane)
 {
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
@@ -1045,7 +1059,6 @@ skl_program_plane(struct intel_plane *plane,
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
-	u32 surf_addr = skl_surf_address(plane_state, color_plane);
 	u32 stride = skl_plane_stride(plane_state, color_plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	int aux_plane = skl_main_to_aux_plane(fb, color_plane);
@@ -1058,7 +1071,7 @@ skl_program_plane(struct intel_plane *plane,
 	u8 alpha = plane_state->hw.alpha >> 8;
 	u32 plane_color_ctl = 0, aux_dist = 0;
 	unsigned long irqflags;
-	u32 keymsk, keymax, plane_surf;
+	u32 keymsk, keymax;
 	u32 plane_ctl = plane_state->ctl;
 
 	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
@@ -1084,16 +1097,13 @@ skl_program_plane(struct intel_plane *plane,
 	}
 
 	if (aux_plane) {
-		aux_dist = skl_surf_address(plane_state, aux_plane) - surf_addr;
+		aux_dist = skl_surf_address(plane_state, aux_plane) -
+			skl_surf_address(plane_state, color_plane);
 
 		if (DISPLAY_VER(dev_priv) < 12)
 			aux_dist |= skl_plane_stride(plane_state, aux_plane);
 	}
 
-	plane_surf = intel_plane_ggtt_offset(plane_state) + surf_addr;
-	if (plane_state->decrypt)
-		plane_surf |= PLANE_SURF_DECRYPT;
-
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	/*
@@ -1157,7 +1167,8 @@ skl_program_plane(struct intel_plane *plane,
 	 * the control register just before the surface register.
 	 */
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
-	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), plane_surf);
+	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
+			  skl_plane_surf(plane_state, color_plane));
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
@@ -1172,7 +1183,6 @@ skl_plane_async_flip(struct intel_plane *plane,
 	unsigned long irqflags;
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
-	u32 surf_addr = plane_state->view.color_plane[0].offset;
 	u32 plane_ctl = plane_state->ctl;
 
 	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
@@ -1184,7 +1194,7 @@ skl_plane_async_flip(struct intel_plane *plane,
 
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
-			  intel_plane_ggtt_offset(plane_state) + surf_addr);
+			  skl_plane_surf(plane_state, 0));
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
-- 
2.32.0

