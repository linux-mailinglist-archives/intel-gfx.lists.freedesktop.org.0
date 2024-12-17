Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6A89F435D
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 07:14:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2D3010E270;
	Tue, 17 Dec 2024 06:14:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EDkENnsP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D784510E270
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2024 06:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734416074; x=1765952074;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MIVHPDDmp94oHQsE2JENK5B5491sRrMs/xTCgawqhQQ=;
 b=EDkENnsPMaS5a3yUI+DJs5ciHWRrOiyLspMOzQ3+BI8CYS9oqgBE1QCV
 qAQoKkP3G8chXv+QTBggS1EM3Mcec8XBeukI9VdkbwW5sCRFreUbvB55k
 48SjP0iqcYc80JLPEqXdUn4H2OGHnWlrVczqovaMNC9yQWZ+2PZm5wnsZ
 twySZOHckyrpWFaSmiiS9jwX7qkVZhuGJJNI+uES8Jej6zljWvdVCG0D9
 aHZis9OftrtozFNI/Xn6raJqEzA0aK3ZGMpHlYqv8StT/yLIZml+fOI6p
 xhmCYIWzDSLD6km+lvXHfpuo737dQ3/+W6EY5HICDUNIeSvURndXROm/x A==;
X-CSE-ConnectionGUID: I2Mnt5IlSISbhxwZiTdypA==
X-CSE-MsgGUID: VpBbfrdCSPaIN1FN9bQkWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34976396"
X-IronPort-AV: E=Sophos;i="6.12,240,1728975600"; d="scan'208";a="34976396"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 22:14:34 -0800
X-CSE-ConnectionGUID: PuPRJe3RTbWXziNH6oyKpQ==
X-CSE-MsgGUID: Xvo0CEjqQ6Sr4qs73ZZTPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="98230349"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by orviesa008.jf.intel.com with ESMTP; 16 Dec 2024 22:14:33 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: andi.shyti@intel.com
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com,
 nitin.r.gote@intel.com
Subject: [PATCH v2 1/1] drm/i915/gt: Increase a time to retry RING_HEAD reset
Date: Tue, 17 Dec 2024 12:05:32 +0530
Message-Id: <20241217063532.2729031-1-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
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

Issue seen again where engine resets fails because the engine resumes from
an incorrect RING_HEAD. HEAD is still not 0 even after writing into it.
This seems to be timing issue and we experimented different values from 5ms
to 50ms and found out that 50ms works best based on testing.
So, if write doesn't succeed at first then retry again.

v2: add a comment (Andi Shyti)

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12806
Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 32f3b52a183a..d56410863f26 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -230,8 +230,13 @@ static int xcs_resume(struct intel_engine_cs *engine)
 
 	set_pp_dir(engine);
 
-	/* First wake the ring up to an empty/idle ring */
-	for ((kt) = ktime_get() + (2 * NSEC_PER_MSEC);
+	/*
+	 * First wake the ring up to an empty/idle ring.
+	 * Use 50ms of delay to let the engine write successfully
+	 * for all platforms. Experimented with different values and
+	 * determined that 50ms works best based on testing.
+	 */
+	for ((kt) = ktime_get() + (50 * NSEC_PER_MSEC);
 			ktime_before(ktime_get(), (kt)); cpu_relax()) {
 		/*
 		 * In case of resets fails because engine resumes from
-- 
2.25.1

