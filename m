Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB465F5795
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 17:32:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ABBD10E6B7;
	Wed,  5 Oct 2022 15:32:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B15C610E6B9
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 15:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664983920; x=1696519920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bBHJrf7g2Zw1Cze2FDcQXUIOEbNnqd9OlezMSIMhdYA=;
 b=S1nAeu91W3ImxzYpPJtQT4iRBSbRQFrjWDJOtjcSHOVemegaint2XbDQ
 3Ys1FZUA3ZouftUMPxkSox5N6D85GcoWTct4vjvziuRuJBx2zMINvVVxg
 EgTxIP2sA0LMI3GyAVHdtZLJ/qjI0u7KE16cu4PoA8p9ZXGR19Cw5HqTt
 m+g4QaEflKABklPTG2SM2ko96Y//LnGppE15Vf4iOVzqjXChsUAGcI9Bh
 B6w7HUZ9fBNlZs8XmG3vt04IybgMKULQ2Yp+t3kZ+vmX+nk+pKrTw4fll
 m7/pFkDwmV9h1bGAZRLLimfT82WX9QvBUhmWzjB15r8OoAZDy5b08SEOB A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="304756391"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="304756391"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 08:32:00 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="728692564"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="728692564"
Received: from vadimbel-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.23.121])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 08:31:59 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 16:31:48 +0100
Message-Id: <20221005153148.758822-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221005153148.758822-1-matthew.auld@intel.com>
References: <20221005153148.758822-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: restore stolen memory behaviour
 for DG2
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

Restore the previous behaviour here where we compare the
pci_resource_len() with the actual lmem_size, and not the dsm size,
since dsm here is just some subset snipped off the end of the lmem.
Otherwise we will incorrectly report an io_size > 0 on small-bar
systems.

It doesn't looks like MTL is expecting small-bar with its stolen memory,
based on:

  GEM_BUG_ON(pci_resource_len(pdev, GEN12_LMEM_BAR) != SZ_256M)
  GEM_BUG_ON((dsm_size + SZ_8M) > lmem_size)

So just move the HAS_BAR2_SMEM_STOLEN() check first, which then ignores
the small bar part, and we can go back to checking lmem_size against the
BAR size.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7007
Fixes: dbb2ffbfd708 ("drm/i915/mtl: enable local stolen memory")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 2c4922961f33..1e00cf4d3ace 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -917,11 +917,11 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 	}
 
 	io_size = dsm_size;
-	if (pci_resource_len(pdev, GEN12_LMEM_BAR) < dsm_size) {
+	if (HAS_BAR2_SMEM_STOLEN(i915)) {
+		io_start = pci_resource_start(pdev, GEN12_LMEM_BAR) + SZ_8M;
+	} else if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
 		io_start = 0;
 		io_size = 0;
-	} else if (HAS_BAR2_SMEM_STOLEN(i915)) {
-		io_start = pci_resource_start(pdev, GEN12_LMEM_BAR) + SZ_8M;
 	} else {
 		io_start = pci_resource_start(pdev, GEN12_LMEM_BAR) + dsm_base;
 	}
-- 
2.37.3

