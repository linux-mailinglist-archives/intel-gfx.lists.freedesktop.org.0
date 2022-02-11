Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B178E4B21CE
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 10:26:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E70D510EA52;
	Fri, 11 Feb 2022 09:26:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3A6510EA52
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 09:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644571567; x=1676107567;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3UBiism15S2QoQ/cmMnDcNixSB5Kb2oFbg3otiiC/NU=;
 b=FDrI6pTfxNZtk/eiJo+xSuAWlzOZxnvL4j3OIH+bd6rMUoF/w2gM2+or
 2E3pCDBq55/BVd2Ukhg8eeNOwiPvIMBDmbBBbTRULqeqX/K1w0sMLqqDF
 Z/Q1CJdsoAlSQxN5SZsUJepJDaRgMbNq3hkrG7yajlL72ndqOvcwf6jYk
 VWOaU2bPGziAd07OZo895pJj8l/uIlvEGsoDqKhWJoG50qR8LAMcRVihx
 p3/GjpAhvmu3K9NkDSxAVhzAc3dCifzk+yQv7fWg/gY7hCmHaxz7IN6Eu
 fGMCvsK3EMWt43t1BoiIk5+LsINa0Ol5dpF0oHFadF8Za0bm94RqvNqEX A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="237102519"
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="237102519"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 01:26:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="630186733"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 11 Feb 2022 01:26:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Feb 2022 11:26:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Feb 2022 11:26:04 +0200
Message-Id: <20220211092604.393-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220210062403.18690-4-ville.syrjala@linux.intel.com>
References: <20220210062403.18690-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/5] drm/i915: Make cursor plane registers
 unlocked
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

Drop the locks around cursor plane register writes. The
lock isn't needed since each plane's register are neatly
contained on their own cachelines.

The locking did have a secondary effect of disabling
interrupts around the cursor registers writes though.
If we drop that then we open outselves up for sceduling
delays and whatnot while on the middle of the register
writes. That increases the chance of not all the register
writes land during the same frame. For normal atomic
commits this is not a concern as the vblank evade mechanism
anyway disables interrupts around the update, but the legacy
cursor codepath does not. Technically we should do a vblank
evade there as well, but so far no one has bothered to hook
that up. So in the meantime let's put an explicit local irq
disable/enable around the legacy cursor update to keep the
race window minimal.

v2: local_irq_{disable,enable}() for legacy cursor ioctl

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 2ade8fdd9bdd..b648be744cf2 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -255,7 +255,6 @@ static void i845_cursor_update_arm(struct intel_plane *plane,
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	u32 cntl = 0, base = 0, pos = 0, size = 0;
-	unsigned long irqflags;
 
 	if (plane_state && plane_state->uapi.visible) {
 		unsigned int width = drm_rect_width(&plane_state->uapi.dst);
@@ -270,8 +269,6 @@ static void i845_cursor_update_arm(struct intel_plane *plane,
 		pos = intel_cursor_position(plane_state);
 	}
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	/* On these chipsets we can only modify the base/size/stride
 	 * whilst the cursor is disabled.
 	 */
@@ -290,8 +287,6 @@ static void i845_cursor_update_arm(struct intel_plane *plane,
 	} else {
 		intel_de_write_fw(dev_priv, CURPOS(PIPE_A), pos);
 	}
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void i845_cursor_disable_arm(struct intel_plane *plane,
@@ -492,7 +487,6 @@ static void i9xx_cursor_update_arm(struct intel_plane *plane,
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 	u32 cntl = 0, base = 0, pos = 0, fbc_ctl = 0;
-	unsigned long irqflags;
 
 	if (plane_state && plane_state->uapi.visible) {
 		int width = drm_rect_width(&plane_state->uapi.dst);
@@ -508,8 +502,6 @@ static void i9xx_cursor_update_arm(struct intel_plane *plane,
 		pos = intel_cursor_position(plane_state);
 	}
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	/*
 	 * On some platforms writing CURCNTR first will also
 	 * cause CURPOS to be armed by the CURBASE write.
@@ -555,8 +547,6 @@ static void i9xx_cursor_update_arm(struct intel_plane *plane,
 		intel_de_write_fw(dev_priv, CURPOS(pipe), pos);
 		intel_de_write_fw(dev_priv, CURBASE(pipe), base);
 	}
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void i9xx_cursor_disable_arm(struct intel_plane *plane,
@@ -715,6 +705,14 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	 */
 	crtc_state->active_planes = new_crtc_state->active_planes;
 
+	/*
+	 * Technically we should do a vblank evasion here to make
+	 * sure all the cursor registers update on the same frame.
+	 * For now just make sure the register writes happen as
+	 * quickly as possible to minimize the race window.
+	 */
+	local_irq_disable();
+
 	if (new_plane_state->uapi.visible) {
 		intel_plane_update_noarm(plane, crtc_state, new_plane_state);
 		intel_plane_update_arm(plane, crtc_state, new_plane_state);
@@ -722,6 +720,8 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 		intel_plane_disable_arm(plane, crtc_state);
 	}
 
+	local_irq_enable();
+
 	intel_plane_unpin_fb(old_plane_state);
 
 out_free:
-- 
2.34.1

