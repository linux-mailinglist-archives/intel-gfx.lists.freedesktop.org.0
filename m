Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2191251AD0A
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 20:37:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D6DA10E9C1;
	Wed,  4 May 2022 18:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E822E10E9C1
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 18:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651689451; x=1683225451;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MbTRNSCz3/NU1X2PeObNnVZZ6CZnbRHhp6wmJmbE+EU=;
 b=le4CKTLfR2q21OhrGanM6Ww81Psnjd33YS5zFdBIABARJEgzo3MRh6dy
 BgZeRZbwEIgh/PYU+KAth09HbCFZRsIe87ItcV498ibQd2WOSx86Hc8ME
 sj9qIFG1ve5RXSSbFiPnJKSOtcUMKwFpjmgVXS5gFNbZm1uwQDhT7thHD
 Y4YoOdiGDU2pk0oiaeOaP0jKym2G2ZL+boxstB3gAgJw34ZYd39uQBIoO
 QQTBc23OlMHIRKMTfib2Ye0F60hROmYUbG1L86nQrbCGoECY7wNyd4EHV
 XYov7nQluBp+B/ztNvwPvoL68duqRX8GMUU9FuJ/4yJ30mb3lZA1+aHuE g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="249845273"
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="249845273"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 11:37:31 -0700
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="536967464"
Received: from adobrowo-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.156.70])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 11:37:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 21:37:15 +0300
Message-Id: <20220504183716.987793-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220504183716.987793-1-jani.nikula@intel.com>
References: <20220504183716.987793-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: remove single-use GEM_DEBUG_EXEC()
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

Reduce the magic of what's going on in GEM_DEBUG_EXEC() by expanding it
inline and being explicit about it. It's as single use case anyway, so
the macro feels overkill.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ring.c | 3 ++-
 drivers/gpu/drm/i915/i915_gem.h      | 2 --
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
index 40ffcb94e379..15ec64d881c4 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -299,7 +299,8 @@ u32 *intel_ring_begin(struct i915_request *rq, unsigned int num_dwords)
 	GEM_BUG_ON(ring->emit > ring->size - bytes);
 	GEM_BUG_ON(ring->space < bytes);
 	cs = ring->vaddr + ring->emit;
-	GEM_DEBUG_EXEC(memset32(cs, POISON_INUSE, bytes / sizeof(*cs)));
+	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
+		memset32(cs, POISON_INUSE, bytes / sizeof(*cs));
 	ring->emit += bytes;
 	ring->space -= bytes;
 
diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
index b7b257f54d2e..a2be323a4be5 100644
--- a/drivers/gpu/drm/i915/i915_gem.h
+++ b/drivers/gpu/drm/i915/i915_gem.h
@@ -54,7 +54,6 @@ struct drm_i915_private;
 	} while(0)
 #define GEM_WARN_ON(expr) WARN_ON(expr)
 
-#define GEM_DEBUG_EXEC(expr) expr
 #define GEM_DEBUG_WARN_ON(expr) GEM_WARN_ON(expr)
 
 #else
@@ -64,7 +63,6 @@ struct drm_i915_private;
 #define GEM_BUG_ON(expr) BUILD_BUG_ON_INVALID(expr)
 #define GEM_WARN_ON(expr) ({ unlikely(!!(expr)); })
 
-#define GEM_DEBUG_EXEC(expr) do { } while (0)
 #define GEM_DEBUG_WARN_ON(expr) ({ BUILD_BUG_ON_INVALID(expr); 0; })
 #endif
 
-- 
2.30.2

