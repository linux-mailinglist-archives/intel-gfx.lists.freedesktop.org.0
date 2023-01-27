Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4317867EA53
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 17:03:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C55010E181;
	Fri, 27 Jan 2023 16:03:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 242D610E181
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 16:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674835409; x=1706371409;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7RyTvkTwaI5Sx9cGLRz7NvNEqf4XVSlOgwGcKeRUc64=;
 b=GxN7/dWrPLUtMFPcsGXVia2gyep+UC6IwsBj3b/ri8/TspuowHQeaAKz
 TRk4AIxrX3sP4MEGKnX8XsJbrdVvhhVQgSJea285s3xwfSDozczKluU/F
 6C5UqkpkUfNn2HJWJ8VT/XRBq3lqI1TsEFr5qXNNe6gBjoiWIYBycGWdE
 DQtDZs6KlXYKSAMg872WEQZcfqz5hgo32IVYvAzZ5uaKKHb9zaiJC0Gr5
 +VmPrwvXKG1I+KSwhWFQwDk6tgGtZDclxhOc5QQtVKwwlHV3wAqSU4hD+
 umGpTMI6yWuY97Z1DHoSMC67WzW0Blat4xxs6mAz5jzgP/jAfTh/FWsnT g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="329243608"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="329243608"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 08:03:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="695574775"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="695574775"
Received: from pahousto-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.29.163])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 08:03:27 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Jan 2023 16:03:21 +0000
Message-Id: <20230127160321.374350-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: probe lmem before the stolen portion
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

At the very least, we have some tests that force the BAR size for
testing purposes, which would result in different BAR size with
stolen-lmem vs normal lmem, since the BAR is only resized as part of the
normal lmem probing.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index cf1c0970ecb4..320a4f861659 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -489,13 +489,17 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	if (ret)
 		goto err_ggtt;
 
-	ret = intel_memory_regions_hw_probe(dev_priv);
+	/*
+	 * Make sure we probe lmem before we probe stolen-lmem. The BAR size
+	 * might be different due to bar resizing.
+	 */
+	ret = intel_gt_tiles_init(dev_priv);
 	if (ret)
 		goto err_ggtt;
 
-	ret = intel_gt_tiles_init(dev_priv);
+	ret = intel_memory_regions_hw_probe(dev_priv);
 	if (ret)
-		goto err_mem_regions;
+		goto err_ggtt;
 
 	ret = i915_ggtt_enable_hw(dev_priv);
 	if (ret) {
-- 
2.39.1

