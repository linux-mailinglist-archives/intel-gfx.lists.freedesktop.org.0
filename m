Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 581846BC225
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 01:09:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C8A010EA35;
	Thu, 16 Mar 2023 00:09:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2746110EA3B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 00:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678925374; x=1710461374;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=im7aqVEyN/AUhk/iRLxFijKLudXbWLXp+Qm7bRhbuL4=;
 b=I26PXUqH6s8xTsXwTZc8wFDk076gEzX/TUgte7BiaRJ0eNM+XEvORwQh
 c4xhUFLSS6XlTqsjmQ6w0tghkY2zf3HsAhYY9rS0cl5d48R2oGWNaDFvo
 uERff72AQ4Cj2siE9b7v0dN+apiZU7WiEP4/fdvZwkOMA1/TfluyttkKg
 xQZ1UuMqtKOfk3zOFriXHPTgKuz0R2SwUQ+S/ZCFDkQfl6UXxGz4AuXX2
 qA8hABStwtXKR8ULk8CFMEAkPqnBgv8Fg3V2XGXlBjkE7uaeinww8o9Sf
 8AfcvRekvdfsDuShqyyfORJF/HcLjM5H/t5zjv0C7I1wMeF7Saz0oB+I8 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="402718807"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="402718807"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 17:09:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="709863690"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="709863690"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 17:09:32 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Mar 2023 17:09:21 -0700
Message-Id: <20230316000932.2525744-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230316000932.2525744-1-umesh.nerlige.ramappa@intel.com>
References: <20230316000932.2525744-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 01/12] drm/i915/perf: Drop wakeref on GuC RC
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

