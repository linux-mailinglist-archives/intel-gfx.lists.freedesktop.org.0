Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EE7A56FF2
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 19:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E633A10EC23;
	Fri,  7 Mar 2025 18:02:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ApcWmOmz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 695EF10EC35;
 Fri,  7 Mar 2025 18:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741370546; x=1772906546;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sV8qyQSu2/fxCcZqcqVT2WC2zo+v0I5VY5HraUD7gPQ=;
 b=ApcWmOmzI34PPHWaD9gL/ZDwOhP69gZKHRXunhHjY/7KkwxbnxY+Cxdz
 adKMVEI1d/2mkzReh2xQwR8UIWsPnNwUhRQ2u26ASCO36s66/Xt/cbWb9
 LpBn1MCCq7ZGxM4y1ANnLdlrMjBRwVq/rKYEHMfTqKZ0nb2V37c4CtxBS
 epTOV5fP2PU10bOTC1dHQ57efZMihbtganrGXO/CXsy6bOtLJpTAOU9Ka
 hUJnsmct+HPFi104Tbo3S2RLAYz+1OOpnPgt7gth3kM0JIsuHWG2jHK06
 8ufdSpx9SwLNJycRLNA/PWjXTzPksePFDrBrPkAjxBC96OavwXRTfVblc Q==;
X-CSE-ConnectionGUID: wibYLW20Qza2/OZoezY6nQ==
X-CSE-MsgGUID: EQGPnT0mQqGaXpy7Wj+OUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="52637187"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="52637187"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 10:02:23 -0800
X-CSE-ConnectionGUID: G/J5gXbaTZW/7/8ILtB0ew==
X-CSE-MsgGUID: Q1Moo0h5TMmJDRXZQaLtOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124621212"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Mar 2025 10:02:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Mar 2025 20:02:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 11/14] drm/i915: Make intel_bw_check_sagv_mask() internal to
 intel_bw.c
Date: Fri,  7 Mar 2025 20:01:36 +0200
Message-ID: <20250307180139.15744-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
References: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
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

The only thing between the current intel_bw_check_sagv_mask() call
site and intel_bw_atomic_check() is skl_wm_add_affected_planes()
which no longer depends on the sagv mask, so we can make life
a lot less confusing by calling intel_bw_check_sagv_mask() from
intel_bw_atomic_check() instead.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c      | 9 ++++++++-
 drivers/gpu/drm/i915/display/intel_bw.h      | 1 -
 drivers/gpu/drm/i915/display/skl_watermark.c | 5 -----
 3 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 33ec9f574716..a39b75640b03 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1408,7 +1408,7 @@ int intel_bw_modeset_checks(struct intel_atomic_state *state)
 	return 0;
 }
 
-int intel_bw_check_sagv_mask(struct intel_atomic_state *state)
+static int intel_bw_check_sagv_mask(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(display->drm);
@@ -1456,6 +1456,13 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	const struct intel_bw_state *old_bw_state;
 	int ret;
 
+	if (DISPLAY_VER(i915) < 9)
+		return 0;
+
+	ret = intel_bw_check_sagv_mask(state);
+	if (ret)
+		return ret;
+
 	/* FIXME earlier gens need some checks too */
 	if (DISPLAY_VER(i915) < 11)
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index e5a0ff630438..0efc9858faa1 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -68,7 +68,6 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state);
 void intel_bw_init_hw(struct drm_i915_private *dev_priv);
 int intel_bw_init(struct drm_i915_private *dev_priv);
 int intel_bw_modeset_checks(struct intel_atomic_state *state);
-int intel_bw_check_sagv_mask(struct intel_atomic_state *state);
 int intel_bw_atomic_check(struct intel_atomic_state *state);
 int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				  u32 points_mask);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 80ee9f8ae230..019eda6e3708 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -451,7 +451,6 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	int ret;
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *new_crtc_state;
 	int i;
@@ -482,10 +481,6 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 			intel_crtc_can_enable_sagv(new_crtc_state);
 	}
 
-	ret = intel_bw_check_sagv_mask(state);
-	if (ret)
-		return ret;
-
 	return 0;
 }
 
-- 
2.45.3

