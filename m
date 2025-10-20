Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7176CBF3036
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:51:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D422B10E4B3;
	Mon, 20 Oct 2025 18:50:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T+voRzrC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D94E610E4BA;
 Mon, 20 Oct 2025 18:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986258; x=1792522258;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M+KofK3kvM837qmmo1acDhod7c6zj9mw9xHO1be2MRg=;
 b=T+voRzrCRFYK2pAGFn1pxjIePpUNRIllG0e2J6+5yC+smNOSJ/6yJcoQ
 HYsFCPd0wxB0NbCA9aO/6DDa657belPt2752+rKyhEQ4APDPZRLn2Jbej
 eyX/SuNR8wh++EVPg1pUZzmUsCyFo3y0O06qRpQrJT4uLVjS1zWKP4e+Z
 3Dzl1MEDBnR9y3Pbovgkc0rheUgSqK0bEwnRwAlgoM/K08ckrDvDN3bEZ
 IbyYlgdBoODw7ZhsFsGHwdvBQVzhnWTOBOubMRbAD5tnGXqvwhqhwMMXT
 uXwx/0Pp7CViax3dLqmIDGc7k2PLorOFMAtm56unANB3Ds7r+r0C9TWWp A==;
X-CSE-ConnectionGUID: 4CNCTef9R4aa+pkn2W4Vyg==
X-CSE-MsgGUID: Mm1ft1EtR722Y1CDrA0VdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85729728"
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="85729728"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:50:58 -0700
X-CSE-ConnectionGUID: 1Of6qES4SVe1AAkXJsGaeQ==
X-CSE-MsgGUID: mSXhPE9sSoW61cJB7A2nhg==
X-ExtLoop1: 1
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:50:56 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 04/22] drm/i915/vrr: Compute fixed refresh rate timings the
 sam way as CMRR timings
Date: Mon, 20 Oct 2025 21:50:20 +0300
Message-ID: <20251020185038.4272-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Unify the VRR timing computation stuff a bit having both the
fixed refrehs rate and CMRR cases assign the crtc_state->vrr
stuff in exactly the same way.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 92fb72b56f16..510dc199376f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -305,12 +305,10 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
 static
 void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state)
 {
-	/*
-	 * For fixed rr,  vmin = vmax = flipline.
-	 * vmin is already set to crtc_vtotal set vmax and flipline the same.
-	 */
+	/* For fixed rr,  vmin = vmax = flipline */
 	crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.crtc_vtotal;
-	crtc_state->vrr.flipline = crtc_state->hw.adjusted_mode.crtc_vtotal;
+	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
+	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
 }
 
 static
-- 
2.49.1

