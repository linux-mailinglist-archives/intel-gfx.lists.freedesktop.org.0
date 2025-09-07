Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 866DCB47965
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Sep 2025 09:46:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3751D10E18E;
	Sun,  7 Sep 2025 07:46:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="juOpNhNB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86CA310E183;
 Sun,  7 Sep 2025 07:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757231189; x=1788767189;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8kTPNv/456LtJVzYy+Cg0Q0WUX+V6sUfUsEZXkhiLKY=;
 b=juOpNhNBV2t0EVToyaBSV8SuLsNIyMBUEm2L2cyVV9YbbysoOX2X2wyL
 rG/jANSlvO8ill/hilkkcf/u123zFJU98gIgbSrvabzPZhEwGwBOFQsus
 cvyKk7VjKX37KasBqX5I++Hx59Bzq0HWR3cUyv1kB7c0oa8ufF1pJJJzY
 QXV36gepmSsyyGaCnT+TwrOEcO1BNfIADOd57sYX8yciH8w97236C19/T
 NJiJSbzqze0cB6lY4oaGcjjSk5uZcGCUaUSlU03Um7fuEOne8CSyXzX+2
 0iIr11Ky6HWLxJPRhx1Ertk+uTL7qM3zyt+GDa19bVWH5LcP1HaDvrFvb A==;
X-CSE-ConnectionGUID: moEoaK5ISV+yXJkqhMwkxQ==
X-CSE-MsgGUID: BlZd8+TWTLOIV9Y46bq2pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11545"; a="70220284"
X-IronPort-AV: E=Sophos;i="6.18,246,1751266800"; d="scan'208";a="70220284"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 00:46:19 -0700
X-CSE-ConnectionGUID: v5CKbx4NR4eTiwHQC63Bng==
X-CSE-MsgGUID: jv6pVozITPaQcsE51sOElQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,246,1751266800"; d="scan'208";a="176873943"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 00:46:17 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 02/14] drm/i915/skl_watermark: Fix the scaling factor for
 chroma subsampling
Date: Sun,  7 Sep 2025 13:02:29 +0530
Message-ID: <20250907073241.19632-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250907073241.19632-1-ankit.k.nautiyal@intel.com>
References: <20250907073241.19632-1-ankit.k.nautiyal@intel.com>
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
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d74cbb43ae6f..51548447f4aa 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2185,7 +2185,7 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
 				    crtc_state->hw.adjusted_mode.clock);
 	int num_scaler_users = hweight32(scaler_state->scaler_users);
 	int chroma_downscaling_factor =
-		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
+		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
 	u32 dsc_prefill_latency = 0;
 
 	if (!crtc_state->dsc.compression_enable ||
@@ -2228,7 +2228,7 @@ scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
 		u64 hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
 		u64 vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
 		int chroma_downscaling_factor =
-			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
+			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
 		int latency;
 
 		latency = DIV_ROUND_UP_ULL((4 * linetime * hscale_k * vscale_k *
-- 
2.45.2

