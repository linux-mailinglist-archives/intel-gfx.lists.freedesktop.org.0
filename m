Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC714B1BF6
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 03:11:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CD4C10E9AC;
	Fri, 11 Feb 2022 02:11:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94CC610E9AC
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 02:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644545497; x=1676081497;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Mm/vtT6VQGvwPvNOuZEjSv6p/BRXbXzHmQYOu5eY4/4=;
 b=RZYI5S3qqYbNXYSvVOff2npi2H2ps2gSfvQWLEiNdEv6zyY7rlVUU7R+
 230lAZW4KNbIj7ThmUlpvfCD1uKQNvQ2NplySE8tCu5HH0Wx1iSlv7nf9
 W3pmDqxWXtancGAkVwRR+cFRLN78SxDyPLrb93/JU/+XzOJCOMj9MwGhN
 GuK15o93RpNa7L3aeWEsL1EqSLy4oif6AU5h3xrRcIeOJGIM2T1OEc8Zm
 KesMTWSLTX1yWpllEPlbOHzccRA7VYljpDGSQK2IDoy/f+hUXo9llLT7C
 CXFQLR94+6kSooCyytfz3J1Jh2GHDT8Ce5XqOBslqDYhKg9+iFEgRS5jt A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="237043257"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="237043257"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 18:11:37 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="633910408"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154)
 ([10.165.21.154])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 18:11:36 -0800
Date: Thu, 10 Feb 2022 18:11:36 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <20220211021136.GB34157@unerlige-ril-10.165.21.154>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-9-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20220126104822.3653079-9-alan.previn.teres.alexis@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v5 08/10] drm/i915/guc: Plumb GuC-capture
 into gpu_coredump
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 26, 2022 at 02:48:20AM -0800, Alan Previn wrote:
>Add a flags parameter through all of the coredump creation
>functions. Add a bitmask flag to indicate if the top
>level gpu_coredump event is triggered in response to
>a GuC context reset notification.
>
>Using that flag, ensure all coredump functions that
>read or print mmio-register values related to work submission
>or command-streamer engines are skipped and replaced with
>a calls guc-capture module equivalent functions to retrieve
>or print the register dump.
>
>While here, split out display related register reading
>and printing into its own function that is called agnostic
>to whether GuC had triggered the reset.
>
>For now, introduce an empty printing function that can
>filled in on a subsequent patch just to handle formatting.
>
>Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>---
> .../drm/i915/gt/intel_execlists_submission.c  |   4 +-
> drivers/gpu/drm/i915/gt/intel_reset.c         |   2 +-
> .../gpu/drm/i915/gt/uc/intel_guc_capture.c    |  78 ++++++
> .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |  11 +-
> .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   2 +-
> drivers/gpu/drm/i915/i915_debugfs.c           |   2 +-
> drivers/gpu/drm/i915/i915_gpu_error.c         | 263 ++++++++++++------
> drivers/gpu/drm/i915/i915_gpu_error.h         |  31 ++-
> 8 files changed, 295 insertions(+), 98 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>index 960a9aaf4f3a..c8bb43863461 100644
>--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>@@ -2230,11 +2230,11 @@ static struct execlists_capture *capture_regs(struct intel_engine_cs *engine)
> 	if (!cap->error)
> 		goto err_cap;
>
>-	cap->error->gt = intel_gt_coredump_alloc(engine->gt, gfp);
>+	cap->error->gt = intel_gt_coredump_alloc(engine->gt, gfp, CORE_DUMP_FLAG_NONE);
> 	if (!cap->error->gt)
> 		goto err_gpu;
>
>-	cap->error->gt->engine = intel_engine_coredump_alloc(engine, gfp);
>+	cap->error->gt->engine = intel_engine_coredump_alloc(engine, gfp, CORE_DUMP_FLAG_NONE);
> 	if (!cap->error->gt->engine)
> 		goto err_gt;
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
>index 6f2821cca409..c1dc3f8b1108 100644
>--- a/drivers/gpu/drm/i915/gt/intel_reset.c
>+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
>@@ -1305,7 +1305,7 @@ void intel_gt_handle_error(struct intel_gt *gt,
> 	engine_mask &= gt->info.engine_mask;
>
> 	if (flags & I915_ERROR_CAPTURE) {
>-		i915_capture_error_state(gt, engine_mask);
>+		i915_capture_error_state(gt, engine_mask, CORE_DUMP_FLAG_NONE);
> 		intel_gt_clear_error_registers(gt, engine_mask);
> 	}
>
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>index 0b6d743712a6..2f5dc413dddc 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>@@ -728,6 +728,17 @@ int intel_guc_capture_output_min_size_est(struct intel_guc *guc)
>  *                   instance). This node id added to a linked list stored in
>  *                   guc->capture->priv for matchup and printout when triggered by
>  *                   i915_gpu_coredump and err_print_gt (via error capture sysfs) later.
>+ *
>+ * GUC --> notify context reset:
>+ * -----------------------------
>+ *     --> G2H CONTEXT RESET
>+ *                   L--> guc_handle_context_reset --> i915_capture_error_state
>+ *                          L--> i915_gpu_coredump(..IS_GUC_CAPTURE) --> gt_record_engines
>+ *                               --> capture_engine(..IS_GUC_CAPTURE)
>+ *                                  L--> detach C from internal linked list and add into
>+ *                                       intel_engine_coredump struct (if the context and
>+ *                                       engine of the event notification matches a node
>+ *                                       in the link list)
>  */
>
> static int guc_capture_buf_cnt(struct __guc_capture_bufstate *buf)
>@@ -1203,6 +1214,73 @@ static void __guc_capture_store_snapshot_work(struct intel_guc *guc)
> 	mutex_unlock(&guc->log_state[GUC_CAPTURE_LOG_BUFFER].lock);
> }
>
>+#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
>+
>+int intel_guc_capture_print_engine_node(struct drm_i915_error_state_buf *ebuf,
>+					const struct intel_engine_coredump *ee)
>+{
>+	return 0;

What goes here? Also return value is not used.

>+}
>+
>+#endif //CONFIG_DRM_I915_DEBUG_GUC
>+
>+void intel_guc_capture_free_node(struct intel_engine_coredump *ee)
>+{
>+	int i;
>+
>+	if (!ee)
>+		return;
>+	if (!ee->guc_capture_node)
>+		return;

if (!ee || !ee->guc_capture_node) ^

>+	for (i = GUC_CAPTURE_LIST_TYPE_GLOBAL; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>+		if (ee->guc_capture_node->reginfo[i].regs)
>+			kfree(ee->guc_capture_node->reginfo[i].regs);
>+	}
>+	kfree(ee->guc_capture_node);
>+	ee->guc_capture_node = NULL;
>+}
>+
>+void intel_guc_capture_get_matching_node(struct intel_gt *gt,
>+					 struct intel_engine_coredump *ee,
>+					 struct intel_context *ce)
>+{
>+	struct intel_guc *guc;
>+	struct drm_i915_private *i915;
>+
>+	if (!gt || !ee || !ce)
>+		return;
>+
>+	i915 = gt->i915;
>+	guc = &gt->uc.guc;
>+	if (!guc->capture.priv)
>+		return;
>+
>+	GEM_BUG_ON(ee->guc_capture_node);
>+	/*
>+	 * Look for a matching GuC reported error capture node from
>+	 * the internal output link-list based on lrca, guc-id and engine
>+	 * identification.
>+	 */
>+	if (!list_empty(&guc->capture.priv->outlist)) {

You would just not execute anything in the loop below if empty, so no 
need to check for empty.

>+		struct __guc_capture_parsed_output *n, *ntmp;
>+
>+		list_for_each_entry_safe(n, ntmp, &guc->capture.priv->outlist, link) {
>+			if (n->eng_inst == GUC_ID_TO_ENGINE_INSTANCE(ee->engine->guc_id) &&
>+			    n->eng_class == GUC_ID_TO_ENGINE_CLASS(ee->engine->guc_id) &&
>+			    n->guc_id == ce->guc_id.id &&
>+			    (n->lrca & CTX_GTT_ADDRESS_MASK) ==
>+			    (ce->lrc.lrca & CTX_GTT_ADDRESS_MASK)) {
>+				list_del(&n->link);
>+				--guc->capture.priv->listcount;
>+				ee->guc_capture_node = n;
>+				ee->capture = &guc->capture;
>+				return;
>+			}
>+		}
>+	}
>+	drm_warn(&i915->drm, "GuC capture can't match ee to node\n");
>+}

lgtm. In general the implementation differences between submission 
backends (guc vs execlists) need to be vfuncs so we can avoid having to 
use the flags and conditions. Regardless, with the above comments 
addressed, this is:

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh
