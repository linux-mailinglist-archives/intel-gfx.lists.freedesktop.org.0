Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D206EF5D0
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 15:50:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 056E810E31B;
	Wed, 26 Apr 2023 13:50:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE96310E1AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 13:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682517030; x=1714053030;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=99BZ+pQXl+F5BK0bsUHGMmczqYDdoxdAQZsZxfwW5jU=;
 b=IWcyUdVOdqP6LAzfdJJrT49jcCK/glS43cUOPeIgqX4QjOOtDL9m6aDS
 99Pist9f+lWqOgoRlsxM+6XUc/UlSyVEwWsp/B2CxXk1RQAG4o2CBv99/
 F6EeWdQ1Dfq5Mg54naKxkwtzWHJWF2laWdUMsxK9XtyXDN9KJ0vPLtsf9
 qqssai5tZsFyFxoJ3s6bL7QWDeJ5S60BFLMQhdEK34LwTE8Opcg91KpSy
 mG/cWre8VgX07Y4Bz1TPFz6VSZUWV+6tgJ8X5+Zb/B1na4jI1wRo46rD9
 vKCcmkCf+5vJ1OdU8VVrVX8QQdrqNiKs+xXqPJLx3MJr+930s0gh+Y/4N g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="327436776"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327436776"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 06:50:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="805514254"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="805514254"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 26 Apr 2023 06:50:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Apr 2023 16:50:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 16:50:15 +0300
Message-Id: <20230426135019.7603-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
References: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/7] drm/i915: Rename skl+ scaler binding bits
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

Rename the scaler binding bits to match the spec more closely.
Also call the parameters 'plane_id' to make it a bit more clear
what to pass in.

v2: Don't break gvt

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 12 ++++++------
 drivers/gpu/drm/i915/gvt/handlers.c       |  2 +-
 drivers/gpu/drm/i915/i915_reg.h           |  9 +++++----
 3 files changed, 12 insertions(+), 11 deletions(-)

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
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 4b45a041ac5c..a9f7fa9b90bd 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -1562,7 +1562,7 @@ static int pf_write(struct intel_vgpu *vgpu,
 
 	if ((offset == _PS_1A_CTRL || offset == _PS_2A_CTRL ||
 	   offset == _PS_1B_CTRL || offset == _PS_2B_CTRL ||
-	   offset == _PS_1C_CTRL) && (val & PS_PLANE_SEL_MASK) != 0) {
+	   offset == _PS_1C_CTRL) && (val & PS_BINDING_MASK) != PS_BINDING_PIPE) {
 		drm_WARN_ONCE(&i915->drm, true,
 			      "VM(%d): guest is trying to scaling a plane\n",
 			      vgpu->id);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d3f5771bd82b..2ced1cf35446 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4061,8 +4061,9 @@
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
@@ -4078,8 +4079,8 @@
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

