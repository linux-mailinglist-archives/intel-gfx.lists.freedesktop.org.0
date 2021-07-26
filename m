Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 066023D5923
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 14:04:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 521586EE6A;
	Mon, 26 Jul 2021 12:04:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FBBF6EBFD;
 Mon, 26 Jul 2021 12:04:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10056"; a="212211266"
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="212211266"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 05:04:12 -0700
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="504873223"
Received: from conorkel-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.199.29])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 05:04:10 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 26 Jul 2021 13:03:10 +0100
Message-Id: <20210726120310.1115522-7-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210726120310.1115522-1-matthew.auld@intel.com>
References: <20210726120310.1115522-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 7/7] tests/i915/module_load: update for
 discrete
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The set_caching ioctl is gone for discrete, and now just returns
-ENODEV. Update the gem_sanitycheck to account for that. After this we
should be back to just having the breakage caused by missing reloc
support for the reload testcase.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Ramalingam C <ramalingam.c@intel.com>
---
 tests/i915/i915_module_load.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/tests/i915/i915_module_load.c b/tests/i915/i915_module_load.c
index 98ceb5d8..4b42fe3e 100644
--- a/tests/i915/i915_module_load.c
+++ b/tests/i915/i915_module_load.c
@@ -172,17 +172,22 @@ static void gem_sanitycheck(void)
 {
 	struct drm_i915_gem_caching args = {};
 	int i915 = __drm_open_driver(DRIVER_INTEL);
+	int expected;
 	int err;
 
+	expected = -ENOENT;
+	if (gem_has_lmem(i915))
+		expected = -ENODEV;
+
 	err = 0;
 	if (ioctl(i915, DRM_IOCTL_I915_GEM_SET_CACHING, &args))
 		err = -errno;
-	if (err == -ENOENT)
+	if (err == expected)
 		store_all(i915);
 	errno = 0;
 
 	close(i915);
-	igt_assert_eq(err, -ENOENT);
+	igt_assert_eq(err, expected);
 }
 
 static void
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
