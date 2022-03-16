Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0234DB13E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 14:21:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFD0C10E5A4;
	Wed, 16 Mar 2022 13:21:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71D3F10E595
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 13:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647436865; x=1678972865;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=19ij2+SRzg2EtKxLzdh9fi15KB9aF1UupWGrPfrttBk=;
 b=kyvzwzQ+ggk5hrxXktxvNQeR00juAM0RbmQxzBye7kF+3iC147i4wPUn
 8c7EEgYtz7VjPKE9vOtocHXD5cB5cq2gnnsUFYOPsXGFrvn4d0OD0Jd+b
 iMRPJL1a1d051FhkD/BN4As+8fqouAXLO7vu0czLIYbOvH1lNnV422V91
 ilMz+vASUCFcA+dmvucmvw9sO+NZtZ8o88mbOYEi6jgmKmoFNlnYh4Jep
 mrsmkvmuuM6/t6Uf70oP5LY8j2nSXqOZRTfA9yFSXlth5wltoaCQBXDbb
 Uws6OPJO+hw9GuRlhbijp7W668h7dHE+xh2/d9egCjAC9xnchXTR//a7Z g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="281364303"
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="281364303"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 06:21:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="646643915"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga004.jf.intel.com with ESMTP; 16 Mar 2022 06:21:03 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Mar 2022 18:37:54 +0530
Message-Id: <20220316130754.813761-2-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220316130754.813761-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
References: <20220316130754.813761-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: preempt and reset based on
 reset domain
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
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When we have shared reset domains, as we the engine
may be indirectly coupled to the stalled engine, and
we need to idle the current context to prevent
collateral damage.

Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h               | 3 ++-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c            | 6 ++++++
 drivers/gpu/drm/i915/gt/intel_engine_types.h         | 8 ++++++++
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 7 ++++++-
 drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c  | 2 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c         | 4 ++--
 drivers/gpu/drm/i915/selftests/i915_request.c        | 5 ++---
 7 files changed, 27 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 1c0ab05c3c40..a6ea0cdd8b53 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -282,7 +282,8 @@ intel_engine_has_preempt_reset(const struct intel_engine_cs *engine)
 	if (!CONFIG_DRM_I915_PREEMPT_TIMEOUT)
 		return false;
 
-	return intel_engine_has_preemption(engine);
+	return intel_engine_has_preemption(engine) &&
+	       !intel_engine_has_shared_reset_domain(engine);
 }
 
 #define FORCE_VIRTUAL	BIT(0)
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 8080479f27aa..b28120f0158a 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -472,7 +472,13 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id,
 static void __setup_engine_capabilities(struct intel_engine_cs *engine)
 {
 	struct drm_i915_private *i915 = engine->i915;
+	enum intel_engine_id id;
+	struct intel_engine_cs *e;
 
+	for_each_engine(e, engine->gt, id)
+		if ((e->reset_domain & engine->reset_domain) &&
+		    e->id != engine->id)
+			engine->flags |= I915_ENGINE_HAS_SHARED_RESET_DOMAIN;
 	if (engine->class == VIDEO_DECODE_CLASS) {
 		/*
 		 * HEVC support is present on first engine instance
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 194155de900d..d27103b23318 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -531,6 +531,8 @@ struct intel_engine_cs {
 #define I915_ENGINE_HAS_RCS_REG_STATE  BIT(9)
 #define I915_ENGINE_HAS_EU_PRIORITY    BIT(10)
 #define I915_ENGINE_FIRST_RENDER_COMPUTE BIT(11)
+#define I915_ENGINE_HAS_SHARED_RESET_DOMAIN BIT(9)
+
 	unsigned int flags;
 
 	/*
@@ -598,6 +600,12 @@ intel_engine_supports_stats(const struct intel_engine_cs *engine)
 	return engine->flags & I915_ENGINE_SUPPORTS_STATS;
 }
 
+static inline bool
+intel_engine_has_shared_reset_domain(const struct intel_engine_cs *engine)
+{
+	return engine->flags & I915_ENGINE_HAS_SHARED_RESET_DOMAIN;
+}
+
 static inline bool
 intel_engine_has_preemption(const struct intel_engine_cs *engine)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 006e2d9a53e3..9dda02956494 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2461,6 +2461,9 @@ static int execlists_suspend(struct intel_engine_cs *engine)
 	unsigned long timeout;
 	int err;
 
+	if (!intel_engine_pm_get_if_awake(engine))
+		return 0;
+	ENGINE_TRACE(engine, "supending active engine\n");
 	/* Stop further submissions, but listen for our own preempt-to-idle */
 	tasklet_disable(&se->tasklet);
 	se->tasklet.callback = suspend_tasklet;
@@ -2524,12 +2527,14 @@ static int execlists_suspend(struct intel_engine_cs *engine)
 		}
 	}
 
-	return 0;
+	goto out;
 
 err:
 	tasklet_disable(&se->tasklet);
 	se->tasklet.callback = execlists_submission_tasklet;
 	tasklet_enable(&se->tasklet);
+out:
+	intel_engine_pm_put(engine);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
index 273d440a53e3..939bbea7ce1b 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
@@ -356,7 +356,7 @@ static int live_heartbeat_off(void *arg)
 		return 0;
 
 	for_each_engine(engine, gt, id) {
-		if (!intel_engine_has_preemption(engine))
+		if (!intel_engine_has_preempt_reset(engine))
 			continue;
 
 		err = __live_heartbeat_off(engine);
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 09f8cd2d0e2c..3eb3496cfb7e 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -2389,7 +2389,7 @@ static int live_preempt_cancel(void *arg)
 		goto err_client_a;
 
 	for_each_engine(data.engine, gt, id) {
-		if (!intel_engine_has_preemption(data.engine))
+		if (!intel_engine_has_preempt_reset(data.engine))
 			continue;
 
 		err = __cancel_active0(&data);
@@ -3399,7 +3399,7 @@ static int live_preempt_timeout(void *arg)
 		unsigned long saved_timeout;
 		struct i915_request *rq;
 
-		if (!intel_engine_has_preemption(engine))
+		if (!intel_engine_has_preempt_reset(engine))
 			continue;
 
 		rq = spinner_create_request(&spin_lo, ctx_lo, engine,
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index c56a0c2cd2f7..e80363c81d6b 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -803,8 +803,7 @@ static int __cancel_reset(struct drm_i915_private *i915,
 	unsigned long preempt_timeout_ms;
 	int err = 0;
 
-	if (!CONFIG_DRM_I915_PREEMPT_TIMEOUT ||
-	    !intel_has_reset_engine(engine->gt))
+	if (!intel_engine_has_preempt_reset(engine))
 		return 0;
 
 	preempt_timeout_ms = engine->props.preempt_timeout_ms;
@@ -906,7 +905,7 @@ static int live_cancel_request(void *arg)
 		struct igt_live_test t;
 		int err, err2;
 
-		if (!intel_engine_has_preemption(engine))
+		if (!intel_engine_has_preempt_reset(engine))
 			continue;
 
 		err = igt_live_test_begin(&t, i915, __func__, engine->name);
-- 
2.34.1

