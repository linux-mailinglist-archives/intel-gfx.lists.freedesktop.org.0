Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7E0B1B4F6
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 15:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 675AA10E455;
	Tue,  5 Aug 2025 13:34:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eu4nxd0P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7D9710E46F;
 Tue,  5 Aug 2025 13:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754400863; x=1785936863;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ekkg0Y5Dk2ieELTF0jeMpbYSBdaK4H7200k8dbIH6VA=;
 b=eu4nxd0PS2Vr5Ufvoc/tV998GLp9Zk58mjedOCgQeEEMxUg7byVcwyRG
 OVOzrg6WNvWeXyMN29+HExqD2GyERIhEo2gNtJMKobiMu8ugrx30BADIy
 VI/SxIPaF5bCmNnDRuWWIJ+K7xpCFD+QyOiX82pNZFAiqgwnmFUw0er08
 cGcuMRn7ofJ/uw31ZrA8Qq2+3i4d1k7mi4xaSPrmePWnjHx6l56pgkoLt
 7Pjy7PX47qYsCaeaDhhKK99bVa43ye0wNmX4ZIPUi2z8NhyvFl//k6RLs
 GAq4PvDUBj5O+bQ+IBfbMof8a2NMy5poycMB/3ke46nY+VuxMiz6ASINA Q==;
X-CSE-ConnectionGUID: 2Zx3B3tiTPSn7vIucy2Q0g==
X-CSE-MsgGUID: 0uPodcqoQYCpQa4fSZrhGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="67768928"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="67768928"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:34:22 -0700
X-CSE-ConnectionGUID: pTlnZ7uGSFq4FLcYO9ZV+A==
X-CSE-MsgGUID: SeLMHgbITluDokm2bm4eMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="164915365"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:34:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 01/13] drm/i915/skl_watermark: Fix the scaling factor for
 chroma subsampling
Date: Tue,  5 Aug 2025 18:50:04 +0530
Message-ID: <20250805132016.1250202-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250805132016.1250202-1-ankit.k.nautiyal@intel.com>
References: <20250805132016.1250202-1-ankit.k.nautiyal@intel.com>
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

The Bspec:70151, mentions Chroma subsampling is a 2x downscale
operation. This means that the downscale factor is 2 in each direction.
So correct the downscaling factor to 4.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 222c069fdadb..5a120c1f66f4 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2186,7 +2186,7 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
 				    crtc_state->hw.adjusted_mode.clock);
 	int num_scaler_users = hweight32(scaler_state->scaler_users);
 	int chroma_downscaling_factor =
-		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
+		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
 	u32 dsc_prefill_latency = 0;
 
 	if (!crtc_state->dsc.compression_enable ||
@@ -2229,7 +2229,7 @@ scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
 		u64 hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
 		u64 vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
 		int chroma_downscaling_factor =
-			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
+			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
 		int latency;
 
 		latency = DIV_ROUND_UP_ULL((4 * linetime * hscale_k * vscale_k *
-- 
2.45.2

