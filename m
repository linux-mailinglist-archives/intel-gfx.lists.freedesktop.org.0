Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEBB9E134B
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 07:20:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B610310E0EE;
	Tue,  3 Dec 2024 06:20:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R4lWkc2j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D066310E0EE
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 06:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733206837; x=1764742837;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PusbZ9lXoA1ruO8q9TQfnxpw7bTwdXAnJ3BvWVdkmxU=;
 b=R4lWkc2jqzVbCg7K3LKlUoTL95Rw75GuSqc57iQDIVL3C8ENO3T/4CuZ
 sUsJmB1iNvNgSWYsTlANKC+D56/5dWzdrz2wvlVGtGc8gFsnDVI9anubK
 qiVNZwN9PAHc1w2v+/kIz9y+11e/4HBWh6Bc2DmT4tA2RMCZZl0BbiFh0
 OS+IweS5jktfO7lIrPyFSCqnG/z2gLgmCJWmeDmoMZocXEWLVM4+0F/jU
 AjkVpok19Ue7kYdckn6N5oPoIB3G4qhON/s7Cz78DVeb613f8fNxKHZ3A
 mUPtcH/iR4KKZX3ZOhbjEXakCxEHXQEwmOUPmkP8DxLv4ulws1Kl4dnH7 A==;
X-CSE-ConnectionGUID: Gr355qjBS2GiKojeDGnjVA==
X-CSE-MsgGUID: m45IvSUrSkSwE+OJ4vVneg==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="33535029"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="33535029"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 22:20:37 -0800
X-CSE-ConnectionGUID: w8hQjihOQjKkqM9QteUkvw==
X-CSE-MsgGUID: uT8YGhhHQKO9byvH0YuBVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="124264957"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.145.169.150])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 22:20:35 -0800
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: badal.nilawar@intel.com, karthik.poosa@intel.com, anshuman.gupta@intel.com,
 Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH v2] drm/i915/selftests: Add delay to stabilize frequency in
 live_rps_power
Date: Tue,  3 Dec 2024 11:41:14 +0530
Message-Id: <20241203061114.2790448-1-sk.anirban@intel.com>
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

Add delays to allow frequency stabilization before power measurement
to fix sporadic power conservation issues in live_rps_power test.

v2:
  - Move delay to respective function (Badal)

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index dcef8d498919..c207a4fb03bf 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -1125,6 +1125,7 @@ static u64 measure_power(struct intel_rps *rps, int *freq)
 static u64 measure_power_at(struct intel_rps *rps, int *freq)
 {
 	*freq = rps_set_check(rps, *freq);
+	msleep(100);
 	return measure_power(rps, freq);
 }
 
-- 
2.34.1

