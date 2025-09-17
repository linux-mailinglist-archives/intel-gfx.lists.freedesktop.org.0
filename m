Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CC1B81C83
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Sep 2025 22:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 714A310E5A7;
	Wed, 17 Sep 2025 20:35:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nMfMlaDL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7824B10E5A3;
 Wed, 17 Sep 2025 20:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758141299; x=1789677299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T26Z8n91HBOh4p/xEM1+qpLOdUxsMkD7cEu3vk/f4Es=;
 b=nMfMlaDLTonKoaXOHSMBxCTblGwvO7IkHG+Qsb/3Kx47zkS9bOsWJz9s
 4/siiLoqCp+vTdLVpfTGEP1sNgRNusQEEWpGa88RvxXM2Bg9N9dSPvBpR
 AVCJ5TL/tlCNbYyoZOApXqn9b6I8oD+DMEpyDscD7n7PzMDDXiSpNSi6y
 n7HLBZgohcepN4YN3w4V4O6cYuBHGho+FLqnoFDuS7sDEYo5rybUu1oHi
 pYBFdwBLFvdhkp8Ut+jK5TaHNTfnB/oTlBtssTTDozvCGWl3icz1h4LSD
 p70ihygHVXbo1FJx2OzPJRTess+NO0p0aLmfo+bXTyGL3qpyZjPAhlFCf w==;
X-CSE-ConnectionGUID: Lp026LmRTzepezGO4FbWVw==
X-CSE-MsgGUID: 05NLs4cgTw+vRe2QFGUFSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="60570010"
X-IronPort-AV: E=Sophos;i="6.18,273,1751266800"; d="scan'208";a="60570010"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 13:34:59 -0700
X-CSE-ConnectionGUID: rb0OiPyDTo6NUabXfM4t3w==
X-CSE-MsgGUID: YvVLBA0sTdGBvxGFhvhGHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,273,1751266800"; d="scan'208";a="174465039"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.83])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 13:34:58 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/5] drm/i915/vrr: Readout framestart_delay earlier
Date: Wed, 17 Sep 2025 23:34:43 +0300
Message-ID: <20250917203446.14374-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
References: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
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

In order to pretend that ICL/TGL VRR hardware has a similar guardband
as on ADL+ we'll need access to framestart_delay already during
intel_vrr_get_config(). Hoist the framestart_delay to an earlier point
to make that possible.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a743d1339550..c7d85fd38890 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3891,6 +3891,15 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	intel_joiner_get_config(pipe_config);
 	intel_dsc_get_config(pipe_config);
 
+	if (!transcoder_is_dsi(pipe_config->cpu_transcoder)) {
+		tmp = intel_de_read(display, CHICKEN_TRANS(display, pipe_config->cpu_transcoder));
+
+		pipe_config->framestart_delay = REG_FIELD_GET(HSW_FRAME_START_DELAY_MASK, tmp) + 1;
+	} else {
+		/* no idea if this is correct */
+		pipe_config->framestart_delay = 1;
+	}
+
 	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
 	    DISPLAY_VER(display) >= 11)
 		intel_get_transcoder_timings(crtc, pipe_config);
@@ -3942,15 +3951,6 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		pipe_config->pixel_multiplier = 1;
 	}
 
-	if (!transcoder_is_dsi(pipe_config->cpu_transcoder)) {
-		tmp = intel_de_read(display, CHICKEN_TRANS(display, pipe_config->cpu_transcoder));
-
-		pipe_config->framestart_delay = REG_FIELD_GET(HSW_FRAME_START_DELAY_MASK, tmp) + 1;
-	} else {
-		/* no idea if this is correct */
-		pipe_config->framestart_delay = 1;
-	}
-
 out:
 	intel_display_power_put_all_in_set(display, &crtc->hw_readout_power_domains);
 
-- 
2.49.1

