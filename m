Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E716B9D1BCD
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 00:22:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9928810E298;
	Mon, 18 Nov 2024 23:22:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EyRF0XsE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6CB010E57B
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2024 23:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731972149; x=1763508149;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qLQMAcoRpWiH/i63GGMSNTqZ6H5rMqbvJ4Vfy+ZqAXM=;
 b=EyRF0XsERqkLmiYlCr5f7uUIF+XQqYFUN0IEOVAuD6cGjUbfOosXcBI5
 yfc85gbDU9QdYCyTeUU7fzGMrV2F8po22CITSQzQ76oz7YE4VO5iEeQVj
 WXfEuV3yK5PjuCkR8pbMber6yHRuAPCWWy+47/P58D6H4+UpMYHllrmVy
 bDjzDQBSFPyFQ8pYCa5ZdgEYQCY3p0OFjqvgLSyQZetD2/R1gNdzGFErq
 BZKiD+iRIiiUqOq9Wn7Hnzg/B9iRcCMehD00vSGBF6Elwvv3TiKwYbIFT
 y08HG6xHOiqbu0Dda1GqCfFGUbY/EiiMWfGWfE8ogiUXOcPI5vpV8iVdw g==;
X-CSE-ConnectionGUID: Xj6Np0GzSSKqdS1IP7/MEw==
X-CSE-MsgGUID: R8KAdZoLTuq4c1j+5omJVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="42466978"
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="42466978"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:22:29 -0800
X-CSE-ConnectionGUID: rGAPC99KRcWuOdU4VT6leA==
X-CSE-MsgGUID: h2YTOCYaSZODYE7BoVRA5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="89777991"
Received: from dut7231atsm.jf.intel.com ([10.75.202.213])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:22:28 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	john.c.harrison@intel.com
Subject: [PATCH 1/3] i915/guc: Reset engine utilization buffer before
 registration
Date: Mon, 18 Nov 2024 15:22:21 -0800
Message-Id: <20241118232223.53639-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241118232223.53639-1-umesh.nerlige.ramappa@intel.com>
References: <20241118232223.53639-1-umesh.nerlige.ramappa@intel.com>
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

