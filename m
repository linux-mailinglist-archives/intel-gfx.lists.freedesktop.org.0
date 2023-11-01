Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 156637DE073
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 12:42:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEB3F10E6D0;
	Wed,  1 Nov 2023 11:42:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CD1810E6CE
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 11:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698838941; x=1730374941;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8jKE4SEAeA6Tt/r0D+aFOnLwDL0l3SgGrCZbYapPya0=;
 b=I4WWqA9czavW81LmnpsSeH30ymi2A9XgSjP0MpEvDmZ1SRWRLXXxscmR
 rYBS/AaR8QKHgrlHLoeDhxG3hmHCTKkvOW5h5PYTvbFDbDs2vUzhKU/Xv
 BdbyxUroifv0yXao0mC1xex9iLHSzaBXtG3n68IzqOD1rvjmZv8hocuss
 R7PWRZOCclf/7XFctIBi/HI2zZqOnpJNMottVylxzwgWxRh15OLft5yX7
 x7AL2qMke/F6ReYwTWUjCTdcpCefuGfawguILTh4JBaNy+Pk4Pw9wKSdq
 W3zS2Onx8HWoB8TOfMycUQ2HDShW5g2Nr6WKGFrGOnNrxwkToVyVov+WD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="392338774"
X-IronPort-AV: E=Sophos;i="6.03,268,1694761200"; d="scan'208";a="392338774"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 04:42:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="754450269"
X-IronPort-AV: E=Sophos;i="6.03,268,1694761200"; d="scan'208";a="754450269"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 01 Nov 2023 04:42:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Nov 2023 13:42:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Nov 2023 13:42:09 +0200
Message-ID: <20231101114212.9345-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
References: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Stop using a 'reg' variable
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

'reg' is a very non-descriptive name. Just get rid of the silly
local variable and spell out the full register name always.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1abb81981ef5..751c36679b01 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -397,7 +397,6 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 	enum pipe pipe = crtc->pipe;
-	i915_reg_t reg;
 	u32 val;
 
 	drm_dbg_kms(&dev_priv->drm, "enabling pipe %c\n", pipe_name(pipe));
@@ -430,16 +429,16 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 		intel_de_rmw(dev_priv, PIPE_ARB_CTL(pipe),
 			     0, PIPE_ARB_USE_PROG_SLOTS);
 
-	reg = TRANSCONF(cpu_transcoder);
-	val = intel_de_read(dev_priv, reg);
+	val = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
 	if (val & TRANSCONF_ENABLE) {
 		/* we keep both pipes enabled on 830 */
 		drm_WARN_ON(&dev_priv->drm, !IS_I830(dev_priv));
 		return;
 	}
 
-	intel_de_write(dev_priv, reg, val | TRANSCONF_ENABLE);
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder),
+		       val | TRANSCONF_ENABLE);
+	intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
 
 	/*
 	 * Until the pipe starts PIPEDSL reads will return a stale value,
@@ -458,7 +457,6 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 	enum pipe pipe = crtc->pipe;
-	i915_reg_t reg;
 	u32 val;
 
 	drm_dbg_kms(&dev_priv->drm, "disabling pipe %c\n", pipe_name(pipe));
@@ -469,8 +467,7 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 	 */
 	assert_planes_disabled(crtc);
 
-	reg = TRANSCONF(cpu_transcoder);
-	val = intel_de_read(dev_priv, reg);
+	val = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
 	if ((val & TRANSCONF_ENABLE) == 0)
 		return;
 
@@ -485,7 +482,7 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 	if (!IS_I830(dev_priv))
 		val &= ~TRANSCONF_ENABLE;
 
-	intel_de_write(dev_priv, reg, val);
+	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), val);
 
 	if (DISPLAY_VER(dev_priv) >= 12)
 		intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
-- 
2.41.0

