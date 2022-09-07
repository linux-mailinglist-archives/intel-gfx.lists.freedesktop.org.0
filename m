Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EEA5B0004
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 11:11:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2186510E490;
	Wed,  7 Sep 2022 09:11:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4B7C10E46D
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 09:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662541864; x=1694077864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+XDDDqXqgi6V8MXjOQwzGdsgbSYfzq1WoJfrD6Pu9oE=;
 b=BO4sq474pR4HYKU56/uyqrIjsnQvGkuPBRYEQMTNXtltctRpNyQO0WVF
 qnKgkuDHUoV7eMZzAPoGZg/tvSs7pfYITl/+qEfVTY2CK3VyjI0OXtUKD
 XbKR87VC5H1sYNpXxqnhTh6GBeGo3E2P6W9gWrvbSXx8YBUUp6KTi+ONO
 zzfNfnXD+WY1YD3G+yfG/rpoqS/RbYY0ld7gk1qgMW/IxgtNY95n3bf0u
 DuZlm3iusHKML/XDBxZwEQ4ZBoLrfxKPrQOt7YO6tnouWJEOiA0/LYtRk
 2qdK+iIcXeBcCkBbTdb+oasCuMDSK2G0eQcT+EFw4zimqhPncfvoa+9T2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="297607213"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="297607213"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 02:11:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="647561640"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 07 Sep 2022 02:11:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Sep 2022 12:11:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 12:10:41 +0300
Message-Id: <20220907091057.11572-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
References: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 01/17] drm/i915: Relocate
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
index f5416433826d..643832d55c28 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -324,28 +324,6 @@ static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
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
index a2ba7359ce8c..71b8b21b1345 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4493,6 +4493,28 @@ int intel_dotclock_calculate(int link_freq,
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

