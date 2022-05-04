Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA61519F9B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 14:33:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED02910EA05;
	Wed,  4 May 2022 12:33:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C57E910EA05
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651667633; x=1683203633;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=bb9cJJHr7dPo2GwfBsi7qrNJQSOEBS9gDku5R2YN8Xo=;
 b=BpV8NtT7RKc+p9JGsWN8KEBGEk2IXl3FZP4mMOLvF1nTIK0p7FETg5ox
 A48i0nXoA4xeVRmYG7tZKgLWDYdm//5jx7iVTcbvIUqLZHJhHuFW6cpaG
 lIDRt2uckOK87p5qH3X3dIIu1X8NGWFDS+WfnoE5aSK7RrDVWwB+wiR6S
 lD62Y6G0nBYmbSQfdQU/FyCdX5Fe3sS94nYOdEI44zdJUDDwwjeNwO99b
 JiT081yOqb3JmzsrQRCG7ZS+Rhwm4w/YZh/XVMBuqPfmypYPTFMus16xt
 Xvs3rsyRScUCrzw5DhIyMzltMa1NNfbtiYUFhWSTO0l1aanjRh5iAJ4Gs g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="292941806"
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="292941806"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 05:33:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="548708725"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga002.jf.intel.com with SMTP; 04 May 2022 05:33:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 May 2022 15:33:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 15:33:50 +0300
Message-Id: <20220504123350.13235-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-11-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-11-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/26] drm/i915: Extract intel_crtc_dotclock()
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

Extract intel_crtc_dotclock() from ddi_dotclock_get(). We'll reuse
this during state computation in order to determine the actual final
dotclcok after the DPLL computation has been done (which may not give
us the exact same port_clock that we fed in).

v2: Add the prototype

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 18 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 2 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 9e6fa59eabba..0cf2d4fba6a8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -322,14 +322,10 @@ static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
 	}
 }
 
-static void ddi_dotclock_get(struct intel_crtc_state *pipe_config)
+int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config)
 {
 	int dotclock;
 
-	/* CRT dotclock is determined via other means */
-	if (pipe_config->has_pch_encoder)
-		return;
-
 	if (intel_crtc_has_dp_encoder(pipe_config))
 		dotclock = intel_dotclock_calculate(pipe_config->port_clock,
 						    &pipe_config->dp_m_n);
@@ -345,7 +341,17 @@ static void ddi_dotclock_get(struct intel_crtc_state *pipe_config)
 	if (pipe_config->pixel_multiplier)
 		dotclock /= pipe_config->pixel_multiplier;
 
-	pipe_config->hw.adjusted_mode.crtc_clock = dotclock;
+	return dotclock;
+}
+
+static void ddi_dotclock_get(struct intel_crtc_state *pipe_config)
+{
+	/* CRT dotclock is determined via other means */
+	if (pipe_config->has_pch_encoder)
+		return;
+
+	pipe_config->hw.adjusted_mode.crtc_clock =
+		intel_crtc_dotclock(pipe_config);
 }
 
 void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 187910d94ec6..7af6b5a413dc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -635,6 +635,7 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 void i9xx_crtc_clock_get(struct intel_crtc *crtc,
 			 struct intel_crtc_state *pipe_config);
 int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
+int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config);
 enum intel_display_power_domain intel_port_to_power_domain(struct intel_digital_port *dig_port);
 enum intel_display_power_domain
 intel_aux_power_domain(struct intel_digital_port *dig_port);
-- 
2.35.1

