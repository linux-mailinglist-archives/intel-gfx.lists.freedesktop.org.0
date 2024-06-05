Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADBB8FC906
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:26:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3C1410E5F5;
	Wed,  5 Jun 2024 10:26:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R8WC7dKX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BEFF10E719
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583202; x=1749119202;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hEcKMlOmb7xTiDuD9eMC5s0Shb9U2e2nVNvoTszouHM=;
 b=R8WC7dKXWEcwtsOANhJa/TiyfQOyqtkZ1Pdqk+Mec7M2KPOkwjLkZ8Ua
 A1K9afr1NX3ugj/p6md1OS4NFw/zpoi1Fu6pbSE0lVOUOawqGmZn9DBtU
 d62D+H3j8+gtomHV5Ljj3u/II8yMtguYMbPi87hen5MgdYmZ21TL6C/Yo
 LF+AkLwyJ7jhAP4aZwSeg1eq+vpZsXGDbLygtnWXtxXCRJoolFNcipkCP
 APxqUuzP4zNNF6XZ0JYRReRRIYKvNCGXHHAtA/R4SBERWoJE3S/+98ByO
 Z2Ua91KumBRhaHuVtII/4szGj0pw+dIHCat/Rz3mIOoLmrMFYWy1JjC0/ g==;
X-CSE-ConnectionGUID: eSEZOcyDRJGB/XP6d8BKKQ==
X-CSE-MsgGUID: W8tE8JVCQfWCuuCKkyBfVQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136121"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136121"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:42 -0700
X-CSE-ConnectionGUID: gmilG4vSTeWJQGea/K0EWw==
X-CSE-MsgGUID: iQEGMO1WS86Zh9P7jxi00Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686221"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:40 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 13/26] drm/i915/psr: Check vblank against IO buffer wake
 time on Lunarlake
Date: Wed,  5 Jun 2024 13:25:40 +0300
Message-Id: <20240605102553.187309-14-jouni.hogander@intel.com>
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

As Lunarlake doesn't have block count configuration vblank should be
checked against IO buffer wake time.

Bspec: 68920

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 471b60032304..c9fcb25184ee 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1246,9 +1246,13 @@ static int intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
 static bool vblank_length_valid(struct intel_dp *intel_dp,
 				const struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int vblank = crtc_state->hw.adjusted_mode.crtc_vblank_end -
 		crtc_state->hw.adjusted_mode.crtc_vblank_start;
-	int wake_lines = psr2_block_count_lines(intel_dp);
+	int wake_lines;
+
+	wake_lines = DISPLAY_VER(i915) < 20 ? psr2_block_count_lines(intel_dp) :
+		intel_dp->alpm_parameters.io_wake_lines;
 
 	if (crtc_state->req_psr2_sdp_prior_scanline)
 		vblank -= 1;
-- 
2.34.1

