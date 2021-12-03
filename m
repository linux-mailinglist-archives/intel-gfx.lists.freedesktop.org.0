Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D5B467EF3
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 21:49:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D2898B0CF;
	Fri,  3 Dec 2021 20:49:29 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11AD78B0CF
 for <Intel-GFX@lists.freedesktop.org>; Fri,  3 Dec 2021 20:49:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10187"; a="234561628"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="234561628"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 12:49:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="478452521"
Received: from sdutt-nuc10i5fnh.jf.intel.com ([10.165.21.151])
 by orsmga002.jf.intel.com with ESMTP; 03 Dec 2021 12:49:26 -0800
From: Jasmine Newsome <jasmine.newsome@intel.com>
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri,  3 Dec 2021 12:47:53 -0800
Message-Id: <20211203204753.1634865-1-jasmine.newsome@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Use local pointer for
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

Replace pointer bo->ttm with ttm in i915_ttm_move
when passed as argument to __i915_ttm_move
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

