Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0AF6165BB
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 16:05:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 269B610E4B2;
	Wed,  2 Nov 2022 15:05:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24BEC10E4BB;
 Wed,  2 Nov 2022 15:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667401517; x=1698937517;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZfWuvC0Lj0SBlb1mwKyGQO1LwgurA4Y527ztN3+o8Zs=;
 b=GSTlEt76eTZHLYgrWUz9H3PB/Q3sY/HKKxQKQ83DecgSeqhj87iCwZoX
 27KqpufquyC2wZ9rgQkMn8lMKZsTbDCd2/18oqi6DWjYIT60gW12T/8Oa
 Lz6xQJMwLU+s+W+KMr8BsW6vwOvMc03yaoAjaa8CfN8WhzKdMFWY/otHa
 c3bHeDLQ3QGfgkQGCsk8W12U1w+sybQfLmTYZrwcKcnfD4XyiANi2CxfG
 cY5Tuy/kuD7VbgVzwAcYn/3mwInZ1x1G04mbt7LGLXOD3eBu7TNo857z5
 t7qINVIwqf4lunS5GcaMyPhy6yZT7UuKfkC/rWvWcRjioix4KHDHOo7P1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="292746644"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="292746644"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 08:05:16 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="723587842"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="723587842"
Received: from kieranfl-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.30.160])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 08:05:14 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed,  2 Nov 2022 15:05:00 +0000
Message-Id: <20221102150500.227161-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/module_load: restore
 gem_sanitycheck for discrete
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
Cc: Priyanka Dandamudi <priyanka.dandamudi@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Janga Rahul Kumar <janga.rahul.kumar@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This looks to be recently broken in: 5389b3f3
("tests/i915/i915_module_load: Use GEM_BUSY instead of SET_CACHE for
sanity check").

Which fails on discrete platforms, since we switched over to the
gem_busy ioctl, from the set_caching ioctl, which no longer gives
-ENODEV as the expected error.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Janga Rahul Kumar <janga.rahul.kumar@intel.com>
Cc: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
---
 tests/i915/i915_module_load.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/i915/i915_module_load.c b/tests/i915/i915_module_load.c
index eebb3167..d3a86b11 100644
--- a/tests/i915/i915_module_load.c
+++ b/tests/i915/i915_module_load.c
@@ -228,7 +228,7 @@ static void gem_sanitycheck(void)
 {
 	struct drm_i915_gem_busy args = {};
 	int i915 = __drm_open_driver(DRIVER_INTEL);
-	int expected = gem_has_lmem(i915) ? -ENODEV : -ENOENT;
+	int expected = -ENOENT;
 	int err;
 
 	err = 0;
-- 
2.38.1

