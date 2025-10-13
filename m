Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F363ABD60AA
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 22:13:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B5310E52B;
	Mon, 13 Oct 2025 20:13:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K5HwgcuV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E673410E526;
 Mon, 13 Oct 2025 20:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760386397; x=1791922397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DCX+m6dP+yJsYc7dskwDpeeXUW/S9ctiJFlR+2xvHzg=;
 b=K5HwgcuVff3uLlb9Lwlf4YNRlLAJpMVc4b3whiWBvFy1XEYgpYADMS7S
 y8Kuog790WFobSuLWY3t7biKE30+gT1uXqtdUbeEl76hglaakOkluXIWt
 Me3GPFLZ6+XLwTxXbMEQmshKXQj+bPozqLdmdbOyVAoKpiuVMBLCx1jKa
 aIpM0yQouMtzQfkR3LulidtpJGPZBM3sIef6pdlkoTZjXKwSnNLFiyBmo
 I//ovupi66UiD6PE0GEvfNQxkN/3pI14K60djdFqtoLb67onhT14pbvvX
 dwQHIEQh85PBJlvUoHiPBJCKjTX6LPKb7SnlLPkYwjQC2KK5wxczvqo9m w==;
X-CSE-ConnectionGUID: Inmquq0pTK2Ag08E7ch+QA==
X-CSE-MsgGUID: GszFLJCLSO2b8srMJQkVRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="61746187"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="61746187"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:13:16 -0700
X-CSE-ConnectionGUID: A59oTpq+Q3iSXHgX7jzr2Q==
X-CSE-MsgGUID: xgzUOc5WTI6PQo1Bjoor9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="186099322"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.105])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:13:15 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 9/9] drm/i915: Neuter cdclk_prefill_adjustment()
Date: Mon, 13 Oct 2025 23:12:36 +0300
Message-ID: <20251013201236.30084-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
References: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
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

cdclk_prefill_adjustment() currently uses a stale cdclk
value. And even if it was using the correct value it'd
still just 'return 1' because the ratio that it's
calculating is always <= 1.0, and it just rounds the ratio
into an integer (and clamps the result to a maximum of 1).
So for the moment, let's just 'return 1' since that's what
the code ends up doing anyway.

This is actually safe because 1.0 is the worst case (ie. slowest
prefill) and thus the actual prefill is always guaranteed to be
at least as fast as what we assumed during the check.

We'll replace this soon with something that gives more accurate
estimates.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 9df9ee137bf9..1b062c6c0e03 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2148,19 +2148,7 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
 static int
 cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_atomic_state *state =
-		to_intel_atomic_state(crtc_state->uapi.state);
-	const struct intel_cdclk_state *cdclk_state;
-
-	cdclk_state = intel_atomic_get_cdclk_state(state);
-	if (IS_ERR(cdclk_state)) {
-		drm_WARN_ON(display->drm, PTR_ERR(cdclk_state));
-		return 1;
-	}
-
-	return min(1, DIV_ROUND_UP(crtc_state->pixel_rate,
-				   2 * intel_cdclk_logical(cdclk_state)));
+	return 1;
 }
 
 static int
-- 
2.49.1

