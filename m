Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4267E55230D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 19:52:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 784B310ED7C;
	Mon, 20 Jun 2022 17:52:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0936710ED76
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 17:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655747537; x=1687283537;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XW06RL7dWPH5HDK8HFbilgaQxOEBBa/FrPnNaJaML4U=;
 b=SLkZGwZzTdh890WFYNpTN92pRFp9cLRUFJxxuyu+k4YYc2jzI/HbcPqn
 BuvPNI1gO6MSQp/2np8izVQboBNFgQpdJJjzcKadawAOT+NdKgVKHHify
 bylIkpC4JurXdN0QgK0y+Pj9I/pP0s9vP7tX2mHCVo7AThZfYE5DORv6F
 m2fDLHwvQPZZxW0PdxZaGBGLZsToeb9afm9Wg5a1PqFMos02/5FHErN4E
 E11LvfcRG9UlpZemNvds8nsPlYBJOtNItS6hCtnlP7uRoZnrX9EFGS3kl
 084FKay9SJtUrmajR52DaHCCIxMhR438lAjk3ECkMfgBWOHIJFuigJ4do w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="268669288"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="268669288"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 10:52:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="591276057"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga007.fm.intel.com with SMTP; 20 Jun 2022 10:52:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jun 2022 20:52:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 20:51:54 +0300
Message-Id: <20220620175210.28788-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
References: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 01/17] drm/i915: Relocate
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_crtc_dotclock() is a bit misplaced. In lieu of a better
place let's just move it next to its friends in intel_display.c.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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
index 903226e2a626..6b549aadca13 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4483,6 +4483,28 @@ int intel_dotclock_calculate(int link_freq,
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

