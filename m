Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF06C495E6D
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 12:31:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB4D110EA93;
	Fri, 21 Jan 2022 11:31:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B18910EA95
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 11:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642764669; x=1674300669;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=F7L9OgIFFzm2ttvpIhMnbeLUPdDTfNDke5bHAEeiX9o=;
 b=JqSF7RbTsxsgucqGjKXXyf/ZIDD2/+YtP1fRC03elphH6iRjlNYP5+CB
 07ysBjAQiiLd9GbXjhxzgv0qJ0luqL9cKrMvTPn2XqUN1CclRKZHyUS+J
 xXyACEDmcLTOHYxIbtKjolQCKwR7ODala3k4qXRpYh+ywPxfs8ALubG7S
 N+IS9aiPOvTU4jl1a104AM5EwrMhSUt+zfBO9fb8EgIAe/qq9WoWm9Jlf
 ZCYA009pghj+2c4e95UuTkOc2wjNCc7zEyd7ApIaHBlmep3S+jLoZYih9
 lDPCIDwsN7o0C6Kq6bo5Wpa3fGIarbpDR2yU34rO+UD2iClrNzuUFFJqH A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="306356888"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="306356888"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 03:31:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="493818805"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga002.jf.intel.com with SMTP; 21 Jan 2022 03:30:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Jan 2022 13:30:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 13:30:34 +0200
Message-Id: <20220121113036.23240-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220121113036.23240-1-ville.syrjala@linux.intel.com>
References: <20220121113036.23240-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Make cursor plane registers
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
2.32.0

