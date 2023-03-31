Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 061716D1FAE
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 14:10:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4B9410F215;
	Fri, 31 Mar 2023 12:10:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 719F710F185;
 Fri, 31 Mar 2023 09:26:47 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 18DE4B82DAD;
 Fri, 31 Mar 2023 09:26:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05B61C4339E;
 Fri, 31 Mar 2023 09:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680254804;
 bh=zuwKMJNqTDoHBJoWH8QH3yXQEHwpZC6+8Slwblrz11M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dzBRFbowGUW/YExXI2jTQQk/JtNvslenNW0Y4g0oY2Dk6yMfna/AhJ0nRE8VSsS+3
 PYWM9WyB+QL7TZ/0nfbfiIAHK53Q5l1qd2BolEBM4l6XaL26ixqrOzMRpF1C60ZEC/
 umXpAj7gPpWGyMqN/FdC907acxLU3FNGj5QRZySmOGhvw0WUGaQW5sooG6ClxbOsMQ
 P4lIpdMnyh1AKrCvBhDFrd5vMqY7Z/1NV2GNnAhBYfZlpGGDQMcbiYPGnLOU0OuYmc
 YMFmUiDYTg8RvB8RkPeGnOoVxFTY8fkrLil7jOF093eJ5BTgmLjYn+P9+CSTeeUulc
 mKn+attwDlEdA==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org
Date: Fri, 31 Mar 2023 10:25:59 +0100
Message-Id: <20230331092607.700644-12-lee@kernel.org>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
In-Reply-To: <20230331092607.700644-1-lee@kernel.org>
References: <20230331092607.700644-1-lee@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 31 Mar 2023 12:10:00 +0000
Subject: [Intel-gfx] [PATCH 11/19] drm/i915/gem/i915_gem_ttm_move: Provide a
 couple of missing descriptions for 'num_pages' and 'ctx'
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fixes the following W=1 kernel build warning(s):

 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c:272: warning: Function parameter or member 'num_pages' not described in 'i915_ttm_memcpy_arg'
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c:569: warning: Function parameter or member 'ctx' not described in 'i915_ttm_move'

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: David Airlie <airlied@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Sumit Semwal <sumit.semwal@linaro.org>
Cc: "Christian König" <christian.koenig@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-media@vger.kernel.org
Cc: linaro-mm-sig@lists.linaro.org
Signed-off-by: Lee Jones <lee@kernel.org>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index d030182ca1764..dd188dfcc423e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -253,6 +253,7 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
  * @_src_iter: Storage space for the source kmap iterator.
  * @dst_iter: Pointer to the destination kmap iterator.
  * @src_iter: Pointer to the source kmap iterator.
+ * @num_pages: Number of pages
  * @clear: Whether to clear instead of copy.
  * @src_rsgt: Refcounted scatter-gather list of source memory.
  * @dst_rsgt: Refcounted scatter-gather list of destination memory.
@@ -557,6 +558,8 @@ __i915_ttm_move(struct ttm_buffer_object *bo,
  * i915_ttm_move - The TTM move callback used by i915.
  * @bo: The buffer object.
  * @evict: Whether this is an eviction.
+ * @ctx: Pointer to a struct ttm_operation_ctx indicating how the waits should be
+ *       performed if waiting
  * @dst_mem: The destination ttm resource.
  * @hop: If we need multihop, what temporary memory type to move to.
  *
-- 
2.40.0.348.gf938b09366-goog

