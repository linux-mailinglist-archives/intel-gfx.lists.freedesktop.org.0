Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9CAA0735E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 11:35:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35D6A10ED5A;
	Thu,  9 Jan 2025 10:35:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gdabgmtp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C43110ED56;
 Thu,  9 Jan 2025 10:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736418950; x=1767954950;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dxBzcNn2jqYUBiyfcNoE897ge8Y4viF1POsFRq5Y86E=;
 b=gdabgmtpMXltBzVyeVukT56fP+0QMDjUGRZIOjdhNRQn25ac4SCjVtDH
 e4pKH5panLknyiEXpf2wcd/OLQwhEmjLV559Sa8tJoXSem0AzaGMZ74G9
 DjG9xN4kDOPRbk7UMGUX5eJUzW1RdfLypnXcbBYi3+OaQpWrsBWRgUq2x
 0WRcFx/EUh516kF1iL3qFkt2ibs7/mRwAKqQfTWDpNGmJf43R4mL1SuFY
 TTXrrcytxAaFYxlgZH+/nUMXDuUh6TShmFyckS67YAJjQAWLBfbkfITot
 rXtb+aQQFagP3zZEQR5GxfEF4aENeYx4B34fvY8Ipq77awNKKqO5RFITp Q==;
X-CSE-ConnectionGUID: 748sJf4GRWyL5KuNiAN2nQ==
X-CSE-MsgGUID: PRXEWFO4SOuh5g8kbiAcfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="48034987"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="48034987"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 02:35:50 -0800
X-CSE-ConnectionGUID: 1hy64ExnSmC4wvPdaA61rw==
X-CSE-MsgGUID: 5FSISMjTSg6oKchUF9a2zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="103333021"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.185])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 02:35:48 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/4] drm/i915/psr: Enable Panel Replay on sink always when
 it's supported
Date: Thu,  9 Jan 2025 12:35:30 +0200
Message-ID: <20250109103532.2093356-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250109103532.2093356-1-jouni.hogander@intel.com>
References: <20250109103532.2093356-1-jouni.hogander@intel.com>
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

Currently we are configuring Panel Replay on sink when it get's
enabled. This means we need to do full modeset when enabling Panel
Replay. This is required as DP specification is saying sink Panel Replay
needs to be configured before link training. Avoid full modeset by enabling
Panel Replay on sink always when it's supported by the sink and the
source.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4f9c50996446..b0ea56e166c5 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2890,8 +2890,7 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
 					    crtc_state);
 
 	/* Panel replay has to be enabled in sink dpcd before link training. */
-	if (crtc_state->has_panel_replay)
-		intel_psr_enable_sink(enc_to_intel_dp(encoder), crtc_state);
+	intel_psr_panel_replay_enable_sink(enc_to_intel_dp(encoder));
 
 	if (DISPLAY_VER(display) >= 14)
 		mtl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
-- 
2.34.1

