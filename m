Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7829F7C09
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 14:08:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3AA110ED07;
	Thu, 19 Dec 2024 13:08:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XzBCx0yu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0871010ED07
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 13:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734613733; x=1766149733;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=N+54sbI9uj7zSNZuRv1Lv+MKzArXpvjL6UdcksDz6TI=;
 b=XzBCx0yuuImAZXk5fuAFg1qqv92rNmlso6zNHQtz0YsZyVj9reHdgbmk
 6PaOaW97D/bAJFrIryzrXfwPzDUs0fU+gs61qP/xmxRtOa64WON/qNEPr
 IP/d8JZ3OEUgKOqRhelLG1IZ+9e5zFgkihebMMTXaSf4qrJTRcxuxlXok
 vmwJiz3qOtuMdIvEPNH8P6xQs/r5RCyZ1ikfZ5a2nBrgMQujyVQ/EEKWq
 sgl736bhTLMpAlbRfQeXO+8rvbsTNVZFEjgIcDJuIJqq24+AQrsl2/9qs
 3Xs3+cfEdC8eq3OOJ0DZrxprloIQQs8p9M3ULT6tF8pKhpKZSKyTnS6D8 Q==;
X-CSE-ConnectionGUID: AoxOyD19QJmOrm0913DP3Q==
X-CSE-MsgGUID: PDcMQWqhT/ein1ZYM+akfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="38798158"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="38798158"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 05:08:52 -0800
X-CSE-ConnectionGUID: +YXJDOiNSfSyvMkpK1Bhxw==
X-CSE-MsgGUID: t2MFwsYCSgGd8MIoFiomxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="98403332"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Dec 2024 05:08:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Dec 2024 15:08:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 8/8] drm/i915/scaler: Add scaler tracepoints
Date: Thu, 19 Dec 2024 15:08:27 +0200
Message-ID: <20241219130827.22830-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
References: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Add some tracpoints around skl+ scaler programming to help with
debugging.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_trace.h    | 99 +++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.c     |  8 ++
 2 files changed, 107 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 338b9f7b20b8..54a6e2a46b82 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -489,6 +489,105 @@ TRACE_EVENT(intel_plane_disable_arm,
 		      __entry->frame, __entry->scanline)
 );
 
+TRACE_EVENT(intel_plane_scaler_update_arm,
+	    TP_PROTO(struct intel_plane *plane,
+		     int scaler_id, int x, int y, int w, int h),
+	    TP_ARGS(plane, scaler_id, x, y, w, h),
+
+	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(plane))
+			     __field(char, pipe_name)
+			     __field(int, scaler_id)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     __field(int, x)
+			     __field(int, y)
+			     __field(int, w)
+			     __field(int, h)
+			     __string(name, plane->base.name)
+			     ),
+
+	    TP_fast_assign(
+			   struct intel_display *display = to_intel_display(plane);
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(display, plane->pipe);
+			   __assign_str(dev);
+			   __assign_str(name);
+			   __entry->pipe_name = pipe_name(crtc->pipe);
+			   __entry->scaler_id = scaler_id;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   __entry->x = x;
+			   __entry->y = y;
+			   __entry->w = w;
+			   __entry->h = h;
+			   ),
+
+	    TP_printk("dev %s, pipe %c, scaler %d, plane %s, frame=%u, scanline=%u, " DRM_RECT_FMT,
+		      __get_str(dev), __entry->pipe_name, __entry->scaler_id,
+		      __get_str(name), __entry->frame, __entry->scanline,
+		      __entry->w, __entry->h, __entry->x, __entry->y)
+);
+
+TRACE_EVENT(intel_pipe_scaler_update_arm,
+	    TP_PROTO(struct intel_crtc *crtc, int scaler_id,
+		     int x, int y, int w, int h),
+	    TP_ARGS(crtc, scaler_id, x, y, w, h),
+
+	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(crtc))
+			     __field(char, pipe_name)
+			     __field(int, scaler_id)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     __field(int, x)
+			     __field(int, y)
+			     __field(int, w)
+			     __field(int, h)
+			     ),
+
+	    TP_fast_assign(
+			   __assign_str(dev);
+			   __entry->pipe_name = pipe_name(crtc->pipe);
+			   __entry->scaler_id = scaler_id;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   __entry->x = x;
+			   __entry->y = y;
+			   __entry->w = w;
+			   __entry->h = h;
+			   ),
+
+	    TP_printk("dev %s, pipe %c, scaler %d frame=%u, scanline=%u, " DRM_RECT_FMT,
+		      __get_str(dev), __entry->pipe_name, __entry->scaler_id,
+		      __entry->frame, __entry->scanline,
+		      __entry->w, __entry->h, __entry->x, __entry->y)
+);
+
+TRACE_EVENT(intel_scaler_disable_arm,
+	    TP_PROTO(struct intel_crtc *crtc, int scaler_id),
+	    TP_ARGS(crtc, scaler_id),
+
+	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(crtc))
+			     __field(char, pipe_name)
+			     __field(int, scaler_id)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     ),
+
+	    TP_fast_assign(
+			   __assign_str(dev);
+			   __entry->pipe_name = pipe_name(crtc->pipe);
+			   __entry->scaler_id = scaler_id;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   ),
+
+	    TP_printk("dev %s, pipe %c, scaler %d, frame=%u, scanline=%u",
+		      __get_str(dev), __entry->pipe_name, __entry->scaler_id,
+		      __entry->frame, __entry->scanline)
+);
+
 TRACE_EVENT(intel_fbc_activate,
 	    TP_PROTO(struct intel_plane *plane),
 	    TP_ARGS(plane),
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 79739357162c..a11e09a15e23 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -6,6 +6,7 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_de.h"
+#include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "skl_scaler.h"
@@ -706,6 +707,8 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 	ps_ctrl = PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].mode |
 		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter, 0);
 
+	trace_intel_pipe_scaler_update_arm(crtc, id, x, y, width, height);
+
 	skl_scaler_setup_filter(display, pipe, id, 0,
 				crtc_state->hw.scaling_filter);
 
@@ -770,6 +773,9 @@ skl_program_plane_scaler(struct intel_plane *plane,
 	ps_ctrl = PS_SCALER_EN | PS_BINDING_PLANE(plane->id) | scaler->mode |
 		skl_scaler_get_filter_select(plane_state->hw.scaling_filter, 0);
 
+	trace_intel_plane_scaler_update_arm(plane, scaler_id,
+					    crtc_x, crtc_y, crtc_w, crtc_h);
+
 	skl_scaler_setup_filter(display, pipe, scaler_id, 0,
 				plane_state->hw.scaling_filter);
 
@@ -788,6 +794,8 @@ static void skl_detach_scaler(struct intel_crtc *crtc, int id)
 {
 	struct intel_display *display = to_intel_display(crtc);
 
+	trace_intel_scaler_disable_arm(crtc, id);
+
 	intel_de_write_fw(display, SKL_PS_CTRL(crtc->pipe, id), 0);
 	intel_de_write_fw(display, SKL_PS_WIN_POS(crtc->pipe, id), 0);
 	intel_de_write_fw(display, SKL_PS_WIN_SZ(crtc->pipe, id), 0);
-- 
2.45.2

