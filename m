Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E38C3A7859F
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 02:22:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66DD910E687;
	Wed,  2 Apr 2025 00:22:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L+d3piEe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65C5810E161;
 Wed,  2 Apr 2025 00:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743553358; x=1775089358;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K2vUVA1zUNm/dJYns5Gyz/mpdGOukpZInOgurED09Qs=;
 b=L+d3piEeWpknX+1qTdVI+h/NscVMBQ97jFHfig1QMu2Shn2wdOD3PtI9
 GAh8jc+7Xf79NcrVVU62SFpneXLMRpgbyCxMX+FaKA/tImViUePa9fhjP
 IxwY42S3HcH6314QtpuvnUw/RQvXTiiSmAu8Tms3ETCL28vA+VcZFcFSy
 w27S75GY02dQ2fI/uO485XULYDj/X+6NPmK+ixhOXvexwktatuzo/OHa+
 w2X/Df/TsdkaKLhAIGRnCQU+xKQeJI2hs7sBU8QF6WZT/sas5YzEl4hhW
 SukP76SaqHerVEk2dE+9umKmHbVzZN4/EmKtZctcHC9PJ34ItixbM/1gR Q==;
X-CSE-ConnectionGUID: D3JaEDIFRieOQd2GodsmtA==
X-CSE-MsgGUID: 57e3WEP0Ss+gZwpoEsf8vA==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="45021964"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="45021964"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 17:22:37 -0700
X-CSE-ConnectionGUID: 1wKsAfPQRee80uqaoqsCxg==
X-CSE-MsgGUID: XxBqKu+BSg+OwtXbxdwAdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="131729597"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 01 Apr 2025 17:22:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Apr 2025 03:22:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 8/9] drm/i915: Add tracepoint for plane faults
Date: Wed,  2 Apr 2025 03:22:08 +0300
Message-ID: <20250402002209.24987-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250402002209.24987-1-ville.syrjala@linux.intel.com>
References: <20250402002209.24987-1-ville.syrjala@linux.intel.com>
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

When analying plane faults the exact sequence/timing of things can be
important. Add a tracepoint for plane faults that can then be
correclated against other tracepoints to figure out what happened and
when.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  |  2 ++
 .../drm/i915/display/intel_display_trace.h    | 33 +++++++++++++++++++
 2 files changed, 35 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index d2a35e3630b1..d8bd06410542 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -87,6 +87,8 @@ static bool handle_plane_fault(struct intel_crtc *crtc, enum plane_id plane_id)
 
 	plane->capture_error(crtc, plane, &error);
 
+	trace_intel_plane_fault(plane, crtc, error.ctl, error.surf, error.surflive);
+
 	drm_err_ratelimited(display->drm,
 			    "[CRTC:%d:%s][PLANE:%d:%s] fault (CTL=0x%x, SURF=0x%x, SURFLIVE=0x%x)\n",
 			    crtc->base.base.id, crtc->base.name,
diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 27ebc32cb61a..f0763d754eb7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -498,6 +498,39 @@ TRACE_EVENT(intel_plane_disable_arm,
 		      __entry->frame, __entry->scanline)
 );
 
+TRACE_EVENT(intel_plane_fault,
+	    TP_PROTO(struct intel_plane *plane, struct intel_crtc *crtc,
+		     u32 ctl, u32 surf, u32 surflive),
+	    TP_ARGS(plane, crtc, ctl, surf, surflive),
+
+	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(plane))
+			     __field(char, pipe_name)
+			     __string(name, plane->base.name)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     __field(u32, ctl)
+			     __field(u32, surf)
+			     __field(u32, surflive)
+			     ),
+
+	    TP_fast_assign(
+			   __assign_str(dev);
+			   __assign_str(name);
+			   __entry->pipe_name = pipe_name(crtc->pipe);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   __entry->ctl = ctl;
+			   __entry->surf = surf;
+			   __entry->surflive = surflive;
+			   ),
+
+	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u ctl=0x%x, surf=0x%x, surflive=0x%x",
+		      __get_str(dev), __entry->pipe_name, __get_str(name),
+		      __entry->frame, __entry->scanline,
+		      __entry->ctl, __entry->surf, __entry->surflive)
+);
+
 TRACE_EVENT(intel_plane_scaler_update_arm,
 	    TP_PROTO(struct intel_plane *plane,
 		     int scaler_id, int x, int y, int w, int h),
-- 
2.45.3

