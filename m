Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0562C11CDAC
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 13:59:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67FC96E114;
	Thu, 12 Dec 2019 12:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Thu, 12 Dec 2019 12:59:16 UTC
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 758126E114
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 12:59:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 04:52:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="216275382"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga003.jf.intel.com with ESMTP; 12 Dec 2019 04:52:10 -0800
Received: from mperes-DESK.fi.intel.com (mperes-desk.fi.intel.com
 [10.237.72.73])
 by linux.intel.com (Postfix) with ESMTP id 552CC580409;
 Thu, 12 Dec 2019 04:52:09 -0800 (PST)
From: Martin Peres <martin.peres@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:51:50 +0200
Message-Id: <20191212125151.118946-1-martin.peres@linux.intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: update the bug-filing
 instructions link
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Freedesktop's Bugzilla instance is no more, and bugs have been migrated
to gitlab.freedesktop.org/drm/intel.

The instructions also moved from 01.org to fd.o's gitlab to make it
easier to keep up to date.

This patch updates the link presented to the user after a GPU hang.

Signed-off-by: Martin Peres <martin.peres@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_utils.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
index c47261ae86ea..7b899259bfbb 100644
--- a/drivers/gpu/drm/i915/i915_utils.c
+++ b/drivers/gpu/drm/i915/i915_utils.c
@@ -8,9 +8,8 @@
 #include "i915_drv.h"
 #include "i915_utils.h"
 
-#define FDO_BUG_URL "https://bugs.freedesktop.org/enter_bug.cgi?product=DRI"
-#define FDO_BUG_MSG "Please file a bug at " FDO_BUG_URL " against DRM/Intel " \
-		    "providing the dmesg log by booting with drm.debug=0xf"
+#define FDO_BUG_URL "https://gitlab.freedesktop.org/drm/intel/wikis/How-to-file-i915-bugs"
+#define FDO_BUG_MSG "Please file a bug according to " FDO_BUG_URL "."
 
 void
 __i915_printk(struct drm_i915_private *dev_priv, const char *level,
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
