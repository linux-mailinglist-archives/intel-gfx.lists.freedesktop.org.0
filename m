Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B03FA578A5C
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jul 2022 21:12:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA73C10FB59;
	Mon, 18 Jul 2022 19:12:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A04510FB59
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jul 2022 19:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658171571; x=1689707571;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2VH0h7v9QR68L6zaqXajUtzNmdB+edgB+vL2P4CHDMU=;
 b=LWav6sDXMhhP7BkauKMWbv/lpyoQzf2OH0ZENj5szssZZ+8xt26Gk2Tn
 AJKdnqZtKAdR6S/0jWG8X3YcfI4DiqRJZb0l4zwfPSNPSpdvDsPaBt/No
 EA39+934ED8yUBcQ5IuQA/WgcNpL6HCIbOTQteH2e6S6db8LtFGC2UV2N
 0/bBqOGWFgtTmNjpf46LWJuUY/T2uZ54TV9pj5Bx7xfrDci/fE+p/lE+5
 XIh0EzIukuyn2SoRPK3y7VNVd3xWmg5cnJa7z1RD/BiKngbJ9NozFfoAc
 pZpxYmy1ah4XbvGmVh7t052RhJjiVXJP1SMHJxCggMrFHrn6xZmPUSAc+ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="283867408"
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="283867408"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 12:12:50 -0700
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="624856942"
Received: from niota-mobl1.amr.corp.intel.com (HELO anushasr-mobl7.intel.com)
 ([10.212.212.212])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 12:12:49 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jul 2022 12:12:12 -0700
Message-Id: <20220718191212.166141-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Cleanup intel_phy_is_combo()
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

No functional change. Cleanup the intel_phy_is_combo
to accomodate for cases where combo phy is not available.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a0f84cbe974f..b69208cf9a5e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2082,20 +2082,13 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
 {
 	if (phy == PHY_NONE)
 		return false;
-	else if (IS_DG2(dev_priv))
-		/*
-		 * DG2 outputs labelled as "combo PHY" in the bspec use
-		 * SNPS PHYs with completely different programming,
-		 * hence we always return false here.
-		 */
-		return false;
 	else if (IS_ALDERLAKE_S(dev_priv))
 		return phy <= PHY_E;
 	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
 		return phy <= PHY_D;
 	else if (IS_JSL_EHL(dev_priv))
 		return phy <= PHY_C;
-	else if (DISPLAY_VER(dev_priv) >= 11)
+	else if (IS_ALDERLAKE_P(dev_priv) || IS_DISPLAY_VER(dev_priv, 11, 12))
 		return phy <= PHY_B;
 	else
 		return false;
-- 
2.25.1

