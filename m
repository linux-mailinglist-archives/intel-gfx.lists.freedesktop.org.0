Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 697DD9A0CA5
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 16:31:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A8EF10E728;
	Wed, 16 Oct 2024 14:31:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CYNA+/HR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85C0710E721
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 14:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729089105; x=1760625105;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WEpHR7BZB5gQ/HEMy/vyDMsj5UQow1xInIh9TIXYXyg=;
 b=CYNA+/HRU0FUj8nFRZsTuAH6gY/Mraj8sYvjfExxozaeX7n5erpwitlq
 1vkTV3ehJOSo1mAHZG5V112GOX1DQKzEFQdmzutgxAcKve5dq/fSALWCw
 eNC4lF+qYvFcLZaMtxWZgi2h7kZqjJSUTF8Ab0moZQNnpPjZPekwrNbtP
 krw2CfBEJJ7prTdRXYmPHgiE7woxf0r8Cs+MrA5ikO6tfsuuZB4KWeufr
 cQtlJTnAuSCGFZSrsgbYYkJDpil+7ql7Xu2lXjcR5QCoEh8mJPbbZUWWM
 v0KPy4g0tqLtZcAAS7QnMdDZpEEFgURzcYmVGpbH8ZJ7mHikrlBI62UyX g==;
X-CSE-ConnectionGUID: m6lEkr88StCr0uqksdDQzQ==
X-CSE-MsgGUID: /kxVEZ53SVOQpHDtcVIH3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="28630710"
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="28630710"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 07:31:45 -0700
X-CSE-ConnectionGUID: B3W9a7b8SxeWsEfXNQFQdg==
X-CSE-MsgGUID: UFkKBGasRey3lYoS+/wvpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78288376"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Oct 2024 07:31:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Oct 2024 17:31:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/9] drm/i915/pfit: Reject pfit downscaling for GMCH platforms
Date: Wed, 16 Oct 2024 17:31:28 +0300
Message-ID: <20241016143134.26903-4-ville.syrjala@linux.intel.com>
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

Gen2/3 pfit doesn't support downscaling at all, so reject it.

On i965+ downscaling is supported by the hardware (max scale
factor < 2.0), but as downscaling increases the effective
pixel rate we can't safely allow it unless
intel_crtc_compute_pixel_rate() gets fixed. Probably the
best solution would be to calculate (at least an
apporiximate) pfit destination window and use
ilk_pipe_pixel_rate() for all platforms. For now reject
downscaling on all gmch platforms.

The intel ddx has a similar check for this in userspace,
modesetting ddx does not. And presumably wayland compositors
also do not make such assumptions in userspace.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index fb7def772376..89cac3b3fd02 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -681,6 +681,7 @@ static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
 static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 			      const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 pfit_control = 0, pfit_pgm_ratios = 0, border = 0;
@@ -693,6 +694,25 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 	    adjusted_mode->crtc_vdisplay == pipe_src_h)
 		goto out;
 
+	/*
+	 * TODO: implement downscaling for i965+. Need to account
+	 * for downscaling in intel_crtc_compute_pixel_rate().
+	 */
+	if (adjusted_mode->crtc_hdisplay < pipe_src_w) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] pfit horizontal downscaling (%d->%d) not supported\n",
+			    crtc->base.base.id, crtc->base.name,
+			    pipe_src_w, adjusted_mode->crtc_hdisplay);
+		return -EINVAL;
+	}
+	if (adjusted_mode->crtc_vdisplay < pipe_src_h) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] pfit vertical downscaling (%d->%d) not supported\n",
+			    crtc->base.base.id, crtc->base.name,
+			    pipe_src_h, adjusted_mode->crtc_vdisplay);
+		return -EINVAL;
+	}
+
 	switch (conn_state->scaling_mode) {
 	case DRM_MODE_SCALE_CENTER:
 		/*
-- 
2.45.2

