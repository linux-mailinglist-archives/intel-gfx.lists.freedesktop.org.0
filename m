Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FFB6FEDCB
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 10:20:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96CE910E5BD;
	Thu, 11 May 2023 08:20:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7D0E10E21D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 08:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683793232; x=1715329232;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1/CrDVmY7o0cpFa1dK0WrTFdUo6va/bkYa2/ScLnIjE=;
 b=RUSMDwQNouXwQgM9cuDqdkQ0DLVdLy0JD2cWCgVQSten75IiqTEGXqSE
 wilN6gL6RoJXUObLUKkuya/CrD0qqwj8dqyeA4Jtyj/Cjcz3OSvmkoaJL
 Vj2L0HxgTH4UFyIXrXW/kXMR6tUIObpSnD6NpXD16hFrPKfKGpHTB7FwI
 ekYdSyiOn2zSAsMD7civs+C/7m4PfuByB+oV01HioOKsQ5oA308S18x3J
 /Ubwe+iW10lB6HOSAct78mo06u6LPl194KD9+mf9wXXCF8e1s5QeO+FEb
 bOjbYeaZLM9EBEp95DCRPkx+5euj3PJChHzdxvV1zTB0ytkAxDYCcMbm/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="350465855"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="350465855"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 01:20:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="699624939"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="699624939"
Received: from okozlyk-mobl.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.251.218.243])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 01:20:31 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 May 2023 11:20:12 +0300
Message-Id: <20230511082013.1313484-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230511082013.1313484-1-luciano.coelho@intel.com>
References: <20230511082013.1313484-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/gt: create workqueue dedicated to
 wake references
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

Add a work queue in the intel_wakeref structure to be used exclusively
by the wake reference mechanism.  This is needed in order to avoid
using the system workqueue and relying on flush_scheduled_work().

Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c |  7 ++++++-
 drivers/gpu/drm/i915/gt/intel_engine_pm.c | 15 ++++++++++++--
 drivers/gpu/drm/i915/gt/intel_engine_pm.h |  3 ++-
 drivers/gpu/drm/i915/gt/mock_engine.c     |  8 +++++++-
 drivers/gpu/drm/i915/intel_wakeref.c      | 21 ++++++++++++++-----
 drivers/gpu/drm/i915/intel_wakeref.h      | 25 +++++++++++++++--------
 6 files changed, 60 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 0aff5bb13c53..6505bfa70cd0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1290,7 +1290,11 @@ static int engine_setup_common(struct intel_engine_cs *engine)
 		goto err_cmd_parser;
 
 	intel_engine_init_execlists(engine);
-	intel_engine_init__pm(engine);
+
+	err = intel_engine_init__pm(engine);
+	if (err)
+		goto err_cmd_parser;
+
 	intel_engine_init_retire(engine);
 
 	/* Use the whole device by default */
@@ -1525,6 +1529,7 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 {
 	GEM_BUG_ON(!list_empty(&engine->sched_engine->requests));
 
+	intel_engine_destroy__pm(engine);
 	i915_sched_engine_put(engine->sched_engine);
 	intel_breadcrumbs_put(engine->breadcrumbs);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index ee531a5c142c..859b62cf660f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -294,14 +294,25 @@ static const struct intel_wakeref_ops wf_ops = {
 	.put = __engine_park,
 };
 
-void intel_engine_init__pm(struct intel_engine_cs *engine)
+int intel_engine_init__pm(struct intel_engine_cs *engine)
 {
 	struct intel_runtime_pm *rpm = engine->uncore->rpm;
+	int err;
+
+	err = intel_wakeref_init(&engine->wakeref, rpm, &wf_ops);
+	if (err)
+		return err;
 
-	intel_wakeref_init(&engine->wakeref, rpm, &wf_ops);
 	intel_engine_init_heartbeat(engine);
 
 	intel_gsc_idle_msg_enable(engine);
+
+	return 0;
+}
+
+void intel_engine_destroy__pm(struct intel_engine_cs *engine)
+{
+	intel_wakeref_destroy(&engine->wakeref);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.h b/drivers/gpu/drm/i915/gt/intel_engine_pm.h
index d68675925b79..e8568f7d10c6 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.h
@@ -104,7 +104,8 @@ intel_engine_create_kernel_request(struct intel_engine_cs *engine)
 	return rq;
 }
 
-void intel_engine_init__pm(struct intel_engine_cs *engine);
+int intel_engine_init__pm(struct intel_engine_cs *engine);
+void intel_engine_destroy__pm(struct intel_engine_cs *engine);
 
 void intel_engine_reset_pinned_contexts(struct intel_engine_cs *engine);
 
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index c0637bf799a3..0a3c702c21e2 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -336,6 +336,7 @@ static void mock_engine_release(struct intel_engine_cs *engine)
 	intel_context_put(engine->kernel_context);
 
 	intel_engine_fini_retire(engine);
+	intel_engine_destroy__pm(engine);
 }
 
 struct intel_engine_cs *mock_engine(struct drm_i915_private *i915,
@@ -393,6 +394,7 @@ struct intel_engine_cs *mock_engine(struct drm_i915_private *i915,
 int mock_engine_init(struct intel_engine_cs *engine)
 {
 	struct intel_context *ce;
+	int err;
 
 	INIT_LIST_HEAD(&engine->pinned_contexts_list);
 
@@ -402,7 +404,11 @@ int mock_engine_init(struct intel_engine_cs *engine)
 	engine->sched_engine->private_data = engine;
 
 	intel_engine_init_execlists(engine);
-	intel_engine_init__pm(engine);
+
+	err = intel_engine_init__pm(engine);
+	if (err)
+		return err;
+
 	intel_engine_init_retire(engine);
 
 	engine->breadcrumbs = intel_breadcrumbs_create(NULL);
diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
index dfd87d082218..6bae609e1312 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.c
+++ b/drivers/gpu/drm/i915/intel_wakeref.c
@@ -74,7 +74,7 @@ void __intel_wakeref_put_last(struct intel_wakeref *wf, unsigned long flags)
 
 	/* Assume we are not in process context and so cannot sleep. */
 	if (flags & INTEL_WAKEREF_PUT_ASYNC || !mutex_trylock(&wf->mutex)) {
-		mod_delayed_work(system_wq, &wf->work,
+		mod_delayed_work(wf->wq, &wf->work,
 				 FIELD_GET(INTEL_WAKEREF_PUT_DELAY, flags));
 		return;
 	}
@@ -93,10 +93,10 @@ static void __intel_wakeref_put_work(struct work_struct *wrk)
 	____intel_wakeref_put_last(wf);
 }
 
-void __intel_wakeref_init(struct intel_wakeref *wf,
-			  struct intel_runtime_pm *rpm,
-			  const struct intel_wakeref_ops *ops,
-			  struct intel_wakeref_lockclass *key)
+int __intel_wakeref_init(struct intel_wakeref *wf,
+			 struct intel_runtime_pm *rpm,
+			 const struct intel_wakeref_ops *ops,
+			 struct intel_wakeref_lockclass *key)
 {
 	wf->rpm = rpm;
 	wf->ops = ops;
@@ -105,9 +105,20 @@ void __intel_wakeref_init(struct intel_wakeref *wf,
 	atomic_set(&wf->count, 0);
 	wf->wakeref = 0;
 
+	wf->wq = alloc_workqueue("i1915-wakeref", 0, 0);
+	if (wf->wq == NULL)
+		return -ENOMEM;
+
 	INIT_DELAYED_WORK(&wf->work, __intel_wakeref_put_work);
 	lockdep_init_map(&wf->work.work.lockdep_map,
 			 "wakeref.work", &key->work, 0);
+
+	return 0;
+}
+
+void intel_wakeref_destroy(struct intel_wakeref *wf)
+{
+	destroy_workqueue(wf->wq);
 }
 
 int intel_wakeref_wait_for_idle(struct intel_wakeref *wf)
diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
index 0b6b4852ab23..86f99c044444 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.h
+++ b/drivers/gpu/drm/i915/intel_wakeref.h
@@ -42,6 +42,7 @@ struct intel_wakeref {
 	struct intel_runtime_pm *rpm;
 	const struct intel_wakeref_ops *ops;
 
+	struct workqueue_struct *wq;
 	struct delayed_work work;
 };
 
@@ -50,15 +51,21 @@ struct intel_wakeref_lockclass {
 	struct lock_class_key work;
 };
 
-void __intel_wakeref_init(struct intel_wakeref *wf,
-			  struct intel_runtime_pm *rpm,
-			  const struct intel_wakeref_ops *ops,
-			  struct intel_wakeref_lockclass *key);
-#define intel_wakeref_init(wf, rpm, ops) do {				\
-	static struct intel_wakeref_lockclass __key;			\
-									\
-	__intel_wakeref_init((wf), (rpm), (ops), &__key);		\
-} while (0)
+int __intel_wakeref_init(struct intel_wakeref *wf,
+			 struct intel_runtime_pm *rpm,
+			 const struct intel_wakeref_ops *ops,
+			 struct intel_wakeref_lockclass *key);
+static inline int
+intel_wakeref_init(struct intel_wakeref *wf,
+		   struct intel_runtime_pm *rpm,
+		   const struct intel_wakeref_ops *ops)
+{
+	static struct intel_wakeref_lockclass __key;
+
+	return __intel_wakeref_init((wf), (rpm), (ops), &__key);
+}
+
+void intel_wakeref_destroy(struct intel_wakeref *wf);
 
 int __intel_wakeref_get_first(struct intel_wakeref *wf);
 void __intel_wakeref_put_last(struct intel_wakeref *wf, unsigned long flags);
-- 
2.39.2

