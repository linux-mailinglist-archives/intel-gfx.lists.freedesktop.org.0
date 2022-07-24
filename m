Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFE457F40B
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Jul 2022 10:25:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6E00BFC01;
	Sun, 24 Jul 2022 08:25:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA8B6BFBFC
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Jul 2022 08:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658651130; x=1690187130;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zgXW6g56cfZ9+X6oI75kHF9jUi+w24ZeOkTQZ7+mCHM=;
 b=cD24er7Nrtghu81yxlHVYhLYyKfr37W4vpG7yiyLZJt+bKlo52PPes9X
 mIANDfNIceScgi5qssb24xhfGuSqZB2bfEyzcOFcKLbe4QvSffwd3DS0m
 zGkDkEUsVUEVOg4zU4q3/THpRoawCmTpkNzvCFV6Xmt7WP2FG0vwt/8HU
 cLre7DJoNOZVf57RON4LmpmdCJnhnOZeme6d4AyfZL9XOLhUe0/ckXoT1
 ZB2fCT6xM1CuraocF6qDEzCFK3DeRLyeQbBXhpHZQsYHh9RbgbwhaWqaK
 s/PzdnG5k/yDoYN5M9Dh4Z1U9GYN5WTTYF/k2pekHKIOK1pVN2qTdgEx4 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10417"; a="313268017"
X-IronPort-AV: E=Sophos;i="5.93,190,1654585200"; d="scan'208";a="313268017"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2022 01:25:30 -0700
X-IronPort-AV: E=Sophos;i="5.93,190,1654585200"; d="scan'208";a="657756420"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2022 01:25:27 -0700
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Sun, 24 Jul 2022 11:24:26 +0300
Message-Id: <20220724082428.218628-13-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220724082428.218628-1-tomas.winkler@intel.com>
References: <20220724082428.218628-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 12/14] mei: debugfs: add pxp mode to devstate
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
 drivers/misc/mei/debugfs.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/misc/mei/debugfs.c b/drivers/misc/mei/debugfs.c
index 1ce61e9e24fc..4074fec866a6 100644
--- a/drivers/misc/mei/debugfs.c
+++ b/drivers/misc/mei/debugfs.c
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
2.35.3

