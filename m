Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D43EE3CBD08
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 22:00:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E96476E9E4;
	Fri, 16 Jul 2021 19:59:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C71EA6E9D7;
 Fri, 16 Jul 2021 19:59:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="210596714"
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="210596714"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:59:36 -0700
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="507238894"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:59:36 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Fri, 16 Jul 2021 13:16:42 -0700
Message-Id: <20210716201724.54804-10-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210716201724.54804-1-matthew.brost@intel.com>
References: <20210716201724.54804-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/51] drm/i915/guc: Disable engine barriers
 with GuC during unpin
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

Disable engine barriers for unpinning with GuC. This feature isn't
needed with the GuC as it disables context scheduling before unpinning
which guarantees the HW will not reference the context. Hence it is
not necessary to defer unpinning until a kernel context request
completes on each engine in the context engine mask.

Cc: John Harrison <john.c.harrison@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c    |  2 +-
 drivers/gpu/drm/i915/gt/selftest_context.c | 10 ++++++++++
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 3d5b4116617f..91349d071e0e 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -80,7 +80,7 @@ static int intel_context_active_acquire(struct intel_context *ce)
 
 	__i915_active_acquire(&ce->active);
 
-	if (intel_context_is_barrier(ce))
+	if (intel_context_is_barrier(ce) || intel_engine_uses_guc(ce->engine))
 		return 0;
 
 	/* Preallocate tracking nodes */
diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm/i915/gt/selftest_context.c
index 26685b927169..fa7b99a671dd 100644
--- a/drivers/gpu/drm/i915/gt/selftest_context.c
+++ b/drivers/gpu/drm/i915/gt/selftest_context.c
@@ -209,7 +209,13 @@ static int __live_active_context(struct intel_engine_cs *engine)
 	 * This test makes sure that the context is kept alive until a
 	 * subsequent idle-barrier (emitted when the engine wakeref hits 0
 	 * with no more outstanding requests).
+	 *
+	 * In GuC submission mode we don't use idle barriers and we instead
+	 * get a message from the GuC to signal that it is safe to unpin the
+	 * context from memory.
 	 */
+	if (intel_engine_uses_guc(engine))
+		return 0;
 
 	if (intel_engine_pm_is_awake(engine)) {
 		pr_err("%s is awake before starting %s!\n",
@@ -357,7 +363,11 @@ static int __live_remote_context(struct intel_engine_cs *engine)
 	 * on the context image remotely (intel_context_prepare_remote_request),
 	 * which inserts foreign fences into intel_context.active, does not
 	 * clobber the idle-barrier.
+	 *
+	 * In GuC submission mode we don't use idle barriers.
 	 */
+	if (intel_engine_uses_guc(engine))
+		return 0;
 
 	if (intel_engine_pm_is_awake(engine)) {
 		pr_err("%s is awake before starting %s!\n",
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
