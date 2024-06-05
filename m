Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 819E58FC8F7
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A62910E28E;
	Wed,  5 Jun 2024 10:26:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OGBbWsFV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9020910E28E
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583182; x=1749119182;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cX5PXA6T/yURajFNxP8QySP73wiY77HzDlSCRD6zWyk=;
 b=OGBbWsFVopISK1/wq0r8j39mrjcNm0CvRWayoEaVkCemfpjehqclDBq0
 Lphpn4P4KcR+12h16j0yYj4sE1wPnbRw/bsOoQzE+apjhhS29+2m5h+WF
 urrWWLK51U/9G+fc4AgfoQm5hNNe3J7V83w1B/xxgSzuEhrtE11/mz5eP
 ngEUM/QYghZYlVhaS64Tr/N6nKDl59p49dTtTGx4JsHVw0XUeau311OY7
 Y2alRlzyLWy9rtyWSRwm88IZ4yYAcmVBPo6C2xubG3bdcFPlUWvOBIIlz
 H7qDLqA+zKcUWikGEVRQBEhQ7kdw1HPhGoRU8wbqTPdcWag3OFnSUzFHI A==;
X-CSE-ConnectionGUID: PgKrqg1EQTaTuP+jVHo/EA==
X-CSE-MsgGUID: oOcejqyOS5mr8OJ3+uPpNg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136070"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136070"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:22 -0700
X-CSE-ConnectionGUID: vRgwAd0xTaKKIr9tom5osg==
X-CSE-MsgGUID: 53gVUmrLSNaUF/AqVy7+Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686030"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:21 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 01/26] drm/i915/alpm: Do not use fast_wake_lines for aux
 less wake time
Date: Wed,  5 Jun 2024 13:25:28 +0300
Message-Id: <20240605102553.187309-2-jouni.hogander@intel.com>
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

We want to have own variables for fast wake lines and aux less wake
time. It might be needed to choose if we can enable Panel Replay Selective
Update or PSR2.

Also currently aux less wake time is overwritten by calculated fast wake
time.

v2:use less wake time in intel_alpm_lobf_compute_config

Fixes: da6a9836ac09 ("drm/i915/psr: Calculate aux less wake time")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c          | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index a26716c14aa3..52a573367976 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -159,7 +159,7 @@ static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 	if (i915->display.params.psr_safest_params)
 		aux_less_wake_lines = ALPM_CTL_AUX_LESS_WAKE_TIME_MASK;
 
-	intel_dp->alpm_parameters.fast_wake_lines = aux_less_wake_lines;
+	intel_dp->alpm_parameters.aux_less_wake_lines = aux_less_wake_lines;
 	intel_dp->alpm_parameters.silence_period_sym_clocks = silence_period;
 	intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms = lfps_half_cycle;
 
@@ -298,7 +298,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	if (intel_alpm_aux_less_wake_supported(intel_dp))
 		waketime_in_lines = intel_dp->alpm_parameters.io_wake_lines;
 	else
-		waketime_in_lines = intel_dp->alpm_parameters.fast_wake_lines;
+		waketime_in_lines = intel_dp->alpm_parameters.aux_less_wake_lines;
 
 	crtc_state->has_lobf = (context_latency + guardband) >
 		(first_sdp_position + waketime_in_lines);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 77609656317b..df29ec37ef28 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1847,6 +1847,7 @@ struct intel_dp {
 
 		/* LNL and beyond */
 		u8 check_entry_lines;
+		u8 aux_less_wake_lines;
 		u8 silence_period_sym_clocks;
 		u8 lfps_half_cycle_num_of_syms;
 	} alpm_parameters;
-- 
2.34.1

