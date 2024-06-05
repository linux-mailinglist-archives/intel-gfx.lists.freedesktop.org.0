Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DFB8FC904
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:26:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8595010E5F0;
	Wed,  5 Jun 2024 10:26:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k7jhXjhR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C33EC10E554
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583198; x=1749119198;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NKCHC2Fl18VDdR/ibKuKHdkqhOSn+CJgqXaZFs5g0S0=;
 b=k7jhXjhRjQFE7Zok21KAJ1fEDTbicUX+SFFKQ+E7xEHXZJ2ZuML+FdcY
 ayaEFV8LXV/KN2O5PQEemYbJ/j8gLR23aHX2Kgh+A+py+uHr047uC8NuT
 FJ2e+97+pY+fSQYElQJqMsIxSd8DjWsNInEUr62N7vVtT9bsE1SEgc8wx
 EowPaZ5cAdiRMjn9qZkJtpk19BMqCKXEkgLrlQsitPOaw8ppUVAIBF7oW
 u4Eh6PICaSMkJuvPNugu2XeD2DKmfdlwgDCIG6xvKSSYOxPJd+iCo37sJ
 VbvaZOoB4ls4i5P8pyAAff2dngO+XQTdr26pnKZ+uN0KPeAdOfkJPiG6a g==;
X-CSE-ConnectionGUID: tKk2uvaqSneCVdGg+Sf10A==
X-CSE-MsgGUID: jEuJeg+tToKSyEMrM9X2jQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136117"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136117"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:38 -0700
X-CSE-ConnectionGUID: Yb7hRnsqTxun8z0LxQVTZg==
X-CSE-MsgGUID: Pub5DF42RimGxGSMjkss/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686202"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:37 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 11/26] drm/i915/psr: Move vblank length check to separate
 function
Date: Wed,  5 Jun 2024 13:25:38 +0300
Message-Id: <20240605102553.187309-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240605102553.187309-1-jouni.hogander@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
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

We are about to add more complexity to vblank length check. It makes sense
to move it to separate function for sake of clarity.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 3530e5f44096..23c3fed1f983 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1243,6 +1243,20 @@ static int intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
 	return entry_setup_frames;
 }
 
+static bool vblank_length_valid(struct intel_dp *intel_dp,
+				const struct intel_crtc_state *crtc_state)
+{
+	int vblank = crtc_state->hw.adjusted_mode.crtc_vblank_end -
+		crtc_state->hw.adjusted_mode.crtc_vblank_start;
+	int wake_lines = psr2_block_count_lines(intel_dp);
+
+	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
+	if (vblank < wake_lines)
+		return false;
+
+	return true;
+}
+
 static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 				    struct intel_crtc_state *crtc_state)
 {
@@ -1333,9 +1347,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 	}
 
 	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
-	if (crtc_state->hw.adjusted_mode.crtc_vblank_end -
-	    crtc_state->hw.adjusted_mode.crtc_vblank_start <
-	    psr2_block_count_lines(intel_dp)) {
+	if (!vblank_length_valid(intel_dp, crtc_state)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "PSR2 not enabled, too short vblank time\n");
 		return false;
-- 
2.34.1

