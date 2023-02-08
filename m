Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BC068F7B9
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 20:03:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C0410E833;
	Wed,  8 Feb 2023 19:03:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BDB510E823;
 Wed,  8 Feb 2023 19:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675882998; x=1707418998;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yXRHPYJ5lGYcG2IJVp1mt+9W25z5a49bMaVwdY9Vj9k=;
 b=CEB3rBia9vE8QR4HgZtHEYtm0fSmkadWCT9xTc87ZtaQTAZUaDQstDO4
 9JA83DGaMyYESCJi3sSRpMzipBVW4bkrBl+GtDEX1G7BIkwF4uzON0+SJ
 x0oa6qjHunigzgZsJuKlNIliKILR/WwH1kXrTTwdm5mtMhEJXj60whOqG
 OdEebETKW9dC08UfYRwm8SZ90Yx/RKG2WBNgsjYmexv1jaaL6YDeTj/fJ
 xQl335qa+N9npBdTJqbDnxzDQjk/AHLY9kYdD9MPBDXLz43iufaSXBjRd
 U76WPXiU9DaVw40vmcOm7amPDx8hNNxi7VPQ3uoKtcvqy9XET2fR9RHfR w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="317900980"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="317900980"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 11:03:17 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="756140869"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="756140869"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 11:03:16 -0800
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 11:03:12 -0800
Message-Id: <20230208190312.1611335-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] Revert "drm/i915/hwmon: Enable PL1 power limit"
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
Cc: Matthew Auld <matthew.auld@intel.com>, dri-devel@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 0349c41b05968befaffa5fbb7e73d0ee6004f610.

0349c41b0596 ("drm/i915/hwmon: Enable PL1 power limit") is incorrect and
caused a major regression on ATSM. The change enabled the PL1 power limit
but FW sets the default value of the PL1 limit to 0 which implies HW now
works at minimum power and therefore the lowest effective frequency. This
means all workloads now run slower resulting in even GuC FW load operations
timing out, rendering ATSM unusable.

A different solution to the original issue of the PL1 limit being disabled
on ATSM is needed but till that is developed, revert 0349c41b0596.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8062
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 4683a5b96eff1..1225bc432f0d5 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -687,11 +687,6 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
 		for_each_gt(gt, i915, i)
 			hwm_energy(&hwmon->ddat_gt[i], &energy);
 	}
-
-	/* Enable PL1 power limit */
-	if (i915_mmio_reg_valid(hwmon->rg.pkg_rapl_limit))
-		hwm_locked_with_pm_intel_uncore_rmw(ddat, hwmon->rg.pkg_rapl_limit,
-						    PKG_PWR_LIM_1_EN, PKG_PWR_LIM_1_EN);
 }
 
 void i915_hwmon_register(struct drm_i915_private *i915)
-- 
2.38.0

