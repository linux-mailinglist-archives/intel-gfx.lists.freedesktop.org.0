Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB29E6E101B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 16:37:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0924810E387;
	Thu, 13 Apr 2023 14:37:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F52510E15F;
 Thu, 13 Apr 2023 14:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681396634; x=1712932634;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5OaDTQNiecrsRUBqz7ew8jjQi056VpRTFDzPVzxHx0c=;
 b=dlL2Hns0et2okD/8GVNg87FILLcGmhoAohmVi8UYJhBMuhj1lqOM6bax
 Hr2pifVrUF6VobDCPutIiobS4OmqbW5oAxEXBYq+Bwm9YZfxuMdIECjp5
 r9Ce/peavrr8c1xyEyJZ0UAqjUDEGxS6hlq+1NpbMcpjnqFV5WudeUrhX
 RfN4Ik+UHYRsVM346P4itGD/UeAAGuQB4lchESOD1/8W13xlF9Z/dkmpi
 OFZ5WXLE4F9e5NKxuwmGQ9aSx5XLsVV2EPWSmO4HNi/xe1SpM+q3woEoe
 Cn45fR72ny2sFI6Ys6Bv1jUwhMECIkSig/d3IDW3KcSc6K/lZ65Y909fc g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="344193263"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="344193263"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 07:37:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="722092209"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="722092209"
Received: from jkrzyszt-mobl1.ger.corp.intel.com (HELO
 jkrzyszt-mobl1.intranet) ([10.213.4.90])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 07:37:12 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 13 Apr 2023 16:36:26 +0200
Message-Id: <20230413143626.311639-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/gem_reset_stats: Don't allow
 request watchdog to interfere
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A user reported recently that some subtests are failing.  The test was
blocklisted in 2018, so we've lost CI feedback on its results since then.

In 2021, request watchdog with 20 seconds timeout was introduced to i915.
Kernel logs from failed subtest runs indicate that the request watchdog
interfers with engine heartbeat and request preemption used by the test
for exercising reset statistics.

Disable request watchdog during the test execution.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8310
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/i915/gem_reset_stats.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/tests/i915/gem_reset_stats.c b/tests/i915/gem_reset_stats.c
index baa101517d..7b003d88b6 100644
--- a/tests/i915/gem_reset_stats.c
+++ b/tests/i915/gem_reset_stats.c
@@ -906,6 +906,7 @@ igt_main
 	igt_fixture {
 		bool has_reset_stats;
 		bool using_full_reset;
+		char *tmp;
 
 		device = drm_open_driver(DRIVER_INTEL);
 		devid = intel_get_drm_devid(device);
@@ -922,6 +923,12 @@ igt_main
 			      "No reset stats ioctl support. Too old kernel?\n");
 		igt_require_f(using_full_reset,
 			      "Full GPU reset is not enabled. Is enable_hangcheck set?\n");
+
+		/* Don't allow request watchdog to interfere */
+		tmp = __igt_params_get(device, "request_timeout_ms");
+		if (tmp && atoi(tmp))
+			igt_params_save_and_set(device, "request_timeout_ms", "%u", 0);
+		free(tmp);
 	}
 
 	igt_subtest("params")
-- 
2.25.1

