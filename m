Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 784B4A54C06
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 14:23:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14B9A10E99F;
	Thu,  6 Mar 2025 13:23:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P4uvoz5h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FA3810E99B;
 Thu,  6 Mar 2025 13:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741267429; x=1772803429;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mK57pJrtD3MmVVdGqQAkIMiM2QjY6GnL2mqV+OQsEwc=;
 b=P4uvoz5hGD2KS1fxPEmnsrImGh/5VaWobJH6EMk4ybIwASC1JXM6VSOz
 Qiv7nifOO2xu062a8/cl04Bz2X5TDV6APQuKikOqlbtiWUx97EN/04j1u
 L4iXsCu4uV9ZZoAQnefFL1dOVXBmSlfXsqg1nXec0IfLF7MjAtMLlz3wN
 mU6E9C+M9WhXC6UiWbOP6yHOxWAOzPR5u5XByNWKV8LiR0qJLfMmowvHL
 GLP0C2o1nh0mMTAm3DuIQgZ8FGw/hVJhvHWF/qWg2+D/c9cG42WFfsJvg
 QNgIoE1jCR9uvIpbIFy+LcJ4nkeRbdjky+dlqfI9vj4ot17VKhuQR4lwk Q==;
X-CSE-ConnectionGUID: cH3lsT6MSgSi2+YH/ya67A==
X-CSE-MsgGUID: Dj51EnZIR8aYpX53wmFFgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="41524698"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="41524698"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:49 -0800
X-CSE-ConnectionGUID: ZWfUyXCwQamtOKQDLH6Zww==
X-CSE-MsgGUID: K/+LmimoRhq7RTsMAcZVqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="142243219"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:47 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 21/21] drm/i915/display: Add fixed_rr to crtc_state dump
Date: Thu,  6 Mar 2025 18:41:00 +0530
Message-ID: <20250306131100.3989503-22-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
References: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
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

Add fixed refresh rate mode in crtc_state dump.
VRR Timing Generator is running in fixed refresh rate mode when
vrr.enable is unset and vrr.vmin = vrr.vmax = vrr.flipline.

v2: Add check for vrr.enable.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_vrr.c             | 1 -
 drivers/gpu/drm/i915/display/intel_vrr.h             | 1 +
 3 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 599ddce96371..974598e29bff 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -294,8 +294,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		   pipe_config->hw.adjusted_mode.crtc_vdisplay,
 		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
 
-	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d vsync start: %d, vsync end: %d\n",
+	drm_printf(&p, "vrr: %s, fixed_rr: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d vsync start: %d, vsync end: %d\n",
 		   str_yes_no(pipe_config->vrr.enable),
+		   str_yes_no(intel_vrr_is_fixed_rr(pipe_config) && !pipe_config->vrr.enable),
 		   pipe_config->vrr.vmin, pipe_config->vrr.vmax, pipe_config->vrr.flipline,
 		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
 		   pipe_config->vrr.vsync_start, pipe_config->vrr.vsync_end);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index a1ad9432bc28..fe589092ce53 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -661,7 +661,6 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
 }
 
-static
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
 {
 	return crtc_state->vrr.flipline &&
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index d857633bc02c..14a372204a54 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -38,5 +38,6 @@ int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
+bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

