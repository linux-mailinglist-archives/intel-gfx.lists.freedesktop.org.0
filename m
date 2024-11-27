Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D113B9DACA2
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 18:40:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7866A10EB99;
	Wed, 27 Nov 2024 17:40:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JfRlvBjz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D33F10E146
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 17:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732729213; x=1764265213;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=C5oejJhcP80eKbWNggaR2g0rAZ+tVBIt5DeZGGs7T5A=;
 b=JfRlvBjzXw88OXyTPaDr/OwBVTJEFdvN9s0o9ysjsn+95XMqd3ngLbSn
 HysGnIt6L8TlCjVyjIOTQCWhbkHsiZkJFtZkjPMIkm1BnELVnt2o2KnT+
 MsJZ1uzRv6bd8Z9ptrTMhEEYGsUNZJ+XPYwb8YvwtpJDJiSAAxieqfSYq
 slqjmxYGa2iIv9oAM0BoGg2pICggsS1Acxzkss1zyirN0IS7NuLuGMWQW
 tc7CMR8d+A23iz4ZpZhVD8VmeXfpwUkNKReQKymZABguZHNDNrsVn3FyW
 3TNKb3Ki+ZIJWrPlOwsmt1R6yegqtOPZa2QxjAeHjMhKS2RO0C5gaQ3ox Q==;
X-CSE-ConnectionGUID: ntSM9ZftT1m8XdHK4VhqhA==
X-CSE-MsgGUID: Wk3eOJatRw2PyHTEeCR3YQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="50470703"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="50470703"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:40:12 -0800
X-CSE-ConnectionGUID: TAWW0d3ERwSzcug9vqTrTg==
X-CSE-MsgGUID: yiBSk+SXSgqFWyM4/c4uRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="91818800"
Received: from dut7231atsm.jf.intel.com ([10.75.202.213])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:40:11 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	john.c.harrison@intel.com
Subject: [PATCH 1/3] i915/guc: Reset engine utilization buffer before
 registration
Date: Wed, 27 Nov 2024 09:40:04 -0800
Message-Id: <20241127174006.190128-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241127174006.190128-1-umesh.nerlige.ramappa@intel.com>
References: <20241127174006.190128-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On GT reset, we store total busyness counts for all engines and
re-register the utilization buffer with GuC. At that time we should
reset the buffer, so that we don't get spurious busyness counts on
subsequent queries.

To repro this issue, run igt@perf_pmu@busy-hang followed by
igt@perf_pmu@most-busy-idle-check-all for a couple iterations.

Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 353a9167c9a4..c71aedcbce43 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1243,6 +1243,21 @@ static void __get_engine_usage_record(struct intel_engine_cs *engine,
 	} while (++i < 6);
 }
 
+static void __set_engine_usage_record(struct intel_engine_cs *engine,
+				      u32 last_in, u32 id, u32 total)
+{
+	struct iosys_map rec_map = intel_guc_engine_usage_record_map(engine);
+
+#define record_write(map_, field_, val_) \
+	iosys_map_wr_field(map_, 0, struct guc_engine_usage_record, field_, val_)
+
+	record_write(&rec_map, last_switch_in_stamp, last_in);
+	record_write(&rec_map, current_context_index, id);
+	record_write(&rec_map, total_runtime, total);
+
+#undef record_write
+}
+
 static void guc_update_engine_gt_clks(struct intel_engine_cs *engine)
 {
 	struct intel_engine_guc_stats *stats = &engine->stats.guc;
@@ -1543,6 +1558,9 @@ static void guc_timestamp_ping(struct work_struct *wrk)
 
 static int guc_action_enable_usage_stats(struct intel_guc *guc)
 {
+	struct intel_gt *gt = guc_to_gt(guc);
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
 	u32 offset = intel_guc_engine_usage_offset(guc);
 	u32 action[] = {
 		INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF,
@@ -1550,6 +1568,9 @@ static int guc_action_enable_usage_stats(struct intel_guc *guc)
 		0,
 	};
 
+	for_each_engine(engine, gt, id)
+		__set_engine_usage_record(engine, 0, 0xffffffff, 0);
+
 	return intel_guc_send(guc, action, ARRAY_SIZE(action));
 }
 
-- 
2.34.1

