Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BBE8C64AB
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 12:04:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E595110E46D;
	Wed, 15 May 2024 10:04:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eSWbqv7x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEEC210E1DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 10:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715767470; x=1747303470;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rztfw0knPcnoAedzONNmTG7Cbsooa/Dmzbsa641+RPU=;
 b=eSWbqv7xEQH9b0phnZeF1Mc4r1G5nwGgDH6mlVMm1/3CK37DqaDELY51
 pOjGZKGRs75drIa5prW01n9RraGTSmrMr4B/P0JFgNs/NjEiupnvGaqcq
 P2068wtAGvJtazSvxH5wyrQnB9fDAMH7zFwOsG1dIWtccji3lx2ceXB4i
 HUTxd8nbDrYfCD7w9+MOMqkuQGzTmJ0//Xe7ET2PmMiDXa2HA9BMSzXqf
 Ekh/jJyCUd4yuhZ4callQ/agY61tfUriSfl93denXEPcNsZIzmhwpWbxC
 kc0Vzg7xbU0egxDhCG1U4AhlYf9zlTor9Iw/HGfgLuZAmMOMJs6wnNhju A==;
X-CSE-ConnectionGUID: gG/0cW6HTTOwOzmpMLWP0g==
X-CSE-MsgGUID: ys2iZjjqR8aOZTLbxUIwyg==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11936989"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="11936989"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 03:04:30 -0700
X-CSE-ConnectionGUID: id28CAnPTV+7Qj1mIFL0OQ==
X-CSE-MsgGUID: M3TREznvRyCbn88on+wKPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="31584207"
Received: from sghitax-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.210.177])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 03:04:29 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/8] drm/i915/psr: Do not use fast_wake_lines for aux less
 wake time
Date: Wed, 15 May 2024 13:04:04 +0300
Message-Id: <20240515100411.691203-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240515100411.691203-1-jouni.hogander@intel.com>
References: <20240515100411.691203-1-jouni.hogander@intel.com>
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
index 2514ac48312b..dcce2824556c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1345,7 +1345,7 @@ static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 	if (i915->display.params.psr_safest_params)
 		aux_less_wake_lines = ALPM_CTL_AUX_LESS_WAKE_TIME_MASK;
 
-	intel_dp->psr.alpm_parameters.fast_wake_lines = aux_less_wake_lines;
+	intel_dp->psr.alpm_parameters.aux_less_wake_lines = aux_less_wake_lines;
 	intel_dp->psr.alpm_parameters.silence_period_sym_clocks = silence_period;
 	intel_dp->psr.alpm_parameters.lfps_half_cycle_num_of_syms = lfps_half_cycle;
 
-- 
2.34.1

