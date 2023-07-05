Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A69637488EC
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 18:10:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2816910E3A0;
	Wed,  5 Jul 2023 16:10:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8506B10E3A0
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 16:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688573409; x=1720109409;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=17iV8A8X8laorcn6zUAOr3vhwYE3X6yDbHV/9kGQE+0=;
 b=BMw7vI/nuMKkzLDJb/IDkOHqviO12ox+Z/pp3CffbiKzxaVbXxSwrV12
 KzxvoPGGoMv3nB6Q0bGqYD4vhYkn38kcPi9SHdYH/oYnS8EAlL12u9F1U
 U92nwCnG4mK5BFrNxUcXjLieY25ouuo+ZtmMHvJh122sIMZnAtOMSlzN0
 3EA5WwFxpQh6Z/CP6a3KwQiFkLJqddOX4KvhfRSAeGZJUXR21Ev/4UZzg
 jLyxX96esnvQAo6eBI60Ar077XLNEgeT0YGCrhanks0I/H5oxofzdj84G
 hQcVhdXHcSolrY9T0u5fKLhfQ8Bi3/i2RuYB5YX1MjRNBdg86XrHgeQZ9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="429417783"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="429417783"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 09:09:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="754408838"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="754408838"
Received: from lab-ah.igk.intel.com (HELO lab-ah.corp.intel.com)
 ([10.102.138.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 09:08:59 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 18:08:48 +0200
Message-Id: <20230705160848.988464-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: update request engine before
 removing virtual GuC engine
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
Cc: Chris Wilson <chris.p.wilson@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

GuC virtual engines can be removed before request removal. On the other
side driver expects rq->engine to be a valid pointer for a whole life of
request. Setting rq->engine to an always valid engine should solve
the issue.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7926
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index a0e3ef1c65d246..2c877ea5eda6f0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -3461,6 +3461,8 @@ static void guc_prio_fini(struct i915_request *rq, struct intel_context *ce)
 static void remove_from_context(struct i915_request *rq)
 {
 	struct intel_context *ce = request_to_scheduling_context(rq);
+	struct intel_engine_cs *engine;
+	intel_engine_mask_t tmp;
 
 	GEM_BUG_ON(intel_context_is_child(ce));
 
@@ -3478,6 +3480,15 @@ static void remove_from_context(struct i915_request *rq)
 
 	atomic_dec(&ce->guc_id.ref);
 	i915_request_notify_execute_cb_imm(rq);
+
+	/*
+	 * GuC virtual engine can disappear after this call, so let's assign
+	 * something valid, as driver expects this to be always valid pointer.
+	 */
+	for_each_engine_masked(engine, rq->engine->gt, rq->execution_mask, tmp) {
+		rq->engine = engine;
+		break;
+	}
 }
 
 static const struct intel_context_ops guc_context_ops = {
-- 
2.34.1

