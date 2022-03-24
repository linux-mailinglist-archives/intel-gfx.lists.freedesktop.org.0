Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C604E6510
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 15:26:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B352A10E8C5;
	Thu, 24 Mar 2022 14:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FED710E8BD;
 Thu, 24 Mar 2022 14:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648132005; x=1679668005;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VgfN0S0POpNcxJUoS75KYtzJd+QYoepk3hsgHbwFE3Q=;
 b=kkUvY7Ia/Z9rsVYgKKaf1Qqzi2aJcBGbpKLDhJF/34/1As/Q5KAhz+KJ
 cPV4LwG5guNp1J6zBlVMR07rXkZEjdopxF0NseYAjtBiydZRI5Es68wYB
 XUvNpkToejpoQ9coSPTHC0jVcJJgEnVJvOmxJ++P28vdTYyB0mhv4FPYR
 W7hyu64LWHAgSeOtnS5nncnFs/ugmpwd+Z9XoD37NvE3braG91P6vgWDJ
 K3CSffiNGoo4/E4jEQW2dVvbGT1Euxivjk3L68Qg39vnC+LrBbrLLcVUu
 ZNtUfoPUYV81UNVD3fz60HuX2HL/R1swQJf0RicNl0G5aGzxenZ3FiTbG A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="283249733"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="283249733"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 07:26:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="501409770"
Received: from smurkank-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.19.102])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 07:26:43 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 24 Mar 2022 14:26:20 +0000
Message-Id: <20220324142621.347452-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220324142621.347452-1-matthew.auld@intel.com>
References: <20220324142621.347452-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/4] tests/gem_lmem_swapping: limit lmem
 to 4G
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, CQ Tang <cq.tang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: CQ Tang <cq.tang@intel.com>

On some systems lmem can be as large as 16G, which seems to trigger
various CI timeouts, and in the best case just takes a long time. For
the purposes of the test we should be able to limit to 4G, without any
big loss in coverage.

Signed-off-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 tests/i915/gem_lmem_swapping.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
index 995a663f..ad1c989c 100644
--- a/tests/i915/gem_lmem_swapping.c
+++ b/tests/i915/gem_lmem_swapping.c
@@ -526,7 +526,13 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 	igt_fixture {
 		struct intel_execution_engine2 *e;
 
-		i915 = drm_open_driver(DRIVER_INTEL);
+		igt_i915_driver_unload();
+		if (igt_i915_driver_load("lmem_size=4096")) {
+			igt_debug("i915 missing lmem_size modparam support\n");
+			igt_assert_eq(igt_i915_driver_load(NULL), 0);
+		}
+
+		i915 = __drm_open_driver(DRIVER_INTEL);
 		igt_require_gem(i915);
 		igt_require(gem_has_lmem(i915));
 
@@ -554,6 +560,7 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 	igt_fixture {
 		free(regions);
 		close(i915);
+		igt_i915_driver_unload();
 	}
 
 	igt_exit();
-- 
2.34.1

