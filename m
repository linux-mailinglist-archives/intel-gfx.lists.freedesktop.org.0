Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CD19156FC
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 21:11:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A97810E563;
	Mon, 24 Jun 2024 19:11:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ihcTFZPU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E94DB10E54D
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 19:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719256261; x=1750792261;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=d5d0tr7n9ChamjmzG+RW0yZXrTZwWzwnhBh1H5KMAF8=;
 b=ihcTFZPU+dNAjz8ceMMua0AQGbfIJEh2VGEct2nnCnIimlJ9oM+axPbg
 LrsLj5EWXKOJ9IXzbGzvrDzBwVLrEconTrztJxwgbR22XIAnmRc3g0GzK
 MsAikQlc7HqtiEGqbPbz5Up7GwyDB66bG2b1j4dABX8NqSiocxcgKaGwA
 PDiFBSiUAa/gFxe6VzTBbPNepwsU7ffLSsARFFm80N5RkjQnTvEdfbkxB
 LAt86bkMakM1iMZojDOi1ex+Jpp+74n9uUXJqYpJXvT+HcWqkL1Jyz/B9
 9Xc7gCa6Qy+7OAwFyQLJoJzruF61dRUSZivo/A2MKSAVgeOBWZUgrPj2d g==;
X-CSE-ConnectionGUID: SJtA/jQITemw1vnex4N1Ag==
X-CSE-MsgGUID: 1/xFITpoRh246zfzI5IHUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16374183"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16374183"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 12:10:52 -0700
X-CSE-ConnectionGUID: 1yUhgovNQ+Gg5mQVIbcpEA==
X-CSE-MsgGUID: hDtO53zMQoqiKZiDRFxYEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43371952"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 12:10:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 22:10:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/14] drm/i915/dsb: Fix dewake scanline
Date: Mon, 24 Jun 2024 22:10:24 +0300
Message-ID: <20240624191032.27333-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
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

Currently we calculate the DEwake scanline based on
the delayed vblank start, while in reality it should be computed
based on the undelayed vblank start (as that is where the DSB
actually starts). Currently it doesn't really matter as we
don't have any vblank delay configured, but that may change
in the future so let's be accurate in what we do.

We can also remove the max() as intel_crtc_scanline_to_hw()
can deal with negative numbers, which there really shouldn't
be anyway.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index d3e5e5263603..e871af5517b5 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -86,16 +86,10 @@ struct intel_dsb {
 static int dsb_dewake_scanline(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	unsigned int latency = skl_watermark_max_latency(i915, 0);
-	int vblank_start;
 
-	if (crtc_state->vrr.enable)
-		vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
-	else
-		vblank_start = intel_mode_vblank_start(adjusted_mode);
-
-	return max(0, vblank_start - intel_usecs_to_scanlines(adjusted_mode, latency));
+	return intel_mode_vdisplay(&crtc_state->hw.adjusted_mode) -
+		intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, latency);
 }
 
 static u32 dsb_chicken(struct intel_crtc *crtc)
-- 
2.44.2

