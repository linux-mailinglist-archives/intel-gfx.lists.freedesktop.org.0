Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 690D148495E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 21:39:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6347010E253;
	Tue,  4 Jan 2022 20:39:12 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EEA210E253
 for <Intel-GFX@lists.freedesktop.org>; Tue,  4 Jan 2022 20:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641328750; x=1672864750;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Rs8ZOtldFwg56yvThkxKekv0qYyIfMOx194nEyrHtgk=;
 b=SvYx8GQf3QdDeXYlS/VWRw6IsJ0eKdZsXn4u8y8uCqo0YUPbZxu0J5Q9
 nbF1GPH3AquwyhCsevVTg6jStCtUj+lOOUWTSgLueQMkvKSscxzvK1OKM
 rTMmof58eJof5yn8S4FWRcYnp4zxW3xh+vDzboFaRWu8uuqEEKZebGWGC
 N7rBS5VuhMKdQvafktgrni+4zMandpOHeoj60SKcQxQHdLtlMTeg82A8k
 EKiX8BnShz5FvIDGAxiy9xClylZ32Z+NV544VZgkdafy2obPPR8CKaOmB
 D82KdHSJzG2zbKMxbg33ntNhKRaPeh4MQ0MuHmoSoJ9zMqlA/4318v3V1 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="239836315"
X-IronPort-AV: E=Sophos;i="5.88,262,1635231600"; d="scan'208";a="239836315"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 12:39:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,262,1635231600"; d="scan'208";a="472196275"
Received: from sdutt-nuc10i5fnh.jf.intel.com ([10.165.21.151])
 by orsmga006.jf.intel.com with ESMTP; 04 Jan 2022 12:39:09 -0800
From: Jasmine Newsome <jasmine.newsome@intel.com>
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Tue,  4 Jan 2022 12:36:42 -0800
Message-Id: <20220104203642.231878-1-jasmine.newsome@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Use local pointer ttm for
 __i915_ttm_move
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

Using local pointer ttm as argument in  __i915_ttm_move instead of bo->ttm,
as local pointer was previously assigned to bo->ttm in function.
This will make code a bit more readable.

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Signed-off-by: Jasmine Newsome <jasmine.newsome@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index ee9612a3ee5e..8653855d808b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -525,7 +525,7 @@ int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
 			return ret;
 		}
 
-		migration_fence = __i915_ttm_move(bo, ctx, clear, dst_mem, bo->ttm,
+		migration_fence = __i915_ttm_move(bo, ctx, clear, dst_mem, ttm,
 						  dst_rsgt, true, &deps);
 		i915_deps_fini(&deps);
 	}
-- 
2.25.1

