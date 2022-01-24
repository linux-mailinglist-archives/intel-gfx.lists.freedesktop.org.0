Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E54D498CAC
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 20:27:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34D4510EA50;
	Mon, 24 Jan 2022 19:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0528F10EA50
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 19:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643052430; x=1674588430;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=p4KRSAPFvQK6TJWmf2H4reXNsPzUeOmK9JEcAcdI1r0=;
 b=iKLcHr23hnKuY2E+dxgFqAlOBsS8DXzbx6kamupg2MwP/LwxpXDyF0AE
 jJuBdwmHRLPAO5/kEkn2vYxk32UiPmfFp6rZs4UxzYAkNQQ9ZEjP1PGbQ
 1DioC8PO8k7sEplsx4wsxPD54Y/iZ2OLrzLHMp5QiVPlGfJdkZwLifj/9
 LMJZIC9nph7ULTOyeuNUmIyZQA7mYP9CUoOC7z/ITU4YRrjHFl36xw1Ic
 na3i9fS6B+uXC4Z9wtRh8DuFLkeI8YGxeB5ocW+LGx9clafmFx4uqgK5J
 ivtLOF7JV0c/Dft/0D7O2TMq7T03Y5VrsxcbCScSrfWQb1VTi+3ddlFyl w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="226109167"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="226109167"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 11:26:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="520069288"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga007.jf.intel.com with SMTP; 24 Jan 2022 11:26:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jan 2022 21:26:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 21:26:37 +0200
Message-Id: <20220124192638.26262-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220124192638.26262-1-ville.syrjala@linux.intel.com>
References: <20220124192638.26262-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Extract
 hsw_configure_cpu_transcoder()
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

Pull the transcoder specific modeset steps into a single place.
With bigoiner we need to keep in mind wheher we're dealing with
the transcoder or the pipe, and a slightly higher level split makes
that easier.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 38 ++++++++++++--------
 1 file changed, 23 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c23c854f212f..d2906434ab3f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2012,6 +2012,27 @@ static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
 		intel_uncompressed_joiner_enable(crtc_state);
 }
 
+static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	intel_set_transcoder_timings(crtc_state);
+
+	if (cpu_transcoder != TRANSCODER_EDP)
+		intel_de_write(dev_priv, PIPE_MULT(cpu_transcoder),
+			       crtc_state->pixel_multiplier - 1);
+
+	if (crtc_state->has_pch_encoder)
+		intel_cpu_transcoder_set_m_n(crtc_state,
+					     &crtc_state->fdi_m_n, NULL);
+
+	hsw_set_frame_start_delay(crtc_state);
+
+	hsw_set_transconf(crtc_state);
+}
+
 static void hsw_crtc_enable(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc)
 {
@@ -2040,21 +2061,8 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
 		bdw_set_pipemisc(new_crtc_state);
 
-	if (!new_crtc_state->bigjoiner_slave && !transcoder_is_dsi(cpu_transcoder)) {
-		intel_set_transcoder_timings(new_crtc_state);
-
-		if (cpu_transcoder != TRANSCODER_EDP)
-			intel_de_write(dev_priv, PIPE_MULT(cpu_transcoder),
-				       new_crtc_state->pixel_multiplier - 1);
-
-		if (new_crtc_state->has_pch_encoder)
-			intel_cpu_transcoder_set_m_n(new_crtc_state,
-						     &new_crtc_state->fdi_m_n, NULL);
-
-		hsw_set_frame_start_delay(new_crtc_state);
-
-		hsw_set_transconf(new_crtc_state);
-	}
+	if (!new_crtc_state->bigjoiner_slave && !transcoder_is_dsi(cpu_transcoder))
+		hsw_configure_cpu_transcoder(new_crtc_state);
 
 	crtc->active = true;
 
-- 
2.34.1

