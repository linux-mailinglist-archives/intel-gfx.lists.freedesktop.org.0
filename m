Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1580C4C4818
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 15:56:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B85510E4CD;
	Fri, 25 Feb 2022 14:56:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FAB210E378;
 Fri, 25 Feb 2022 14:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645800978; x=1677336978;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fPsSg2xzh36cNsoqe1PXqRxKogmPAHMiwVNDn8suB2Q=;
 b=jh5emiMj/wINZH/vNipUYqQR9m65jloJTxi4QKM4QB2hyZ8QMgVa4jGS
 WChgnG8yFq/qaKG/VP9jmh78Vxv4SEWV+YfUaTzcTzbx+/cmY8GYrBOjY
 hcNLuz3aEwfXTuE3Shaw67f+B2LofNqEp5qEQU0BEJAPNhxB/AmNGCT+h
 hqT+4btjX/Gg2kPHgSFX3v0DHUopeMeDtVDOUwh12XBNt8BH0hq1ztyN/
 3ZRIZhurf51DNfplIDuNzOpRS96HoHDHcgDKljlyEhmnp5WQ06R7AezPT
 yNl1CP8zjS7EFDJmc6LAoIWiTyNxGBk+9hI7yltDUUqlVUO68CuY9GbCB A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="252237248"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="252237248"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 06:56:18 -0800
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="707882141"
Received: from phelanmi-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.25.227])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 06:56:17 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Feb 2022 14:55:01 +0000
Message-Id: <20220225145502.331818-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220225145502.331818-1-matthew.auld@intel.com>
References: <20220225145502.331818-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 6/7] drm/i915/buddy: tweak 2big check
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Otherwise we get -EINVAL, instead of the more useful -E2BIG if the
allocation doesn't fit within the pfn range, like with mappable lmem.
The hugepages selftest, for example, needs this to know if a smaller
size is needed.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_ttm_buddy_manager.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
index 0ac6b2463fd5..92d49a3c378c 100644
--- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
+++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
@@ -82,7 +82,7 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 			lpfn = pages;
 	}
 
-	if (size > mm->size) {
+	if (size > lpfn << PAGE_SHIFT) {
 		err = -E2BIG;
 		goto err_free_res;
 	}
-- 
2.34.1

