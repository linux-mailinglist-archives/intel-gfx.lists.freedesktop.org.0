Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 210B9896E0F
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:23:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A3B210ED19;
	Wed,  3 Apr 2024 11:23:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fcIADIhj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC23D112A18;
 Wed,  3 Apr 2024 11:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712143382; x=1743679382;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QxM+kkrrWmnY6l+PtNpH+qYLdv73kcRtv8GuKIRMRN8=;
 b=fcIADIhjAuojkYI8PHbF+C2chxrqgeLpJTsfjHD2tEHPLjYiGkH+aeLm
 JNc94955tDL1Z4b9Yqjk3y585XqUt84VDaxmKeuvgzegHS9VGNA7Xcefd
 WgnAmdfgKh/48xsMHFD10ku2wrxm1iW5ayj0S6Zp37QpOhisJr3T1mZ6R
 Qz2fOy6ukaQQUp/vRJra+8TZBeoPwICMhbynIbNeHr8FH9IHpVN9RKfxa
 KP2CkLUmASP31HZHVaIiCwa3LHzFMoNsRNrpocz3QDcWhYHjBPUFyFpLY
 EvRbM/5/HCKMeHFirTvs/LZ3ykjRFnZf0QWHJIohMGDrgxR+sBWsWiy0v Q==;
X-CSE-ConnectionGUID: a5OuARaCQvit/WaVD3B0fA==
X-CSE-MsgGUID: ifmbQosIRqKiayMLYPNuHw==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24824053"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24824053"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:02 -0700
X-CSE-ConnectionGUID: kb/Vby8ZQ+Kppi5VMRNzVA==
X-CSE-MsgGUID: HKZvaaqaQZ2i2P8hmQHRrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18358509"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:00 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v2 07/25] Revert "drm/i915/dgfx: DGFX uses direct VBT pin
 mapping"
Date: Wed,  3 Apr 2024 16:52:35 +0530
Message-Id: <20240403112253.1432390-8-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
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

