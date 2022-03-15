Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 369DD4D9CE2
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 15:02:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 623F510E422;
	Tue, 15 Mar 2022 14:02:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4507310E422
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 14:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647352942; x=1678888942;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UalD0JJeppf0/LcebgI26Vo6KhekRgoLX2Wx4vzh6iU=;
 b=dU/Wr+bHVrugWjl0lqYt7ykADsaVDv+pqzLADKV6YKHynhLpKERFYZhU
 515FHGx6v8IF4S0QcY392rYUMGb6PBaksB+Zxs31Uog35YhuSdipjsAIy
 X3RsiTbkxXZCVxEcuSmfPQZVc/86rHWLMKvEBulKeeUPjJIc7m+poLNtr
 ylWMPKTOKisvwDp2ZIN8mRdlNqVa1xMI7M1BoQ+IdxY7nktw61n2tSjTh
 3/j785gZ9rL+pSveTYhnljpIMhPjfHHOoFMykZZAvXktj2kAXsrZ59DBc
 x5c/3jTlsf3a/wUNgIC3vTz974d51Do8vuZ9LXV31s+1z4T+IOAoSMpsw Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="236912663"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="236912663"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 07:00:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="556939452"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 15 Mar 2022 07:00:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 16:00:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 15:59:58 +0200
Message-Id: <20220315140001.1172-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315140001.1172-1-ville.syrjala@linux.intel.com>
References: <20220315140001.1172-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915: Remove remaining locks from i9xx
 plane udpates
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

Now that fbc no longer nukes while a flip is pending we can
remove the last uncore.lock from the i9xx plane code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index af190bacdd97..7fe1a4e57654 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -449,7 +449,6 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 	int x = plane_state->view.color_plane[0].x;
 	int y = plane_state->view.color_plane[0].y;
 	u32 dspcntr, dspaddr_offset, linear_offset;
-	unsigned long irqflags;
 
 	dspcntr = plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
 
@@ -490,15 +489,12 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 	 */
 	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
 
-	/* lock to protect against rmw in fbc nuke */
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 	if (DISPLAY_VER(dev_priv) >= 4)
 		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
 				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
 	else
 		intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
 				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void i830_plane_update_arm(struct intel_plane *plane,
@@ -520,7 +516,6 @@ static void i9xx_plane_disable_arm(struct intel_plane *plane,
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
-	unsigned long irqflags;
 	u32 dspcntr;
 
 	/*
@@ -537,13 +532,10 @@ static void i9xx_plane_disable_arm(struct intel_plane *plane,
 
 	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
 
-	/* lock to protect against rmw in fbc nuke */
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 	if (DISPLAY_VER(dev_priv) >= 4)
 		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane), 0);
 	else
 		intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane), 0);
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
@@ -556,18 +548,14 @@ g4x_primary_async_flip(struct intel_plane *plane,
 	u32 dspcntr = plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
 	u32 dspaddr_offset = plane_state->view.color_plane[0].offset;
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
-	unsigned long irqflags;
 
 	if (async_flip)
 		dspcntr |= DISP_ASYNC_FLIP;
 
 	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
 
-	/* lock to protect against rmw in fbc nuke */
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 	intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
 			  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
-- 
2.34.1

