Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4A05512FB
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:38:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05AC110E2ED;
	Mon, 20 Jun 2022 08:38:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9EE810E2DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714327; x=1687250327;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CftfihsdME9Ceo+evt8TvuJ20GD6dz8lmMvgkOx3KtA=;
 b=DxaVilp7bSMzHDKWMxhCUdkb8U9WbjTA6f3iWKjmsrZl3t7Ae2hYkTlE
 5OKSJpM5PmWEORAGBJfqA4DyMcsq+Nihe9fVPZRLpiqd6gPsbBkswJ7Wt
 +QGdNISLDNaATD9MBKmlDgeOK9xKtvbGWAYbfPVibNx9bXEsMnoZcdY07
 FDDv43YHGj4uPRWCgquvGCRzXbLZa019mu+vGIv1+wuFu//agtVCSPep1
 T33vwsrF1tjw60WTj7O/mMqcsx9h1A2QxM+zZmMbTT7UByxnoLychQ6LC
 ZBSlrZvef57y4NZC1J+RL4sgV/AK/2YIsBowvkCnOrCaqLXMCDviquwoz g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="305275754"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="305275754"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:38:47 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="591075879"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:38:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 11:38:00 +0300
Message-Id: <473e9c4d9c5a21d742b72dad27cca87402796abb.1655712106.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655712106.git.jani.nikula@intel.com>
References: <cover.1655712106.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/16] drm/i915: use GRAPHICS_VER() instead of
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
GRAPHICS_VER() intead of looking at match_info directly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d26dcca7e654..aeec3dfe3ebf 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -829,8 +829,6 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
  */
 int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 {
-	const struct intel_device_info *match_info =
-		(struct intel_device_info *)ent->driver_data;
 	struct drm_i915_private *i915;
 	int ret;
 
@@ -839,7 +837,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		return PTR_ERR(i915);
 
 	/* Disable nuclear pageflip by default on pre-ILK */
-	if (!i915->params.nuclear_pageflip && match_info->graphics.ver < 5)
+	if (!i915->params.nuclear_pageflip && GRAPHICS_VER(i915) < 5)
 		i915->drm.driver_features &= ~DRIVER_ATOMIC;
 
 	ret = pci_enable_device(pdev);
-- 
2.30.2

