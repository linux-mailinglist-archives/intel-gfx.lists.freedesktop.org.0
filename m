Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9623DD485
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Aug 2021 13:19:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 095176E135;
	Mon,  2 Aug 2021 11:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1462C6E135
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Aug 2021 11:19:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10063"; a="235362529"
X-IronPort-AV: E=Sophos;i="5.84,288,1620716400"; d="scan'208";a="235362529"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2021 04:19:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,288,1620716400"; d="scan'208";a="436639733"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga002.jf.intel.com with ESMTP; 02 Aug 2021 04:19:44 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Aug 2021 16:41:40 +0530
Message-Id: <20210802111140.1063832-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/adl_s: Update ADL-S PCI IDs
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

Sync PCI IDs with Bspec.

Bspec:53655

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 include/drm/i915_pciids.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index eee18fa53b54..8adb058dfc5a 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -637,13 +637,9 @@
 /* ADL-S */
 #define INTEL_ADLS_IDS(info) \
 	INTEL_VGA_DEVICE(0x4680, info), \
-	INTEL_VGA_DEVICE(0x4681, info), \
 	INTEL_VGA_DEVICE(0x4682, info), \
-	INTEL_VGA_DEVICE(0x4683, info), \
 	INTEL_VGA_DEVICE(0x4688, info), \
-	INTEL_VGA_DEVICE(0x4689, info), \
 	INTEL_VGA_DEVICE(0x4690, info), \
-	INTEL_VGA_DEVICE(0x4691, info), \
 	INTEL_VGA_DEVICE(0x4692, info), \
 	INTEL_VGA_DEVICE(0x4693, info)
 
-- 
2.31.1

