Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AC65B0973
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 18:00:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 787C910E7C7;
	Wed,  7 Sep 2022 16:00:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00FE110E7E6
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 15:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662566398; x=1694102398;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ctTJMUTnAD3HTjtYrfTyMDMJuY75ucboxfaHNzv14NA=;
 b=gEW95fg8buDhs+txt6h+9YdruHjwAVcr6yNo7YOUVXBsSO7rUgaT5sh2
 5dGZVv7fCTVTCTbJzE0bABKMLn+P0Aw167cOSCB5dSYjkdlb8A+Kll5WT
 jD7JcaEO6c/TZ0qGXJTxB69E26lu9/nK20I7uejiTdyRsHuYnckN6pQ5j
 RpJbPNJCcrQAbIoQL/7TCykC8JtLSfKLUUlI7F3CRHQUhQ9uc9UXBGPiA
 aIVfxh7rTMJ1sEoHn0ml4ISKozIxuvzT2n4nYdhNEjoiVa7Yrl3umNwaC
 cWHX0tea1G0POJaQPYgqikHi6jXQExOHcev46XTy6qGyhGz/UIDDFnAml A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="297701607"
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="297701607"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 08:59:38 -0700
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="676248239"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 08:59:34 -0700
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Wed,  7 Sep 2022 18:58:11 +0300
Message-Id: <20220907155813.1427526-15-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220907155813.1427526-1-tomas.winkler@intel.com>
References: <20220907155813.1427526-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 14/16] mei: debugfs: add pxp mode to devstate
 in debugfs
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
Cc: intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add pxp mode devstate to debugfs to monitor pxp state machine progress.
This is useful to debug issues in scenarios in which the pxp state
needs to be re-initialized, like during power transitions such as
suspend/resume. With this debugfs the state could be monitored
to ensure that pxp is in the ready state.

CC: Vitaly Lubart <vitaly.lubart@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/misc/mei/debugfs.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/misc/mei/debugfs.c b/drivers/misc/mei/debugfs.c
index 1ce61e9e24fc..3b098d4c8e3d 100644
--- a/drivers/misc/mei/debugfs.c
+++ b/drivers/misc/mei/debugfs.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Copyright (c) 2012-2016, Intel Corporation. All rights reserved
+ * Copyright (c) 2012-2022, Intel Corporation. All rights reserved
  * Intel Management Engine Interface (Intel MEI) Linux driver
  */
 
@@ -86,6 +86,20 @@ static int mei_dbgfs_active_show(struct seq_file *m, void *unused)
 }
 DEFINE_SHOW_ATTRIBUTE(mei_dbgfs_active);
 
+static const char *mei_dev_pxp_mode_str(enum mei_dev_pxp_mode state)
+{
+#define MEI_PXP_MODE(state) case MEI_DEV_PXP_##state: return #state
+	switch (state) {
+	MEI_PXP_MODE(DEFAULT);
+	MEI_PXP_MODE(INIT);
+	MEI_PXP_MODE(SETUP);
+	MEI_PXP_MODE(READY);
+	default:
+		return "unknown";
+	}
+#undef MEI_PXP_MODE
+}
+
 static int mei_dbgfs_devstate_show(struct seq_file *m, void *unused)
 {
 	struct mei_device *dev = m->private;
@@ -112,6 +126,9 @@ static int mei_dbgfs_devstate_show(struct seq_file *m, void *unused)
 	seq_printf(m, "pg:  %s, %s\n",
 		   mei_pg_is_enabled(dev) ? "ENABLED" : "DISABLED",
 		   mei_pg_state_str(mei_pg_state(dev)));
+
+	seq_printf(m, "pxp: %s\n", mei_dev_pxp_mode_str(dev->pxp_mode));
+
 	return 0;
 }
 DEFINE_SHOW_ATTRIBUTE(mei_dbgfs_devstate);
-- 
2.37.2

