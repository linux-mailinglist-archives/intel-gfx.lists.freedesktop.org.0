Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B6F979DCB
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 11:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FA2A10E315;
	Mon, 16 Sep 2024 09:04:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dVujy93M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8656910E108;
 Mon, 16 Sep 2024 09:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726477490; x=1758013490;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/eIiBoyTbkYg5ZUrt9PdXYL5cLuZEAqjlHJjaOOd2X4=;
 b=dVujy93M2P3v71tQOfZquIdNk+Fm9afdKUX+trC9kU6IvxHZdLOlZNfZ
 IwEoqYmXTEz1dBl6CRNUpSuu1+PWms/3dIY6/ygnYhIcJGhww9oI0Rf3O
 yMNB0iTxTvJMqkgdRo1/YVSoz0FpPI/oOG34q1TPPlS7ny7VK8HJosOqD
 cLMmFejvQmFeWTN//xlXpvvhm32mFu/pIlI8C5y8TImK6XxWQzQoKKXIm
 8bUoR831k/UkZ0MIeNJSLrkoX4F1DrXN/DfuxFQ6aJR1a5J+6IlWkKj9a
 c4NpQVLkpqTSgy5iynSbQ/n47TtSoi7jno3rZlqurejEWgPr/xvYgAnwy g==;
X-CSE-ConnectionGUID: bK949vvFTGyw14pNF82RwQ==
X-CSE-MsgGUID: mN2VZfRnSjOh/VpcnQ2n3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="36643954"
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="36643954"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 02:04:48 -0700
X-CSE-ConnectionGUID: 4GMJ2dzFS3GhibAJaeJvqg==
X-CSE-MsgGUID: OU3zET2fQPuKvVVIn3TGUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="69055579"
Received: from dut1407rkls.igk.intel.com ([10.102.46.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 02:04:45 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH] tests: drm_fdinfo: Fix zero tolerance checks
Date: Mon, 16 Sep 2024 11:03:26 +0200
Message-ID: <20240916090329.5279-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
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

When we expect an engine to be busy, we check if its reported busy time
falls within a +/-5% tolerance range of measurement time period.
However, when we expect the engine to be idle, we compare its reported
busy time against zero, still with a +/-5% tolerance range, but now
calculated against the zero value, then no tolerance at all.  Obviously,
such check fails when the reported busy time is not exactly zero.

Compare engine idle time against measurement time period instead of
comparing its busy time against zero when we expect the busy time to be
close to zero.  As a debugging aid, display messages with the compared
values when requested via --debug option or when a failure occurs.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/drm_fdinfo.c | 51 ++++++++++++++++++++--------------------
 1 file changed, 25 insertions(+), 26 deletions(-)

diff --git a/tests/intel/drm_fdinfo.c b/tests/intel/drm_fdinfo.c
index 43216a64e..45d17aaaa 100644
--- a/tests/intel/drm_fdinfo.c
+++ b/tests/intel/drm_fdinfo.c
@@ -107,12 +107,18 @@ static const char *engine_map[] = {
 };
 
 #define __assert_within_epsilon(x, ref, tol_up, tol_down) \
-	igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
-		     (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
-		     "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance of %f)\n",\
-		     #x, #ref, (double)(x), \
-		     (tol_up) * 100.0, (tol_down) * 100.0, \
-		     (double)(ref))
+	do { \
+		igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
+			     (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
+			     "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance of %f)\n",\
+			     #x, #ref, (double)(x), \
+			     (tol_up) * 100.0, (tol_down) * 100.0, \
+			     (double)(ref)); \
+		igt_debug("%f within +%.1f%%/-%.1f%% tolerance of %f\n",\
+			  (double)(x), \
+			  (tol_up) * 100.0, (tol_down) * 100.0, \
+			  (double)(ref)); \
+	} while (0)
 
 #define assert_within_epsilon(x, ref, tolerance) \
 	__assert_within_epsilon(x, ref, tolerance, tolerance)
@@ -241,10 +247,8 @@ single(int gem_fd, const intel_ctx_t *ctx,
 	else
 		end_spin(spin_fd, spin, FLAG_SYNC);
 
-	assert_within_epsilon(val,
-			      (flags & TEST_BUSY) && !(flags & TEST_ISOLATION) ?
-			      slept : 0.0f,
-			      tolerance);
+	assert_within_epsilon((flags & TEST_BUSY) && !(flags & TEST_ISOLATION) ? val : slept - val,
+			      slept, tolerance);
 
 	/* Check for idle after hang. */
 	if (flags & FLAG_HANG) {
@@ -255,7 +259,7 @@ single(int gem_fd, const intel_ctx_t *ctx,
 		slept = measured_usleep(batch_duration_ns / 1000);
 		val = read_engine_time(gem_fd, e->class) - val;
 
-		assert_within_epsilon(val, 0, tolerance);
+		assert_within_epsilon(slept - val, slept, tolerance);
 	}
 
 	igt_spin_free(spin_fd, spin);
@@ -328,11 +332,8 @@ busy_check_all(int gem_fd, const intel_ctx_t *ctx,
 
 	log_busy(num_classes, val);
 
-	for (i = 0; i < num_classes; i++) {
-		double target = i == e->class ? slept : 0.0f;
-
-		assert_within_epsilon(val[i], target, tolerance);
-	}
+	for (i = 0; i < num_classes; i++)
+		assert_within_epsilon(i == e->class ? val[i] : slept - val[i], slept, tolerance);
 
 	gem_quiescent_gpu(gem_fd);
 }
@@ -405,9 +406,9 @@ most_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
 	log_busy(num_classes, val);
 
 	for (i = 0; i < num_classes; i++) {
-		double target = slept * busy_class[i];
+		double target = slept * busy_class[i] ?: slept;
 
-		assert_within_epsilon(val[i], target, tolerance);
+		assert_within_epsilon(busy_class[i] ? val[i] : slept - val[i], target, tolerance);
 	}
 	gem_quiescent_gpu(gem_fd);
 }
@@ -460,9 +461,9 @@ all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
 	log_busy(num_classes, val);
 
 	for (i = 0; i < num_classes; i++) {
-		double target = slept * busy_class[i];
+		double target = slept * busy_class[i] ?: slept;
 
-		assert_within_epsilon(val[i], target, tolerance);
+		assert_within_epsilon(busy_class[i] ? val[i] : slept - val[i], target, tolerance);
 	}
 	gem_quiescent_gpu(gem_fd);
 }
@@ -601,10 +602,8 @@ virtual(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
 			else
 				end_spin(i915, spin, FLAG_SYNC);
 
-			assert_within_epsilon(val,
-					      flags & TEST_BUSY ?
-					      slept : 0.0f,
-					      tolerance);
+			assert_within_epsilon(flags & TEST_BUSY ? val : slept - val,
+					      slept, tolerance);
 
 			/* Check for idle after hang. */
 			if (flags & FLAG_HANG) {
@@ -616,7 +615,7 @@ virtual(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
 							1000);
 				val = read_engine_time(i915, class) - val;
 
-				assert_within_epsilon(val, 0, tolerance);
+				assert_within_epsilon(slept - val, slept, tolerance);
 			}
 
 			igt_spin_free(i915, spin);
@@ -724,7 +723,7 @@ virtual_all(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
 						1000);
 			val = read_engine_time(i915, class) - val;
 
-			assert_within_epsilon(val, 0, tolerance);
+			assert_within_epsilon(slept - val, slept, tolerance);
 		}
 
 		igt_spin_free(i915, spin);
-- 
2.45.2

