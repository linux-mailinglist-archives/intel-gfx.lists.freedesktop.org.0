Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A9D643FAD
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 10:18:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB55110E313;
	Tue,  6 Dec 2022 09:18:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1465B10E02A
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 09:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670318291; x=1701854291;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+cE/0K9YE9ytR89UPQRLx4CVp5EB+K6PfzPyz3dqFRA=;
 b=Dw1XIKhyI2l47tKE3cHBb7WNEl4t2fmxh3ll6vbO8JqAHEOVEeXLGM8g
 mL2nXIUBtR0MTrDTY3F7jHRhUvVbj+g+GWV87g8egEauXT9c+YfniYcMj
 qtlD258ARr49eLtfana3g+UgVtdZGu83XIUg5aD6CSrNme8yed+94KgU6
 nmTKcT6JzJLJ9pfv83QeoPWL0afZMg725TgGSKslfzEIrREeGTmG0b7cw
 uCGwtQ34y3TbeNDSQKzbEhTesnJGVtQA4/+SzkRPnrXWhEwT5gMavAVaU
 y4IWBDL4lYFDIBcnt+pEahomC6zg6NlAp2dj8zNTPQYYFJ3NjepDAYi7N Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="318438113"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="318438113"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 01:18:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="623833215"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="623833215"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 06 Dec 2022 01:18:10 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 01:20:58 -0800
Message-Id: <20221206092100.274195-4-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
References: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/5] drm/i915/guc: Provide debugfs for log
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
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    | 10 ++++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |  2 ++
 .../drm/i915/gt/uc/intel_guc_log_debugfs.c    | 34 +++++++++++++++++++
 3 files changed, 44 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 2fa952916120..6e880d9f42d4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -141,7 +141,7 @@ u32 intel_guc_log_section_size_capture(struct intel_guc_log *log)
 	return log->sizes[GUC_LOG_SECTIONS_CAPTURE].bytes;
 }
 
-static u32 intel_guc_log_size(struct intel_guc_log *log)
+u32 intel_guc_log_size(struct intel_guc_log *log)
 {
 	/*
 	 *  GuC Log buffer Layout:
@@ -170,6 +170,12 @@ static u32 intel_guc_log_size(struct intel_guc_log *log)
 		intel_guc_log_section_size_capture(log);
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
@@ -543,7 +549,7 @@ static int guc_log_relay_create(struct intel_guc_log *log)
 	 * latency, for consuming the logs from relay. Also doesn't take
 	 * up too much memory.
 	 */
-	n_subbufs = 8;
+	n_subbufs = intel_guc_log_relay_subbuf_count(log);
 
 	guc_log_relay_chan = relay_open("guc_log",
 					dev_priv->drm.primary->debugfs_root,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
index 02127703be80..c981eb8f4990 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
@@ -81,6 +81,8 @@ unsigned int intel_guc_get_log_buffer_size(struct intel_guc_log *log,
 size_t intel_guc_get_log_buffer_offset(struct intel_guc_log *log, enum guc_log_buffer_type type);
 int intel_guc_log_create(struct intel_guc_log *log);
 void intel_guc_log_destroy(struct intel_guc_log *log);
+u32 intel_guc_log_size(struct intel_guc_log *log);
+u32 intel_guc_log_relay_subbuf_count(struct intel_guc_log *log);
 
 int intel_guc_log_set_level(struct intel_guc_log *log, u32 level);
 bool intel_guc_log_relay_created(const struct intel_guc_log *log);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
index ddfbe334689f..27756640338e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
@@ -105,6 +105,38 @@ DEFINE_SIMPLE_ATTRIBUTE(guc_log_level_fops,
 			guc_log_level_get, guc_log_level_set,
 			"%lld\n");
 
+static int guc_log_relay_subbuf_size_get(void *data, u64 *val)
+{
+	struct intel_guc_log *log = data;
+
+	if (!log->vma)
+		return -ENODEV;
+
+	*val = (u64)intel_guc_log_size(log);
+
+	return 0;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE(guc_log_relay_subbuf_size_fops,
+			guc_log_relay_subbuf_size_get, NULL,
+			"%lld\n");
+
+static int guc_log_relay_subbuf_count_get(void *data, u64 *val)
+{
+	struct intel_guc_log *log = data;
+
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
@@ -166,6 +198,8 @@ void intel_guc_log_debugfs_register(struct intel_guc_log *log,
 		{ "guc_load_err_log_dump", &guc_load_err_log_dump_fops, NULL },
 		{ "guc_log_level", &guc_log_level_fops, NULL },
 		{ "guc_log_relay", &guc_log_relay_fops, NULL },
+		{ "guc_log_relay_subbuf_size", &guc_log_relay_subbuf_size_fops, NULL },
+		{ "guc_log_relay_subbuf_count", &guc_log_relay_subbuf_count_fops, NULL },
 	};
 
 	if (!intel_guc_is_supported(log_to_guc(log)))
-- 
2.34.1

