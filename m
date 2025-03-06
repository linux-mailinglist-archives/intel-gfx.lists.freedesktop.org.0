Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A20A54C03
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 14:23:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 840A710E996;
	Thu,  6 Mar 2025 13:23:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CwOjaXcJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F44F10E997;
 Thu,  6 Mar 2025 13:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741267422; x=1772803422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mcNOxfblrK8v82A92JD1BR5Qubo/b6WSD0Hs0SsG0MM=;
 b=CwOjaXcJDpTImaTKirx2gi6QeN/Vul+0LLfU8DExLMLlRj9s5UlS9rtn
 deeB/iG+2XhpHTZJUYBYlkVFs6FplZhp8uybmpWX8RXhTZfmTzaD4VPlk
 xiTlGs2+yRALCJ+5E2tjzXz3LwNo2scdb4cRa8at8KSjJfFNBeZ+GyDb4
 lFqLzbJBpgQ4mLJUtCwQRNK4eoeOx9A12EHC4FBSlIv6YAB3RzKfGnDeX
 oHN+urYYW4WcSv5EUfAvPrZz8q/ijzcZ/ExSA7dsjBdYPpn0pDJAdu2vo
 /I0GpXsx4BHN6GlZRfJ/DvJh+cVI0y9JPoU2PL6S3wQkHfLM5+kA/H95+ A==;
X-CSE-ConnectionGUID: 9nWyBb/mSfSHxpOUKQ/AhQ==
X-CSE-MsgGUID: v08xAq+hQhWzhDPPqSRywg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="41524692"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="41524692"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:42 -0800
X-CSE-ConnectionGUID: v2Z60iaWR7aLED001hNo3A==
X-CSE-MsgGUID: guDf0sLVQyG5guoXGhKYNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="142243204"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:40 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 18/21] drm/i915/display: Use fixed rr timings in
 intel_set_transcoder_timings_lrr()
Date: Thu,  6 Mar 2025 18:40:57 +0530
Message-ID: <20250306131100.3989503-19-ankit.k.nautiyal@intel.com>
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

To have Guardband/Pipeline_full reconfigured seamlessly, move the
guardband and pipeline_full from intel_pipe_config_compare() to fastboot
exception.
Update the intel_set_transcoder_timings_lrr() function to use
fixed refresh rate timings for platforms which always use
VRR timing generator.

v2: Fix typo in check for fastboot exception. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++--
 drivers/gpu/drm/i915/display/intel_vrr.c     | 1 -
 drivers/gpu/drm/i915/display/intel_vrr.h     | 1 +
 3 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a642496e366c..b46987b46be8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2770,6 +2770,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
+
+	intel_vrr_set_fixed_rr_timings(crtc_state);
+	intel_vrr_transcoder_enable(crtc_state);
 }
 
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
@@ -5400,8 +5403,10 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_BOOL(cmrr.enable);
 	}
 
-	PIPE_CONF_CHECK_I(vrr.pipeline_full);
-	PIPE_CONF_CHECK_I(vrr.guardband);
+	if (!fastset || !allow_vblank_delay_fastset(current_config)) {
+		PIPE_CONF_CHECK_I(vrr.pipeline_full);
+		PIPE_CONF_CHECK_I(vrr.guardband);
+	}
 
 #undef PIPE_CONF_CHECK_X
 #undef PIPE_CONF_CHECK_I
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index efa26a39b86a..58cc86c32239 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -284,7 +284,6 @@ int intel_vrr_fixed_rr_flipline(const struct intel_crtc_state *crtc_state)
 	return intel_vrr_fixed_rr_vtotal(crtc_state);
 }
 
-static
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index c4ee8a758e19..d857633bc02c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -37,5 +37,6 @@ int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
+void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

