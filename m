Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3766E6B8D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 19:56:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8E4010E838;
	Tue, 18 Apr 2023 17:56:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45A8B10E820
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 17:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681840563; x=1713376563;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=IoJ7BEtLWy77fYKUJco0TVDxQIPNF0YGUZ1UHyR5h+E=;
 b=K3XXN1DOzO5cVfdiR71pTknV1RfV4HsxxLYW1lq7QRKBkR7yrTZz1C6J
 83lxhEtWZ286gw4HZsweshikcHjcArj+SbQ1LDe6g0GDnHcsN3Q8AKfSe
 IXMd4/ymJiRnt73Gtle2wSUBZjmU/Mx8WeSpb2UBuHuRlhpjPNcj0uFLC
 G9f4eTff/rDXuIGzakYk4h8bCEWhdkphPeV0WkyR0M7HJ9cdhCRQL4xOv
 bAdglbAs+BS84zzdpW39wWGURH3TKrrhLH90Y7tfOi8RXzPDbS9cC8bxj
 arD9gCVeDcnV7jx7UhcT4Xoh8ur/xoeT8ARPGUUVNL+o1PDIvV0IsgIK5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="334052832"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="334052832"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 10:55:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="641451833"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="641451833"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga003.jf.intel.com with SMTP; 18 Apr 2023 10:55:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Apr 2023 20:55:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 20:55:22 +0300
Message-Id: <20230418175528.13117-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/15] drm/i915: Define bitmasks for ilk pfit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Define and use the bitmasks for the x/y components
of the ilk+ panel filter window pos/size registers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++----
 drivers/gpu/drm/i915/i915_reg.h              |  8 ++++++++
 2 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index fb49d0ed61b4..626a5f41a1f1 100644
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
index 3c02f6c70733..75e1f30adda1 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4020,8 +4020,16 @@
 #define   PF_FILTER_EDGE_SOFTEN		REG_FIELD_PREP(PF_FILTER_EDGE_MASK, 3)
 #define _PFA_WIN_SZ		0x68074
 #define _PFB_WIN_SZ		0x68874
+#define   PF_WIN_XSIZE_MASK	REG_GENMASK(28, 16)
+#define   PF_WIN_XSIZE(w)	REG_FIELD_PREP(PF_WIN_XSIZE_MASK, (w))
+#define   PF_WIN_YSIZE_MASK	REG_GENMASK(11, 0)
+#define   PF_WIN_YSIZE(h)	REG_FIELD_PREP(PF_WIN_YSIZE_MASK, (h))
 #define _PFA_WIN_POS		0x68070
 #define _PFB_WIN_POS		0x68870
+#define   PF_WIN_XPOS_MASK	REG_GENMASK(28, 16)
+#define   PF_WIN_XPOS(x)	REG_FIELD_PREP(PF_WIN_XPOS_MASK, (x))
+#define   PF_WIN_YPOS_MASK	REG_GENMASK(11, 0)
+#define   PF_WIN_YPOS(y)	REG_FIELD_PREP(PF_WIN_YPOS_MASK, (y))
 #define _PFA_VSCALE		0x68084
 #define _PFB_VSCALE		0x68884
 #define _PFA_HSCALE		0x68090
-- 
2.39.2

