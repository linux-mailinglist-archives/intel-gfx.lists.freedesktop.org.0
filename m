Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 595D5A5A30E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 19:35:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EE6910E4BE;
	Mon, 10 Mar 2025 18:35:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IuuWYE64";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99AE610E4BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Mar 2025 18:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741631735; x=1773167735;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=43ET/2eutjsuAQmH32u7KwUR8pYFplWcSOPpMiLp/dg=;
 b=IuuWYE64pnIq4DBp+07ECmS4yHJkPNRyQS0q0w/ChHF1CK5CCdCxa4kt
 tBx0xmO3npekYWQ55Nwr8HxOoB/6BB2PdMZVp3U1ZLc1QZwAObbgL/P9d
 Vm9LEsiwVQFl2/FjkbzdGUG9bKFdEkCQUGk6PtBoPzghaIJ5kOdmIvatV
 DVWN8gUNNzPz+j/21oHVbWLD9LtP0zAXAkO7ExJIhM9mXzGA9d57bLrJD
 S63ocP0NEEHBv+UVoLAh1J7yaK7Aaj8uDfm4OLBkWbBDSShWTfZZkh8FF
 sdKnEvkR4PcOKaLqCUtuXDTTxdB+RASylq+yBCDdgCAAQnBqYGorXMDxQ Q==;
X-CSE-ConnectionGUID: fafZF5mURJK8z4yyKsCByg==
X-CSE-MsgGUID: r3DwOnhxRO+CoGVc1t9YMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42677243"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="42677243"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 11:35:35 -0700
X-CSE-ConnectionGUID: Ga4cZDuRRkqSlidyq01sRA==
X-CSE-MsgGUID: b/BHdZ7KRvOauHE0TgDe0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="125296064"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 10 Mar 2025 11:35:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Mar 2025 20:35:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915: Move intel_disable_shared_dpll() into
 ilk_pch_post_disable()
Date: Mon, 10 Mar 2025 20:35:28 +0200
Message-ID: <20250310183528.3203-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250310183528.3203-1-ville.syrjala@linux.intel.com>
References: <20250310183528.3203-1-ville.syrjala@linux.intel.com>
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

On ILK-IVB only PCH outputs use shared dplls. Move the relevant
intel_disable_shared_dpll() into ilk_pch_post_disable() to make
that clear (and if we extend the dpll mgr to cover all plls we need
different enable/disable points anyway for the PCH vs. CPU eDP cases).
The intel_enable_shared_dpll() counterpart was already in
ilk_pch_enable() anyway, so this is the more symmetric place for the
disable as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c     | 2 --
 drivers/gpu/drm/i915/display/intel_pch_display.c | 4 ++++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0e0e5285ad97..f21c52a7c10a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1770,12 +1770,10 @@ static void ilk_crtc_disable(struct intel_atomic_state *state,
 	if (old_crtc_state->has_pch_encoder)
 		ilk_pch_post_disable(state, crtc);
 
 	intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
 	intel_set_pch_fifo_underrun_reporting(display, pipe, true);
-
-	intel_disable_shared_dpll(old_crtc_state);
 }
 
 static void hsw_crtc_disable(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 99f6d6f53fa7..bde69b361d6e 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -458,10 +458,12 @@ void ilk_pch_disable(struct intel_atomic_state *state,
 
 void ilk_pch_post_disable(struct intel_atomic_state *state,
 			  struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
 	ilk_disable_pch_transcoder(crtc);
 
 	if (HAS_PCH_CPT(dev_priv)) {
@@ -474,10 +476,12 @@ void ilk_pch_post_disable(struct intel_atomic_state *state,
 		intel_de_rmw(dev_priv, PCH_DPLL_SEL,
 			     TRANS_DPLL_ENABLE(pipe) | TRANS_DPLLB_SEL(pipe), 0);
 	}
 
 	ilk_fdi_pll_disable(crtc);
+
+	intel_disable_shared_dpll(old_crtc_state);
 }
 
 static void ilk_pch_clock_get(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-- 
2.45.3

