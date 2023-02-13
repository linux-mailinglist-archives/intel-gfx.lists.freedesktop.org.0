Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB320695424
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 23:53:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 723E910E76A;
	Mon, 13 Feb 2023 22:53:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7876810E76E
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 22:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676328803; x=1707864803;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=62QEB5Ugkj4ZUEXRekVhpY9bI2UGhiPSsm2sUeDVpao=;
 b=avz2T1G62EhMJkZsL4yG0PnIIhVEups5I6nFOo8hPZK5V9h5U2uzy4Sa
 IvXowQCXB31XOef6ae8iL0yhkM2gCQNSEuws5AnxBqmfDIsxVspOdMB7o
 4WmGXKCtNop0MEF5XPRHUZwnxGbLwD1n787EXDuUGPLupk+o+ejS76VRa
 5QYuvCc0ANCw7LlErpUnAJmMVdffYrkTQLboitFxwJcNhlF2BYZeFLDN3
 DhkPNwUEKf1Ip19fiv2D35du2shNCdP21MLpUc3f32mwkJAyRHvpDyQez
 jynAWH++2HilmvFJX6aGzjegJuJ7vRGWgeMHYqGcK2bSeOuEzQdz0yEcx A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417237408"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="417237408"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 14:53:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="757766437"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="757766437"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 13 Feb 2023 14:53:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 00:53:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 00:52:54 +0200
Message-Id: <20230213225258.2127-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/12] drm/i915: Add local adjusted_mode variable
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

Clean up the eyesore in intel_get_transcoder_timings() a
bit by adding a local 'adjusted_mode' variable.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 35 +++++++++-----------
 1 file changed, 16 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0aca842df8f7..ac021ca88e3c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2908,42 +2908,39 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
+	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	u32 tmp;
 
 	tmp = intel_de_read(dev_priv, TRANS_HTOTAL(cpu_transcoder));
-	pipe_config->hw.adjusted_mode.crtc_hdisplay = (tmp & 0xffff) + 1;
-	pipe_config->hw.adjusted_mode.crtc_htotal = ((tmp >> 16) & 0xffff) + 1;
+	adjusted_mode->crtc_hdisplay = (tmp & 0xffff) + 1;
+	adjusted_mode->crtc_htotal = ((tmp >> 16) & 0xffff) + 1;
 
 	if (!transcoder_is_dsi(cpu_transcoder)) {
 		tmp = intel_de_read(dev_priv, TRANS_HBLANK(cpu_transcoder));
-		pipe_config->hw.adjusted_mode.crtc_hblank_start =
-							(tmp & 0xffff) + 1;
-		pipe_config->hw.adjusted_mode.crtc_hblank_end =
-						((tmp >> 16) & 0xffff) + 1;
+		adjusted_mode->crtc_hblank_start = (tmp & 0xffff) + 1;
+		adjusted_mode->crtc_hblank_end = ((tmp >> 16) & 0xffff) + 1;
 	}
 	tmp = intel_de_read(dev_priv, TRANS_HSYNC(cpu_transcoder));
-	pipe_config->hw.adjusted_mode.crtc_hsync_start = (tmp & 0xffff) + 1;
-	pipe_config->hw.adjusted_mode.crtc_hsync_end = ((tmp >> 16) & 0xffff) + 1;
+	adjusted_mode->crtc_hsync_start = (tmp & 0xffff) + 1;
+	adjusted_mode->crtc_hsync_end = ((tmp >> 16) & 0xffff) + 1;
 
 	tmp = intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder));
-	pipe_config->hw.adjusted_mode.crtc_vdisplay = (tmp & 0xffff) + 1;
-	pipe_config->hw.adjusted_mode.crtc_vtotal = ((tmp >> 16) & 0xffff) + 1;
+	adjusted_mode->crtc_vdisplay = (tmp & 0xffff) + 1;
+	adjusted_mode->crtc_vtotal = ((tmp >> 16) & 0xffff) + 1;
 
 	if (!transcoder_is_dsi(cpu_transcoder)) {
 		tmp = intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder));
-		pipe_config->hw.adjusted_mode.crtc_vblank_start =
-							(tmp & 0xffff) + 1;
-		pipe_config->hw.adjusted_mode.crtc_vblank_end =
-						((tmp >> 16) & 0xffff) + 1;
+		adjusted_mode->crtc_vblank_start = (tmp & 0xffff) + 1;
+		adjusted_mode->crtc_vblank_end = ((tmp >> 16) & 0xffff) + 1;
 	}
 	tmp = intel_de_read(dev_priv, TRANS_VSYNC(cpu_transcoder));
-	pipe_config->hw.adjusted_mode.crtc_vsync_start = (tmp & 0xffff) + 1;
-	pipe_config->hw.adjusted_mode.crtc_vsync_end = ((tmp >> 16) & 0xffff) + 1;
+	adjusted_mode->crtc_vsync_start = (tmp & 0xffff) + 1;
+	adjusted_mode->crtc_vsync_end = ((tmp >> 16) & 0xffff) + 1;
 
 	if (intel_pipe_is_interlaced(pipe_config)) {
-		pipe_config->hw.adjusted_mode.flags |= DRM_MODE_FLAG_INTERLACE;
-		pipe_config->hw.adjusted_mode.crtc_vtotal += 1;
-		pipe_config->hw.adjusted_mode.crtc_vblank_end += 1;
+		adjusted_mode->flags |= DRM_MODE_FLAG_INTERLACE;
+		adjusted_mode->crtc_vtotal += 1;
+		adjusted_mode->crtc_vblank_end += 1;
 	}
 }
 
-- 
2.39.1

