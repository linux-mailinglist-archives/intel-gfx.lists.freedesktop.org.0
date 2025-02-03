Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFB5A259DA
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C400010E4AC;
	Mon,  3 Feb 2025 12:50:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PFRrseUW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA2B110E4B9;
 Mon,  3 Feb 2025 12:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587008; x=1770123008;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DTIYqkq2CHLJRV1KCvG/21c1wZZAmZa0nUJjMETP148=;
 b=PFRrseUW4pdmIMzdatywnR8jEwbCxBY5n4KIGaY6dm6MqFJz+JfsHsGe
 Lb6FT5SapLHDd17CHrG3er44o1UNrzx4A+a8T9V4qZ2CdwsxwOsLbSpOQ
 48oWgIawPS1ccjl9xWjEAmiCJ8/DBY/1kE2xHwkJe/b4s2HEHlmwEMwUZ
 IfL4++4j0qHZcevczGgqh12zssoDSS/W8nThTHkkJnvdLw3/vc0k4h9vs
 XaW+BgzxBb2gTz8np5Wmc6sEZsbJDSJXO7Fd+0MSJM6sAiDqfPgAd4Yhr
 C0RoZqPqn1+Crp1KYwnRtzYcJBJaE28RIUfd9cXV4rq3+U6J2Y+T4NY3z A==;
X-CSE-ConnectionGUID: kn/SLeJmSoqX+ErYWLQ0YA==
X-CSE-MsgGUID: +bwsCYoCQ4C29kwWYiDiOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548048"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548048"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:08 -0800
X-CSE-ConnectionGUID: y2jRygCrT1emk+qtNh4jzQ==
X-CSE-MsgGUID: tyo+5QZBT0OTGlNEMYf53w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133528913"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:05 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 09/28] drm/i915/display: Add vrr mode to crtc_state dump
Date: Mon,  3 Feb 2025 18:08:21 +0530
Message-ID: <20250203123840.3855874-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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

Print Vrr mode along with other vrr members in crtc_state dump.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c    | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 56a43f3fc7f6..9f4c88f05f4c 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -172,6 +172,20 @@ vlv_dump_csc(struct drm_printer *p, const char *name,
 			   csc->coeff[3 * i + 2]);
 }
 
+static const char * const vrrtg_mode_str[] = {
+	[INTEL_VRRTG_MODE_NONE] = "none",
+	[INTEL_VRRTG_MODE_VRR] = "vrr",
+	[INTEL_VRRTG_MODE_CMRR] = "cmrr",
+};
+
+static const char *intel_vrrtg_mode_name(enum intel_vrrtg_mode mode)
+{
+	if (mode >= ARRAY_SIZE(vrrtg_mode_str))
+		return "invalid";
+
+	return vrrtg_mode_str[mode];
+}
+
 void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 			   struct intel_atomic_state *state,
 			   const char *context)
@@ -292,8 +306,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		   pipe_config->hw.adjusted_mode.crtc_vdisplay,
 		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
 
-	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d vsync start: %d, vsync end: %d\n",
+	drm_printf(&p, "vrr: %s, mode: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d vsync start: %d, vsync end: %d\n",
 		   str_yes_no(intel_vrr_is_enabled(pipe_config)),
+		   intel_vrrtg_mode_name(pipe_config->vrr.mode),
 		   pipe_config->vrr.vmin, pipe_config->vrr.vmax, pipe_config->vrr.flipline,
 		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
 		   pipe_config->vrr.vsync_start, pipe_config->vrr.vsync_end);
-- 
2.45.2

