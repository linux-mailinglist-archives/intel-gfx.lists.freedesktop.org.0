Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F21C6E6B8C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 19:56:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE9E310E83B;
	Tue, 18 Apr 2023 17:56:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13ADD10E834
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 17:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681840566; x=1713376566;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4Bw+aYWmLPioFBBVCVVWMbrF8rF4Y0KB3XPr79y6iy4=;
 b=ijJ3NqvfvKoHYZXz7dxNr/iPDYyGNl+xpD7gmBSpKRf0kU+gZAU5iD4M
 TUTQ/WRieWhCsPWlIk5onhBpDMmFb1eWUaOMGdtul9vt3c7UqSiT6kmuR
 sJpBTPo/L92u4U1/x9zXnK3UVGSqfJhK9LmBfUi2GQ2XY4PFR1xLizsmL
 bGOVWP+1NiRq1qoR9X+B7O8Wo/0IKd92TdnmX/ks7kon7cv2xAAsZKapS
 IY/xmX/anmemQGhOHY0magjobkm2G8biI2CqgVhElzgIs8gbrziX0N9j5
 WCw6Mof4/aHljgG3V5XDFfNYULeSBMJwVprdK2l616ZurDYImQm4rcm6a g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="348002235"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="348002235"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 10:56:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="815302652"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="815302652"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga004.jf.intel.com with SMTP; 18 Apr 2023 10:56:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Apr 2023 20:56:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 20:55:24 +0300
Message-Id: <20230418175528.13117-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/15] drm/i915: Rename skl+ scaler binding bits
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

Rename the scaler binding bits to match the spec more closely.
Also call the parameters 'plane_id' to make it a bit more clear
what to pass in.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 12 ++++++------
 drivers/gpu/drm/i915/i915_reg.h           |  9 +++++----
 2 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index ec930aec21c4..a96f8ecbeec1 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -396,7 +396,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
 			mode = PS_SCALER_MODE_PLANAR;
 
 			if (linked)
-				mode |= PS_PLANE_Y_SEL(linked->id);
+				mode |= PS_BINDING_Y_PLANE(linked->id);
 		}
 	} else if (DISPLAY_VER(dev_priv) >= 10) {
 		mode = PS_SCALER_MODE_NORMAL;
@@ -741,8 +741,8 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 
 	id = scaler_state->scaler_id;
 
-	ps_ctrl = skl_scaler_get_filter_select(crtc_state->hw.scaling_filter, 0);
-	ps_ctrl |=  PS_SCALER_EN | scaler_state->scalers[id].mode;
+	ps_ctrl = PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].mode |
+		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter, 0);
 
 	skl_scaler_setup_filter(dev_priv, pipe, id, 0,
 				crtc_state->hw.scaling_filter);
@@ -804,8 +804,8 @@ skl_program_plane_scaler(struct intel_plane *plane,
 		uv_rgb_vphase = skl_scaler_calc_phase(1, vscale, false);
 	}
 
-	ps_ctrl = skl_scaler_get_filter_select(plane_state->hw.scaling_filter, 0);
-	ps_ctrl |= PS_SCALER_EN | PS_PLANE_SEL(plane->id) | scaler->mode;
+	ps_ctrl = PS_SCALER_EN | PS_BINDING_PLANE(plane->id) | scaler->mode |
+		skl_scaler_get_filter_select(plane_state->hw.scaling_filter, 0);
 
 	skl_scaler_setup_filter(dev_priv, pipe, scaler_id, 0,
 				plane_state->hw.scaling_filter);
@@ -870,7 +870,7 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 		u32 ctl, pos, size;
 
 		ctl = intel_de_read(dev_priv, SKL_PS_CTRL(crtc->pipe, i));
-		if ((ctl & (PS_SCALER_EN | PS_PLANE_SEL_MASK)) != PS_SCALER_EN)
+		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) != (PS_SCALER_EN | PS_BINDING_PIPE))
 			continue;
 
 		id = i;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 919d999a2345..f8e6b86facc3 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4056,8 +4056,9 @@
 #define SKL_PS_SCALER_MODE_NV12 (2 << 28)
 #define PS_SCALER_MODE_PLANAR (1 << 29)
 #define PS_SCALER_MODE_NORMAL (0 << 29)
-#define PS_PLANE_SEL_MASK  (7 << 25)
-#define PS_PLANE_SEL(plane) (((plane) + 1) << 25)
+#define PS_BINDING_MASK (7 << 25)
+#define PS_BINDING_PIPE (0 << 25)
+#define PS_BINDING_PLANE(plane_id) (((plane_id) + 1) << 25)
 #define PS_FILTER_MASK         (3 << 23)
 #define PS_FILTER_MEDIUM       (0 << 23)
 #define PS_FILTER_PROGRAMMED   (1 << 23)
@@ -4073,8 +4074,8 @@
 #define PS_VADAPT_MODE_LEAST_ADAPT (0 << 5)
 #define PS_VADAPT_MODE_MOD_ADAPT   (1 << 5)
 #define PS_VADAPT_MODE_MOST_ADAPT  (3 << 5)
-#define PS_PLANE_Y_SEL_MASK  (7 << 5)
-#define PS_PLANE_Y_SEL(plane) (((plane) + 1) << 5)
+#define PS_BINDING_Y_MASK  (7 << 5)
+#define PS_BINDING_Y_PLANE(plane_id) (((plane_id) + 1) << 5)
 #define PS_Y_VERT_FILTER_SELECT(set)   ((set) << 4)
 #define PS_Y_HORZ_FILTER_SELECT(set)   ((set) << 3)
 #define PS_UV_VERT_FILTER_SELECT(set)  ((set) << 2)
-- 
2.39.2

