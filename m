Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C82A1B890
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E20E10E9B7;
	Fri, 24 Jan 2025 15:12:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CAHflhnV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57E8410E9B5;
 Fri, 24 Jan 2025 15:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731544; x=1769267544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZOPE+I2ARSKr47iPWhMKyxe++PYRrFRj6vjpN4AfGyY=;
 b=CAHflhnVlFNWhEOPUHrBsA4jse1pjagumxGngrOLCY/8bn6yERDIay4E
 dQTTf6CAnmJK1Dpp1DaJUmwN0IyVwWO1c332YGd7e9b5Do4TI9bAqbMUy
 kpCRgC1lPoawrNdUpIyRCqSFBrFe0O5NTchK7pWYcUbiiaGETxro2wq1X
 +LfESt3VXk/jyZeKzfWozQ5VeoFo5qO5RD267520XefB6SpvaiwOEwStH
 D9bcT/Xn3S6ZLst2A8+f8D4jGeGfG533zIvr9sRtjMD6f/ZBDLqXoRoit
 hflTq9B43X4uz5jjdPirYi76lvKLcc4kej+ThbjJcTxpJ1hjTCt7ElKVN g==;
X-CSE-ConnectionGUID: pVv2L74xT3WenPd3Jpdb/A==
X-CSE-MsgGUID: 4IFde7jZSKKtXf9y1v5zhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177430"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177430"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:24 -0800
X-CSE-ConnectionGUID: 7mE0mpXnTZOZ2r95IqMtcA==
X-CSE-MsgGUID: gCAh1R8BQi+2K20DafOZzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221405"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:22 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 21/35] drm/i915/display: Enable MSA Ignore Timing PAR only
 when in not fixed_rr mode
Date: Fri, 24 Jan 2025 20:30:06 +0530
Message-ID: <20250124150020.2271747-22-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

MSA Ignore Timing PAR enable is set in the DP sink when we enable variable
refresh rate. When using VRR timing generator for fixed refresh rate
we do not want to ignore the mode timings, as the refresh rate is still
fixed. Modify the checks to enable MSA Ignore Timing PAR only when not
in fixed_rr mode.

v2: Initialize enable_msa_timing_par_ignore to false.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c              | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 8 +++++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d48a3108f363..dac953b2af31 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2281,7 +2281,7 @@ static void intel_dp_sink_set_msa_timing_par_ignore_state(struct intel_dp *intel
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
-	if (!intel_vrrtg_is_enabled(crtc_state))
+	if (!intel_vrrtg_is_enabled(crtc_state) || crtc_state->vrr.flipline == crtc_state->vrr.vmax)
 		return;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 9cb22baafeeb..b8063807fd34 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -724,8 +724,14 @@ void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, b
 static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
 					    const struct intel_crtc_state *crtc_state)
 {
+	bool enable_msa_timing_par_ignore = false;
+
+	/* Enable MSA TIMING PAR IGNORE only in non fixed_rr mode */
+	if (crtc_state->vrr.flipline && crtc_state->vrr.flipline != crtc_state->vrr.vmax)
+		enable_msa_timing_par_ignore = true;
+
 	intel_dp_link_training_set_mode(intel_dp,
-					crtc_state->port_clock, crtc_state->vrr.flipline);
+					crtc_state->port_clock, enable_msa_timing_par_ignore);
 }
 
 void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
-- 
2.45.2

