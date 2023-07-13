Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B247E7525F8
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 17:01:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3432310E6F9;
	Thu, 13 Jul 2023 15:01:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6D5A10E6F8
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 15:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689260512; x=1720796512;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ffKa50WXtjxxu/pM5iIbvMaUukrVo1T7rOkDM8txNXs=;
 b=gppFSi/xGU0r1IBqgiXX6m92mh5pWzZEqYclhqJS9sFyAMj8iq5yB00t
 9ozXtHuAtdm6k33tMmL23ys5YF16cvbGLUhGUzkQVXQc/+p9ebr05c4yF
 Y5tY/W0so5giLQk2GtluiUwxIKJyyPZIKW3Dz9Rs5XuREtaI9Xg9wYWwV
 SvL5ABzVqzqLkroinBk9p3xv6UHxYSTOBY8apsxtgwz/90YQYzr2sF7K7
 E80UofKY2JPQ9pxAyk0nCCeIDStvoH+nlOs6fIUt6rD6kkFqRvUENbHDN
 oJjFHIgCr7kOow0kzffswU1HtH9WSxwsIlFBU7hIpovc2SDgOXTCiimfX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="345528054"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="345528054"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 08:01:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="751668894"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="751668894"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 08:01:49 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jul 2023 17:01:41 +0200
Message-Id: <20230713150142.12700-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Do not use stolen on MTL
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

Use smem on MTL due to a HW bug in MTL that prevents
reading from stolen memory using LMEM BAR.

Cc: Oak Zeng <oak.zeng@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Oak Zeng <oak.zeng@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 33a61046ba58..9f64d61dd5fc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -466,7 +466,7 @@ static int intel_gt_init_scratch(struct intel_gt *gt, unsigned int size)
 	obj = i915_gem_object_create_lmem(i915, size,
 					  I915_BO_ALLOC_VOLATILE |
 					  I915_BO_ALLOC_GPU_ONLY);
-	if (IS_ERR(obj))
+	if (IS_ERR(obj) && !IS_METEORLAKE(i915)) /* Wa_22018444074 */
 		obj = i915_gem_object_create_stolen(i915, size);
 	if (IS_ERR(obj))
 		obj = i915_gem_object_create_internal(i915, size);
-- 
2.39.0

