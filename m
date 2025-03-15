Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B2DA628D4
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Mar 2025 09:16:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5070F10E38E;
	Sat, 15 Mar 2025 08:16:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V4Xz7cLi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B103310E18B;
 Sat, 15 Mar 2025 08:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742026607; x=1773562607;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/yNPE81NMApOvEupywJTF+47d0HwDx/Qska3+uzh4qk=;
 b=V4Xz7cLiEocmceLmseGQrCrBPL5R6UXlfC1u5len46yPN23/chAyBrbw
 qBTm8OewJuB0gIE1uvMIThGt4PlJiKdKCnboY4iCpAdUkviPvXcFujcn0
 eWXeM7k+bMJ8cW5R4RdKbU+HwYFofQKT6JbWfMiCzfJ+XSQ0A7RZ2PgiU
 hMtEO+9NQA84zre468+NRS8o+dy1Ji+wfSNwl5fXxlpXd4C4iMUKGzm05
 UiyxdwYzpb1BK6oC2OjH8ItbhQpCEXfVZ6Ya34YvHrwg+yxot52XtD24w
 MkBqAY5Va4XAQVfFmr9F8+RPdE69+6JZq+M4qmczdmdEYuBqRRXTrvO42 g==;
X-CSE-ConnectionGUID: dURf+GekSae3Ej2WQ8xOIA==
X-CSE-MsgGUID: OKdP7CzKTRaXy2lonBpvPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="60725878"
X-IronPort-AV: E=Sophos;i="6.14,249,1736841600"; d="scan'208";a="60725878"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2025 01:16:46 -0700
X-CSE-ConnectionGUID: XDc+wUTsRbO69quTidzaUw==
X-CSE-MsgGUID: jybhL5OkSyqTSTb7m6hrwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,249,1736841600"; d="scan'208";a="121692431"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2025 01:16:44 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 1/2] drm/i915/display: Add fixed_rr to crtc_state dump
Date: Sat, 15 Mar 2025 13:34:48 +0530
Message-ID: <20250315080449.2325563-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250315080449.2325563-1-ankit.k.nautiyal@intel.com>
References: <20250315080449.2325563-1-ankit.k.nautiyal@intel.com>
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

Add fixed refresh rate mode in crtc_state dump.
VRR Timing Generator is running in fixed refresh rate mode when
vrr.vmin = vrr.vmax = vrr.flipline.

v2: s/fixed_rr/fixed rr for consistency with the other stuff. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_vrr.c             | 1 -
 drivers/gpu/drm/i915/display/intel_vrr.h             | 1 +
 3 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 599ddce96371..0f0fad329b89 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -294,8 +294,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		   pipe_config->hw.adjusted_mode.crtc_vdisplay,
 		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
 
-	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d vsync start: %d, vsync end: %d\n",
+	drm_printf(&p, "vrr: %s, fixed rr: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d vsync start: %d, vsync end: %d\n",
 		   str_yes_no(pipe_config->vrr.enable),
+		   str_yes_no(intel_vrr_is_fixed_rr(pipe_config)),
 		   pipe_config->vrr.vmin, pipe_config->vrr.vmax, pipe_config->vrr.flipline,
 		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
 		   pipe_config->vrr.vsync_start, pipe_config->vrr.vsync_end);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 622a70e21737..aa65a6933ddb 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -602,7 +602,6 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	intel_vrr_set_fixed_rr_timings(old_crtc_state);
 }
 
-static
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
 {
 	return crtc_state->vrr.flipline &&
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 514822577e8a..65d2b0eead51 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -35,5 +35,6 @@ int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
+bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

