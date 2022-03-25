Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40ADC4E6CB2
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 03:59:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C887C10E9D8;
	Fri, 25 Mar 2022 02:59:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2CE110EA80
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648177193; x=1679713193;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4hs7nYH+f++9jUHCQWY1P7+WUwWjMGW0Ic4FSR3OLdk=;
 b=kdO/VAXJ89M+6P9ICYyW2sAgl/LJyiYGtUCX6egwsFvjsXSlUVTZjeLp
 Ir8buYT+F4hpL3AdtjKUCXD2n8LUIB9Voco91Ksmx3URYZhZ/C83yFRxJ
 mDk5mXamg7B1Vktg2pBaqWY93KxNFR99ZFSZWHaF0aD5OiKZ70QE9H7M3
 KrQvxIS0Tt46yD/8sKPzqpPGzBPvfQ2efBStX6TpLMLyGwxiuj1FJ3+A/
 ZwcJDlhdG1crAGnChh0PzxH7YP7BwfoNHm8AphKStmRR7lWQufiveX6Gs
 qrolKHcttIGdXv58RuKAayIRC/dsMLUE6/M7ejzT2/ZxnLEbtu2GhaPdL g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="258256588"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="258256588"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 19:59:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="544910905"
Received: from cliu38-mobl3.sh.intel.com ([10.239.147.106])
 by orsmga007.jf.intel.com with ESMTP; 24 Mar 2022 19:59:52 -0700
From: Chuansheng Liu <chuansheng.liu@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Mar 2022 10:43:12 +0800
Message-Id: <20220325024312.40901-1-chuansheng.liu@intel.com>
X-Mailer: git-send-email 2.25.0.rc2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg1: remove redundant uc_index
 assignment
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

Just clean up the redundant uc_index assignment for DG1.

Signed-off-by: Chuansheng Liu <chuansheng.liu@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_mocs.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index c4c37585ae8c..0c300727a5c2 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -445,7 +445,6 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
 		table->table = dg1_mocs_table;
 		table->uc_index = 1;
 		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
-		table->uc_index = 1;
 		table->unused_entries_index = 5;
 	} else if (IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915)) {
 		/* For TGL/RKL, Can't be changed now for ABI reasons */
-- 
2.25.0.rc2

