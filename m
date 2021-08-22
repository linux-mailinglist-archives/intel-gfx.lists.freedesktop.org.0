Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EDB3F4076
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Aug 2021 18:30:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8284589F06;
	Sun, 22 Aug 2021 16:30:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E6A489E52
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Aug 2021 16:30:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="302567448"
X-IronPort-AV: E=Sophos;i="5.84,342,1620716400"; d="scan'208";a="302567448"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2021 09:30:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,342,1620716400"; d="scan'208";a="596395771"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga001.fm.intel.com with ESMTP; 22 Aug 2021 09:30:26 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Matthew Auld <matthew.auld@intel.com>,
 Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Date: Sun, 22 Aug 2021 21:56:58 +0530
Message-Id: <20210822162706.819507-6-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
References: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 05/13] drm/i915: enforce min page size for scratch
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

From: Matthew Auld <matthew.auld@intel.com>

If the device needs 64K minimum GTT pages for device local-memory,
like on XEHPSDV, then we need to fail the allocation if we can't
meet it, instead of falling back to 4K pages, otherwise we can't
safely support the insertion of device local-memory pages for
this vm, since the HW expects the correct physical alignment and
size for every PTE, if we mark the page-table as 64K GTT mode.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gtt.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index e137dd32b5b8..e9c01f72fc18 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -333,6 +333,18 @@ int setup_scratch_page(struct i915_address_space *vm)
 		if (size == I915_GTT_PAGE_SIZE_4K)
 			return -ENOMEM;
 
+		/*
+		 * If we need 64K minimum GTT pages for device local-memory,
+		 * like on XEHPSDV, then we need to fail the allocation here,
+		 * otherwise we can't safely support the insertion of
+		 * local-memory pages for this vm, since the HW expects the
+		 * correct physical alignment and size when the page-table is
+		 * operating in 64K GTT mode, which includes any scratch PTEs,
+		 * since userpsace can still touch them.
+		 */
+		if (HAS_64K_PAGES(vm->i915))
+			return -ENOMEM;
+
 		size = I915_GTT_PAGE_SIZE_4K;
 	} while (1);
 }
-- 
2.26.2

