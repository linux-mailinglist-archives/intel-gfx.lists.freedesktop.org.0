Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3156B8776
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 02:15:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93A7C10E15E;
	Tue, 14 Mar 2023 01:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5337310E15E
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 01:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678756502; x=1710292502;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xxRJzM0tdIJWxLfW04QAE7vNroesWb1li65UDaIhYKI=;
 b=jAXKK4oq3N/Ex5bb98BEq0T9oVCqiK/qIiRBtGPqq45GqO9XccxO1WPg
 Zn3vqhxNJb2eltNhz7obc3nZNGMO4PT6Ycr6sYgbdWuk4uI/BaZMQobzl
 luOfdmoo6HMNELDHFBEpNwztczhov3rAAtnFt1lnVS+wSRHEvJnjdDOLS
 eMt/2uOcx5of2kOYvHMrf2PfAERde3+t5c6QgKsdvx6U+Do55lxSDJafS
 0UQ0O0Xm9139lrp3gJbPkBOnmeCSoxWUDRkavrz22MZqu88PSu26Pt0U4
 7ZUb3NMQARcy3P0go91lzLaIm4ZqKeYpObmfR756RopHz0V91b5tc3t/1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="338846709"
X-IronPort-AV: E=Sophos;i="5.98,258,1673942400"; d="scan'208";a="338846709"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 18:15:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="672126074"
X-IronPort-AV: E=Sophos;i="5.98,258,1673942400"; d="scan'208";a="672126074"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga007.jf.intel.com with ESMTP; 13 Mar 2023 18:15:01 -0700
From: John.C.Harrison@Intel.com
To: stable@vger.kernel.org
Date: Mon, 13 Mar 2023 18:14:04 -0700
Message-Id: <20230314011404.1009812-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <167820545815114@kroah.com>
References: <167820545815114@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4.14.y] drm/i915: Don't use BAR mappings for
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

Direction from hardware is that ring buffers should never be mapped
via the BAR on systems with LLC. There are too many caching pitfalls
due to the way BAR accesses are routed. So it is safest to just not
use it.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Fixes: 9d80841ea4c9 ("drm/i915: Allow ringbuffers to be bound anywhere")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v4.9+
Tested-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230216011101.1909009-3-John.C.Harrison@Intel.com
(cherry picked from commit 65c08339db1ada87afd6cfe7db8e60bb4851d919)
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
(cherry picked from commit 85636167e3206c3fbd52254fc432991cc4e90194)
---
 drivers/gpu/drm/i915/intel_ringbuffer.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_ringbuffer.c b/drivers/gpu/drm/i915/intel_ringbuffer.c
index 63667a5c2c87..6c7563c1ab5f 100644
--- a/drivers/gpu/drm/i915/intel_ringbuffer.c
+++ b/drivers/gpu/drm/i915/intel_ringbuffer.c
@@ -1314,7 +1314,7 @@ int intel_ring_pin(struct intel_ring *ring,
 	if (unlikely(ret))
 		return ret;
 
-	if (i915_vma_is_map_and_fenceable(vma))
+	if (i915_vma_is_map_and_fenceable(vma) && !HAS_LLC(vma->vm->i915))
 		addr = (void __force *)i915_vma_pin_iomap(vma);
 	else
 		addr = i915_gem_object_pin_map(vma->obj, map);
@@ -1346,7 +1346,7 @@ void intel_ring_unpin(struct intel_ring *ring)
 	/* Discard any unused bytes beyond that submitted to hw. */
 	intel_ring_reset(ring, ring->tail);
 
-	if (i915_vma_is_map_and_fenceable(ring->vma))
+	if (i915_vma_is_map_and_fenceable(ring->vma) && !HAS_LLC(ring->vma->vm->i915))
 		i915_vma_unpin_iomap(ring->vma);
 	else
 		i915_gem_object_unpin_map(ring->vma->obj);
-- 
2.39.1

