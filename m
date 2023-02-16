Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1BB6989B9
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 02:11:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB4FE10E282;
	Thu, 16 Feb 2023 01:11:48 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21AEF10E185;
 Thu, 16 Feb 2023 01:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676509906; x=1708045906;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MJgmHUveQSA3PFP/4qmP6D4U+rx1JvjqOUh2gBaNYFE=;
 b=dqph8L54lSqa30KCtvtvgwWfpg/+ReBS5L5BT6bOu4dVOVqRgNNSmgw7
 Gi9ZNmf4wBmDDSNayt444lnuLudvYsrH8qPkdF7Gw6/aEFIx0PoKNTxwh
 i2Rup7C9OqP3n5cZcZRpSGs7any4QBY/0S31z2f3Msw7OVG7Ytma6Ubca
 rBGYr/X2hMR1OH3ilh7wTUkgPkjAm/D5rgp2muoafaZ7HzwB649wykFju
 alhCUrC0yCvW6fl0wMulkx4a2FHoJ1G/Q+Tp23aAyrYBiOjVulbqs3J+p
 +PR6ykn6qKzq4E5XJUsOr9WYL9B1BE1nPS3d7z5UzdpWE2XRF/KoI5S6I g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="311218995"
X-IronPort-AV: E=Sophos;i="5.97,301,1669104000"; d="scan'208";a="311218995"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 17:11:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="733674533"
X-IronPort-AV: E=Sophos;i="5.97,301,1669104000"; d="scan'208";a="733674533"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by fmsmga008.fm.intel.com with ESMTP; 15 Feb 2023 17:11:45 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 15 Feb 2023 17:11:01 -0800
Message-Id: <20230216011101.1909009-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230216011101.1909009-1-John.C.Harrison@Intel.com>
References: <20230216011101.1909009-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915: Don't use BAR mappings for
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 DRI-Devel@Lists.FreeDesktop.Org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 stable@vger.kernel.org
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
---
 drivers/gpu/drm/i915/gt/intel_ring.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
index fb1d2595392ed..fb99143be98e7 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -53,7 +53,7 @@ int intel_ring_pin(struct intel_ring *ring, struct i915_gem_ww_ctx *ww)
 	if (unlikely(ret))
 		goto err_unpin;
 
-	if (i915_vma_is_map_and_fenceable(vma)) {
+	if (i915_vma_is_map_and_fenceable(vma) && !HAS_LLC(vma->vm->i915)) {
 		addr = (void __force *)i915_vma_pin_iomap(vma);
 	} else {
 		int type = i915_coherent_map_type(vma->vm->i915, vma->obj, false);
@@ -98,7 +98,7 @@ void intel_ring_unpin(struct intel_ring *ring)
 		return;
 
 	i915_vma_unset_ggtt_write(vma);
-	if (i915_vma_is_map_and_fenceable(vma))
+	if (i915_vma_is_map_and_fenceable(vma) && !HAS_LLC(vma->vm->i915))
 		i915_vma_unpin_iomap(vma);
 	else
 		i915_gem_object_unpin_map(vma->obj);
-- 
2.39.1

