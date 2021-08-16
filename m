Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D073ED789
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 15:36:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B554089EFF;
	Mon, 16 Aug 2021 13:36:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A28F689EFF
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Aug 2021 13:36:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="203018248"
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="203018248"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 06:36:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="519656741"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2021 06:35:45 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Aug 2021 18:57:58 +0530
Message-Id: <20210816132758.1112403-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V2] drm/i915/adl_s: Update ADL-S PCI IDs
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

Changes since V1:
	- All POR and Non POR Ids needs to be upstreamed - James Asmus

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 include/drm/i915_pciids.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index eee18fa53b54..55606f53ab7c 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -642,10 +642,14 @@
 	INTEL_VGA_DEVICE(0x4683, info), \
 	INTEL_VGA_DEVICE(0x4688, info), \
 	INTEL_VGA_DEVICE(0x4689, info), \
+	INTEL_VGA_DEVICE(0x468A, info), \
+	INTEL_VGA_DEVICE(0x468B, info), \
 	INTEL_VGA_DEVICE(0x4690, info), \
 	INTEL_VGA_DEVICE(0x4691, info), \
 	INTEL_VGA_DEVICE(0x4692, info), \
-	INTEL_VGA_DEVICE(0x4693, info)
+	INTEL_VGA_DEVICE(0x4693, info), \
+	INTEL_VGA_DEVICE(0x4698, info), \
+	INTEL_VGA_DEVICE(0x4699, info)
 
 /* ADL-P */
 #define INTEL_ADLP_IDS(info) \
-- 
2.31.1

