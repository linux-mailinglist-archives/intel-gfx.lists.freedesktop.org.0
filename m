Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F8AA200A6
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 23:36:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDC7610E5D2;
	Mon, 27 Jan 2025 22:36:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dEQpOFWY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F04110E5CB;
 Mon, 27 Jan 2025 22:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738017393; x=1769553393;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8W5818F5QtXGxhlYLw3p+vXOrJlGGNlt7NYJR9QqrKk=;
 b=dEQpOFWYaz0K7otVT9bamm6pToZPHNmCgxZzgVysxQo9CVeQsI/zJ8Hp
 hob48WyLhsallYpwhmaiFSXloT0QBR4ZwFDLuDiiq1mBHezJvwMGrrONR
 XQPgVv2qdyu513iFdRwc9TLEfbzCVHLpF5yMlLPLcDoKwYxPeL99C8KkQ
 89oRczxgWzvzY8Thngcl7RtXWLpuYWq2cnKYcwS7UfA1ss/L+qfepG2hc
 tj0OlE9dYRq2vSUFkuMYFk4c6KamRVMdW27Xa6iuxKGfZbx7I1Wo2VAJh
 HZ7FOnn+2E5P48jMJ3CCoKiML7wIWcewuQAgLa2YqZrT51uJJDwQ3lv1e A==;
X-CSE-ConnectionGUID: PAY23cREReyJZ7xwo4k79Q==
X-CSE-MsgGUID: F0f2M+bjQp28/qiyWMWGhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="56035021"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="56035021"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 14:36:33 -0800
X-CSE-ConnectionGUID: YBZThVPdTvu29pmIbMwTfQ==
X-CSE-MsgGUID: Z3OzzD5mQniRYpTo5n4N9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="113601928"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by orviesa004.jf.intel.com with ESMTP; 27 Jan 2025 14:36:32 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Riana Tauro <riana.tauro@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH i-g-t v6 1/2] lib/igt_perf: Add utils to extract PMU event info
Date: Mon, 27 Jan 2025 14:33:00 -0800
Message-Id: <20250127223301.2819108-2-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250127223301.2819108-1-vinay.belgaumkar@intel.com>
References: <20250127223301.2819108-1-vinay.belgaumkar@intel.com>
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

Cc: Riana Tauro <riana.tauro@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 lib/igt_perf.c | 70 ++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/igt_perf.h |  2 ++
 2 files changed, 72 insertions(+)

diff --git a/lib/igt_perf.c b/lib/igt_perf.c
index 3866c6d77..7e81d5516 100644
--- a/lib/igt_perf.c
+++ b/lib/igt_perf.c
@@ -92,6 +92,76 @@ const char *xe_perf_device(int xe, char *buf, int buflen)
 	return buf;
 }
 
+/**
+ * perf_event_format: Returns the start/end positions of an event format param
+ * @device: Device string in driver:pci format
+ * @param: Parameter for which you need the format start/end bits
+ * Returns: Start/end bit positions for a event parameter format
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
+	fd = open(buf, O_RDONLY);
+	if (fd < 0)
+		return -EINVAL;
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
+	return ret;
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

