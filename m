Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 147DB6AF67E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 21:16:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C39B10E548;
	Tue,  7 Mar 2023 20:16:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F32A110E549
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 20:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678220178; x=1709756178;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=im7aqVEyN/AUhk/iRLxFijKLudXbWLXp+Qm7bRhbuL4=;
 b=TbZ+nBgvjPLFfgS7pK0o5qVkPp5wE/mZ4FBixhPJ1G24gJ9Zh9twgA3J
 4ksx26RSgorxSSiQQZtA7CPasks0DqupUtwxzvjQPIta3BwlzyoxoPHN4
 5faisrdr6/7xVCfHOvLlYp58qMsDShi5PJ1V/ufrHTDosTidDc6Io80oz
 VbTfL9YNwE8BhJtwdAurf5Insrzhc0uhlVnx3Mm87twyQDnZS8iHyOwu1
 j7S6ixEJim5hOOBgyL4Hx4PKZKWPJKENWTW0MZkB+9z8UFmxELDU9sxlT
 l/wWywIRIL23ERPPE+YtOAGUZU5mKBUiA9YjPU2MIfAqL8j5hb4/ULtJS w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="338283935"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="338283935"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 12:16:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="679085914"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="679085914"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 12:16:16 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Mar 2023 12:16:03 -0800
Message-Id: <20230307201611.773103-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230307201611.773103-1-umesh.nerlige.ramappa@intel.com>
References: <20230307201611.773103-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/9] drm/i915/perf: Drop wakeref on GuC RC
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

