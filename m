Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8344867D7
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 17:44:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F5C110EAB4;
	Thu,  6 Jan 2022 16:44:25 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21EF310EA7F;
 Thu,  6 Jan 2022 16:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641487463; x=1673023463;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uTql+aAkJdV7a4to4+HwzcR28PKhMjz+HaxPiOX3VYI=;
 b=RaHgaikVIUGyG4nhhhwwqHAE5Pp/D+LqKlwGiN3mZxxlKDa2U40oQz+j
 T1a+2mF4bgVO+GWat+/WfAeLpu0370hgBoR8lhrRxgtECOYamEcauFFrY
 6A+LY2BYffQBP6E+GEks99+HOEXzWZJZnb0UU9sUvEn0r3IhD7iAa1iyo
 zbKXsWG6z0Do9sXiIufUUtb+lxp1tPwFAeJTqUmbKATaqA6680Fc+NiQD
 A2ZneQxnA3DHu9AaGI41ddwCWcyaVswdVq+SGVfDiIG88c1JgHNbixYAb
 CJMyweYZ41V1EoCiIpUz8Rx6eMjQ8XdoA4pMf6V/OuDkZyq//gD/EGg9E A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="223375291"
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="223375291"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 08:43:12 -0800
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="470994900"
Received: from leitchrx-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.202.197])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 08:43:10 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu,  6 Jan 2022 16:42:58 +0000
Message-Id: <20220106164258.56648-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/perf_pmu: Fix allow hang
 handling
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Commit d7a74b959eea ("tests/i915/perf_pmu: Convert to intel_ctx_t (v3)")
broke the test when it is run in its entirety.

Correct context id needs to be used with igt_allow_hang to avoid context
ban preventing the test to run to completion.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: d7a74b959eea ("tests/i915/perf_pmu: Convert to intel_ctx_t (v3)")
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
I haven't audited more tests apart from grep showing a lot of
igt_allow_hang with the default context so someone needs to go through
them and see if more are affected.
---
 tests/i915/perf_pmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
index 581da8483f0c..1665dc5e6317 100644
--- a/tests/i915/perf_pmu.c
+++ b/tests/i915/perf_pmu.c
@@ -2319,7 +2319,7 @@ igt_main
 	}
 
 	test_each_engine("busy-hang", fd, ctx, e) {
-		igt_hang_t hang = igt_allow_hang(fd, 0, 0);
+		igt_hang_t hang = igt_allow_hang(fd, ctx->id, 0);
 
 		single(fd, ctx, e, TEST_BUSY | FLAG_HANG);
 
-- 
2.32.0

