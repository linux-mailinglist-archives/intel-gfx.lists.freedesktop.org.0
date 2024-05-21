Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A8D8CAA2B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:41:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5711A10E1AB;
	Tue, 21 May 2024 08:41:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lzF9xdnL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A6E110E17D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716280905; x=1747816905;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oCtdaIQ2U4frK3S1ldkgPJsJ3iX914RuOdHq2pkH5E0=;
 b=lzF9xdnLFHP7Em1efLqN7TmefReNYVjBrq4nJWBUjSn8bl+1AzpSc2we
 GHpGJzNZfBFCuRshAkQHh32VBYFJ0ndJ1J/tVUGe5yyTK2M+y3zgBK/+Q
 4eMoewP8q/EDWiLQ4OmOtz398LohGVfGlcKbF2cfnmK3pz2qeV6DgWYcL
 JldRt0amAeanCg0ywT41aq26NgAU1GNd3lA+kbIiBmBefN2iy+h7YQq48
 ZWjcBi8/nQg7NOcA4gnFSQDhhjPCWXGzojmiXEnkKJAumEoWmMrOxxSse
 lshIU1+Ix5PSboi7bXIyYfUTBkh7j/8uyKneeP5JKjZbF8uxPHdl9G8r8 w==;
X-CSE-ConnectionGUID: ijuzQ4pFSNGV984eEmjCEg==
X-CSE-MsgGUID: rEBqneWkQV+8PtacrVKWzA==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="23860330"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="23860330"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:45 -0700
X-CSE-ConnectionGUID: WjUABUEhRmCKvroQeMK0wQ==
X-CSE-MsgGUID: 52yKJK3BR9+SIaFRrNpxIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="37426201"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:44 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/9] drm/i915/psr: Do not use fast_wake_lines for aux less
 wake time
Date: Tue, 21 May 2024 11:41:15 +0300
Message-Id: <20240521084123.1984075-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240521084123.1984075-1-jouni.hogander@intel.com>
References: <20240521084123.1984075-1-jouni.hogander@intel.com>
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

Fixes: da6a9836ac09 ("drm/i915/psr: Calculate aux less wake time")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_psr.c           | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 9678c2b157f6..95a806538cdc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1712,6 +1712,7 @@ struct intel_psr {
 
 		/* LNL and beyond */
 		u8 check_entry_lines;
+		u8 aux_less_wake_lines;
 		u8 silence_period_sym_clocks;
 		u8 lfps_half_cycle_num_of_syms;
 	} alpm_parameters;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d18baeb971bb..1fadac7d9d94 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1348,7 +1348,7 @@ static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 	if (i915->display.params.psr_safest_params)
 		aux_less_wake_lines = ALPM_CTL_AUX_LESS_WAKE_TIME_MASK;
 
-	intel_dp->psr.alpm_parameters.fast_wake_lines = aux_less_wake_lines;
+	intel_dp->psr.alpm_parameters.aux_less_wake_lines = aux_less_wake_lines;
 	intel_dp->psr.alpm_parameters.silence_period_sym_clocks = silence_period;
 	intel_dp->psr.alpm_parameters.lfps_half_cycle_num_of_syms = lfps_half_cycle;
 
-- 
2.34.1

