Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D35E9375AEB
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 20:59:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D7266EDE8;
	Thu,  6 May 2021 18:57:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5BD46ED17;
 Thu,  6 May 2021 18:57:13 +0000 (UTC)
IronPort-SDR: 6BCnYqciG3q8VpUWDqfKf9Cm3+kN/QK7FSjsr9dpLkNRfaBKaKnuzYbymlGHX7D5av7YYvt7mp
 iuxFE1Tt4wZA==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="196531019"
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="196531019"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 11:57:12 -0700
IronPort-SDR: q5pqtJt5TOWDWIivJgkIGKr+R/VQ6UiFq4QCxRhMfhff5lViIe54zQu+wegRQ2ohy30ymwMK3C
 haMUXGLvzFZQ==
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="469583523"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 11:57:11 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu,  6 May 2021 12:14:07 -0700
Message-Id: <20210506191451.77768-54-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210506191451.77768-1-matthew.brost@intel.com>
References: <20210506191451.77768-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 53/97] drm/i915/guc: Disable semaphores when
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Disable semaphores when using GuC scheduling as semaphores are broken in
the current GuC firmware.

Cc: John Harrison <john.c.harrison@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 993faa213b41..d30260ffe2a7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -230,7 +230,8 @@ static void intel_context_set_gem(struct intel_context *ce,
 		ce->timeline = intel_timeline_get(ctx->timeline);
 
 	if (ctx->sched.priority >= I915_PRIORITY_NORMAL &&
-	    intel_engine_has_timeslices(ce->engine))
+	    intel_engine_has_timeslices(ce->engine) &&
+	    intel_engine_has_semaphores(ce->engine))
 		__set_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
 
 	intel_context_set_watchdog_us(ce, ctx->watchdog.timeout_us);
@@ -1939,7 +1940,8 @@ static int __apply_priority(struct intel_context *ce, void *arg)
 	if (!intel_engine_has_timeslices(ce->engine))
 		return 0;
 
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
