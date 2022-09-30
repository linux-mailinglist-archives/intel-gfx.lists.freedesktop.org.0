Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2E15F0CA1
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 15:43:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 644B010ECFE;
	Fri, 30 Sep 2022 13:43:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D00C10ED01
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 13:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664545420; x=1696081420;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K7axzbd86InAJaisTjdqiamPdjD2Av88qQ4xM70EFpc=;
 b=VZzN5/xo3pLC03hITAdGOcZT2eRuiJvP6uKGatAr2bNGpLFLV5tlYrVC
 TILHHSdH1AlF9GJgOs0dt0dCfp3eajgJvIWhUNsW8E380Yb9dSTvAiakH
 XWiAUWC5o8shFkOoUsdir/XzZAH+4o/J6A8iWVcOdtv75XxQq0czvSXse
 zw6XZshTvldYHVp7FP7x4vk+U/8v63cXUykhB0dt7ts/o54mY8YbTKDd5
 r4pwMniujERg/PuahqmY8mmQedD0ddM0ytOP7Zir7G/icWT3UxmJMQBjQ
 b6PNjuwII6bWyIPt/UZXZAOCrJ6cXv5XIiKzSSo6I8kkqNCChgtqlg+V5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="282556126"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="282556126"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 06:43:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="685290166"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="685290166"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga008.fm.intel.com with ESMTP; 30 Sep 2022 06:43:37 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Sep 2022 19:02:23 +0530
Message-Id: <20220930133223.2757282-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Update MOCS table for EHL
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add these extra EHL entries back since we have
drm-tip commit 13d29c823738
("drm/i915/ehl: unconditionally flush the pages on acquire")
introduces proper flushing to make it work as expected.

Cc: Chris Wilson <chris.p.wilson@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Fixes: 046091758b50 ("Revert "drm/i915/ehl: Update MOCS table for EHL"")
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_mocs.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index c6ebe2781076..152244d7f62a 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -207,6 +207,14 @@ static const struct drm_i915_mocs_entry broxton_mocs_table[] = {
 	MOCS_ENTRY(15, \
 		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(2) | LE_AOM(1), \
 		   L3_3_WB), \
+	/* Bypass LLC - Uncached (EHL+) */ \
+	MOCS_ENTRY(16, \
+		   LE_1_UC | LE_TC_1_LLC | LE_SCF(1), \
+		   L3_1_UC), \
+	/* Bypass LLC - L3 (Read-Only) (EHL+) */ \
+	MOCS_ENTRY(17, \
+		   LE_1_UC | LE_TC_1_LLC | LE_SCF(1), \
+		   L3_3_WB), \
 	/* Self-Snoop - L3 + LLC */ \
 	MOCS_ENTRY(18, \
 		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(3) | LE_SSE(3), \
-- 
2.34.1

