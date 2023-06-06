Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A324A724CDD
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 21:16:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13D6910E395;
	Tue,  6 Jun 2023 19:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C76B10E3A9
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 19:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686078957; x=1717614957;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Lp7bFl07hUGtNhrFiIdJnYA7DwxlzmvxToNwW/b2Bcg=;
 b=F8RoH/jIdC7cnHU6/p/Gi3eWK4hmW3QIroMG5r+3uKuNdtgJoY10jE41
 uY6M1T06303o8m3bVGVf1Kw2zuGvzCGRyMxKOcFm1TBSVWbyuVDhygpp9
 nQkcX3QS8R1SdQNGWE4UZ29/BkBqgMSsKFwbanEfo9WfXdjkLLEnlZTBY
 FYe+xiewYtm6b7VU+CJMxLkD7AFOXPgY1dBXpXUsgT6NF62ZkMYx/Kw6p
 M1FKl6w8NFUyTV0W40XQZ8EfwUZjzC6CKKJeqlnRFf0lpJQ9aPS8Pw74N
 IJ7XIWTUDBUaR8Z9ILAn//1Aqn+STn4h0wdM0gXwFrtwkhTVNvazkKryn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443146383"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="443146383"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 12:15:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709187156"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709187156"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 06 Jun 2023 12:15:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Jun 2023 22:15:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 22:15:01 +0300
Message-Id: <20230606191504.18099-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 16/19] drm/i915: Introudce
 intel_crtc_scanline_to_hw()
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

Add a helper to convert our idea of a scanline to the hw's idea
of the same scanline (ie. apply crtc->scanline_offset in reverse).
We'll need this to tell the DSB do stuff on a specific scanline.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_vblank.h |  1 +
 2 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index f5659ebd08eb..2cec2abf9746 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -251,6 +251,20 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
 	return (position + crtc->scanline_offset) % vtotal;
 }
 
+int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline)
+{
+	const struct drm_vblank_crtc *vblank =
+		&crtc->base.dev->vblank[drm_crtc_index(&crtc->base)];
+	const struct drm_display_mode *mode = &vblank->hwmode;
+	int vtotal;
+
+	vtotal = mode->crtc_vtotal;
+	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
+		vtotal /= 2;
+
+	return (scanline + vtotal - crtc->scanline_offset) % vtotal;
+}
+
 static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 				     bool in_vblank_irq,
 				     int *vpos, int *hpos,
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index 08e706b29149..17636f140c71 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -22,5 +22,6 @@ void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc);
 void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc);
 void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 				      bool vrr_enable);
+int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline);
 
 #endif /* __INTEL_VBLANK_H__ */
-- 
2.39.3

