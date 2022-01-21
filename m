Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D55495E6C
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 12:31:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05DEE10EA92;
	Fri, 21 Jan 2022 11:31:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 682E510EA91
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 11:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642764663; x=1674300663;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+Hpk6sJlyp51JtCLbN2mZw8G3g3HPw+YPRHJLO5j4aQ=;
 b=Yh8WLXI5apdyBB2lB9x/3IINeqkGZ6ReYHWpgFNaSFGc8f/bt036ra8e
 nPfXI6jLtDK52rGu8wommhdMKI0zVoCSUg1AqSq92ioWESNzSGyiKo0Om
 5IAtlLsXzEeX86iJcS/BWYxrXq4bY2KN9TcLCw/mepjc8fkkA76PpMDdV
 YbfiGBTsEtQSl07nhoV0oc1TILfOmLGI3KiQPhJxvgCsbZDd/pK95qeQv
 5YJU3JLAr5KViAKeGaOvhV6MBkYtGjE3QPAoU1ka4171foCdbwr4KAGvK
 sPChzLZ3cY0K4XVEiQfsG0nowdDY9SWpqjClCay5/nIPZE0Lv2RFeqvbH g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="226309672"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="226309672"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 03:31:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="616479730"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by FMSMGA003.fm.intel.com with SMTP; 21 Jan 2022 03:31:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Jan 2022 13:31:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 13:30:35 +0200
Message-Id: <20220121113036.23240-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220121113036.23240-1-ville.syrjala@linux.intel.com>
References: <20220121113036.23240-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915: Make most pre-skl primary plane
 registers unlocked
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

Drop the locks around most primary plane register writes.
The lock isn't needed since each plane's register are neatly
contained on their own cachelines.

The one exception we have to make is DSPADDR/DSPSURF which is
(ab)used to also trigger FBC nukes on pre-snb (since the
hardware doesn't seem to have any dedicated mechanism to
trigger nukes). So we need to keep the lock around it to
protect against the rmw performed by the fbc code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c | 24 +++++++++--------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 54f8776ca6b3..bab1027a11f3 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -418,9 +418,6 @@ static void i9xx_plane_update_noarm(struct intel_plane *plane,
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
-	unsigned long irqflags;
-
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, DSPSTRIDE(i9xx_plane),
 			  plane_state->view.color_plane[0].mapping_stride);
@@ -441,8 +438,6 @@ static void i9xx_plane_update_noarm(struct intel_plane *plane,
 		intel_de_write_fw(dev_priv, DSPSIZE(i9xx_plane),
 				  DISP_HEIGHT(crtc_h - 1) | DISP_WIDTH(crtc_w - 1));
 	}
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void i9xx_plane_update_arm(struct intel_plane *plane,
@@ -465,8 +460,6 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 	else
 		dspaddr_offset = linear_offset;
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	if (IS_CHERRYVIEW(dev_priv) && i9xx_plane == PLANE_B) {
 		int crtc_x = plane_state->uapi.dst.x1;
 		int crtc_y = plane_state->uapi.dst.y1;
@@ -496,13 +489,15 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 	 * the control register just before the surface register.
 	 */
 	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
+
+	/* lock to protect against rmw in fbc nuke */
+	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 	if (DISPLAY_VER(dev_priv) >= 4)
 		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
 				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
 	else
 		intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
 				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
-
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
@@ -540,14 +535,14 @@ static void i9xx_plane_disable_arm(struct intel_plane *plane,
 	 */
 	dspcntr = i9xx_plane_ctl_crtc(crtc_state);
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
+
+	/* lock to protect against rmw in fbc nuke */
+	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 	if (DISPLAY_VER(dev_priv) >= 4)
 		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane), 0);
 	else
 		intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane), 0);
-
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
@@ -566,8 +561,10 @@ g4x_primary_async_flip(struct intel_plane *plane,
 	if (async_flip)
 		dspcntr |= DISP_ASYNC_FLIP;
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
+
+	/* lock to protect against rmw in fbc nuke */
+	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 	intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
 			  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
@@ -582,12 +579,9 @@ vlv_primary_async_flip(struct intel_plane *plane,
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	u32 dspaddr_offset = plane_state->view.color_plane[0].offset;
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
-	unsigned long irqflags;
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 	intel_de_write_fw(dev_priv, DSPADDR_VLV(i9xx_plane),
 			  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
-- 
2.32.0

