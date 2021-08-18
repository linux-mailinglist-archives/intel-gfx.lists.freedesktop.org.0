Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D0D3EF9D7
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 07:09:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C780890ED;
	Wed, 18 Aug 2021 05:09:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12760890ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 05:09:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="301836878"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="301836878"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 22:09:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="488295016"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga008.fm.intel.com with ESMTP; 17 Aug 2021 22:09:01 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Aug 2021 10:31:16 +0530
Message-Id: <20210818050116.1116237-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V3] drm/i915/adl_s: Update ADL-S PCI IDs
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

Changes since V2:
	- Upstream devices which are "POR" yes and
	  "Ok to upstream" yes - James Asmus
Changes since V1:
        - All POR and Non POR Ids needs to be upstreamed - James Asmus

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 include/drm/i915_pciids.h | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index eee18fa53b54..cb45af9f2c44 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -637,13 +637,10 @@
 /* ADL-S */
 #define INTEL_ADLS_IDS(info) \
 	INTEL_VGA_DEVICE(0x4680, info), \
-	INTEL_VGA_DEVICE(0x4681, info), \
 	INTEL_VGA_DEVICE(0x4682, info), \
-	INTEL_VGA_DEVICE(0x4683, info), \
 	INTEL_VGA_DEVICE(0x4688, info), \
-	INTEL_VGA_DEVICE(0x4689, info), \
+	INTEL_VGA_DEVICE(0x468A, info), \
 	INTEL_VGA_DEVICE(0x4690, info), \
-	INTEL_VGA_DEVICE(0x4691, info), \
 	INTEL_VGA_DEVICE(0x4692, info), \
 	INTEL_VGA_DEVICE(0x4693, info)
 
-- 
2.31.1

