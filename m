Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D99AF5ED227
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 02:41:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D384A10E215;
	Wed, 28 Sep 2022 00:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B47BF10E1F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 00:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664325626; x=1695861626;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Cteo0sSnnJSrgqQpPgPAe32rXwaUiQWk1uLTP72j50g=;
 b=Qv0lM9TtAQZsWps5mFx8iSvZTzgT1NJNcqyyo/i59XDkgNHyTc/gNMTY
 U6zlWpQFNUJpFMY5U9W3Yqv02xgJpQiA98btaKIbxCoqwQobaV90AQvvm
 ckHR8dOyee8NnZriKVU+gcN4Vfc05EU+YJi1gvkQ4CV4QuyD94IvGeAds
 tT7ez8RZtQLAWyIPJxfCOYJQi1IuYrWwGikYH73LDUJvaaFLv/nyNYkyc
 LshNgPEhPMRksdzr1pcpjWayTeitfHc+J1cTpuOjSLupIt5+XWaiIXhzP
 gbRbyb3PEWItJ6Nwqj8HHrGrWR702ar9NoHrB1QE9nx9Rnky07Xxkg9Bf Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="387752083"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="387752083"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:26 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="572841188"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="572841188"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:26 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 17:41:42 -0700
Message-Id: <20220928004145.745803-13-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
References: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 12/15] drm/i915/huc: stall media submission until
 HuC is loaded
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

Wait on the fence to be signalled to avoid the submissions finding HuC
not yet loaded.

v2: use dedicaded wait_queue_entry for waiting in HuC load, as submitq
can't be re-used for it.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tony Ye <tony.ye@intel.com>
Acked-by: Tony Ye <tony.ye@intel.com>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_huc.h |  6 ++++++
 drivers/gpu/drm/i915/i915_request.c    | 24 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_request.h    |  5 +++++
 3 files changed, 35 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.h b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
index 915d281c1c72..52db03620c60 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
@@ -81,6 +81,12 @@ static inline bool intel_huc_is_loaded_by_gsc(const struct intel_huc *huc)
 	return huc->fw.loaded_via_gsc;
 }
 
+static inline bool intel_huc_wait_required(struct intel_huc *huc)
+{
+	return intel_huc_is_used(huc) && intel_huc_is_loaded_by_gsc(huc) &&
+	       !intel_huc_is_authenticated(huc);
+}
+
 void intel_huc_load_status(struct intel_huc *huc, struct drm_printer *p);
 
 #endif
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 62fad16a55e8..f949a9495758 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1621,6 +1621,20 @@ i915_request_await_object(struct i915_request *to,
 	return ret;
 }
 
+static void i915_request_await_huc(struct i915_request *rq)
+{
+	struct intel_huc *huc = &rq->context->engine->gt->uc.huc;
+
+	/* don't stall kernel submissions! */
+	if (!rcu_access_pointer(rq->context->gem_context))
+		return;
+
+	if (intel_huc_wait_required(huc))
+		i915_sw_fence_await_sw_fence(&rq->submit,
+					     &huc->delayed_load.fence,
+					     &rq->hucq);
+}
+
 static struct i915_request *
 __i915_request_ensure_parallel_ordering(struct i915_request *rq,
 					struct intel_timeline *timeline)
@@ -1702,6 +1716,16 @@ __i915_request_add_to_timeline(struct i915_request *rq)
 	struct intel_timeline *timeline = i915_request_timeline(rq);
 	struct i915_request *prev;
 
+	/*
+	 * Media workloads may require HuC, so stall them until HuC loading is
+	 * complete. Note that HuC not being loaded when a user submission
+	 * arrives can only happen when HuC is loaded via GSC and in that case
+	 * we still expect the window between us starting to accept submissions
+	 * and HuC loading completion to be small (a few hundred ms).
+	 */
+	if (rq->engine->class == VIDEO_DECODE_CLASS)
+		i915_request_await_huc(rq);
+
 	/*
 	 * Dependency tracking and request ordering along the timeline
 	 * is special cased so that we can eliminate redundant ordering
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 47041ec68df8..f5e1bb5e857a 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -348,6 +348,11 @@ struct i915_request {
 #define	GUC_PRIO_FINI	0xfe
 	u8 guc_prio;
 
+	/**
+	 * @hucq: wait queue entry used to wait on the HuC load to complete
+	 */
+	wait_queue_entry_t hucq;
+
 	I915_SELFTEST_DECLARE(struct {
 		struct list_head link;
 		unsigned long delay;
-- 
2.37.3

