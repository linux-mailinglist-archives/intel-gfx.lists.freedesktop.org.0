Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5615EEEA6
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 09:16:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC44810E9A1;
	Thu, 29 Sep 2022 07:15:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2551310E989
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 07:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664435740; x=1695971740;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=j1Z3N8lIZK2sAfIqotvE6ATJO38jEjWVkqW1nYxICg8=;
 b=krqiQ9e+QUV0R58n4Nzg+C3sBSLQFNAaD0x8YSSk0/pZN2v/WftkChyR
 AodbXY9A+g4daZ1ARz9lH+hM1Qr09Lix4iePBwAoRs4A3szIAI4wpHdGI
 BAbYPC9gJAb1E7ffGZt1mp8FGLjWyHLNJpbUsod1k02hnVhNWKOz7BG4Y
 tKdU5EwJu4DoRgSZvEgWGo8HBhRpee/feyaxue7B4T3/GHcVVs6/lyx0f
 Ptss1P+qOnNfgDEUipj6vGVBw/ijDO8wvq75G8ARQxrwJO7AxQ+666c7B
 Ww+cm81icJIPhQ3zd3VFSPJVd+pTnlfANxPFEcocTc/DBWyX94ASnKZZU w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="288979116"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="288979116"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 00:15:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="655441221"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="655441221"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 29 Sep 2022 00:15:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Sep 2022 10:15:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 10:15:16 +0300
Message-Id: <20220929071521.26612-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/10] drm/i915: Change glk_load_degamma_lut()
 calling convention
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

Make glk_load_degamma_lut() more like most everyone else and
pass in the LUT explicitly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 96687ec30b19..0c73b2ba1283 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -826,13 +826,14 @@ static int glk_degamma_lut_size(struct drm_i915_private *i915)
 		return 35;
 }
 
-static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state)
+static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
+				 const struct drm_property_blob *blob)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	const struct drm_color_lut *lut = blob->data;
+	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
-	int i, lut_size = INTEL_INFO(dev_priv)->display.color.degamma_lut_size;
-	const struct drm_color_lut *lut = crtc_state->hw.degamma_lut->data;
 
 	/*
 	 * When setting the auto-increment bit, the hardware seems to
@@ -899,6 +900,7 @@ static void glk_load_degamma_lut_linear(const struct intel_crtc_state *crtc_stat
 
 static void glk_load_luts(const struct intel_crtc_state *crtc_state)
 {
+	const struct drm_property_blob *degamma_lut = crtc_state->hw.degamma_lut;
 	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
@@ -910,8 +912,8 @@ static void glk_load_luts(const struct intel_crtc_state *crtc_state)
 	 * the degama LUT so that we don't have to reload
 	 * it every time the pipe CSC is being enabled.
 	 */
-	if (crtc_state->hw.degamma_lut)
-		glk_load_degamma_lut(crtc_state);
+	if (degamma_lut)
+		glk_load_degamma_lut(crtc_state, degamma_lut);
 	else
 		glk_load_degamma_lut_linear(crtc_state);
 
@@ -1043,11 +1045,12 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 
 static void icl_load_luts(const struct intel_crtc_state *crtc_state)
 {
+	const struct drm_property_blob *degamma_lut = crtc_state->hw.degamma_lut;
 	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	if (crtc_state->hw.degamma_lut)
-		glk_load_degamma_lut(crtc_state);
+	if (degamma_lut)
+		glk_load_degamma_lut(crtc_state, degamma_lut);
 
 	switch (crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) {
 	case GAMMA_MODE_MODE_8BIT:
-- 
2.35.1

