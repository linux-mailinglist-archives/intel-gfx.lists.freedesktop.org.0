Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E372E643FAB
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 10:18:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A5B210E311;
	Tue,  6 Dec 2022 09:18:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BAEB10E311
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 09:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670318291; x=1701854291;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YNCRvnV2yEl2A7iws1B7dNk1JsXFPGnMWmtyHjeTdLA=;
 b=D+FjIo9l5JHIh1qLtjS6pOGMd27MJjPvX0FKNUr3/sQXyt3H+61GTEc9
 CsL2ahtgPcRZZK8mdjfmTIr+tt+eVER1AVa82ODRSmSBri5KtS/FPNgZC
 U3PNKZSSUSiTXoVSUzClt2bFReFAH4ASDZQnx+06UAfDBUUTwkvnbLEqR
 wMQoh8RqF6BrWuu1hOEIB3pCvAY7OBKyl0UNuQwXDwiV1KfPpEzn/djQ3
 BEpSEn2iUcERYEuEE+1FGZ7sVKoO3IQAxqPQUlx0obxcx0A0bnzarY5Nn
 WwD5SGCiKmwIrrKvZAX5vo7UMyPaxv6yRvLD1jYjv263C11hvar9HCKX2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="318438115"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="318438115"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 01:18:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="623833216"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="623833216"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 06 Dec 2022 01:18:10 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 01:20:59 -0800
Message-Id: <20221206092100.274195-5-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
References: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/5] drm/i915/guc: Rename GuC log relay
 debugfs descriptively
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

GuC log relay debugfs name for the control handle vs the actual relay
channel are vague. Fix them so it's obvious from the name.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  2 +-
 .../drm/i915/gt/uc/intel_guc_log_debugfs.c    | 22 +++++++++----------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 6e880d9f42d4..d019c60d34e8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -551,7 +551,7 @@ static int guc_log_relay_create(struct intel_guc_log *log)
 	 */
 	n_subbufs = intel_guc_log_relay_subbuf_count(log);
 
-	guc_log_relay_chan = relay_open("guc_log",
+	guc_log_relay_chan = relay_open("guc_log_relay_chan",
 					dev_priv->drm.primary->debugfs_root,
 					subbuf_size, n_subbufs,
 					&relay_callbacks, dev_priv);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
index 27756640338e..feff1e606b38 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
@@ -137,7 +137,7 @@ DEFINE_SIMPLE_ATTRIBUTE(guc_log_relay_subbuf_count_fops,
 			guc_log_relay_subbuf_count_get, NULL,
 			"%lld\n");
 
-static int guc_log_relay_open(struct inode *inode, struct file *file)
+static int guc_log_relay_ctl_open(struct inode *inode, struct file *file)
 {
 	struct intel_guc_log *log = inode->i_private;
 
@@ -150,10 +150,10 @@ static int guc_log_relay_open(struct inode *inode, struct file *file)
 }
 
 static ssize_t
-guc_log_relay_write(struct file *filp,
-		    const char __user *ubuf,
-		    size_t cnt,
-		    loff_t *ppos)
+guc_log_relay_ctl_write(struct file *filp,
+			const char __user *ubuf,
+			size_t cnt,
+			loff_t *ppos)
 {
 	struct intel_guc_log *log = filp->private_data;
 	int val;
@@ -175,7 +175,7 @@ guc_log_relay_write(struct file *filp,
 	return ret ?: cnt;
 }
 
-static int guc_log_relay_release(struct inode *inode, struct file *file)
+static int guc_log_relay_ctl_release(struct inode *inode, struct file *file)
 {
 	struct intel_guc_log *log = inode->i_private;
 
@@ -183,11 +183,11 @@ static int guc_log_relay_release(struct inode *inode, struct file *file)
 	return 0;
 }
 
-static const struct file_operations guc_log_relay_fops = {
+static const struct file_operations guc_log_relay_ctl_fops = {
 	.owner = THIS_MODULE,
-	.open = guc_log_relay_open,
-	.write = guc_log_relay_write,
-	.release = guc_log_relay_release,
+	.open = guc_log_relay_ctl_open,
+	.write = guc_log_relay_ctl_write,
+	.release = guc_log_relay_ctl_release,
 };
 
 void intel_guc_log_debugfs_register(struct intel_guc_log *log,
@@ -197,7 +197,7 @@ void intel_guc_log_debugfs_register(struct intel_guc_log *log,
 		{ "guc_log_dump", &guc_log_dump_fops, NULL },
 		{ "guc_load_err_log_dump", &guc_load_err_log_dump_fops, NULL },
 		{ "guc_log_level", &guc_log_level_fops, NULL },
-		{ "guc_log_relay", &guc_log_relay_fops, NULL },
+		{ "guc_log_relay_ctl", &guc_log_relay_ctl_fops, NULL },
 		{ "guc_log_relay_subbuf_size", &guc_log_relay_subbuf_size_fops, NULL },
 		{ "guc_log_relay_subbuf_count", &guc_log_relay_subbuf_count_fops, NULL },
 	};
-- 
2.34.1

