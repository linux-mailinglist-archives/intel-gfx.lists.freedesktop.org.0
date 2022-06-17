Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E18554FB59
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 18:46:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 800DB10EB1A;
	Fri, 17 Jun 2022 16:46:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31CDC10EABA
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 16:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655484396; x=1687020396;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wcC/bzTBM13elFoHbyjbpBegq+vuulCqEDa75ogT6y8=;
 b=GAhXwQz66q/xnc3drVPrGVFsxruExr7Dqwuj08+kSuectXoSkftOzl3X
 VixH5eq9+4naSVw96ic8LtzDz9B2Fp6oWDOlzF03nBzRQbb+O38/9GBHb
 UsjzO33rF3/M5iOxtuLcxmNwQDOoT0KX2HHFc/woPu7neJ+r44G9dj7Y5
 BAijxsa9491LWoNHeIQYBe0hV2+mzc6A5EOyg6PJ5uBVA1/XAktmmD193
 Qk/AKYxl5+xqb/VtBXZAFr3N7UO5i5m6Cir12X7tkqrDXJ8Nl+iN1ytuH
 DLc5aWpnZ4en+CwiWbulMt2qK+9gHMqUPod+MQqslbdpEv4gCEbp4opsJ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="343498554"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="343498554"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 09:05:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="578230416"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga002.jf.intel.com with SMTP; 17 Jun 2022 09:05:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jun 2022 19:05:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jun 2022 19:04:55 +0300
Message-Id: <20220617160510.2082-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
References: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/16] drm/i915: Relocate
 intel_crtc_dotclock()
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

intel_crtc_dotclock() is a bit misplaced. In lieu of a better
place let's just move it next to its friends in intel_display.c.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 22 --------------------
 drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++++++++++++
 2 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 272e1bf6006b..51bf26dcb209 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -323,28 +323,6 @@ static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
 	}
 }
 
-int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config)
-{
-	int dotclock;
-
-	if (intel_crtc_has_dp_encoder(pipe_config))
-		dotclock = intel_dotclock_calculate(pipe_config->port_clock,
-						    &pipe_config->dp_m_n);
-	else if (pipe_config->has_hdmi_sink && pipe_config->pipe_bpp > 24)
-		dotclock = pipe_config->port_clock * 24 / pipe_config->pipe_bpp;
-	else
-		dotclock = pipe_config->port_clock;
-
-	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
-	    !intel_crtc_has_dp_encoder(pipe_config))
-		dotclock *= 2;
-
-	if (pipe_config->pixel_multiplier)
-		dotclock /= pipe_config->pixel_multiplier;
-
-	return dotclock;
-}
-
 static void ddi_dotclock_get(struct intel_crtc_state *pipe_config)
 {
 	/* CRT dotclock is determined via other means */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 90bd26431e31..b24784c4522d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4569,6 +4569,28 @@ int intel_dotclock_calculate(int link_freq,
 	return div_u64(mul_u32_u32(m_n->link_m, link_freq), m_n->link_n);
 }
 
+int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config)
+{
+	int dotclock;
+
+	if (intel_crtc_has_dp_encoder(pipe_config))
+		dotclock = intel_dotclock_calculate(pipe_config->port_clock,
+						    &pipe_config->dp_m_n);
+	else if (pipe_config->has_hdmi_sink && pipe_config->pipe_bpp > 24)
+		dotclock = pipe_config->port_clock * 24 / pipe_config->pipe_bpp;
+	else
+		dotclock = pipe_config->port_clock;
+
+	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
+	    !intel_crtc_has_dp_encoder(pipe_config))
+		dotclock *= 2;
+
+	if (pipe_config->pixel_multiplier)
+		dotclock /= pipe_config->pixel_multiplier;
+
+	return dotclock;
+}
+
 /* Returns the currently programmed mode of the given encoder. */
 struct drm_display_mode *
 intel_encoder_current_mode(struct intel_encoder *encoder)
-- 
2.35.1

