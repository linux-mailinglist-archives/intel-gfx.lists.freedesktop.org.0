Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27835393273
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 17:29:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 423656F414;
	Thu, 27 May 2021 15:29:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 189686E081;
 Thu, 27 May 2021 15:29:48 +0000 (UTC)
IronPort-SDR: Wyr/8CiwZ/W2/5i5D9tSmAznu1GevSERsCvrWgwW4tJwUoA1IRSVl0biqj7QXSBZYOLN5T8R+Z
 4EI5Jvm73sGA==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="183096765"
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="183096765"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 08:29:39 -0700
IronPort-SDR: xGWGPtZRoZOFlfoiaTHa5tbfAoKIqSsOKcve1C7CiAoA/YhWEy74mWRmuQ116A6nPqf2wc0Q1A
 KWw2MxrouIkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="548003289"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.28])
 by fmsmga001.fm.intel.com with ESMTP; 27 May 2021 08:29:37 -0700
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Thu, 27 May 2021 20:50:45 +0530
Message-Id: <1622128845-6644-1-git-send-email-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <20210527150551.18392-1-vidya.srinivas@intel.com>
References: <20210527150551.18392-1-vidya.srinivas@intel.com>
Subject: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_flip: Some Gen11 systems
 are not able to get RTC WAKE work well. SUSPEND_TEST_NONE goes to RTC Wake.
 Instead change it to SUSPEND_TEST_PLATFORM.
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
Cc: markyacoub@chromium.org, charlton.lin@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Change-Id: I80930185a8799578bbec0123a389074af1edfb5d
Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
---
 tests/kms_flip.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tests/kms_flip.c b/tests/kms_flip.c
index 64907c2c17a5..42a3048cc11a 100755
--- a/tests/kms_flip.c
+++ b/tests/kms_flip.c
@@ -835,7 +835,8 @@ static bool run_test_step(struct test_output *o, unsigned int *events)
 
 	if (o->flags & TEST_SUSPEND)
 		igt_system_suspend_autoresume(SUSPEND_STATE_MEM,
-					      SUSPEND_TEST_NONE);
+					      is_i915_device(drm_fd)?
+					      SUSPEND_TEST_PLATFORM:SUSPEND_TEST_NONE);
 
 	if (do_vblank && (o->flags & TEST_EINVAL) && o->vblank_state.count > 0)
 		igt_assert(do_wait_for_vblank(o, o->pipe, target_seq, &vbl_reply)
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
