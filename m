Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 564E29A0CA4
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 16:31:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFDE310E71E;
	Wed, 16 Oct 2024 14:31:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T7kyKF6o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5FF610E71E
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 14:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729089103; x=1760625103;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vjIZscGEj2vwRQShtLPLXyVxulH7Wy6RfotH+snPOWc=;
 b=T7kyKF6o9U0HPAiY1DaaK6D/HxGYDa5uq+JY2hflUx2U5ZzMic5qzdOi
 +OObO0JMi3aTwfvAZuzkm4X0VHgzgyLnWLzum0/Lntfo0MMrl6SPSTg9X
 0kiyTBFMxAYMl5Vnwb8iF1we4lrPf/PK5uDf720UEYy+hJ9xAMAI8ix8G
 H6VdH6nmQlhlzaHTE+6KaymeAz61tuo/uQJentV0DLZ8+7DJVIcvhI68o
 6E1XuNDw1wFLpskl9+nft4V8UWmMbJloz54oDBdh9yzVGOuFUVCLN8EYR
 sn7bJdAOismlat9ysbNRKm+1p1njvimC3pAS4RBTnsS2jPN3JLv888oss g==;
X-CSE-ConnectionGUID: gRt4Z8XlRymWtZq+jtJyHQ==
X-CSE-MsgGUID: MUKEDInfQ7+7B7QOlwbqAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="28630702"
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="28630702"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 07:31:43 -0700
X-CSE-ConnectionGUID: st21jazdRRmG9tVwMHU0Zw==
X-CSE-MsgGUID: g4rYvU0GR2uDqCeMzfjQGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78288374"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Oct 2024 07:31:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Oct 2024 17:31:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/9] drm/i915/pfit: Check pfit scaling factors on ILK-BDW
Date: Wed, 16 Oct 2024 17:31:27 +0300
Message-ID: <20241016143134.26903-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
References: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
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

Make sure we're not exceeding the max scaling factors for the panel
fitter on ILK-BDW. SKL+ is skipped here since this is all supposed to
be handled by the unified scaler code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 39 ++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index b77017144818..fb7def772376 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -421,6 +421,41 @@ static int intel_pch_pfit_check_src_size(const struct intel_crtc_state *crtc_sta
 	return 0;
 }
 
+static int intel_pch_pfit_check_scaling(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct drm_rect *dst = &crtc_state->pch_pfit.dst;
+	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
+	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
+	int hscale, vscale, max_scale = 0x12000; /* 1.125 */
+	struct drm_rect src;
+
+	drm_rect_init(&src, 0, 0, pipe_src_w << 16, pipe_src_h << 16);
+
+	hscale = drm_rect_calc_hscale(&src, dst, 0, max_scale);
+	if (hscale < 0) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] pfit horizontal downscaling (%d->%d) exceeds max (0x%x)\n",
+			    crtc->base.base.id, crtc->base.name,
+			    pipe_src_w, drm_rect_width(dst),
+			    max_scale);
+		return hscale;
+	}
+
+	vscale = drm_rect_calc_vscale(&src, dst, 0, max_scale);
+	if (vscale < 0) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] pfit vertical downscaling (%d->%d) exceeds max (0x%x)\n",
+			    crtc->base.base.id, crtc->base.name,
+			    pipe_src_h, drm_rect_height(dst),
+			    max_scale);
+		return vscale;
+	}
+
+	return 0;
+}
+
 /* adjusted_mode has been preset to be the panel's fixed mode */
 static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
@@ -503,6 +538,10 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
+	ret = intel_pch_pfit_check_scaling(crtc_state);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 
-- 
2.45.2

