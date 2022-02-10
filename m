Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 607D44B063F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 07:24:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 914DD10E4BD;
	Thu, 10 Feb 2022 06:24:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3914489FD7
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 06:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644474258; x=1676010258;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9nSNh7d+ba3e+B4v0+iahfo8hLuLBJR8ixcH7bMebRw=;
 b=Is0Za0oVlxYnqdldoYDc8p5BCPrrXHlNfvV7igXqfcZfEOuX4im0xtXu
 VL7CksuaIekhPJrzKZ9i8tcdhA++DzKrHvIP+LLjSImWVGMJUXcPU78h9
 p26PUuHW5XXSw5uIr0lqOHaGzQbCm8EiKInf1ONrtZTo9JcWtPv0h39Un
 aAJ200yTwJJxdOkC70ZIG2vZSpSLtlerlkDk992oASI6adToXK2L8s1XC
 nDBJgHVGk6a79wryUAVUwEPPqvhfrHxDwXavQYgrBAWHO2pf7OaU7Qcpy
 ea9JBxjfa9VMcagikiuvtYB5hG+B09vXfb74iyYdy+Q+nAHy7rwXIT318 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="335833804"
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="335833804"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 22:24:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="526349670"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 09 Feb 2022 22:24:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Feb 2022 08:24:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 08:24:02 +0200
Message-Id: <20220210062403.18690-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220210062403.18690-1-ville.syrjala@linux.intel.com>
References: <20220210062403.18690-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/5] drm/i915: Make most pre-skl primary
 plane registers unlocked
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
index a87b65cd41fd..af190bacdd97 100644
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
2.34.1

