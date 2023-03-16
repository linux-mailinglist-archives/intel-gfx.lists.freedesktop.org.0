Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B45B16BC307
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 02:01:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B44E010E4D8;
	Thu, 16 Mar 2023 01:01:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B88010E4D8
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 01:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678928474; x=1710464474;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=im7aqVEyN/AUhk/iRLxFijKLudXbWLXp+Qm7bRhbuL4=;
 b=lgHyaapqWRtOQA4Hx3kA8J0rC9ah/BPURK03Cux7QVtfMUSr3fQdQHy0
 vqCPsicNtvMS7Y4olfOzln8ngteU+JSnPv7u/S1CPEQbjfUYxkjl2Rf3i
 GofrtuFzq/K8RWusm6Z6waKsHXJJmIyp3AXG1AJFbUTCJrHfTkO2TuhOS
 3z8nOt4smgF9oqU4TfsAEL0vvnLwrJyvLJ4l1pITn42nknmReuHzyY1T6
 rRiBCXODCCXP4pKznDVbwKZR1xi2jxLnzN1SMcrEBW/vnUnE6UaVipXXS
 emL0OroPsUaLgtB3v+sW0H/2cSgVbmgofkWopfZUPqpCXxSaXmc2/SEhq A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="400434060"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="400434060"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 18:01:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="743916662"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="743916662"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 18:01:04 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Mar 2023 18:00:50 -0700
Message-Id: <20230316010101.2590309-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230316010101.2590309-1-umesh.nerlige.ramappa@intel.com>
References: <20230316010101.2590309-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 01/12] drm/i915/perf: Drop wakeref on GuC RC
 error
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

From: Chris Wilson <chris.p.wilson@linux.intel.com>

If we fail to adjust the GuC run-control on opening the perf stream,
make sure we unwind the wakeref just taken.

v2: Retain old goto label names (Ashutosh)

Fixes: 01e742746785 ("drm/i915/guc: Support OA when Wa_16011777198 is enabled")
Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 14 +++++++++-----
 drivers/gpu/drm/i915/i915_perf_types.h |  6 ++++++
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 824a34ec0b83..283a4a3c6862 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1592,9 +1592,7 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 	/*
 	 * Wa_16011777198:dg2: Unset the override of GUCRC mode to enable rc6.
 	 */
-	if (intel_uc_uses_guc_rc(&gt->uc) &&
-	    (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
-	     IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0)))
+	if (stream->override_gucrc)
 		drm_WARN_ON(&gt->i915->drm,
 			    intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc));
 
@@ -3305,8 +3303,10 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 		if (ret) {
 			drm_dbg(&stream->perf->i915->drm,
 				"Unable to override gucrc mode\n");
-			goto err_config;
+			goto err_gucrc;
 		}
+
+		stream->override_gucrc = true;
 	}
 
 	ret = alloc_oa_buffer(stream);
@@ -3345,11 +3345,15 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	free_oa_buffer(stream);
 
 err_oa_buf_alloc:
-	free_oa_configs(stream);
+	if (stream->override_gucrc)
+		intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc);
 
+err_gucrc:
 	intel_uncore_forcewake_put(stream->uncore, FORCEWAKE_ALL);
 	intel_engine_pm_put(stream->engine);
 
+	free_oa_configs(stream);
+
 err_config:
 	free_noa_wait(stream);
 
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index ca150b7af3f2..e36f046fe2b6 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -316,6 +316,12 @@ struct i915_perf_stream {
 	 * buffer should be checked for available data.
 	 */
 	u64 poll_oa_period;
+
+	/**
+	 * @override_gucrc: GuC RC has been overridden for the perf stream,
+	 * and we need to restore the default configuration on release.
+	 */
+	bool override_gucrc:1;
 };
 
 /**
-- 
2.36.1

