Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 493566EF5CE
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 15:50:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C40F210E0EE;
	Wed, 26 Apr 2023 13:50:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEA6A10E0EE
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 13:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682517024; x=1714053024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BgmbSdTLcBe4awMRxAytaDLHgWH38ccfJ7euWdVj/Uk=;
 b=Ib42Xw24F3Oot3qHykUwuvHgG+/65YTu7HVG+WYLQRP6yLvhEUK0J4kR
 L9pUE6MLwdTvT4h/4W+bbulAQdzIphG3kCI7ovakYgAAHI29Mf6sBCOVz
 7pxvIposvDaAeDexeASu2TUndB4BT4A1IW6svfGQOnIRcG1tUf3OZuI2Q
 DD/dW3oMQUVm6sdgVb5zdaFoiqZOGr1hKkA3UmE2JEL+isdflKjytyE+p
 /1NdAzn/HCrS9FUxAl4YovY3Jp6f+PBojtZQpHo4BZ75nKKHpiu8Ly+hv
 YwVNvUzcQXJw9KO0NEVz/PsbcpqoZmAPRxSlQ18JqEBzG1wET6F46NYS0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="327436753"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327436753"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 06:50:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="805514239"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="805514239"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 26 Apr 2023 06:50:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Apr 2023 16:50:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 16:50:13 +0300
Message-Id: <20230426135019.7603-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
References: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/7] drm/i915: Define bitmasks for ilk pfit
 window pos/size
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Define and use the bitmasks for the x/y components
of the ilk+ panel filter window pos/size registers.

Note that we stick to the full 16 bit mask even though
the actual hardware limits are lower (and somewhat
platform dependent). BDW is actually limited to
13 bits horizontal and 12 bits vertical, with the high
bits being hardwired to zero. HSW should have the same
limits as BDW. And pre-HSW should be limited to 12bits
in both directions as that's already the limit of the
transcoder timing registers. Curiously on HSW and earlier
platforms all 16 bits can actually be set, but presumably
the hardware ignores the high bits.

v2: Switch back to full 16bit masks since that's what
    we use transcoder timign regs and PIPESRC as well

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++----
 drivers/gpu/drm/i915/i915_reg.h              |  8 ++++++++
 2 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bf391a6cd8d6..5e40a0ef3457 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -812,8 +812,10 @@ static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
 	else
 		intel_de_write_fw(dev_priv, PF_CTL(pipe), PF_ENABLE |
 				  PF_FILTER_MED_3x3);
-	intel_de_write_fw(dev_priv, PF_WIN_POS(pipe), x << 16 | y);
-	intel_de_write_fw(dev_priv, PF_WIN_SZ(pipe), width << 16 | height);
+	intel_de_write_fw(dev_priv, PF_WIN_POS(pipe),
+			  PF_WIN_XPOS(x) | PF_WIN_YPOS(y));
+	intel_de_write_fw(dev_priv, PF_WIN_SZ(pipe),
+			  PF_WIN_XSIZE(width) | PF_WIN_YSIZE(height));
 }
 
 static void intel_crtc_dpms_overlay_disable(struct intel_crtc *crtc)
@@ -3246,8 +3248,10 @@ static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
 	size = intel_de_read(dev_priv, PF_WIN_SZ(crtc->pipe));
 
 	drm_rect_init(&crtc_state->pch_pfit.dst,
-		      pos >> 16, pos & 0xffff,
-		      size >> 16, size & 0xffff);
+		      REG_FIELD_GET(PF_WIN_XPOS_MASK, pos),
+		      REG_FIELD_GET(PF_WIN_YPOS_MASK, pos),
+		      REG_FIELD_GET(PF_WIN_XSIZE_MASK, size),
+		      REG_FIELD_GET(PF_WIN_YSIZE_MASK, size));
 
 	/*
 	 * We currently do not free assignements of panel fitters on
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index dde6e91055bd..f7294a9b5cfa 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4025,8 +4025,16 @@
 #define   PF_FILTER_EDGE_SOFTEN		REG_FIELD_PREP(PF_FILTER_EDGE_MASK, 3)
 #define _PFA_WIN_SZ		0x68074
 #define _PFB_WIN_SZ		0x68874
+#define   PF_WIN_XSIZE_MASK	REG_GENMASK(31, 16)
+#define   PF_WIN_XSIZE(w)	REG_FIELD_PREP(PF_WIN_XSIZE_MASK, (w))
+#define   PF_WIN_YSIZE_MASK	REG_GENMASK(15, 0)
+#define   PF_WIN_YSIZE(h)	REG_FIELD_PREP(PF_WIN_YSIZE_MASK, (h))
 #define _PFA_WIN_POS		0x68070
 #define _PFB_WIN_POS		0x68870
+#define   PF_WIN_XPOS_MASK	REG_GENMASK(31, 16)
+#define   PF_WIN_XPOS(x)	REG_FIELD_PREP(PF_WIN_XPOS_MASK, (x))
+#define   PF_WIN_YPOS_MASK	REG_GENMASK(15, 0)
+#define   PF_WIN_YPOS(y)	REG_FIELD_PREP(PF_WIN_YPOS_MASK, (y))
 #define _PFA_VSCALE		0x68084
 #define _PFB_VSCALE		0x68884
 #define _PFA_HSCALE		0x68090
-- 
2.39.2

