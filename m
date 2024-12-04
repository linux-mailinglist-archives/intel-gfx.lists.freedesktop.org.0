Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 443749E366F
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 10:24:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEE4D10EC93;
	Wed,  4 Dec 2024 09:24:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V9Kyjje2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ADB010EC83;
 Wed,  4 Dec 2024 09:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733304246; x=1764840246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kt7cjM1rItcQm4RXH/ps89bbKgmNn5y8EuBMWbhjCBc=;
 b=V9Kyjje28ABbjU0UU04gSswmplHfEAbdXODozZBmLNj3PzMH88KXyDYk
 /6ugl+l7wcZWxbqECzwI3M5bA3NeHCA3t1M0EcGxsqtOxMQkwtEavZesH
 4JdQ/EnK9NXoWkS6XIClo11RGIx1RZtc8Ej0TvwQ5gJ7Kw88rTFdxw0d+
 ysSnoTliotC4AFmuCJ6q2a4zMQqrqI/u7pmSGLpLSODL7OHSWkxIPiwJ+
 WtzC1B0JdJUM0OGwfvSvL6qS3MOrUzDfUoICer2cj91F8aE1wuWd66dQu
 cXTMojjk9rFXGw7dtGjoGpP7V5KL2BJVvJYzB1lY05KOMAhq+8RYAzlil A==;
X-CSE-ConnectionGUID: pfBBEb7gTCCSUn/Ju2ie9w==
X-CSE-MsgGUID: tetfCVslR2SndsL1SOi+ow==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44038460"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44038460"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:06 -0800
X-CSE-ConnectionGUID: q9tznY/sSb6v0ri+zQxd2w==
X-CSE-MsgGUID: DvJusBKFQn2GttMQrXMn6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93555118"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:03 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 05/14] drm/i915/dp: Remove HAS_DSC macro for
 intel_dp_dsc_max_src_input_bpc
Date: Wed,  4 Dec 2024 14:56:33 +0530
Message-ID: <20241204092642.1835807-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
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

DSC support is already checked before the helper
intel_dp_dsc_max_src_input_bpc is called.
Remove the check from the helper.

v2: Drop the argument struct drm_i915_private *i915. (Suraj)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d48fa94b2705..3989873c9516 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2184,10 +2184,10 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 }
 
 static
-u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
+u8 intel_dp_dsc_min_src_input_bpc(void)
 {
 	/* Min DSC Input BPC for ICL+ is 8 */
-	return HAS_DSC(i915) ? 8 : 0;
+	return 8;
 }
 
 static
@@ -2199,7 +2199,7 @@ bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
 	u8 dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
 
 	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(i915), conn_state->max_requested_bpc);
-	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
+	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
 
 	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 	dsc_min_pipe_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
@@ -2266,7 +2266,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
 	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 
-	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
+	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
 	dsc_min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
 
 	/*
-- 
2.45.2

