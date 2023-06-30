Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DCC74317B
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 02:13:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96A9B10E0BC;
	Fri, 30 Jun 2023 00:13:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4CEB10E0BC
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jun 2023 00:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688084012; x=1719620012;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ba056KpImZSmYpyoHFqTNQCkRGZwdYI/KtMGQV7lfmc=;
 b=hxX+6Eb97BKeEKmweZI1bgX7g2PtPLsaOpeWUIAQ5q4YBYR7MzHHUK7L
 rQechO0W2NgaSO54sDb5jl9Z/Z4ctUh9PgX2qpMAJqiGZvMXNNggbDrkm
 10n03UhdR3/g0uME2d9Cmxdx37gxJLBScUFse0lpuBjITmxfDM76e7psN
 CmgDMc4+KNP211gmTtul255YqbqCn9s2PLZkFgGmRark7qCfoeBgixGBC
 2QMH8uSlwJJ+wdTD5Oj4LMh7fWgzadIgviXNI9fxtDh8egmUbTiN8O04t
 CYwkbEqOFhIXmnc6+5u9vEVyIl8fY6GkUenHxN7bfqzxLs+VU+9f1V1sp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="352089415"
X-IronPort-AV: E=Sophos;i="6.01,169,1684825200"; d="scan'208";a="352089415"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 17:13:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="694851396"
X-IronPort-AV: E=Sophos;i="6.01,169,1684825200"; d="scan'208";a="694851396"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 17:13:31 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Jun 2023 17:12:14 -0700
Message-Id: <20230630001214.1965121-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC] drm/i915/shrinker: Treat fb's with higher
 priority than active reference
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

Earlier framebuffers were treated as an active reference in the shrinker
code and were skipped from eviction during kswapd run. However when the
memory pressure is high, the fb object would be evicted. This causes
display flicker while running memory stress tests when fb objects are
created from smem.

To eliminate display artifacts during memory stress tests, when bo's are
created from smem, skip evicting framebuffers all the time.

Cc: Charlton Lin <charlton.lin@intel.com>
Cc: Fei Yang <fei.yang@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Sachin Kumar <sachin.kumar@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index 214763942aa2..a2371ac718d9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -198,8 +198,7 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
 			    !is_vmalloc_addr(obj->mm.mapping))
 				continue;
 
-			if (!(shrink & I915_SHRINK_ACTIVE) &&
-			    i915_gem_object_is_framebuffer(obj))
+			if (i915_gem_object_is_framebuffer(obj))
 				continue;
 
 			if (!can_release_pages(obj))
-- 
2.34.1

