Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2078355E537
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 16:10:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ACB710F172;
	Tue, 28 Jun 2022 14:10:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0A7C10EFC5
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jun 2022 14:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656425412; x=1687961412;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rhl29QVSsMVOyWSJ23iK4zzpG1ggFOifgOlh+Qmq8SQ=;
 b=hCcZ8ILwKBRV0t95CaOOBwv5d9G4ecrhswpSSSpo1sfiOAjkw9rAajGt
 ranTK2k137GkMDR2/RpYH1sYJ8/WmsvwAIllr3HB3kv/tiPMLeOqRFazY
 rf8i0vPtpb3ux8nJ0aapKtNyp8u88nAkMpoaZteG6yw+7fZnlay/pizuK
 IwaxAN1iqZ9fk7pew2G0+gLuwULUAGE35SKR3HxFnWNLXfaGe+9FoP7vn
 KE8YlSq55RxZfP91x+qOI3tdM5yGE3F4WXEIrcG7Zo2rWrflas3vJBYSk
 eJw59OlyuZm8q3ZFvmSHihwiumUMMHLu1MrCJDPChcSqJl/ibaDZPLuYB Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="261554334"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="261554334"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 07:10:11 -0700
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="646927816"
Received: from mwardyn-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.49.11])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 07:10:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jun 2022 17:10:05 +0300
Message-Id: <20220628141005.226252-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: use DISPLAY_VER() instead of
 accessing match_info directly
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We've just set up device info in i915_driver_create() so we can use
DISPLAY_VER() intead of looking at match_info directly.

Semantically we want to check the display version instead of the
graphics version, and for the earlier platforms they are always the
same.

v2: Use DISPLAY_VER() instead of GRAPHICS_VER() (Ville)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 6e5849c1086f..b2e14cd76d7e 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -847,8 +847,6 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
  */
 int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 {
-	const struct intel_device_info *match_info =
-		(struct intel_device_info *)ent->driver_data;
 	struct drm_i915_private *i915;
 	int ret;
 
@@ -857,7 +855,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		return PTR_ERR(i915);
 
 	/* Disable nuclear pageflip by default on pre-ILK */
-	if (!i915->params.nuclear_pageflip && match_info->graphics.ver < 5)
+	if (!i915->params.nuclear_pageflip && DISPLAY_VER(i915) < 5)
 		i915->drm.driver_features &= ~DRIVER_ATOMIC;
 
 	ret = pci_enable_device(pdev);
-- 
2.30.2

