Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D7B467F8D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 22:51:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A28D8BCA6;
	Fri,  3 Dec 2021 21:51:07 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1DF98BCA6
 for <Intel-GFX@lists.freedesktop.org>; Fri,  3 Dec 2021 21:51:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10187"; a="297861765"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="297861765"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 13:51:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="598119996"
Received: from sdutt-nuc10i5fnh.jf.intel.com ([10.165.21.151])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Dec 2021 13:51:05 -0800
From: Jasmine Newsome <jasmine.newsome@intel.com>
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri,  3 Dec 2021 13:49:31 -0800
Message-Id: <20211203214931.1635863-1-jasmine.newsome@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
Cc: thomas.hellstrom@intel.com, jasmine.newsome@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To avoid confusion with deferencing possible null pointer bo->ttm,
replace pointer bo->ttm with local pointer ttm in i915_ttm_move
as ttm has checks for null before getting passed to __i915_ttm_move
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index 80df9f592407..56b6573b5c93 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -763,7 +763,7 @@ int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
 			return PTR_ERR(dep);
 		}
 
-		migration_fence = __i915_ttm_move(bo, clear, dst_mem, bo->ttm,
+		migration_fence = __i915_ttm_move(bo, clear, dst_mem, ttm,
 						  dst_rsgt, true, dep);
 		dma_fence_put(dep);
 	}
-- 
2.25.1

