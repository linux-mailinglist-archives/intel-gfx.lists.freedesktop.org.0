Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C08A08D5ECE
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 11:50:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB9B710E1AD;
	Fri, 31 May 2024 09:50:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b7+Z2uEi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E3AE10E1BD
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 09:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717149022; x=1748685022;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HYT21E5tBkF/t0aZYvt877QYNzGY+4Ji1kDGoKhqTNY=;
 b=b7+Z2uEiFIOakqs3yeW8z7//UgKfwUf1BrnEmI3Yl3VtCa5Ylv7a0e4Q
 yvTkMu+ZRDAf8e/5MN28ixlbimh3Z4ONmBd2qfTIrXuG24wiVK2ciscIT
 Z5sjxxsFMLTe43R8/9yOOIE3FsA1wSTAdtsiquEH1Hno6s4AWtVR99eXj
 UYzRS1/N5X1ujrsDNxobTQcqCFDYkq245t8P76rWy8nAJaiOayUSNTtry
 0f2VlSXDy/Fp4o1UBJeAgf6HYFSQx/fYv1zb2iB/43yIAdqLai8T2BiF6
 AaW5qcax84u4hu4Ri75y8tL8ot0LR1YmGbB3irFQcqNR0BoeSXN8eV5Xf Q==;
X-CSE-ConnectionGUID: IWxLASEoR2StVi8CmF1WMA==
X-CSE-MsgGUID: NX4v9na8QX2ikKhhTihFvg==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13446554"
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="13446554"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:17 -0700
X-CSE-ConnectionGUID: ShFgjcNZQSKpKfaAfk6snA==
X-CSE-MsgGUID: BdBuw1cNSGCxqQyV9c3fkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="41189201"
Received: from romanove-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.36.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:15 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 01/19] drm/i915/alpm: Do not use fast_wake_lines for aux
 less wake time
Date: Fri, 31 May 2024 12:49:35 +0300
Message-Id: <20240531094953.1797508-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240531094953.1797508-1-jouni.hogander@intel.com>
References: <20240531094953.1797508-1-jouni.hogander@intel.com>
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
 drivers/gpu/drm/i915/display/intel_alpm.c          | 2 +-
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index a26716c14aa3..aa15f57cec66 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -159,7 +159,7 @@ static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 	if (i915->display.params.psr_safest_params)
 		aux_less_wake_lines = ALPM_CTL_AUX_LESS_WAKE_TIME_MASK;
 
-	intel_dp->alpm_parameters.fast_wake_lines = aux_less_wake_lines;
+	intel_dp->alpm_parameters.aux_less_wake_lines = aux_less_wake_lines;
 	intel_dp->alpm_parameters.silence_period_sym_clocks = silence_period;
 	intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms = lfps_half_cycle;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 012ff9e18b54..42400e1e9875 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1846,6 +1846,7 @@ struct intel_dp {
 
 		/* LNL and beyond */
 		u8 check_entry_lines;
+		u8 aux_less_wake_lines;
 		u8 silence_period_sym_clocks;
 		u8 lfps_half_cycle_num_of_syms;
 	} alpm_parameters;
-- 
2.34.1

