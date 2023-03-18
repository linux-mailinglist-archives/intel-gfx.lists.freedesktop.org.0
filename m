Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A9B6BF6C3
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 01:06:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 399C010E434;
	Sat, 18 Mar 2023 00:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E009C10E434
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Mar 2023 00:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679097983; x=1710633983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2ZN3XehKf6V/+o4cym7ghdqwjW9B7JwRJm1Sh8M7T4A=;
 b=bdjUVvmsoBsvze8sm/Fidlo5xDzq8lQ++VLC7+68zV+emgArA38dSEnB
 5rRtOG00s3dQzx0RvIjQL2Iiu0dPNPbDEM8TRxZIr+W4GfK7L3HrBTXNW
 /Ry+mxMN7iVjEXfoHu4lv+3mk5xU7mNN0WjCxNctUrcszPSL++eTieYTd
 b49QcPW+VIYBoWVZVhMZ9LQZ5jl9KSlkpQh5qKYAxoKuwHZhY5ZIBwz9X
 vl9GgYwhdbh8DVyOutIsVZY9hfdrYwzXgtQxB1H8z3AJ2PngG+X/0UK9d
 MtT8sBLq/ifn3vxuN+mx2BFrs0nzUCPeJngXaDU0kXAJnsEBQMOs3B7vG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="337093699"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="337093699"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 17:06:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="657740935"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="657740935"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga006.jf.intel.com with ESMTP; 17 Mar 2023 17:06:22 -0700
From: John.C.Harrison@Intel.com
To: stable@vger.kernel.org
Date: Fri, 17 Mar 2023 17:05:31 -0700
Message-Id: <20230318000531.480966-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <167820540147158@kroah.com>
References: <167820540147158@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4.14.y] drm/i915: Don't use stolen memory for
 ring buffers with LLC
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Direction from hardware is that stolen memory should never be used for
ring buffer allocations on platforms with LLC. There are too many
caching pitfalls due to the way stolen memory accesses are routed. So
it is safest to just not use it.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Fixes: c58b735fc762 ("drm/i915: Allocate rings from stolen")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v4.9+
Tested-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230216011101.1909009-2-John.C.Harrison@Intel.com
(cherry picked from commit f54c1f6c697c4297f7ed94283c184acc338a5cf8)
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
(cherry picked from commit 690e0ec8e63da9a29b39fedc6ed5da09c7c82651)
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/intel_ringbuffer.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_ringbuffer.c b/drivers/gpu/drm/i915/intel_ringbuffer.c
index 6c7563c1ab5f..f0b923e037df 100644
--- a/drivers/gpu/drm/i915/intel_ringbuffer.c
+++ b/drivers/gpu/drm/i915/intel_ringbuffer.c
@@ -1359,10 +1359,11 @@ static struct i915_vma *
 intel_ring_create_vma(struct drm_i915_private *dev_priv, int size)
 {
 	struct i915_address_space *vm = &dev_priv->ggtt.base;
-	struct drm_i915_gem_object *obj;
+	struct drm_i915_gem_object *obj = NULL;
 	struct i915_vma *vma;
 
-	obj = i915_gem_object_create_stolen(dev_priv, size);
+	if (!HAS_LLC(dev_priv))
+		obj = i915_gem_object_create_stolen(dev_priv, size);
 	if (!obj)
 		obj = i915_gem_object_create_internal(dev_priv, size);
 	if (IS_ERR(obj))
-- 
2.39.1

