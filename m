Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 939B390057B
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 15:49:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02FB210EC5B;
	Fri,  7 Jun 2024 13:49:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A+OfvMVs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDD6510EC5B
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 13:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717768171; x=1749304171;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DR6so6indaTxNA2RQe+Ol8fnPV/ZK8kaNavJAP/WNUE=;
 b=A+OfvMVsdNCIzWV0jtOhCAvNBBLz+MRRCAWrH3K65SpAnT264IkwfXKd
 o/L9ugTWQdcseXuYI1IOcyk7wvxHhePTPQZbpKliTnmTdyWhdAQqwHAto
 aKjTnFjz1nheZg67W0cbZeC6MYp4QghjbASLlJKzmGnru6gGdkHfqlG3l
 zdjN7BbgRQtt6xqxlNSGfKkcdkVF89tB7kloOhxWXQ8/r+KeIWbBe5Uvd
 cGa1gKbSAEaGIQ7n6t2oqsCGcfaZM5YCTyYfVJijj9cWEB+K1GOFg8Czb
 fXroFziSdgUXDe3UtkFIrZqdm0P/yp5q2qRzwHsOb956J9e2N0Aipedq6 Q==;
X-CSE-ConnectionGUID: R8rCWbU7RwyofK91cgHE/w==
X-CSE-MsgGUID: 3uU8VKIRRyegDPeUkYxSow==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="14331631"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="14331631"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:31 -0700
X-CSE-ConnectionGUID: OWDIb37sRL+tU4oRia9jxQ==
X-CSE-MsgGUID: 2v4LcZtiSA6fWm6uVKqVoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="43458908"
Received: from lhorenst-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.213.83])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:29 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 01/13] drm/i915/alpm: Do not use fast_wake_lines for aux less
 wake time
Date: Fri,  7 Jun 2024 16:49:05 +0300
Message-Id: <20240607134917.1327574-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240607134917.1327574-1-jouni.hogander@intel.com>
References: <20240607134917.1327574-1-jouni.hogander@intel.com>
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

v2:use aux less wake time in intel_alpm_lobf_compute_config

Fixes: da6a9836ac09 ("drm/i915/psr: Calculate aux less wake time")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
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
index 83d6a3d901fd..a012c3a5c8eb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1848,6 +1848,7 @@ struct intel_dp {
 
 		/* LNL and beyond */
 		u8 check_entry_lines;
+		u8 aux_less_wake_lines;
 		u8 silence_period_sym_clocks;
 		u8 lfps_half_cycle_num_of_syms;
 	} alpm_parameters;
-- 
2.34.1

