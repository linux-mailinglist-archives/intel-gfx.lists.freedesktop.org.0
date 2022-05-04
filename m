Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B986C51AD0B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 20:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29E9510E9C5;
	Wed,  4 May 2022 18:37:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 518D210E9C5
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 18:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651689457; x=1683225457;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=43I0gui/A4x05hvFWBnMmDYurokR0hImayGYKeVbGK0=;
 b=hwk+2Vb73sMHmOFlymQIOl5zcy47fXvRZbnBqwIrwDVQaVHnzlxwxg6e
 LPun8tqnQPinfueVB4PYGJPOpn/aXe65R2+D0xuq7wpdKPcBn3BAxaPkp
 t/vrs8xjb4t2wRIshQ2mKPZRC1pgjWa6LSgNLbWkPwre81fJoyXqSxCdu
 QFBCcuON9Ks189UK5QtaupQ3ko0YpdwY9SiXEip6j3cgPT0FKmq0S2g1y
 a3RQ/C3nL2Rmg/qLrjrhcGbZkaPx/7b6KbEuvHdb7XqK2T/TuusoYoe2U
 7la4Qf3F/wELkQ9WQLM2QsJwWel2avGt4j4cOxlCxsWx0rz4Z0CQD9tJW A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="267746066"
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="267746066"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 11:37:24 -0700
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="734526642"
Received: from adobrowo-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.156.70])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 11:37:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 21:37:14 +0300
Message-Id: <20220504183716.987793-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: remove unused GEM_DEBUG_DECL()
 and GEM_DEBUG_BUG_ON()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are already too many choices here, take away the unused ones.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_gem.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
index d0752e5553db..b7b257f54d2e 100644
--- a/drivers/gpu/drm/i915/i915_gem.h
+++ b/drivers/gpu/drm/i915/i915_gem.h
@@ -54,9 +54,7 @@ struct drm_i915_private;
 	} while(0)
 #define GEM_WARN_ON(expr) WARN_ON(expr)
 
-#define GEM_DEBUG_DECL(var) var
 #define GEM_DEBUG_EXEC(expr) expr
-#define GEM_DEBUG_BUG_ON(expr) GEM_BUG_ON(expr)
 #define GEM_DEBUG_WARN_ON(expr) GEM_WARN_ON(expr)
 
 #else
@@ -66,9 +64,7 @@ struct drm_i915_private;
 #define GEM_BUG_ON(expr) BUILD_BUG_ON_INVALID(expr)
 #define GEM_WARN_ON(expr) ({ unlikely(!!(expr)); })
 
-#define GEM_DEBUG_DECL(var)
 #define GEM_DEBUG_EXEC(expr) do { } while (0)
-#define GEM_DEBUG_BUG_ON(expr)
 #define GEM_DEBUG_WARN_ON(expr) ({ BUILD_BUG_ON_INVALID(expr); 0; })
 #endif
 
-- 
2.30.2

