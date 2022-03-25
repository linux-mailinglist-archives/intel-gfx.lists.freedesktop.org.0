Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4756F4E738D
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 13:32:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 940F710E70A;
	Fri, 25 Mar 2022 12:32:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05DD710E677
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 12:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648211552; x=1679747552;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=sV7yFZEfamID/aYEXj3b6JO1bpDd5Amj4elhIQ82bHo=;
 b=lsHzWjBWi3HcSnmPw20WGLqoxDEvJ1lm6Yw1ni1ETfWSURzLHmLRwXPj
 0P0Lmxu+x/vnjUA8xssz5NMZaltLHT4M9F7C7lY5hrC9Lh7sfcx+pvYwk
 DrePfdko17xlLvZMWB/j4vebdwLzi2qiX9G4pOKZtf1v7hDgrD1oO7U91
 2SQoqDIkGZa5SFuR2LLTcKLgdQDwtARRlQrtfrm0AqFpF782JWqfhGECe
 s/62Cu8daMyDvKjipH5MhHk0SomApJrBv76CMqWM8sMuFErNV5VDCnMFS
 mjvaQKzXodLoT4xTySeeuBSR3Olom815x+msM+MM3rDkDB6j6qRGgW60R g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="319330551"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="319330551"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 05:32:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="693667146"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga001.fm.intel.com with SMTP; 25 Mar 2022 05:32:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Mar 2022 14:32:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Mar 2022 14:32:00 +0200
Message-Id: <20220325123205.22140-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/13] drm/i915: Split out
 dg2_crtc_compute_clock()
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

DG2 doesn't currently used the shared_dpll stuff so let's just
split it out from hsw_crtc_compute_clock() entirely.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 7960f1d52eaa..bc59efe18e89 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -938,9 +938,6 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 		intel_get_crtc_new_encoder(state, crtc_state);
 	int ret;
 
-	if (IS_DG2(dev_priv))
-		return intel_mpllb_calc_state(crtc_state, encoder);
-
 	if (DISPLAY_VER(dev_priv) < 11 &&
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
@@ -956,6 +953,17 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
+static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_encoder *encoder =
+		intel_get_crtc_new_encoder(state, crtc_state);
+
+	return intel_mpllb_calc_state(crtc_state, encoder);
+}
+
 static bool ilk_needs_fb_cb_tune(const struct dpll *dpll, int factor)
 {
 	return dpll->m < factor * dpll->n;
@@ -1362,6 +1370,10 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
+static const struct intel_dpll_funcs dg2_dpll_funcs = {
+	.crtc_compute_clock = dg2_crtc_compute_clock,
+};
+
 static const struct intel_dpll_funcs hsw_dpll_funcs = {
 	.crtc_compute_clock = hsw_crtc_compute_clock,
 };
@@ -1418,7 +1430,9 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 void
 intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
 {
-	if (DISPLAY_VER(dev_priv) >= 9 || HAS_DDI(dev_priv))
+	if (IS_DG2(dev_priv))
+		dev_priv->dpll_funcs = &dg2_dpll_funcs;
+	else if (DISPLAY_VER(dev_priv) >= 9 || HAS_DDI(dev_priv))
 		dev_priv->dpll_funcs = &hsw_dpll_funcs;
 	else if (HAS_PCH_SPLIT(dev_priv))
 		dev_priv->dpll_funcs = &ilk_dpll_funcs;
-- 
2.34.1

