Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4148B8818EA
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 22:06:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B34B310EAFC;
	Wed, 20 Mar 2024 21:05:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SmoCjmL4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67BFD10EAFC
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 21:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710968759; x=1742504759;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Viusi5bI+gehLjOEfWeudYlWnM+w8NLUlTK2XMaw/Rs=;
 b=SmoCjmL4Bh/bK44u/RSJ7bTBDs2GYhXJ0POIgub+0+fRdvuY9MLjiYKm
 gfZt30Ud2C3SDDLEhs+DSdBiDzKvuP+C+lim5hS+yiBbfrmEbV0OLSw5N
 zSwj8Ol+lTGdS3n9juO3gtiq5nEubA9LxgOEv0V6g6GtI7vG1jCrhTkBT
 F2WGEe8lIbwPvGQg6an19WTC5ZRaPHpZf1+BRUwXaYnf1JnIyfc/jBQ2r
 ltKJklSdilHBJQFnbjs7DqirJ6TG2yxSP667mHowjN5k3CxYXsAxCdxo2
 F/KcgeF/OKm5t04G8ZMY7xlHyCDrMO4zIwm9HpFeMuXBXcxk42EZluzJd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="6533096"
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; 
   d="scan'208";a="6533096"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 14:05:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="14181222"
Received: from josouza-mobl2.bz.intel.com ([10.87.243.88])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 14:05:57 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Subject: [PATCH] drm/i915: Do not print 'pxp init failed with 0' when it
 succeed
Date: Wed, 20 Mar 2024 14:05:47 -0700
Message-ID: <20240320210547.71937-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

It is misleading, if the intention was to also print something
in case it succeed it should have a different string.

Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 9ee902d5b72c4..4b9233c07a22c 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -800,7 +800,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto out_cleanup_modeset2;
 
 	ret = intel_pxp_init(i915);
-	if (ret != -ENODEV)
+	if (ret && ret != -ENODEV)
 		drm_dbg(&i915->drm, "pxp init failed with %d\n", ret);
 
 	ret = intel_display_driver_probe(i915);
-- 
2.44.0

