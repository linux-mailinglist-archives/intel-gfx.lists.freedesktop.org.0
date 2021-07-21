Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0483D193A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 23:34:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F5B26EA34;
	Wed, 21 Jul 2021 21:33:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FFC86E452;
 Wed, 21 Jul 2021 21:33:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="209620422"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="209620422"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 14:33:13 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="470296689"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 14:33:13 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Wed, 21 Jul 2021 14:50:56 -0700
Message-Id: <20210721215101.139794-14-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210721215101.139794-1-matthew.brost@intel.com>
References: <20210721215101.139794-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/18] drm/i915/guc: Disable semaphores when
 using GuC scheduling
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Semaphores are an optimization and not required for basic GuC submission
to work properly. Disable until we have time to do the implementation to
enable semaphores and tune them for performance. Also long direction is
just to delete semaphores from the i915 so another reason to not enable
these for GuC submission.

This patch fixes an existing bugs where I915_ENGINE_HAS_SEMAPHORES was
not honored correctly.

v2: Reword commit message
v3:
 (John H)
  - Add text to commit indicating this also fixing an existing bug
v4:
 (John H)
  - s/bug/bugs

Cc: John Harrison <john.c.harrison@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 7d6f52d8a801..64659802d4df 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -799,7 +799,8 @@ static int intel_context_set_gem(struct intel_context *ce,
 	}
 
 	if (ctx->sched.priority >= I915_PRIORITY_NORMAL &&
-	    intel_engine_has_timeslices(ce->engine))
+	    intel_engine_has_timeslices(ce->engine) &&
+	    intel_engine_has_semaphores(ce->engine))
 		__set_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
 
 	if (IS_ACTIVE(CONFIG_DRM_I915_REQUEST_TIMEOUT) &&
@@ -1778,7 +1779,8 @@ static void __apply_priority(struct intel_context *ce, void *arg)
 	if (!intel_engine_has_timeslices(ce->engine))
 		return;
 
-	if (ctx->sched.priority >= I915_PRIORITY_NORMAL)
+	if (ctx->sched.priority >= I915_PRIORITY_NORMAL &&
+	    intel_engine_has_semaphores(ce->engine))
 		intel_context_set_use_semaphores(ce);
 	else
 		intel_context_clear_use_semaphores(ce);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
