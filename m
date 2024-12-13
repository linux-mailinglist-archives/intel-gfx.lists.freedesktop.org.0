Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A919F09D5
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 11:41:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10B1A10E1F9;
	Fri, 13 Dec 2024 10:41:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E8+OMPFX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F1F810E1F9;
 Fri, 13 Dec 2024 10:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734086464; x=1765622464;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SPxOZdfNiTHewIS7KPs0N+xyFUsbvwwKcx0XNtAie4k=;
 b=E8+OMPFX1NoJ2iKd8RUHG04TT58gX0JpAKmDw8rFrPwAoZ8XYPsld5p3
 Y4yAy9H0zkEqqKiNyVg/s+TfmwAb4S1yO6WN5z66HZztmk52raRF11vCk
 nlHYqHsnTuFM0j5ZxIE41ewY7qN+fv3wfeHAHyYOlwFhP7Pv1V1yslX8t
 l4EpPAH1ioxWSFXd807tw8uJew6PZPziPtA8hyeEuWExdbNkMFrKVoJwS
 rf6UQykpQTOvE/cPd7BDtgG6m4SJbMuI6rU++JZhEaX55zMJg9Jpz6DaZ
 +giMWZI0l35u/dPpBADamT25muSp7DBoKRbwLZ4CojhJim4VT9oejiEGn A==;
X-CSE-ConnectionGUID: Uw3CwvDYQHWzm4CPllu10Q==
X-CSE-MsgGUID: Czmn4TPwTLqkmGpuJL+8sQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38470598"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38470598"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:41:04 -0800
X-CSE-ConnectionGUID: ZojQ+3ptSX6ZFj7t/WN8Xw==
X-CSE-MsgGUID: 6WlQPlpOTgeuROTnT4i9kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119763348"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:41:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com,
 nagavenkata.srikanth.v@intel.com
Subject: [RFC v0 10/13] drm/i915/ddi: initialize 128b/132b SST DP2 VFREQ
 registers
Date: Fri, 13 Dec 2024 12:39:54 +0200
Message-Id: <3838c264367278d73e82f49cb80d9537413c1ad6.1734085515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1734085515.git.jani.nikula@intel.com>
References: <cover.1734085515.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Write the DP2 specific VFREQ registers.

This is preparation for enabling 128b/132b SST. This path is not
reachable yet.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ebe098ef396a..5f96fc629429 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3469,8 +3469,20 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *pipe_crtc;
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	int i;
 
+	/* 128b/132b SST */
+	if (intel_dp_is_uhbr(crtc_state)) {
+		const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+		u64 crtc_clock_hz = KHz(adjusted_mode->crtc_clock);
+
+		intel_de_write(display, TRANS_DP2_VFREQHIGH(cpu_transcoder),
+			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz >> 24));
+		intel_de_write(display, TRANS_DP2_VFREQLOW(cpu_transcoder),
+			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz & 0xffffff));
+	}
+
 	intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
 	/* Enable/Disable DP2.0 SDP split config before transcoder */
-- 
2.39.5

