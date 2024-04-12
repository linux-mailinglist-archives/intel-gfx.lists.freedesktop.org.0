Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5168A35A2
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:27:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 084B010F7A7;
	Fri, 12 Apr 2024 18:27:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YaciWzKB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE63310F7A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946444; x=1744482444;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JC0lu0qz1AldA89ZRzXR1MdRXDkkcFUrCxD2+R5LvVw=;
 b=YaciWzKBVur51k1yZcCxL7EZLClsYLNP6supWq/PlVFP17ineFM/BTmb
 hWMP2oixo4CMdrsi4zZg7tzHYEVBAMsQju/GWDCnlqFBbyZKldYivwZIc
 UBIx7xPq7nQ/BviO4tg/RnhDAWI18hxmw/T4ZC/ntSLwpUMmnTNrxlhzY
 2Ve4nuPLk3ImgCVR60uDKQ0EmVI9Z551Ykro3lLtPpktPlBeVesRvy4B2
 fmTuUH/bjcJMSp6XXxxOORdXZPe8CWs3g+mOw/j7w8R7DNl3fZxYd/NMU
 AZrUL07RmXIZp+ShjR97m9Vw/qm7Jbyauc0baTFqPgYJF9ChnmwpWfh3I w==;
X-CSE-ConnectionGUID: KdPpscZvTIKUkW/QmiNOAA==
X-CSE-MsgGUID: TH5I7l3JTHGmwDtijQRjug==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560526"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560526"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:24 -0700
X-CSE-ConnectionGUID: ejkk48SUQLuOI4Mobl353A==
X-CSE-MsgGUID: f+OuOngeRPehAB9zm9mo3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394578"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/18] drm/i915: Extract ilk_dpll_compute_fp()
Date: Fri, 12 Apr 2024 21:26:51 +0300
Message-ID: <20240412182703.19916-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
References: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
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

Let's not repeat ourselves so much and pull the entire
PCH DPLL FP register value calculation into its own
function.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 24 ++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 3278ca7a3be0..aa46e9e80786 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1213,23 +1213,25 @@ static bool ilk_needs_fb_cb_tune(const struct dpll *dpll, int factor)
 	return dpll->m < factor * dpll->n;
 }
 
+static u32 ilk_dpll_compute_fp(const struct dpll *clock, int factor)
+{
+	u32 fp;
+
+	fp = i9xx_dpll_compute_fp(clock);
+	if (ilk_needs_fb_cb_tune(clock, factor))
+		fp |= FP_CB_TUNE;
+
+	return fp;
+}
+
 static void ilk_update_pll_dividers(struct intel_crtc_state *crtc_state,
 				    const struct dpll *clock,
 				    const struct dpll *reduced_clock)
 {
 	int factor = ilk_fb_cb_factor(crtc_state);
-	u32 fp, fp2;
 
-	fp = i9xx_dpll_compute_fp(clock);
-	if (ilk_needs_fb_cb_tune(clock, factor))
-		fp |= FP_CB_TUNE;
-
-	fp2 = i9xx_dpll_compute_fp(reduced_clock);
-	if (ilk_needs_fb_cb_tune(reduced_clock, factor))
-		fp2 |= FP_CB_TUNE;
-
-	crtc_state->dpll_hw_state.fp0 = fp;
-	crtc_state->dpll_hw_state.fp1 = fp2;
+	crtc_state->dpll_hw_state.fp0 = ilk_dpll_compute_fp(clock, factor);
+	crtc_state->dpll_hw_state.fp1 = ilk_dpll_compute_fp(reduced_clock, factor);
 }
 
 static void ilk_compute_dpll(struct intel_crtc_state *crtc_state,
-- 
2.43.2

