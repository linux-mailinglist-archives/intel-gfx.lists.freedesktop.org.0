Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5626EF5D2
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 15:50:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB06510E9A7;
	Wed, 26 Apr 2023 13:50:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 010D210E9A2
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 13:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682517037; x=1714053037;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5eUv9AqEnTytSj6FJxuwUCQzYMFVfCj3ED7t01TqieM=;
 b=V3PKwJ3os8XNFfAXRYKX6gHVlPD+e1UsuhXGeK7YIsDMiKIBdRgBKGJY
 fmbaisZge5lva8XpoVx+f8j74+y/yYB/JdCZJMcdlGJ/Xnr9q34QaypTR
 smV3mWUR48rh4DCyQ+eyiCJQzrO0yA4rFh8l61L4oEQOEcNfRs2yvqKRI
 SYfJi56nr88yWtJmQ2BQysEaBGNIqquRiVBevKzXeZrfptnawtQ+/V8v8
 9fiT3CnOsT5mEQuUKaoheFc84cPgc3gSyDU7B5Y7pYd1m2DsxheMvpW6r
 ARRij5W1RagblQ/cL68dNoG+1vn13TFHTvo+AwJ2eRhGWUxm5qpwe59w+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="327436798"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327436798"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 06:50:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="805514270"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="805514270"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 26 Apr 2023 06:50:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Apr 2023 16:50:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 16:50:17 +0300
Message-Id: <20230426135019.7603-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
References: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/7] drm/i915: Define bitmasks for skl+
 scaler window pos/size
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
of the skl+ scaler window pos/size registers.

We stick to the full 16 bits mask here even though the
hardware limits are actually lower. The current (ADL)
hardware maximums are in fact: 14 bits for X size, 13 bits
for X pos, 13 bits for Y size/pos. Yes, that is correct,
X pos has less bits than the X size for some reason. But
that  doesn't actually matter for now as we don't currently
even support such wide displays without the use of bigjoiner
(due to max plane width limit).

v2: Switch back to full 16bit masks since that's what
    we use transcoder timign regs and PIPESRC as well

Cc: Jani Nikula <jani.nikula@intel.com>
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
index 530bc961088f..b6f691107571 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4106,12 +4106,20 @@
 #define _PS_WIN_POS_1B      0x68970
 #define _PS_WIN_POS_2B      0x68A70
 #define _PS_WIN_POS_1C      0x69170
+#define   PS_WIN_XPOS_MASK			REG_GENMASK(31, 16)
+#define   PS_WIN_XPOS(x)			REG_FIELD_PREP(PS_WIN_XPOS_MASK, (x))
+#define   PS_WIN_YPOS_MASK			REG_GENMASK(15, 0)
+#define   PS_WIN_YPOS(y)			REG_FIELD_PREP(PS_WIN_YPOS_MASK, (y))
 
 #define _PS_WIN_SZ_1A       0x68174
 #define _PS_WIN_SZ_2A       0x68274
 #define _PS_WIN_SZ_1B       0x68974
 #define _PS_WIN_SZ_2B       0x68A74
 #define _PS_WIN_SZ_1C       0x69174
+#define   PS_WIN_XSIZE_MASK			REG_GENMASK(31, 16)
+#define   PS_WIN_XSIZE(w)			REG_FIELD_PREP(PS_WIN_XSIZE_MASK, (w))
+#define   PS_WIN_YSIZE_MASK			REG_GENMASK(15, 0)
+#define   PS_WIN_YSIZE(h)			REG_FIELD_PREP(PS_WIN_YSIZE_MASK, (h))
 
 #define _PS_VSCALE_1A       0x68184
 #define _PS_VSCALE_2A       0x68284
-- 
2.39.2

