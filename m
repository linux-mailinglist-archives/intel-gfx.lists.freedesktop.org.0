Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DAD94EB37
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2024 12:34:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64CA310E058;
	Mon, 12 Aug 2024 10:34:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EA2iIOx2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04C0110E058
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2024 10:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723458864; x=1754994864;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GWMxi3Lq3/7chQ+YtS08UuiQPvjW2kCz3nRqwQyjZ3s=;
 b=EA2iIOx2yRMJMFIci+cgPiTS6DxGDq6xLPhkIAIlmm4Zqrp+GLndHPw4
 YmitLHPomVesiDoFxCesMbrTOd3ir3s3zHnxOswhMlN9DFmieA+DHua0Q
 dTzK58NCZKPe7pSpUO0YMfhZ9ssZMA2A5evsnNJOXOjSjdxP8NvunOGEa
 MuKHA1b1/m46VEECHv8QRiVXScf5snVzZYqLIefPPzXCsetRLDNstVAJL
 K9COefkaGxyL+6nUv4LTxISRYVHQgcoJplMrnd5x1lkXFT66eK5GNdRPs
 IvyJBoEdgdag4JXfXZvownDSJddJ/ctZYgS/tb9BEBsnRIHbImNdR9m+X w==;
X-CSE-ConnectionGUID: IQTsuIJASZSVjJN8aMSc7A==
X-CSE-MsgGUID: kt8bf5xCSPiuL8vrNobTmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11161"; a="21440235"
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="21440235"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 03:34:23 -0700
X-CSE-ConnectionGUID: zD6kX9lYQ5qWyc6HQ01AqA==
X-CSE-MsgGUID: 8sSGMon/QpKEai2fezTEpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="89062145"
Received: from iklimasz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.117])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 03:34:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH] drm/i915: use pdev_to_i915() instead of pci_get_drvdata()
 directly
Date: Mon, 12 Aug 2024 13:34:15 +0300
Message-Id: <20240812103415.1540096-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We have a helper for converting pci device to i915 device, use it.

v2: Also convert i915_pci_probe() (Gustavo)

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index ce4dfd65fafa..94c89ca2ef30 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -880,7 +880,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
 {
 	struct drm_i915_private *i915;
 
-	i915 = pci_get_drvdata(pdev);
+	i915 = pdev_to_i915(pdev);
 	if (!i915) /* driver load aborted, nothing to cleanup */
 		return;
 
@@ -1003,7 +1003,7 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		return err;
 
-	if (i915_inject_probe_failure(pci_get_drvdata(pdev))) {
+	if (i915_inject_probe_failure(pdev_to_i915(pdev))) {
 		i915_pci_remove(pdev);
 		return -ENODEV;
 	}
@@ -1025,7 +1025,7 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 static void i915_pci_shutdown(struct pci_dev *pdev)
 {
-	struct drm_i915_private *i915 = pci_get_drvdata(pdev);
+	struct drm_i915_private *i915 = pdev_to_i915(pdev);
 
 	i915_driver_shutdown(i915);
 }
-- 
2.39.2

