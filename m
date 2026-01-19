Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4262ED3A20D
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 09:50:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 595CC10E3A6;
	Mon, 19 Jan 2026 08:50:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JfDx7Cev";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D46D10E3A6
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jan 2026 08:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768812614; x=1800348614;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w4Fn439kf0dMEtr5UDYzXtScLiXjOkKsAW70YE6/lZo=;
 b=JfDx7CevwwmoI5g/kEEPV/n205xoB05qKKKBSKY1iYgd81xQIfwlewq+
 CgPM/77z9j7xGvOzJG7caL9HqKjWyuuZIAiVoU7sDo0tGqkHbLx0AEnIg
 zJ4lJvkmKXDLgleG8s18YHg5iME22yaNLLQEon/TLw2HJCX/4nVM5RaoX
 8mB6nMCuRknlBEHwRHWuNliyf8nnP9chX5Uy0xtfDrQu+uxamIKMj2znW
 nuywkGX1ixrxCmo9SBGT765wDzFW4taPROGSHioAXpwo6ZmJGlpPf1Fhw
 lGfqa7E5UvrwG5TqZu4ibfg/JVFSV6ulgK3qFx07Zg/UJMfZDCflTmdty w==;
X-CSE-ConnectionGUID: NTg2VdqLSAyy/f055NP8fA==
X-CSE-MsgGUID: Wr01AG+OSfyihu3fWmKInw==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="69915882"
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="69915882"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 00:50:13 -0800
X-CSE-ConnectionGUID: wr7KRhQNR9S2XxiyPgXzeQ==
X-CSE-MsgGUID: sS65AUwDSZ2lWq77I76SDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="205869324"
Received: from baandr0id001.iind.intel.com ([10.66.253.151])
 by orviesa008.jf.intel.com with ESMTP; 19 Jan 2026 00:50:07 -0800
From: Kaushlendra Kumar <kaushlendra.kumar@intel.com>
To: jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 chris@chris-wilson.co.uk
Cc: intel-gfx@lists.freedesktop.org,
 Kaushlendra Kumar <kaushlendra.kumar@intel.com>
Subject: [PATCH] drm/i915: Handle allocation failure in active_instance
Date: Mon, 19 Jan 2026 14:17:16 +0530
Message-Id: <20260119084716.3555667-1-kaushlendra.kumar@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

The kmem_cache_alloc() call in active_instance() can fail under
memory pressure, returning NULL. The existing code handles this by
branching to the 'out' label, which stores the NULL pointer in
ref->cache.

However, the final return statement unconditionally dereferences
the base field, which would be invalid if node is NULL. Add an
explicit NULL check to safely propagate allocation failures to
the caller.

Fixes: 12c255b5dad1 ("drm/i915: Provide an i915_active.acquire callback")
Signed-off-by: Kaushlendra Kumar <kaushlendra.kumar@intel.com>
---
 drivers/gpu/drm/i915/i915_active.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 6b0c1162505a..1ebb3c425e67 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -331,7 +331,7 @@ active_instance(struct i915_active *ref, u64 idx)
 	WRITE_ONCE(ref->cache, node);
 	spin_unlock_irq(&ref->tree_lock);
 
-	return &node->base;
+	return node ? &node->base : NULL;
 }
 
 void __i915_active_init(struct i915_active *ref,
-- 
2.34.1

