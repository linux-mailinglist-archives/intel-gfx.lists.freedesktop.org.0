Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA45946EFE0
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:02:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49E4610F009;
	Thu,  9 Dec 2021 16:55:14 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D66D89317
 for <Intel-GFX@lists.freedesktop.org>; Thu,  9 Dec 2021 16:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639067192; x=1670603192;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dzfRbsQDS8x2HDH9VEbfO8JMIflO5xZZu6GSPO12huo=;
 b=iDmxqxNzZXpmfQgpLlgukVbACdM9wXbGQ/QvY/+YkEhLG3r98w8SbYIG
 pYTQ++m4eUZpZcGuWuEWV5PJQv8+qhkoV1af9pBq8AE2Yyc0E7JcWAkMv
 SeXTJOP0Odhe0KENyN4sNROU57fgatja+6fbVwicngtI01rCeu2dxhj/f
 1B6G0Z97TIJXfjVtVpElxWDNxhXi6Y4ANLbpWU4gdiYZXJOoXhjB0P3We
 lfg32UCuOXj4ndXZtmHIV/14GtoWrvKREkARYVeaR9MHDW4785jHlvilR
 ISvz2C8Mk3wHa4XlC+hUGOpBXt/y0DPm3vhiDeVKjKogQkJnkG0AbIm93 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="262246637"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="262246637"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 08:25:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="601609600"
Received: from sdutt-nuc10i5fnh.jf.intel.com ([10.165.21.151])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Dec 2021 08:25:02 -0800
From: Jasmine Newsome <jasmine.newsome@intel.com>
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Thu,  9 Dec 2021 08:23:19 -0800
Message-Id: <20211209162319.1674819-1-jasmine.newsome@intel.com>
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

