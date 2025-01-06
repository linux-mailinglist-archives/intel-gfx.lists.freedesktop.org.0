Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB77A01E6F
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 05:08:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F85210E56E;
	Mon,  6 Jan 2025 04:08:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TbnXIM6G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D30010E56D;
 Mon,  6 Jan 2025 04:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736136526; x=1767672526;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J6okatLfv6j7p93lA1d+MWvj95mxNqde5fuUIun8xFI=;
 b=TbnXIM6Gvy6LxVhn1NtE61rTC3j/0zJ0ADQlxC13dLIdz3QcBaO/kIk8
 SgzQUpsBKFpsmoe+kBWN/qgHNtsr5BQ79Bckvzra6FbmWImSrtIMPrSi0
 j+28onLWAdXUMVDoguJocj57qvyeoifS6Mc4RGYu4AX+BkgGbUBi1JWKj
 B4wO4xFTVt5v//w+WTx2akaGob8yCRt/NOFVBabynJJCuaYxD6R/uYz6u
 yUfvadKvZ93DE6uGYudFC683vuAp081PMnOXL0UmfTdZMkfA3hEnFSM5f
 hYv8AzTIFghCfnjAg0iO0+2i5lYt98P8ubfGNm4HpXKhrMw+pJj5rhbBs Q==;
X-CSE-ConnectionGUID: llFJUiK/SwaqJSwaZ0SHPg==
X-CSE-MsgGUID: 0c3WF/OYT8mJTp40wRL2Gw==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="40214655"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="40214655"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2025 20:08:46 -0800
X-CSE-ConnectionGUID: 6ArjwjimSrSxaEmIps7dnw==
X-CSE-MsgGUID: zniDBtRyRj6XfYShSEONrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="102816087"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa010.fm.intel.com with ESMTP; 05 Jan 2025 20:08:44 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/cx0: Fix SSC enablement in PORT_CLOCK_CTL
Date: Mon,  6 Jan 2025 09:38:20 +0530
Message-Id: <20250106040821.251114-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250106040821.251114-1-suraj.kandpal@intel.com>
References: <20250106040821.251114-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

SSC for PLL_A is enabled for UHBR10 or UHBR20 regardless of the
need for SSC. This means the ssc_enabled variable had no say
to determine enablement of SSC on PLL A.

Bspec: 64568, 74165, 74489, 74491
Fixes: 237e7be0bf57 ("drm/i915/mtl: For DP2.0 10G and 20G rates use MPLLA")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index e768dc6a15b3..3fd959a2773c 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2747,7 +2747,7 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 	/* TODO: HDMI FRL */
 	/* DP2.0 10G and 20G rates enable MPLLA*/
 	if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000)
-		val |= crtc_state->dpll_hw_state.cx0pll.ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
+		val |= XELPDP_SSC_ENABLE_PLLA;
 	else
 		val |= crtc_state->dpll_hw_state.cx0pll.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
 
-- 
2.34.1

