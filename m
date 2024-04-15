Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE9F8A4A11
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 10:14:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 265B81122EF;
	Mon, 15 Apr 2024 08:14:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mXGi0ghd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04AC41122DD;
 Mon, 15 Apr 2024 08:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713168873; x=1744704873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SbTOvfoFKcTDww7EaEFwUZ2aiZTm+i0axQxkw1wD/6k=;
 b=mXGi0ghddsJiQWas6LMUgb8PpGIyKKJhuvwruCac7YBecuZBHg1NrbM7
 /qK2x6KHMl4YlLUvr1F8ntIQCIwGcUL/Kdq2CslyYH3sTrWEJKkBgg1+F
 kv86Muep9JWOGUmINzjjoP8w4gOJNFyQBb9wnNux7urqwARELn/TLl+38
 4gJkBQgix9rtny0vpQHs8jvbYLCJse4pJU8ZvSkUO80b1YTmbiWJ34JZd
 nyupQNxdU2mckxFfr8TeT7L4iaxjgkpQm9ZUGxJsQFP8HvHfWWeNYceAi
 xxI2fUWwV2L1M1/jRXMuPGbXGsnraxzI0ucK2E+os/UCmEB1FuxwFTa9i A==;
X-CSE-ConnectionGUID: +/zJVyTARXyi5DeRGL/kWw==
X-CSE-MsgGUID: HGSg7WYsS0CxVeCpublnrw==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="9096433"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="9096433"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:32 -0700
X-CSE-ConnectionGUID: 4H22/YHjSEOsOCiBLufFnQ==
X-CSE-MsgGUID: T0vV96v0QYC98YEe496m7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="26400456"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:31 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v3 16/21] Revert "drm/i915/dgfx: DGFX uses direct VBT pin
 mapping"
Date: Mon, 15 Apr 2024 13:44:18 +0530
Message-Id: <20240415081423.495834-17-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
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

From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

This reverts commit 562f33836f519a235e5c5e71bcc723ab1faccd2f.
For BMG it seems that the VBT to DDI mapping does not follow DG1, and
DG2, but follows ADLP mapping given in Bspec:20124.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 2abd2d7ceda2..03fbd6c73f3f 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2238,15 +2238,14 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 	const u8 *ddc_pin_map;
 	int i, n_entries;
 
-	if (IS_DGFX(i915))
-		return vbt_pin;
-
 	if (INTEL_PCH_TYPE(i915) >= PCH_MTL || IS_ALDERLAKE_P(i915)) {
 		ddc_pin_map = adlp_ddc_pin_map;
 		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
 	} else if (IS_ALDERLAKE_S(i915)) {
 		ddc_pin_map = adls_ddc_pin_map;
 		n_entries = ARRAY_SIZE(adls_ddc_pin_map);
+	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
+		return vbt_pin;
 	} else if (IS_ROCKETLAKE(i915) && INTEL_PCH_TYPE(i915) == PCH_TGP) {
 		ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
 		n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
-- 
2.25.1

