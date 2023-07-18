Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB917576D4
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 10:40:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2794C10E30C;
	Tue, 18 Jul 2023 08:40:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBDE810E171;
 Tue, 18 Jul 2023 08:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689669651; x=1721205651;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=R+zUjCRhEIYoj5GPbAN6M6W/TfzdqbCP7uKs1U/2X+Q=;
 b=cf3UtVqekHyPxK5T5VJE1Fa+BXsIPXQlVuF/peFsxL0zX8+kKx7g17rE
 pkGQZ/D0pGB6E5nAtXKWyo1Qn8nHmkDSb8cObCO5BF4reRWaAlU5SYxKf
 pyI78qRoVUKiFvhzwCziPw6ljTyRW3TsBhfW5rS1YD2obQzl4etM5teo1
 naBJUos+C1t2UMfkNPnBk107onlIqTwc4L+BOvH22V+3yntmV008p27aC
 9J23oCckrK/AXQgeT0jm2aiwukuUleHK4SwW45HQcyKOZ2YdBgcCpGNuf
 xRfuOk4mXqtG9N0KqU1i3aA2BBNluu2hl6jlFoi08wb3YhBhfSjShM/HS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="366189487"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="366189487"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 01:40:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="726855134"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="726855134"
Received: from maloneyj-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.207.99])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 01:40:48 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jul 2023 09:40:41 +0100
Message-Id: <20230718084041.871888-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915_pm_rps: Fix test after silent
 conflict harder
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Feature test also needs adjusting after sysfs helper API changes...

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: d86ca7e17b58 ("tests/i915_pm_rps: Exercise sysfs thresholds")
Reference: 54dc25efaf10 ("lib/igt_sysfs: add asserting helpers for read/write operations")
Reference: 1dfa7a007a8e ("tests/i915_pm_rps: Fix test after silent conflict")
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lukasz Laguna <lukasz.laguna@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 tests/i915/i915_pm_rps.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/tests/i915/i915_pm_rps.c b/tests/i915/i915_pm_rps.c
index 15c74cc703c2..3ef5842dd7f8 100644
--- a/tests/i915/i915_pm_rps.c
+++ b/tests/i915/i915_pm_rps.c
@@ -1015,20 +1015,23 @@ static void sysfs_set_u32(int dir, const char *attr, uint32_t set)
 static void test_thresholds(int i915, unsigned int gt, unsigned int flags)
 {
 	uint64_t ahnd = get_reloc_ahnd(i915, 0);
+	unsigned int def_up = 0, def_down = 0;
 	const unsigned int points = 10;
-	unsigned int def_up, def_down;
 	igt_spin_t *spin = NULL;
 	const intel_ctx_t *ctx;
 	unsigned int *ta, *tb;
 	unsigned int i;
 	int sysfs;
+	bool ret;
 
 	sysfs = igt_sysfs_gt_open(i915, gt);
 	igt_require(sysfs >= 0);
 
 	/* Feature test */
-	def_up = igt_sysfs_get_u32(sysfs, "rps_up_threshold_pct");
-	def_down = igt_sysfs_get_u32(sysfs, "rps_down_threshold_pct");
+	ret = __igt_sysfs_get_u32(sysfs, "rps_up_threshold_pct", &def_up);
+	igt_require(ret);
+	ret = __igt_sysfs_get_u32(sysfs, "rps_down_threshold_pct", &def_down);
+	igt_require(ret);
 	igt_require(def_up && def_down);
 
 	/* Check invalid percentages are rejected */
-- 
2.39.2

