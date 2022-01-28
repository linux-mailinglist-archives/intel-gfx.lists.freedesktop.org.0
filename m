Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 112D449F774
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 11:38:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2490410EF5B;
	Fri, 28 Jan 2022 10:38:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 663A110EF40
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 10:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643366319; x=1674902319;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+vq/9ht3jFeAS4hJmKdeqfSBtdCwg4UNKBdV3ROfHjA=;
 b=Y4gyPnfQUrme4Cma2ylg7n6tU70gYj7U3qRllzDgY3xfVa0vX+GOsy7Y
 hPxu48DOEaQK7ddL+9WQo6dmPvWUeNcOgl9GFDGQe94MGwZW9t71mIDdD
 WX/NzB25T6Lh0E3N2uu2EvVNpPN75+CF5FC4X/mq04Htl6MDfb4MfOuqY
 T1kqT/uca/jrSb8jetpHzoLnNcyLLDN5GVeKjCgg/c3mNq9mP+rN/5Ud2
 AJDUsZT1dGBttdT653yPpcGAfi1cK0TfOZjOJlbywrmvCg5a4Jg4yuikM
 MyX1TeOdz24JUwGJ1O+B2CvftXgDOkd1oBpT5edu3hD0qM8xhISL4lZGs g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="333449519"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="333449519"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 02:38:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="625596111"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga002.fm.intel.com with SMTP; 28 Jan 2022 02:38:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Jan 2022 12:38:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 12:37:53 +0200
Message-Id: <20220128103757.22461-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/17] drm/i915: Clear DP M2/N2 when not
 doing DRRS
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

Make life simpler by always programming DP M2/N2 with a consistent
value. This will lets use do state readout+chec unconditionally.

I was first going to just set M2/N2=M1/N1 but then it occurred
to me that it might interfere with fastboot on account of BIOS
likely leaving the registers zeroed. So let's zero out the values
instead (except TU where a zero register value actually means '1').
Still not sure that's the best approach but lets go with it for
now.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 15 +++++++++++----
 drivers/gpu/drm/i915/display/intel_display.h |  3 +++
 drivers/gpu/drm/i915/display/intel_drrs.c    |  6 +++++-
 3 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 67c7bbbe5c88..e2b107dd246a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3132,6 +3132,13 @@ static void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
 	}
 }
 
+void intel_zero_m_n(struct intel_link_m_n *m_n)
+{
+	/* corresponds to 0 register value */
+	memset(m_n, 0, sizeof(*m_n));
+	m_n->tu = 1;
+}
+
 void intel_set_m_n(struct drm_i915_private *i915,
 		   const struct intel_link_m_n *m_n,
 		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
@@ -3143,8 +3150,8 @@ void intel_set_m_n(struct drm_i915_private *i915,
 	intel_de_write(i915, link_n_reg, m_n->link_n);
 }
 
-static bool transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
-				 enum transcoder transcoder)
+bool intel_cpu_transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
+				    enum transcoder transcoder)
 {
 	if (IS_HASWELL(dev_priv))
 		return transcoder == TRANSCODER_EDP;
@@ -3175,7 +3182,7 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	if (!transcoder_has_m2_n2(dev_priv, transcoder))
+	if (!intel_cpu_transcoder_has_m2_n2(dev_priv, transcoder))
 		return;
 
 	intel_set_m_n(dev_priv, m_n,
@@ -3873,7 +3880,7 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	if (!transcoder_has_m2_n2(dev_priv, transcoder))
+	if (!intel_cpu_transcoder_has_m2_n2(dev_priv, transcoder))
 		return;
 
 	intel_get_m_n(dev_priv, m_n,
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index c104e578bf5d..457738aeee3e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -606,6 +606,7 @@ bool intel_fuzzy_clock_check(int clock1, int clock2);
 
 void intel_display_prepare_reset(struct drm_i915_private *dev_priv);
 void intel_display_finish_reset(struct drm_i915_private *dev_priv);
+void intel_zero_m_n(struct intel_link_m_n *m_n);
 void intel_set_m_n(struct drm_i915_private *i915,
 		   const struct intel_link_m_n *m_n,
 		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
@@ -614,6 +615,8 @@ void intel_get_m_n(struct drm_i915_private *i915,
 		   struct intel_link_m_n *m_n,
 		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
 		   i915_reg_t link_m_reg, i915_reg_t link_n_reg);
+bool intel_cpu_transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
+				    enum transcoder transcoder);
 void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
 				    enum transcoder cpu_transcoder,
 				    const struct intel_link_m_n *m_n);
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 3515f1700838..fa715b8ea310 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -74,10 +74,14 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
 			  int output_bpp, bool constant_n)
 {
 	struct intel_connector *connector = intel_dp->attached_connector;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int pixel_clock;
 
-	if (!can_enable_drrs(connector, pipe_config))
+	if (!can_enable_drrs(connector, pipe_config)) {
+		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
+			intel_zero_m_n(&pipe_config->dp_m2_n2);
 		return;
+	}
 
 	pipe_config->has_drrs = true;
 
-- 
2.34.1

