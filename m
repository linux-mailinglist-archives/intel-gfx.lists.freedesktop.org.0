Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE40614099
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 23:23:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C64E10E1DE;
	Mon, 31 Oct 2022 22:23:03 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0D5F10E1D3;
 Mon, 31 Oct 2022 22:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667254980; x=1698790980;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TVmJmreXanrGLNpmwezFLhzsq4iFGG737JWWjzIPysU=;
 b=DZc+yRntOKTmr7USEokX2M8ncGU0XXgat1A49wjyswnKzEmeQ/xTKazx
 jtqnFOT7W2nBx2OUAYZT7hrem4SW0U5prYGU/+Tb61UFYQoApRVVKfrgF
 Bm1SdjXYVjEMJiOrtHoy/HDJ8H8IhDGjl8GfZrTjNYX4D5jbp6OlDvZSR
 7P+HwHiu4Ymhk5b3zLKX921a2tI/57grbcnI0Qbe8u5JB5eUJ43LU4d2e
 qpzC6IYVOQ/kYuGxB5q50+6iPfblTVWBITlEWtQkDv95CmPvlhe4dNhX4
 L9y4BDa/b+L6wiqvXHd7QJ+EuzILBzHVx4XrPr6ZRSHWRsx7MBSZqJ7O8 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="373224376"
X-IronPort-AV: E=Sophos;i="5.95,229,1661842800"; d="scan'208";a="373224376"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 15:22:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="722963555"
X-IronPort-AV: E=Sophos;i="5.95,229,1661842800"; d="scan'208";a="722963555"
Received: from relo-linux-5.jf.intel.com ([10.165.21.195])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Oct 2022 15:22:56 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Mon, 31 Oct 2022 15:24:40 -0700
Message-Id: <20221031222440.546-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/sysfs: Update timeslice/preemption
 for new range limits
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Guc submission imposes new range limits on certain scheduling
parameters. The idempotent sections of the timeslice duration and
pre-emption timeout tests was exceeding those limits and so would fail.

Reduce the excessively large value (654s) to one which does not
overflow (54s). Also add an assert that the write of the new value
actually succeeds.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 tests/i915/sysfs_preempt_timeout.c    | 4 ++--
 tests/i915/sysfs_timeslice_duration.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/tests/i915/sysfs_preempt_timeout.c b/tests/i915/sysfs_preempt_timeout.c
index 515038281638..5e0a7d96299f 100644
--- a/tests/i915/sysfs_preempt_timeout.c
+++ b/tests/i915/sysfs_preempt_timeout.c
@@ -68,7 +68,7 @@ static void set_preempt_timeout(int engine, unsigned int value)
 {
 	unsigned int delay;
 
-	igt_sysfs_printf(engine, ATTR, "%u", value);
+	igt_assert_lte(0, igt_sysfs_printf(engine, ATTR, "%u", value));
 	igt_sysfs_scanf(engine, ATTR, "%u", &delay);
 	igt_assert_eq(delay, value);
 }
@@ -82,7 +82,7 @@ static int wait_for_reset(int fence)
 
 static void test_idempotent(int i915, int engine)
 {
-	unsigned int delays[] = { 0, 1, 1000, 1234, 654321 };
+	unsigned int delays[] = { 0, 1, 1000, 1234, 54321 };
 	unsigned int saved;
 
 	/* Quick test that store/show reports the same values */
diff --git a/tests/i915/sysfs_timeslice_duration.c b/tests/i915/sysfs_timeslice_duration.c
index 8a2f1c2f2ece..95dc377785a5 100644
--- a/tests/i915/sysfs_timeslice_duration.c
+++ b/tests/i915/sysfs_timeslice_duration.c
@@ -79,7 +79,7 @@ static void set_timeslice(int engine, unsigned int value)
 {
 	unsigned int delay;
 
-	igt_sysfs_printf(engine, ATTR, "%u", value);
+	igt_assert_lte(0, igt_sysfs_printf(engine, ATTR, "%u", value));
 	igt_sysfs_scanf(engine, ATTR, "%u", &delay);
 	igt_assert_eq(delay, value);
 }
@@ -93,7 +93,7 @@ static int wait_for_reset(int fence)
 
 static void test_idempotent(int i915, int engine)
 {
-	const unsigned int delays[] = { 0, 1, 1234, 654321 };
+	const unsigned int delays[] = { 0, 1, 1234, 54321 };
 	unsigned int saved;
 
 	/* Quick test to verify the kernel reports the same values as we write */
-- 
2.37.3

