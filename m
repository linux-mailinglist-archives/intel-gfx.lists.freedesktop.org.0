Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 306F68FC907
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:26:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0983A10E738;
	Wed,  5 Jun 2024 10:26:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ntryr2yx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B694F10E628
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583203; x=1749119203;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kMHvmwYnFPF2hPW6YAq6SfAyV2czFiJNVwxHTPSOjwg=;
 b=ntryr2yxPbCLYLNpg4LSIn0f9cmgDdacRYQTvrzTyk33UIOD4gGWeUfj
 fef2y048muDfdtkCoyPRjmzJu8B9mdUuunPfpfDMEnA0Omna4Nt06hV46
 /btQiBOttwMubn0gXnQFQu75X657Uxhiej+z6h2YRfOQ7wK7ZirwhFyP/
 Nagm+Q0ElZMA8rhj1G5gkD+6IeHNAMMONxeBuRdxPFhuMXPmWprZ2JV+q
 i88/0pY71eQksweXOAdadFnYQzJHdo8hsbQdO1pGSeQVvLxAmQcBL8BdN
 a4tjmdleuKEb4hcDyczldgXmbDKEh0xNVlt8j+DmBZPEb/VVeRt8eeoLx g==;
X-CSE-ConnectionGUID: 1SJuaHBUT0aU7W+LTvCTxw==
X-CSE-MsgGUID: BEGw6gXoSSyJg4L2RO1VEg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136124"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136124"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:43 -0700
X-CSE-ConnectionGUID: 4ZIuzhE9QIit623kQkwVAA==
X-CSE-MsgGUID: bthwrPxlQfOzhsgj+5UPjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686232"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:42 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 14/26] dmr/i915/psr: Wake time is aux less wake time for
 Panel Replay
Date: Wed,  5 Jun 2024 13:25:41 +0300
Message-Id: <20240605102553.187309-15-jouni.hogander@intel.com>
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

When checking vblank length used wake time is aux less wake time for eDP
Panel Replay (vblank length is not checked for DP2.0 Panel Replay).

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index c9fcb25184ee..ccb7c022e364 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1251,8 +1251,12 @@ static bool vblank_length_valid(struct intel_dp *intel_dp,
 		crtc_state->hw.adjusted_mode.crtc_vblank_start;
 	int wake_lines;
 
-	wake_lines = DISPLAY_VER(i915) < 20 ? psr2_block_count_lines(intel_dp) :
-		intel_dp->alpm_parameters.io_wake_lines;
+	if (crtc_state->has_panel_replay)
+		wake_lines = intel_dp->alpm_parameters.aux_less_wake_lines;
+	else
+		wake_lines = DISPLAY_VER(i915) < 20 ?
+			psr2_block_count_lines(intel_dp) :
+			intel_dp->alpm_parameters.io_wake_lines;
 
 	if (crtc_state->req_psr2_sdp_prior_scanline)
 		vblank -= 1;
-- 
2.34.1

