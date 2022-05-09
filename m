Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76925520654
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 23:01:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08B2910F213;
	Mon,  9 May 2022 21:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC88710F1E8
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 21:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652130106; x=1683666106;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DSXv4TlS1/w3TOCdOPWdFKohSS5jC8rytmLvNgXjXC0=;
 b=LeXzjsvb+mJXT7UWIvs2YqsEUWUXGPLj9TdPGft2yIcaHSERDDriFUlH
 0GzJujnGPv/pxZhrFhf3crB0iCNXacBS233XHYgxLEI/BpDebnHIgQVwO
 Kb8lmMdtrLNMQCBIVykDPXjwrrm7l+x6mchRtqX54TX+HzshyKb218Upe
 XZuYe62l4zh7/IyX+OnJYGOii0N5ipkQTgkoXfgZhGMVivYa+yrVaA5Gy
 L2GSHMUGcx2S7UjKBHCgYNlcKKzacYoPmEeeMJh7BICh+uRCYGWVnUVrV
 +5wqDiSy82fPkOYCGQH7mMzR97ZyGo5uB7dV5aUQO+ZX1keZQx0ob8pVX w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="249703599"
X-IronPort-AV: E=Sophos;i="5.91,212,1647327600"; d="scan'208";a="249703599"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 14:01:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,212,1647327600"; d="scan'208";a="519410909"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga003.jf.intel.com with ESMTP; 09 May 2022 14:01:46 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 May 2022 14:01:49 -0700
Message-Id: <20220509210151.1843173-5-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
References: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx 4/6] drm/i915/guc: Provide debugfs for log
 relay sub-buf info
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

In order to provide alignment between IGT intel_guc_logger tool and
i915 kernel's guc log relay channels without requiring updating both
repositories everytime a sizing change is made, provide that info
via debugfs files.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    | 10 ++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |  2 +
 .../drm/i915/gt/uc/intel_guc_log_debugfs.c    | 41 +++++++++++++++++++
 3 files changed, 51 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index f454d53a8bca..35709202b09c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -15,7 +15,7 @@
 
 static void guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log);
 
-static u32 intel_guc_log_size(struct intel_guc_log *log)
+u32 intel_guc_log_size(struct intel_guc_log *log)
 {
 	/*
 	 *  GuC Log buffer Layout:
@@ -41,6 +41,12 @@ static u32 intel_guc_log_size(struct intel_guc_log *log)
 	return PAGE_SIZE + CRASH_BUFFER_SIZE + DEBUG_BUFFER_SIZE + CAPTURE_BUFFER_SIZE;
 }
 
+#define GUC_LOG_RELAY_SUBBUF_COUNT 8
+u32 intel_guc_log_relay_subbuf_count(struct intel_guc_log *log)
+{
+	return GUC_LOG_RELAY_SUBBUF_COUNT;
+}
+
 /**
  * DOC: GuC firmware log
  *
@@ -411,7 +417,7 @@ static int guc_log_relay_create(struct intel_guc_log *log)
 	 * latency, for consuming the logs from relay. Also doesn't take
 	 * up too much memory.
 	 */
-	n_subbufs = 8;
+	n_subbufs = intel_guc_log_relay_subbuf_count(log);
 
 	guc_log_relay_chan = relay_open("guc_log",
 					dev_priv->drm.primary->debugfs_root,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
index 18007e639be9..9e55bd7d2051 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
@@ -73,6 +73,8 @@ unsigned int intel_guc_get_log_buffer_size(enum guc_log_buffer_type type);
 size_t intel_guc_get_log_buffer_offset(enum guc_log_buffer_type type);
 int intel_guc_log_create(struct intel_guc_log *log);
 void intel_guc_log_destroy(struct intel_guc_log *log);
+u32 intel_guc_log_size(struct intel_guc_log *log);
+u32 intel_guc_log_relay_subbuf_count(struct intel_guc_log *log);
 
 int intel_guc_log_set_level(struct intel_guc_log *log, u32 level);
 bool intel_guc_log_relay_created(const struct intel_guc_log *log);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
index ddfbe334689f..983afc89b17e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
@@ -105,10 +105,49 @@ DEFINE_SIMPLE_ATTRIBUTE(guc_log_level_fops,
 			guc_log_level_get, guc_log_level_set,
 			"%lld\n");
 
+static int guc_log_relay_buf_size_get(void *data, u64 *val)
+{
+	struct intel_guc_log *log = data;
+
+	if (!log)
+		return -ENODEV;
+	if (!log->vma)
+		return -ENODEV;
+
+	*val = (u64)intel_guc_log_size(log);
+
+	return 0;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE(guc_log_relay_buf_size_fops,
+			guc_log_relay_buf_size_get, NULL,
+			"%lld\n");
+
+static int guc_log_relay_subbuf_count_get(void *data, u64 *val)
+{
+	struct intel_guc_log *log = data;
+
+	if (!log)
+		return -ENODEV;
+	if (!log->vma)
+		return -ENODEV;
+
+	*val = intel_guc_log_relay_subbuf_count(log);
+
+	return 0;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE(guc_log_relay_subbuf_count_fops,
+			guc_log_relay_subbuf_count_get, NULL,
+			"%lld\n");
+
 static int guc_log_relay_open(struct inode *inode, struct file *file)
 {
 	struct intel_guc_log *log = inode->i_private;
 
+	if (!log)
+		return -ENODEV;
+
 	if (!intel_guc_is_ready(log_to_guc(log)))
 		return -ENODEV;
 
@@ -166,6 +205,8 @@ void intel_guc_log_debugfs_register(struct intel_guc_log *log,
 		{ "guc_load_err_log_dump", &guc_load_err_log_dump_fops, NULL },
 		{ "guc_log_level", &guc_log_level_fops, NULL },
 		{ "guc_log_relay", &guc_log_relay_fops, NULL },
+		{ "guc_log_relay_buf_size", &guc_log_relay_buf_size_fops, NULL },
+		{ "guc_log_relay_subbuf_count", &guc_log_relay_subbuf_count_fops, NULL },
 	};
 
 	if (!intel_guc_is_supported(log_to_guc(log)))
-- 
2.25.1

