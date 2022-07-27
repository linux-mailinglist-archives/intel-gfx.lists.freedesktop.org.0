Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E48DF5830A5
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 19:40:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 834A3C2F44;
	Wed, 27 Jul 2022 17:40:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D72E6C2F2A
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 17:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658943632; x=1690479632;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CWgUrhNxXrFblamwauPv2oCno6VW+VtbioG/ZaVijkU=;
 b=gLyl8Vk8P+oVvn8uuEMnSNsRo9V8CDszYvaslEbs7Ui6zI/9VPfdeV5m
 L0APR49NpM1pNM49awxZ8hhufqW+7V3upWnUIzhRxgUvf5l4sHrdpoL9G
 IZKgjUT2VKXxkkURO7eJqsFClLCozydrQCS6i/mLgKejYuOknPTP8H2bK
 KOx04VV30dUOFgHUbnePXApVPYjYat2BJR1uPmr8bJCwabePX+CFue9L/
 IZlt5SoJcbzBPyG5hWXrSTqQSKo2pu3BpQxphGiyF8v4xoZzGMOu7D3Cq
 ldL4XXX2UQSNCcXDDB9hDYAb1dAESHlm6H8GxhLnmg1G1wIvSNR2Hpd2s A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="352298247"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="352298247"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 10:40:32 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="628473070"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 10:40:30 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 19:40:23 +0200
Message-Id: <20220727174023.16766-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Suppress oom warning for shmemfs
 object allocation failure
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
Cc: chris.p.wilson@intel.com, matthew.auld@intel.com, andrzej.hajda@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

We report object allocation failures to userspace with ENOMEM, yet we
still show the memory warning after failing to shrink device allocated
pages. While this warning is similar to other system page allocation
failures, it is superfluous to the ENOMEM provided directly to
userspace.

v2: Add NOWARN in few more places from where we might return
    ENOMEM to userspace.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4936
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 4eed3dd90ba8..f42ca1179f37 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -75,7 +75,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 	if (size > resource_size(&mr->region))
 		return -ENOMEM;
 
-	if (sg_alloc_table(st, page_count, GFP_KERNEL))
+	if (sg_alloc_table(st, page_count, GFP_KERNEL | __GFP_NOWARN))
 		return -ENOMEM;
 
 	/*
@@ -137,7 +137,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 				 * trigger the out-of-memory killer and for
 				 * this we want __GFP_RETRY_MAYFAIL.
 				 */
-				gfp |= __GFP_RETRY_MAYFAIL;
+				gfp |= __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
 			}
 		} while (1);
 
@@ -209,7 +209,7 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
 	GEM_BUG_ON(obj->write_domain & I915_GEM_GPU_DOMAINS);
 
 rebuild_st:
-	st = kmalloc(sizeof(*st), GFP_KERNEL);
+	st = kmalloc(sizeof(*st), GFP_KERNEL | __GFP_NOWARN);
 	if (!st)
 		return -ENOMEM;
 
-- 
2.35.1

