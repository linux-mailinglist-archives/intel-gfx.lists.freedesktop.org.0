Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FDC4B063D
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 07:24:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E31FA89F1B;
	Thu, 10 Feb 2022 06:24:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 906BE89F1B
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 06:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644474255; x=1676010255;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Eo94pms/iMx3ljQl/oLbhfoYn4arQ7Y3247fL8H2OCU=;
 b=Z4K93XTVpdtgvUNyNmIw252+d0kU0+8EVIukmiFqP8/Kdb9wn9t9IQOI
 SwDyh2hpD3pSlU191BWCea275QW1HgWk2PHVGvXrVaYGe9Os6SD0CS6JY
 vCM2gpugXq3WyaKarGUNlh6hqQvUaI8rHWZvgQRnuMt23rujetfnCJZ48
 +uq/Y89RCc+dT/pto7l+CHQZ8Q/U1Qza0Mn0LpisfrVFeIl0EjhRoaN3Z
 sNZC4Nvqz8dFxMAAHzwQxSsZSin0zaYlwddinKnphjUvqEffjMhkj62wJ
 qo9hMctIZ78v8NxrLjwkSamADzLMpisb2r7j/565Eb+V7/bp+J5a7RgDE A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="249366914"
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="249366914"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 22:24:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="541477158"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 09 Feb 2022 22:24:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Feb 2022 08:24:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 08:24:01 +0200
Message-Id: <20220210062403.18690-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220210062403.18690-1-ville.syrjala@linux.intel.com>
References: <20220210062403.18690-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/5] drm/i915: Make cursor plane registers
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 2ade8fdd9bdd..625c1fb68273 100644
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
-- 
2.34.1

