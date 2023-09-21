Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C95947A91F3
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 09:15:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FD3F10E578;
	Thu, 21 Sep 2023 07:15:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2108F10E578
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 07:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695280510; x=1726816510;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wBPlaWXOF4CToz1V0szIcNHMkr4FWaudxDB1hTssyxo=;
 b=TmPvpzlw8n2aT6OoROGSfKGXttk3jVV9k7zHQTg8HyugGr0fdR4dQckh
 v+6k9iNhyNwpnl8TN04pCvIk+AT2CJyZlVB5DaVoI0nM871NqjcqIgAtp
 maeAE5mLMfuGE2XThjQTVTRvJohMyPCBwq7O9yh0Tu3nJlG+XleXnodr3
 nlauzeLmD0zGfTEjWM8BfWkQlBKK0leuRv8e1fU4GA+Qf79br2SPj1lhg
 7dMLqp/YGq/sGIg+P3wAfyIoh/oAyGGzC2KMnN652TgxJ3Phu9158wgvv
 /LJrfD0oSVm87FEthoeXwLUFbk4NG5gmUzk/Q6BOBcjgzTcP6+FC7csQG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="379324011"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="379324011"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 00:13:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="817259404"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="817259404"
Received: from bvivekan-desk.iind.intel.com ([10.190.239.116])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 00:13:42 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 12:48:20 +0530
Message-Id: <20230921071820.1969102-1-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Print display info inside
 driver display initialization
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Separate the printing of display version and feature flags from the main
driver probe to inside the display initialization. This is in alignment
with isolating the display code from the main driver and helps Xe driver
to resuse it.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 5 +++++
 drivers/gpu/drm/i915/i915_driver.c                  | 2 --
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 9d9b034b9bdc..2fbb3c956336 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -380,6 +380,8 @@ int intel_display_driver_probe(struct drm_i915_private *i915)
 
 void intel_display_driver_register(struct drm_i915_private *i915)
 {
+	struct drm_printer p = drm_info_printer(i915->drm.dev);
+
 	if (!HAS_DISPLAY(i915))
 		return;
 
@@ -407,6 +409,9 @@ void intel_display_driver_register(struct drm_i915_private *i915)
 	 * fbdev->async_cookie.
 	 */
 	drm_kms_helper_poll_init(&i915->drm);
+
+	intel_display_device_info_print(DISPLAY_INFO(i915),
+					DISPLAY_RUNTIME_INFO(i915), &p);
 }
 
 /* part #1: call before irq uninstall */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index e5d693904123..d50347e5773a 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -699,8 +699,6 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 
 		intel_device_info_print(INTEL_INFO(dev_priv),
 					RUNTIME_INFO(dev_priv), &p);
-		intel_display_device_info_print(DISPLAY_INFO(dev_priv),
-						DISPLAY_RUNTIME_INFO(dev_priv), &p);
 		i915_print_iommu_status(dev_priv, &p);
 		for_each_gt(gt, dev_priv, i)
 			intel_gt_info_print(&gt->info, &p);
-- 
2.25.1

