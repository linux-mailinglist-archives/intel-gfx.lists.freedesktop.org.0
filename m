Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 726293D5922
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 14:04:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 950506F424;
	Mon, 26 Jul 2021 12:04:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BB736EBFD;
 Mon, 26 Jul 2021 12:04:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10056"; a="212211254"
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="212211254"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 05:04:10 -0700
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="504873213"
Received: from conorkel-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.199.29])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 05:04:08 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 26 Jul 2021 13:03:09 +0100
Message-Id: <20210726120310.1115522-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210726120310.1115522-1-matthew.auld@intel.com>
References: <20210726120310.1115522-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 6/7] lib/ioctl_wrappers: update set_domain
 for discrete
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

On discrete set_domain is now gone, instead we just need to add the
wait.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Ramalingam C <ramalingam.c@intel.com>
---
 lib/ioctl_wrappers.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/lib/ioctl_wrappers.c b/lib/ioctl_wrappers.c
index 7e27a1b3..09eb3ce7 100644
--- a/lib/ioctl_wrappers.c
+++ b/lib/ioctl_wrappers.c
@@ -565,7 +565,12 @@ int __gem_set_domain(int fd, uint32_t handle, uint32_t read, uint32_t write)
  */
 void gem_set_domain(int fd, uint32_t handle, uint32_t read, uint32_t write)
 {
-	igt_assert_eq(__gem_set_domain(fd, handle, read, write), 0);
+	int ret = __gem_set_domain(fd, handle, read, write);
+
+	if (ret == -ENODEV && gem_has_lmem(fd))
+		igt_assert_eq(gem_wait(fd, handle, 0), 0);
+	else
+		igt_assert_eq(ret, 0);
 }
 
 /**
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
