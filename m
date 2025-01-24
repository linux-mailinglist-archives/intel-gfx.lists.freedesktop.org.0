Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97633A1B88F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C22910E9B5;
	Fri, 24 Jan 2025 15:12:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lJ3WK5ml";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF8C810E9A3;
 Fri, 24 Jan 2025 15:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731535; x=1769267535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=db7uUJPXJVoamB7x/rV2bkX0HFiU59kzs1BvP33kWhg=;
 b=lJ3WK5ml66vSEM1bWRv55MXfqpAqZUatiejO74mPubivTMqNrB4CDy4j
 1zQP6lpQ0IzhEihQUySP7fF1F/4unCjK9pdVplJXonmjKaJgA5Ac/IW5P
 rJREjbcad3TczvZcPKDo4g4GwMbO14KAXSILMcBsFYk/LjsDUJB3LPEr7
 1N1k6z2VAAy17+jMt+i2ZtnGguVPueThN1EzunPhVI5nFwl4s+nuscjUK
 sO/O2gfYK1QJbzuA2s+lJbRln1KLQQp59z4rN/FVmUHRGUOoeKw84WS18
 TjhJrWwGfx+vTcMgYBRhe42MLHOiPS51NV4pt7K6DxEVkYe0r1BrKvBjI g==;
X-CSE-ConnectionGUID: glofmMd2TXm2qiXKVmGyZA==
X-CSE-MsgGUID: cpirWiJYQ/CvO3yxwVacgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177416"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177416"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:15 -0800
X-CSE-ConnectionGUID: y5ctJpitRf6bW++8WkjziA==
X-CSE-MsgGUID: Fm539E83TcK0su5Wg6gNqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221330"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:13 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 17/35] drm/i915/display: Add vrr mode to crtc_state dump
Date: Fri, 24 Jan 2025 20:30:02 +0530
Message-ID: <20250124150020.2271747-18-ankit.k.nautiyal@intel.com>
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

Print Vrr mode along with other vrr members in crtc_state dump.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c    | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 34d200a17ba6..7b8247af4897 100644
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
 
-	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d\n",
+	drm_printf(&p, "vrr: %s mode: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d\n",
 		   str_yes_no(intel_vrrtg_is_enabled(pipe_config)),
+		   intel_vrrtg_mode_name(pipe_config->vrr.mode),
 		   pipe_config->vrr.vmin, pipe_config->vrr.vmax, pipe_config->vrr.flipline,
 		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband);
 
-- 
2.45.2

