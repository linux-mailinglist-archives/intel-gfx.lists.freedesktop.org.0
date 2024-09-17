Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6242597AE2A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 11:44:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 838C210E1FF;
	Tue, 17 Sep 2024 09:44:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M/VpJrzJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9660D10E1FF
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2024 09:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726566243; x=1758102243;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dXpLIqnQirvREkiStRJ7+MxgUd/2k3H0tigw/Z2D6qA=;
 b=M/VpJrzJtkU9Ok754M9saxi6TVWfFmJk2k2vhGaS0KygLNuB+BdvTMEK
 Rzy5+EWUVdukrsV3p+/f3v0MM8Tm35P4mMhcGmO+Ln2pmTUnm+0mx/XP9
 44cj+M5PPwrl0NV/5Pq35wT3HD8exZ6jrn2emK4AzA9ysaRX9XdM6APjP
 63oq7vIaaNVCxsfDJNeta6UfkCvZ8fuLBGd2NDz3A0ozhSYlLWaqsl0Cp
 y0GqpEU5p6qFT6u+tAJuAZkDi94IwvWjTAhnWZO9nepdJtlSEzMF3tmIZ
 MWD/+yJGUXfjeM9dhryLXaKV6nC4TIxbqOt5P9xlqgiLc6+uZdDqv5xEu g==;
X-CSE-ConnectionGUID: QHQOPHcuS9W4OrV8KdbmSg==
X-CSE-MsgGUID: +0uE0wiVTwCYwvHrfuNn2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="25351173"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25351173"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 02:44:02 -0700
X-CSE-ConnectionGUID: tw9syqR2QNebHQBBpFw/rw==
X-CSE-MsgGUID: 3gZy7+CQReibF2kGj8baBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69100441"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.145.169.150])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 02:44:00 -0700
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Sk Anirban <sk.anirban@intel.com>
Subject: [v2] drm/i915/selftests: Implement frequency check for energy reading
 validation
Date: Tue, 17 Sep 2024 15:10:18 +0530
Message-Id: <20240917094018.1239148-1-sk.anirban@intel.com>
X-Mailer: git-send-email 2.34.1
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

This commit introduces a frequency check mechanism aimed at ensuring
the accuracy of energy readings.

v2 : Improved commit message

Signed-off-by: Anirban Sk <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 1aa1446c8fb0..b3602328c832 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -12,6 +12,7 @@
 
 #include "selftests/i915_random.h"
 #include "selftests/librapl.h"
+#include "intel_rps.h"
 
 static u64 rc6_residency(struct intel_rc6 *rc6)
 {
@@ -38,6 +39,8 @@ int live_rc6_manual(void *arg)
 	ktime_t dt;
 	u64 res[2];
 	int err = 0;
+	u32 rc0_freq, rc6_freq;
+	struct intel_rps *rps = &gt->rps;
 
 	/*
 	 * Our claim is that we can "encourage" the GPU to enter rc6 at will.
@@ -66,6 +69,7 @@ int live_rc6_manual(void *arg)
 	rc0_power = librapl_energy_uJ() - rc0_power;
 	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
+	rc0_freq = intel_rps_read_actual_frequency(rps);
 	if ((res[1] - res[0]) >> 10) {
 		pr_err("RC6 residency increased by %lldus while disabled for 1000ms!\n",
 		       (res[1] - res[0]) >> 10);
@@ -91,6 +95,7 @@ int live_rc6_manual(void *arg)
 	dt = ktime_get();
 	rc6_power = librapl_energy_uJ();
 	msleep(100);
+	rc6_freq = intel_rps_read_actual_frequency(rps);
 	rc6_power = librapl_energy_uJ() - rc6_power;
 	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
@@ -109,6 +114,7 @@ int live_rc6_manual(void *arg)
 			rc0_power, rc6_power);
 		if (2 * rc6_power > rc0_power) {
 			pr_err("GPU leaked energy while in RC6!\n");
+			pr_info("GPU Freq: %u in RC6 and %u in RC0\n", rc6_freq, rc0_freq);
 			err = -EINVAL;
 			goto out_unlock;
 		}
-- 
2.34.1

