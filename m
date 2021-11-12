Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E11E44EBE8
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 18:18:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5A816ECF3;
	Fri, 12 Nov 2021 17:18:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23AB26ECF3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Nov 2021 17:18:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10166"; a="233114476"
X-IronPort-AV: E=Sophos;i="5.87,230,1631602800"; d="scan'208";a="233114476"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 09:18:49 -0800
X-IronPort-AV: E=Sophos;i="5.87,230,1631602800"; d="scan'208";a="471212439"
Received: from vkariyax-mobl.gar.corp.intel.com (HELO
 smullati-desk.gar.corp.intel.com) ([10.215.119.182])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 09:18:47 -0800
From: Mullati Siva <siva.mullati@intel.com>
To: intel-gfx@lists.freedesktop.org,
	siva.mullati@intel.com
Date: Fri, 12 Nov 2021 22:48:28 +0530
Message-Id: <20211112171828.21770-1-siva.mullati@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Skip remap_io_mapping() for non-x86
 platforms
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The _PAGE_CACHE_MASK macro is not defined in non-x86
architectures and it's been used in remap_io_mapping().
Only hw that supports mappable aperture would hit this path
remap_io_mapping(), So skip this code for non-x86 architectures.

Signed-off-by: Mullati Siva <siva.mullati@intel.com>
---
 drivers/gpu/drm/i915/i915_mm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index 666808cb3a32..d76feeaf3fd1 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -91,6 +91,7 @@ int remap_io_mapping(struct vm_area_struct *vma,
 		     unsigned long addr, unsigned long pfn, unsigned long size,
 		     struct io_mapping *iomap)
 {
+#if IS_ENABLED(CONFIG_X86)
 	struct remap_pfn r;
 	int err;
 
@@ -108,6 +109,7 @@ int remap_io_mapping(struct vm_area_struct *vma,
 		zap_vma_ptes(vma, addr, (r.pfn - pfn) << PAGE_SHIFT);
 		return err;
 	}
+#endif
 
 	return 0;
 }
-- 
2.33.0

