Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB7A46EE2F
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 17:55:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6C9710E62A;
	Thu,  9 Dec 2021 16:53:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B480A10E116
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 06:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639031707; x=1670567707;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dzfRbsQDS8x2HDH9VEbfO8JMIflO5xZZu6GSPO12huo=;
 b=mGXytOFCw109yekjBvfT3FLq+oogWvH0boOE9XmP14R71JZtaeRtzwJA
 5e1/HZBp/zxQ75viAFgb3oo8UgoRlAsT94U+bPoe+ozfOjD/Vuc8SdBPJ
 ih+RSdPlx/rdyrJgfidBF6R/iUYq04aAYrETLWtVWoy5hHk6ywb4nIfRk
 uRMFdBPdTXXDphdzqkVJXP6Xi+7agAxXBh8qFxkg/Cy3R07S/kLygIfIy
 AJEIN+/VHgEtA8xWA1N4yVbBM5ggFOYyeLsU0Tg6yh/QltDngTgoECMyb
 APdLn+2GG8OYvVSHVELhnqB/KRJGr2JrJqLg+1t0jzBrAH60F31M1M4Da g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="238255954"
X-IronPort-AV: E=Sophos;i="5.88,191,1635231600"; d="scan'208";a="238255954"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 22:35:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,191,1635231600"; d="scan'208";a="516156616"
Received: from sdutt-nuc10i5fnh.jf.intel.com ([10.165.21.151])
 by orsmga008.jf.intel.com with ESMTP; 08 Dec 2021 22:35:07 -0800
From: Jasmine Newsome <jasmine.newsome@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Dec 2021 22:33:24 -0800
Message-Id: <20211209063324.1672413-1-jasmine.newsome@intel.com>
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
Cc: jasmine.newsome@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Using local pointer ttm as argument in  __i915_ttm_move
instead of bo->ttm, as local pointer was previously assigned
to bo->ttm in function. This will make code a bit more readable.

Signed-off-by: Jasmine Newsome <jasmine.newsome@intel.com>
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

