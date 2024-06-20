Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 960E7910181
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2024 12:33:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AC2710E2DC;
	Thu, 20 Jun 2024 10:33:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WiWpYNHI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D857410E2DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2024 10:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718879606; x=1750415606;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gCIcBMKbVlj9Frq4itEewJjMRkKn5ekfNO5X/6rQKKw=;
 b=WiWpYNHI6PehC+6yadrXQoOHQ1RK/zc3v+n7r+17OgRBlNfmasZEp/ug
 TtytZYQFems0GU9MaOKKobGRTJ5c6irJYVHlAAXLr0/mC2MyAnwz3XU/8
 UzY+hTdUwkKtDgoYwM0tULnSnFYGUzZLiVx8UAF9fiMzUoZy4x5W4CumB
 3jBmrAYNtANg33lAgnzUSlvWGFHdftkTqprBhepYEryeb/X+lBWEd+c+p
 YFOXGj9m8rN82e/Ng5rOt8EzxD5bupHhhi8B5xQDiV3SgGRwVj9V/wBxI
 rKwsf8dFTY1moR9bmQIrX4eBua9+fjzb3PSjEQqZCm8YaADBVchPG7zDd g==;
X-CSE-ConnectionGUID: 96N2njCKQs6mQxAZG7HivA==
X-CSE-MsgGUID: OFL03pyBR2WyFKWUe7wB/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="27252759"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="27252759"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 03:33:25 -0700
X-CSE-ConnectionGUID: Rx/GrBxLRYGHrzgV3pHmzQ==
X-CSE-MsgGUID: Au9iZ21GS32EOmexzxNrpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="42852710"
Received: from johunt-mobl9.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.240])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 03:33:24 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: Set DP_PSR_SU_REGION_SCANLINE_CAPTURE bit when
 needed
Date: Thu, 20 Jun 2024 13:33:12 +0300
Message-Id: <20240620103312.903977-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

Setting DP_PSR_SU_REGION_SCANLINE_CAPTURE (Selective Update Region Scan
Line Capture Indication in spec) bit was dropped when psr_enable_sink was
split to _psr_enable_sink and _panel_replay_enable_sink. Add setting it
back.

Fixes: 32f0045f905c ("drm/i915/psr: Split enabling sink for PSR and Panel Replay")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a9d9383e4ee5..0dbcaf644624 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -732,6 +732,9 @@ static void _psr_enable_sink(struct intel_dp *intel_dp,
 			val |= DP_PSR_CRC_VERIFICATION;
 	}
 
+	if (crtc_state->req_psr2_sdp_prior_scanline)
+		val |= DP_PSR_SU_REGION_SCANLINE_CAPTURE;
+
 	if (crtc_state->enable_psr2_su_region_et)
 		val |= DP_PANEL_REPLAY_ENABLE_SU_REGION_ET;
 
-- 
2.34.1

