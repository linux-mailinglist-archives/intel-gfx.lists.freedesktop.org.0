Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B428A90058A
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 15:49:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C1410EC6B;
	Fri,  7 Jun 2024 13:49:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VyXDplGa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07D1510EC6B
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 13:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717768192; x=1749304192;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zYWYFdFf0roIW2gFCYsGABgv6sJr4EifPxBE7fr5fLk=;
 b=VyXDplGaE7MPZHsQ6FoFfctXm8w4ILERqLIzhVIMgU5Rn8ty/xjnZchO
 8w+iYpUIy6qqt3tszFmrwkqHjlwiNn6IkEVPEVqja1rl72Y2bJ4y50VHd
 K2mR2xDNISPQOfD9uYBYtPUb3deiKg35NFkeHXX1bz9O6nWTt+TIs1xJQ
 YRUi22aW86Gy2fd1kGMgmqG1kxv+XuKUw7R6Zuv74axAz3cmdKu7W0Xqv
 Q2WUBjTfCNDbMWK1DuSn8Pvvd6bfz1OEIOlZO/UAUaOIIJ1ErGfR6iUbx
 6/xJ/1vFUcot+F9SmUQ0FMul+WnleSkb3hrkEmnOSlg5nlDY+Z8NHmwdS g==;
X-CSE-ConnectionGUID: +daUsNVnRxKgXEBIORiRbA==
X-CSE-MsgGUID: lejCcL/QTBKo98PvQPKtIA==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="14331666"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="14331666"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:52 -0700
X-CSE-ConnectionGUID: PYqxLkDJR1WzRTpL0PGxHw==
X-CSE-MsgGUID: 9Zb26/TaRW+rPDjlBwQATQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="43459057"
Received: from lhorenst-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.213.83])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:50 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 13/13] drm/i915/psr: Wake time is aux less wake time for Panel
 Replay
Date: Fri,  7 Jun 2024 16:49:17 +0300
Message-Id: <20240607134917.1327574-14-jouni.hogander@intel.com>
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

When checking vblank length used wake time is aux less wake time for eDP
Panel Replay (vblank length is not checked for DP2.0 Panel Replay).

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a7d030ffc4e0..043ab3ec5201 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1251,8 +1251,12 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
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

