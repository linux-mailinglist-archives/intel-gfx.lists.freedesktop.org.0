Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3386E6B8B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 19:56:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5C3610E83A;
	Tue, 18 Apr 2023 17:56:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35AC910E838
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 17:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681840572; x=1713376572;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=g4435CMfPgrI8fKFZbM/SrMJjkqihHmbqj8bWbd2otw=;
 b=W4jM232Z0KS6T1K6yH/FDkEJSE3kOej9CUxxtKGuRtV5WP4Q5wICmAr0
 5L5zOwg8hr0i0o0YzrCKAY99JSkeq3PVSJWa2m8WYcRZdyDxN8pQC6Cov
 2knoVD2XR08u6KyC0Ssr7bPw9/opTQ5QaaSnLGx8BnBDO3dG4eFYLXuC2
 RyWJBGdJORH2x+NDm2fvgAzMk+Pq2VdkwTw5i7ZXV6PYTppwEpzHH/HQe
 5ocygf8G9L9VUf+PpCdzYqERQoFBR5gl3xZz3QKNVDe6zhdPBPEsRqzE5
 gz7sf6DH8xVXmdPddcF9Jx16RgN14jwsSmHJ3KZLsBKKxoEb9bmxezm44 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="348002251"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="348002251"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 10:56:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="815302669"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="815302669"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga004.jf.intel.com with SMTP; 18 Apr 2023 10:56:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Apr 2023 20:56:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 20:55:26 +0300
Message-Id: <20230418175528.13117-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/15] drm/i915: Define bitmasks for sik+ scaler
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
of the skl+ scaler window pos/size registers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 14 ++++++++------
 drivers/gpu/drm/i915/i915_reg.h           |  8 ++++++++
 2 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 4437d130293a..1e7c97243fcf 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -754,9 +754,9 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 	intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, id),
 			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
 	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(pipe, id),
-			  x << 16 | y);
+			  PS_WIN_XPOS(x) | PS_WIN_YPOS(y));
 	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(pipe, id),
-			  width << 16 | height);
+			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
 }
 
 void
@@ -816,9 +816,9 @@ skl_program_plane_scaler(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, scaler_id),
 			  PS_Y_PHASE(y_hphase) | PS_UV_RGB_PHASE(uv_rgb_hphase));
 	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(pipe, scaler_id),
-			  (crtc_x << 16) | crtc_y);
+			  PS_WIN_XPOS(crtc_x) | PS_WIN_YPOS(crtc_y));
 	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(pipe, scaler_id),
-			  (crtc_w << 16) | crtc_h);
+			  PS_WIN_XSIZE(crtc_w) | PS_WIN_YSIZE(crtc_h));
 }
 
 static void skl_detach_scaler(struct intel_crtc *crtc, int id)
@@ -880,8 +880,10 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 		size = intel_de_read(dev_priv, SKL_PS_WIN_SZ(crtc->pipe, i));
 
 		drm_rect_init(&crtc_state->pch_pfit.dst,
-			      pos >> 16, pos & 0xffff,
-			      size >> 16, size & 0xffff);
+			      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
+			      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
+			      REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
+			      REG_FIELD_GET(PS_WIN_YSIZE_MASK, size));
 
 		scaler_state->scalers[i].in_use = true;
 		break;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a5ae291de55b..68581864fb44 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4101,12 +4101,20 @@
 #define _PS_WIN_POS_1B      0x68970
 #define _PS_WIN_POS_2B      0x68A70
 #define _PS_WIN_POS_1C      0x69170
+#define   PS_WIN_XPOS_MASK			REG_GENMASK(28, 16)
+#define   PS_WIN_XPOS(x)			REG_FIELD_PREP(PS_WIN_XPOS_MASK, (x))
+#define   PS_WIN_YPOS_MASK			REG_GENMASK(12, 0)
+#define   PS_WIN_YPOS(y)			REG_FIELD_PREP(PS_WIN_YPOS_MASK, (y))
 
 #define _PS_WIN_SZ_1A       0x68174
 #define _PS_WIN_SZ_2A       0x68274
 #define _PS_WIN_SZ_1B       0x68974
 #define _PS_WIN_SZ_2B       0x68A74
 #define _PS_WIN_SZ_1C       0x69174
+#define   PS_WIN_XSIZE_MASK			REG_GENMASK(29, 16)
+#define   PS_WIN_XSIZE(w)			REG_FIELD_PREP(PS_WIN_XSIZE_MASK, (w))
+#define   PS_WIN_YSIZE_MASK			REG_GENMASK(12, 0)
+#define   PS_WIN_YSIZE(h)			REG_FIELD_PREP(PS_WIN_YSIZE_MASK, (h))
 
 #define _PS_VSCALE_1A       0x68184
 #define _PS_VSCALE_2A       0x68284
-- 
2.39.2

