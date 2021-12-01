Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A39E465198
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 16:26:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D1AE6ECD9;
	Wed,  1 Dec 2021 15:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2C846ECD9
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 15:26:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="236422459"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="236422459"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:26:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="512752831"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 01 Dec 2021 07:26:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:26:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 17:25:51 +0200
Message-Id: <20211201152552.7821-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/14] drm/i915: Declutter color key register
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

Add a few small helpers to calculate the color key register
values. Cleans up skl_program_plane_arm() a bit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    | 45 +++++++++++++------
 1 file changed, 32 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index c7de643d16dd..92270679a99c 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1001,6 +1001,34 @@ static u32 skl_plane_aux_dist(const struct intel_plane_state *plane_state,
 	return aux_dist;
 }
 
+static u32 skl_plane_keyval(const struct intel_plane_state *plane_state)
+{
+	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
+
+	return key->min_value;
+}
+
+static u32 skl_plane_keymax(const struct intel_plane_state *plane_state)
+{
+	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
+	u8 alpha = plane_state->hw.alpha >> 8;
+
+	return (key->max_value & 0xffffff) | PLANE_KEYMAX_ALPHA(alpha);
+}
+
+static u32 skl_plane_keymsk(const struct intel_plane_state *plane_state)
+{
+	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
+	u8 alpha = plane_state->hw.alpha >> 8;
+	u32 keymsk;
+
+	keymsk = key->channel_mask & 0x7ffffff;
+	if (alpha < 0xff)
+		keymsk |= PLANE_KEYMSK_ALPHA_ENABLE;
+
+	return keymsk;
+}
+
 static void icl_plane_csc_load_black(struct intel_plane *plane)
 {
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
@@ -1094,11 +1122,9 @@ skl_program_plane_arm(struct intel_plane *plane,
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
-	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
 	u32 x = plane_state->view.color_plane[color_plane].x;
 	u32 y = plane_state->view.color_plane[color_plane].y;
-	u32 keymsk, keymax, plane_color_ctl = 0;
-	u8 alpha = plane_state->hw.alpha >> 8;
+	u32 plane_color_ctl = 0;
 	u32 plane_ctl = plane_state->ctl;
 	unsigned long irqflags;
 
@@ -1108,18 +1134,11 @@ skl_program_plane_arm(struct intel_plane *plane,
 		plane_color_ctl = plane_state->color_ctl |
 			glk_plane_color_ctl_crtc(crtc_state);
 
-	keymax = (key->max_value & 0xffffff) | PLANE_KEYMAX_ALPHA(alpha);
-
-	keymsk = key->channel_mask & 0x7ffffff;
-	if (alpha < 0xff)
-		keymsk |= PLANE_KEYMSK_ALPHA_ENABLE;
-
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
-	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id),
-			  key->min_value);
-	intel_de_write_fw(dev_priv, PLANE_KEYMSK(pipe, plane_id), keymsk);
-	intel_de_write_fw(dev_priv, PLANE_KEYMAX(pipe, plane_id), keymax);
+	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id), skl_plane_keyval(plane_state));
+	intel_de_write_fw(dev_priv, PLANE_KEYMSK(pipe, plane_id), skl_plane_keymsk(plane_state));
+	intel_de_write_fw(dev_priv, PLANE_KEYMAX(pipe, plane_id), skl_plane_keymax(plane_state));
 
 	intel_de_write_fw(dev_priv, PLANE_OFFSET(pipe, plane_id),
 			  PLANE_OFFSET_Y(y) | PLANE_OFFSET_X(x));
-- 
2.32.0

