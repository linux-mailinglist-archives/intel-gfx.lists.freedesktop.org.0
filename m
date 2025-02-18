Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8439A3A3BD
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 18:11:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D265C10E741;
	Tue, 18 Feb 2025 17:10:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RuSvCNbn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D59810E73D;
 Tue, 18 Feb 2025 17:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739898657; x=1771434657;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OP1OMH1ufTW+zkJYk0ME2IaOsH3yaOqw7H8D7TqD4js=;
 b=RuSvCNbn4euWRy7fLKGJ8E3XwzFT0pmWDHKpYdGYX9YbYUV613XgK5Ta
 KINe3VCzT/O3X7cq0c13JNzTTyzYD08gctMiEIcCkLGaK3dhaK0G1KTg0
 xLuGCYb9G3XK9gblY11ApkPD0c8zGKAlxq816nDuLPQuCviBxh+j4snN6
 NgD83LZhfJQUxsk1QiAiQNpwOMKPVPREN/TP88GlshNp+94OuAUmYWkqE
 HlH608y21X82UpI0Gz9MzYtgywru7sBeTV2dPDv97EW0NkLMkFo/hyH3e
 GHXsQ01N+3XJzfqSvCe1QMcL8unYffJJhr8o9KgE9o/r1ikSlDkhCdTdS w==;
X-CSE-ConnectionGUID: tuzzi5H+Szqpp23+BIqcaQ==
X-CSE-MsgGUID: HLXZoNKZQY2n5Ms2ex7fhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="28207587"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="28207587"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 09:10:56 -0800
X-CSE-ConnectionGUID: QMs+6NrKQACDl9698k4FHw==
X-CSE-MsgGUID: 7oHB8YlbScWS+akojKCleQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="119544181"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa004.fm.intel.com with ESMTP; 18 Feb 2025 09:10:56 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Riana Tauro <riana.tauro@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH i-g-t v10 2/3] lib/igt_perf: Add utils to extract PMU event
 info
Date: Tue, 18 Feb 2025 09:06:56 -0800
Message-Id: <20250218170657.214076-3-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250218170657.214076-1-vinay.belgaumkar@intel.com>
References: <20250218170657.214076-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Functions to parse event ID and GT bit shift for PMU events.

v2: Review comments (Riana)
v3: Review comments (Lucas)
v4: Review comments (Kamil, Soham)

Cc: Riana Tauro <riana.tauro@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Riana Tauro <riana.tauro@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 lib/igt_perf.c | 71 ++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/igt_perf.h |  2 ++
 2 files changed, 73 insertions(+)

diff --git a/lib/igt_perf.c b/lib/igt_perf.c
index 3866c6d77..2d0e699e3 100644
--- a/lib/igt_perf.c
+++ b/lib/igt_perf.c
@@ -92,6 +92,77 @@ const char *xe_perf_device(int xe, char *buf, int buflen)
 	return buf;
 }
 
+/**
+ * perf_event_format: Returns the start/end positions of an event format param
+ * @device: PMU device
+ * @param: Parameter for which you need the format start/end bits
+ *
+ * Returns: 0 on success or negative error code
+ */
+int perf_event_format(const char *device, const char *param, uint32_t *start, uint32_t *end)
+{
+	char buf[NAME_MAX];
+	ssize_t bytes;
+	int ret;
+	int fd;
+
+	snprintf(buf, sizeof(buf),
+		 "/sys/bus/event_source/devices/%s/format/%s",
+		 device, param);
+
+	fd = open(buf, O_RDONLY | O_CLOEXEC);
+	if (fd < 0)
+		return -errno;
+
+	bytes = read(fd, buf, sizeof(buf) - 1);
+	close(fd);
+	if (bytes < 1)
+		return -EINVAL;
+
+	buf[bytes] = '\0';
+	ret = sscanf(buf, "config:%u-%u", start, end);
+	if (ret != 2)
+		return -EINVAL;
+
+	return 0;
+}
+
+/**
+ * perf_event_config:
+ * @device: Device string in driver:pci format
+ * @event: The event name
+ * @config: Pointer to the config
+ * Returns: 0 for success, negative value on error
+ */
+int perf_event_config(const char *device, const char *event, uint64_t *config)
+{
+	char buf[NAME_MAX];
+	ssize_t bytes;
+	int ret;
+	int fd;
+
+	snprintf(buf, sizeof(buf),
+		 "/sys/bus/event_source/devices/%s/events/%s",
+		 device,
+		 event);
+
+	fd = open(buf, O_RDONLY);
+	if (fd < 0)
+		return -EINVAL;
+
+	bytes = read(fd, buf, sizeof(buf) - 1);
+	close(fd);
+	if (bytes < 1)
+		return ret;
+
+	buf[bytes] = '\0';
+	ret = sscanf(buf, "event=0x%lx", config);
+	if (ret != 1)
+		return -EINVAL;
+
+	return 0;
+}
+
 uint64_t xe_perf_type_id(int xe)
 {
 	char buf[80];
diff --git a/lib/igt_perf.h b/lib/igt_perf.h
index 3d9ba2917..69f7a3d74 100644
--- a/lib/igt_perf.h
+++ b/lib/igt_perf.h
@@ -71,5 +71,7 @@ int perf_i915_open(int i915, uint64_t config);
 int perf_i915_open_group(int i915, uint64_t config, int group);
 
 int perf_xe_open(int xe, uint64_t config);
+int perf_event_config(const char *device, const char *event, uint64_t *config);
+int perf_event_format(const char *device, const char *param, uint32_t *start, uint32_t *end);
 
 #endif /* I915_PERF_H */
-- 
2.38.1

