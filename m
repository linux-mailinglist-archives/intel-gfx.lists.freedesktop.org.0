Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A11070FE69
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 21:19:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD0E610E5DF;
	Wed, 24 May 2023 19:19:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 856D110E5CC;
 Wed, 24 May 2023 19:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684955972; x=1716491972;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mlx2LWHd/VTqWHse4jBs7cP6RFsKnqPNASI7a+jQhBQ=;
 b=J9D7Y4LkERJG5dHO6LMqy8q4JXG+PRm6ly3dAzQmI/Mt5ucoWJI5nKyT
 zb/v1rvnqXwfIkjS1y8zlikhmKAz3h2FcVr8Y3QlxtuipCK48ixucGwle
 RyumoNxN8BkcNXJUqFmK9SvU4UvishZVIOdW0tmxvNrbC85ybVhgwbOlV
 NKc3yNV70ZdxMimezdQppSojSw9E2Np1SfShgZH5ej5QOiu/z/T+BF0l8
 GdLTKoHWp4KN5zQEVjPHIQ1vGyl71HtJytvu0ROWSdb18XLXrLT11f7fL
 cAQIBQfl3VCbbugwDbdUKnR45yDJpWOhyWLFjWffy2z1N2S0e+uiJD59C A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="440029626"
X-IronPort-AV: E=Sophos;i="6.00,190,1681196400"; d="scan'208";a="440029626"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 12:19:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="774364412"
X-IronPort-AV: E=Sophos;i="6.00,190,1681196400"; d="scan'208";a="774364412"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga004.fm.intel.com with ESMTP; 24 May 2023 12:19:30 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Wed, 24 May 2023 12:19:06 -0700
Message-Id: <20230524191906.2160802-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_ctx_persistence: Skip some
 subtests
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

Hang and heartbeat subtests are not supported with GuC submission
enabled.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/i915/gem_ctx_persistence.c | 32 +++++++++++++++++++-------------
 1 file changed, 19 insertions(+), 13 deletions(-)

diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
index 42cf96329..1e122535e 100644
--- a/tests/i915/gem_ctx_persistence.c
+++ b/tests/i915/gem_ctx_persistence.c
@@ -1366,19 +1366,25 @@ igt_main
 
 	igt_subtest("hostile")
 		test_nohangcheck_hostile(i915, &empty_cfg);
-	igt_subtest("hang")
-		test_nohangcheck_hang(i915, &empty_cfg);
-
-	igt_subtest("heartbeat-stop")
-		test_noheartbeat_many(i915, 1, 0);
-	igt_subtest("heartbeat-hang")
-		test_noheartbeat_many(i915, 1, IGT_SPIN_NO_PREEMPTION);
-	igt_subtest("heartbeat-many")
-		test_noheartbeat_many(i915, 16, 0);
-	igt_subtest("heartbeat-close")
-		test_noheartbeat_close(i915, 0);
-	igt_subtest("heartbeat-hostile")
-		test_noheartbeat_close(i915, IGT_SPIN_NO_PREEMPTION);
+
+	igt_subtest_group {
+		igt_fixture
+			igt_skip_on(gem_using_guc_submission(i915));
+
+		igt_subtest("hang")
+			test_nohangcheck_hang(i915, &empty_cfg);
+
+		igt_subtest("heartbeat-stop")
+			test_noheartbeat_many(i915, 1, 0);
+		igt_subtest("heartbeat-hang")
+			test_noheartbeat_many(i915, 1, IGT_SPIN_NO_PREEMPTION);
+		igt_subtest("heartbeat-many")
+			test_noheartbeat_many(i915, 16, 0);
+		igt_subtest("heartbeat-close")
+			test_noheartbeat_close(i915, 0);
+		igt_subtest("heartbeat-hostile")
+			test_noheartbeat_close(i915, IGT_SPIN_NO_PREEMPTION);
+	}
 
 	igt_subtest_group {
 		igt_fixture
-- 
2.38.1

