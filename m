Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65868695426
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 23:53:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5ABD10E766;
	Mon, 13 Feb 2023 22:53:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1066610E773
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 22:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676328809; x=1707864809;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WUdJFAOaZI/8QPedi3HTfaZtwGR4i8iG//QktKeawq4=;
 b=WAyTImZN3Wk+rkLCJrAP1Svw7E/NWW3bJYZthNijDOoTsQZC7Nb+NKYo
 ohxcMHOvqKHwDHdv+BxTgregDCXF1UlHIC5374TY1JwnV/TewOCxJUPjY
 WVDiu7OtKtW0qbzgpDHiQv6AEo2/ag6CaCdh6IicCRmZagC5A/3i12spq
 mYG/NcW/zqGGYyJ4bA6jPFbsUe7ZqQU5u2mLLPsVuem9mjkzY093Daza+
 INf4LksebXerHbEu1ERBPte4fcpYVQBfQY580fbmi2z8t7Y7Oqd78LD99
 yI3Ev1SgonaRC5hYMPq8s7cmnTJVyQIFlVoADvLdFvwS545WRnfSLG934 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417237418"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="417237418"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 14:53:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="757766449"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="757766449"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 13 Feb 2023 14:53:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 00:53:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 00:52:56 +0200
Message-Id: <20230213225258.2127-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/12] drm/i915: Configure
 TRANS_SET_CONTEXT_LATENCY correctly on ADL+
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

On TGL VBLANK.VBLANK_START was the mechanism by which we can
delay the pipe's internal vblank in relation to the transcoder's
vblank. On ADL+ that no longer does anything. Instead we must
now use the new TRANS_SET_CONTEXT_LATENCY register. Program it
accordingly.

And since VBLANK.VBLANK_START is no longer used by the hardware
on ADL+ let's just zero it out to make it stand out in register
dumps. Seeing the zeroed value should hopefully remind people
to check the other register instead.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++++++++++++---
 1 file changed, 25 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1d92a789baab..92306246e907 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2821,12 +2821,14 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	enum pipe pipe = crtc->pipe;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	u32 crtc_vtotal, crtc_vblank_end;
+	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
 	int vsyncshift = 0;
 
 	/* We need to be careful not to changed the adjusted mode, for otherwise
 	 * the hw state checker will get angry at the mismatch. */
+	crtc_vdisplay = adjusted_mode->crtc_vdisplay;
 	crtc_vtotal = adjusted_mode->crtc_vtotal;
+	crtc_vblank_start = adjusted_mode->crtc_vblank_start;
 	crtc_vblank_end = adjusted_mode->crtc_vblank_end;
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
@@ -2843,6 +2845,21 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 			vsyncshift += adjusted_mode->crtc_htotal;
 	}
 
+	/*
+	 * VBLANK_START no longer works on ADL+, instead we must use
+	 * TRANS_SET_CONTEXT_LATENCY to configure the pipe vblank start.
+	 */
+	if (DISPLAY_VER(dev_priv) >= 13) {
+		intel_de_write(dev_priv, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder),
+			       crtc_vblank_start - crtc_vdisplay);
+
+		/*
+		 * VBLANK_START not used by hw, just clear it
+		 * to make it stand out in register dumps.
+		 */
+		crtc_vblank_start = 1;
+	}
+
 	if (DISPLAY_VER(dev_priv) > 3)
 		intel_de_write(dev_priv, TRANS_VSYNCSHIFT(cpu_transcoder),
 			       vsyncshift);
@@ -2858,10 +2875,10 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
 
 	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
-		       VACTIVE(adjusted_mode->crtc_vdisplay - 1) |
+		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
 	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
-		       VBLANK_START(adjusted_mode->crtc_vblank_start - 1) |
+		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
 	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder),
 		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
@@ -2949,6 +2966,11 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 		adjusted_mode->crtc_vtotal += 1;
 		adjusted_mode->crtc_vblank_end += 1;
 	}
+
+	if (DISPLAY_VER(dev_priv) >= 13 && !transcoder_is_dsi(cpu_transcoder))
+		adjusted_mode->crtc_vblank_start =
+			adjusted_mode->crtc_vdisplay +
+			intel_de_read(dev_priv, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder));
 }
 
 static void intel_bigjoiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
-- 
2.39.1

