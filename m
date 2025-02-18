Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D445A3AAAC
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:19:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 930B910E76A;
	Tue, 18 Feb 2025 21:19:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TioN+sjt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCE6810E775
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913582; x=1771449582;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=u1IF2/CoN6t/m0RCUwONv72UWnPqSnVGMWM8ox3sywU=;
 b=TioN+sjtUYx81IuP+ijAu5llptrW2MDQ5Ijtkc1KToSb8j4Ej7tsbJVy
 E/vzbUpkkVEWPaLUgpsAOcbLIIvyiMO5BcGGQAcG2Yh2uJsfpEVhGleua
 AUuqqIpt0FGFpXpfqVEAG3qs+e6Pd+TwNqWCZ6UrSd7lenWtgDNtluKaa
 ozGBMEjde6o4nqkaOwe5c5Bciq/Q1QCh8liasyB4XmqJ3WNHUzw47zFQW
 TFxkS5H9u2ZiVkAo7ZfmqH7A0SjtLEf219o/qKap4BJttIarD+d9PCTvI
 emdRreOFrxpkYj99XPNb/ZfSLa/hdrX+d3umFrd9tlKvzjqpufNl6V3JE g==;
X-CSE-ConnectionGUID: 4N8fEGWhRLezeMS5YPHyXA==
X-CSE-MsgGUID: PStSKfa3RxC1XSR9AX8A3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862268"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862268"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:19:35 -0800
X-CSE-ConnectionGUID: 1l739JYSTDepqYo4OQ2LPg==
X-CSE-MsgGUID: 2d3xCGP8RPK/pbZ78cNnVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693389"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:19:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:19:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/19] drm/i915: Don't clobber crtc_state->cpu_transcoder for
 inactive crtcs
Date: Tue, 18 Feb 2025 23:18:57 +0200
Message-ID: <20250218211913.27867-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
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

Inactive crtcs are supposed to have their crtc_state completely
cleared. Currently we are clobbering crtc_state->cpu_transcoder
before determining whether it's actually enabled or not. Don't
do that.

I want to rework the inherited flag handling for inactive crtcs
a bit, and having a bogus cpu_transcoder in the crtc state can
then cause confusing fastset mismatches even when the crtc never
changes state during the commit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++++-----------
 1 file changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8ee8c1df075a..75b184c933e7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3109,25 +3109,24 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum intel_display_power_domain power_domain;
+	enum transcoder cpu_transcoder = (enum transcoder)crtc->pipe;
 	intel_wakeref_t wakeref;
+	bool ret = false;
 	u32 tmp;
-	bool ret;
 
 	power_domain = POWER_DOMAIN_PIPE(crtc->pipe);
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
 
+	tmp = intel_de_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
+	if (!(tmp & TRANSCONF_ENABLE))
+		goto out;
+
+	pipe_config->cpu_transcoder = cpu_transcoder;
+
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->sink_format = pipe_config->output_format;
-	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
-
-	ret = false;
-
-	tmp = intel_de_read(dev_priv,
-			    TRANSCONF(dev_priv, pipe_config->cpu_transcoder));
-	if (!(tmp & TRANSCONF_ENABLE))
-		goto out;
 
 	if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
 	    IS_CHERRYVIEW(dev_priv)) {
@@ -3492,23 +3491,22 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum intel_display_power_domain power_domain;
+	enum transcoder cpu_transcoder = (enum transcoder)crtc->pipe;
 	intel_wakeref_t wakeref;
+	bool ret = false;
 	u32 tmp;
-	bool ret;
 
 	power_domain = POWER_DOMAIN_PIPE(crtc->pipe);
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
 
-	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
-
-	ret = false;
-	tmp = intel_de_read(dev_priv,
-			    TRANSCONF(dev_priv, pipe_config->cpu_transcoder));
+	tmp = intel_de_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
 	if (!(tmp & TRANSCONF_ENABLE))
 		goto out;
 
+	pipe_config->cpu_transcoder = cpu_transcoder;
+
 	switch (tmp & TRANSCONF_BPC_MASK) {
 	case TRANSCONF_BPC_6:
 		pipe_config->pipe_bpp = 18;
-- 
2.45.3

