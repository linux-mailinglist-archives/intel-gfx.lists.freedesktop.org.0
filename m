Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FCE8B7E93
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:31:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CA3C112D92;
	Tue, 30 Apr 2024 17:31:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EiHYZJ87";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EFE3112D77;
 Tue, 30 Apr 2024 17:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498221; x=1746034221;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L23EFbpp/8lafdT3ysklOzFGp7/DGXe33oG5UadcWO4=;
 b=EiHYZJ87JhUMkNdStWbrF8nrjyiRMpr1bxvFjz/R6F9eObY2gquvW0yc
 G9W3mgNE13d8E66xSuKFy2cz7r5UzvoFY8xTYDAwb99UBcJDYggIzZ6e6
 YzXcMBZFdxtuKmOXTuILubx2KhRO0mZznEk06OtpJOA9QUG2EebqcqT+Z
 Ev0U+q7J28Hm/8R2RAxoRS3JvZWs9axs8YFdhMxOCUMe/l5w4P+D2aP2X
 5+pt4oBGQXinz1n46SDdbrB3lqwkBdBYJ+CQ6pfcrzYqvwSkBylEe/DcC
 ypU+aT/XcKVnWgVzASSAmqZkXEFpppuadnlv8jsw3WmyFqvaCAGTRblFm Q==;
X-CSE-ConnectionGUID: 1guZNPdNSsaj1Q2TodX44w==
X-CSE-MsgGUID: T63+/U1pRhGchM/iox3RyA==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27742000"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27742000"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:21 -0700
X-CSE-ConnectionGUID: mTbd3I6SQU6fbMHrPSgrMQ==
X-CSE-MsgGUID: Z9cQrJNLQoqbhi4h5MZMWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617852"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:21 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 14/19] Revert "drm/i915/dgfx: DGFX uses direct VBT pin
 mapping"
Date: Tue, 30 Apr 2024 10:28:45 -0700
Message-Id: <20240430172850.1881525-15-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
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
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 661842a3c2e6..cf770c866d13 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2231,15 +2231,14 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
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
2.34.1

