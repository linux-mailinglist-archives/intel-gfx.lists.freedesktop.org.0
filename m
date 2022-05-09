Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C64F520655
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 23:01:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B1CE10F1E8;
	Mon,  9 May 2022 21:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D759510F1E6
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 21:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652130106; x=1683666106;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=dDrr5+x9niz0KWg1/5Ev6pFrGYsz0CK+D+s+cM8PSQQ=;
 b=ZH5MqCPX37kt1ONAtwvlphy/syFsFaTMRS0wXOqyk8pemj+SOt6RIqEa
 PqPwbVI2hQYYRF6OgXv+g+Ij4oBH8Cweq/2hX3UZTlmoF2I8UX83mNb9L
 qkmmpwnzy/JclvT5RW6t0Wmh5aWDs1K7n3laO1vhk//sf3hrkqCStRo4n
 CqjZaNp3pZmONGBWuTK6Vgbs0tfEg/bHmd2SprPTvtT2u793SDpVpj9sQ
 jMmma5fjAqaddXD71XbymsPxBDGjKKDmxY9WzqF6qLJu58EtEvCeBpCgn
 EjLWVh/NaXaWKtHPnN2YJ95aaHpkBEUNbqLz6wQEJDRxp4YE4isbQhXzx Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="249703600"
X-IronPort-AV: E=Sophos;i="5.91,212,1647327600"; d="scan'208";a="249703600"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 14:01:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,212,1647327600"; d="scan'208";a="519410910"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga003.jf.intel.com with ESMTP; 09 May 2022 14:01:46 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 May 2022 14:01:50 -0700
Message-Id: <20220509210151.1843173-6-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
References: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx 5/6] drm/i915/guc: Rename GuC log relay
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
index 35709202b09c..793a06a16874 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -419,7 +419,7 @@ static int guc_log_relay_create(struct intel_guc_log *log)
 	 */
 	n_subbufs = intel_guc_log_relay_subbuf_count(log);
 
-	guc_log_relay_chan = relay_open("guc_log",
+	guc_log_relay_chan = relay_open("guc_log_relay_chan",
 					dev_priv->drm.primary->debugfs_root,
 					subbuf_size, n_subbufs,
 					&relay_callbacks, dev_priv);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
index 983afc89b17e..6c5e900c4906 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
@@ -141,7 +141,7 @@ DEFINE_SIMPLE_ATTRIBUTE(guc_log_relay_subbuf_count_fops,
 			guc_log_relay_subbuf_count_get, NULL,
 			"%lld\n");
 
-static int guc_log_relay_open(struct inode *inode, struct file *file)
+static int guc_log_relay_ctl_open(struct inode *inode, struct file *file)
 {
 	struct intel_guc_log *log = inode->i_private;
 
@@ -157,10 +157,10 @@ static int guc_log_relay_open(struct inode *inode, struct file *file)
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
@@ -182,7 +182,7 @@ guc_log_relay_write(struct file *filp,
 	return ret ?: cnt;
 }
 
-static int guc_log_relay_release(struct inode *inode, struct file *file)
+static int guc_log_relay_ctl_release(struct inode *inode, struct file *file)
 {
 	struct intel_guc_log *log = inode->i_private;
 
@@ -190,11 +190,11 @@ static int guc_log_relay_release(struct inode *inode, struct file *file)
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
@@ -204,7 +204,7 @@ void intel_guc_log_debugfs_register(struct intel_guc_log *log,
 		{ "guc_log_dump", &guc_log_dump_fops, NULL },
 		{ "guc_load_err_log_dump", &guc_load_err_log_dump_fops, NULL },
 		{ "guc_log_level", &guc_log_level_fops, NULL },
-		{ "guc_log_relay", &guc_log_relay_fops, NULL },
+		{ "guc_log_relay_ctl", &guc_log_relay_ctl_fops, NULL },
 		{ "guc_log_relay_buf_size", &guc_log_relay_buf_size_fops, NULL },
 		{ "guc_log_relay_subbuf_count", &guc_log_relay_subbuf_count_fops, NULL },
 	};
-- 
2.25.1

