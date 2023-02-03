Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0EF68A6E3
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Feb 2023 00:25:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24B3310E06F;
	Fri,  3 Feb 2023 23:25:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D204A10E06F
 for <Intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 23:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675466750; x=1707002750;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9r8ILoADVpVFdLiOjf6GUvyoq60ruV2bRBODE4zwCPw=;
 b=camlEHE3yWarQfO+fZ9XKPIXAPwHINobSGDWYv7XXiApge723nCXLB+6
 U6Lo/6rhhTsSQyWR0TUiRTdIsmLuX74x8ERcKGD0IkIAcNiH0SF4pZNr3
 SaiMsuY4Kg6aEEGEpBS37lASsaj3WHwOJ38ETSM0Mx2+yw+8CImZva0wT
 SjdV819fs8KSPahVqmSjpRcNTbbx3fgs/rD/RQ9AQOSgspwHQpTUMSb6k
 JaxN/8+065mknl6wBCEf94b8OMvDoHcrl/+Ac2nfp71C6AXEu4dAUskfH
 X3FGSEZDMJNhKTMbLx1Yaq9tjBqQRVJCHnaHv8qwpGKFbwffPAU9D4rTW Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="308525002"
X-IronPort-AV: E=Sophos;i="5.97,271,1669104000"; d="scan'208";a="308525002"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 15:25:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="774501013"
X-IronPort-AV: E=Sophos;i="5.97,271,1669104000"; d="scan'208";a="774501013"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.136])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 15:25:49 -0800
From: Clint Taylor <clinton.a.taylor@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  3 Feb 2023 15:20:20 -0800
Message-Id: <20230203232020.1395644-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dgfx: DGFX uses direct VBT pin mapping
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

DDC pin mapping for DGFX cards uses direct VBT pin mapping

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index e6ca51232dcf..c1fcf4d53471 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2189,14 +2189,15 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 	const u8 *ddc_pin_map;
 	int n_entries;
 
+	if (IS_DGFX(i915))
+		return vbt_pin;
+
 	if (HAS_PCH_MTP(i915) || IS_ALDERLAKE_P(i915)) {
 		ddc_pin_map = adlp_ddc_pin_map;
 		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
 	} else if (IS_ALDERLAKE_S(i915)) {
 		ddc_pin_map = adls_ddc_pin_map;
 		n_entries = ARRAY_SIZE(adls_ddc_pin_map);
-	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
-		return vbt_pin;
 	} else if (IS_ROCKETLAKE(i915) && INTEL_PCH_TYPE(i915) == PCH_TGP) {
 		ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
 		n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
-- 
2.25.1

