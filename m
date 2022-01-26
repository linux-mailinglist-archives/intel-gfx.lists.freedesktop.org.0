Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D642F49C50C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 09:16:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D24810E4D2;
	Wed, 26 Jan 2022 08:16:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33B2310E4D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 08:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643184967; x=1674720967;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=G1osFGi0rXTg/X9INbYflRnCvZDdfOrrw5k/7dtBKHY=;
 b=PrDwAS5+xgWqx8IPi2A0YFfU1u+/zHjWaNvRBZXik01DLX8TBWSv7rGa
 cZbfbMj+00LTTYt4lVpXGPnr7bvYxPEIdkeUvmPQ8OmjvbDb2kAwsTYn5
 7X93Itk2h2p89YR7cRR/SmAOjkINbqC5zTPET51UJUfm/DwGwc11qT9fF
 o7rL1TeTnY91Tv4e8IJvMIMXbGZM0WoMpSfTf/iQ/I+NeT865zKQ5Cwny
 ANfATA7ehb7yYvwuF7uGBvbj16xC8kEz3sdzP3hxkXq5cQ7bmExNe/f/3
 Iw+yu+APjw3bS2l1Yt5gZyrSAwa3dpDHyrR7hZtn2BLtmmrDiaQLMOGUu A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="226480143"
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="226480143"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 00:15:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="532693478"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga007.fm.intel.com with SMTP; 26 Jan 2022 00:15:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Jan 2022 10:15:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jan 2022 10:15:38 +0200
Message-Id: <20220126081539.23227-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Fix oops due to missing stack
 depot
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
Cc: Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>,
 Vlastimil Babka <vbabka@suse.cz>, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We call __save_depot_stack() unconditionally so the stack depot
must always be initialized or else we'll oops on platforms without
runtime pm support.

Presumably we've not seen this in CI due to stack_depot_init()
already getting called via drm_mm_init()+CONFIG_DRM_DEBUG_MM.

Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Marco Elver <elver@google.com> # stackdepot
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Imre Deak <imre.deak@intel.com>
Fixes: 2dba5eb1c73b ("lib/stackdepot: allow optional init and stack_table allocation by kvmalloc()")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_runtime_pm.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 53f1ccb78849..64c2708efc9e 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -68,9 +68,7 @@ static noinline depot_stack_handle_t __save_depot_stack(void)
 static void init_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
 {
 	spin_lock_init(&rpm->debug.lock);
-
-	if (rpm->available)
-		stack_depot_init();
+	stack_depot_init();
 }
 
 static noinline depot_stack_handle_t
-- 
2.34.1

