Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBB9A1D23E
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 09:17:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B59510E4D4;
	Mon, 27 Jan 2025 08:17:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R3t5w6Vv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D22610E4D2;
 Mon, 27 Jan 2025 08:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737965862; x=1769501862;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VZ2fibgXsy8KNmW5iI/YsxNCZ41X3z975CXNPPTD0JM=;
 b=R3t5w6Vv+JQy6nGnRmvJKPcZLmUHq1fPvUoeEdalu8pC0lk5fQJfnaoI
 sJwIl7xQA8wfltr1bG1/tyUNcsF7PRsNq8N+has0ef8xoOlrz3WtfhNiH
 iXTati6VeGSSUE4EVh+zIvuZEeF2S1DVuTL8UCfnP0EhKZZvmhb7gAbuw
 1JFBQ+SKgGgfK50AMiNEzSjQ7F3uivID7fw/MQcaSKrxAupaX1tB3N6+z
 qN/CSlfG8TYuGaoD5yrsF/Om3bIsd/eN8THq6xPsx5mh7D2wJcJHU3Ttb
 4SG5FqQQ+o9PGXe7IRFiXIejNKKEtCYCz5b+JXS1xVdxHwbawpjadhyps w==;
X-CSE-ConnectionGUID: uv3wJEqkT+i53WcZxY2mvg==
X-CSE-MsgGUID: LbJ45xsTSgSicB69dYqk8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11327"; a="60883649"
X-IronPort-AV: E=Sophos;i="6.13,237,1732608000"; d="scan'208";a="60883649"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 00:17:42 -0800
X-CSE-ConnectionGUID: dA/VxNJTSc+GIdvdFSzC+g==
X-CSE-MsgGUID: iFSbRH3ZQKiabAJ9Ixl+HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,237,1732608000"; d="scan'208";a="108342457"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by orviesa006.jf.intel.com with ESMTP; 27 Jan 2025 00:17:41 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH i-g-t v4 1/2] lib/igt_perf: Add utils to extract PMU event info
Date: Mon, 27 Jan 2025 00:14:01 -0800
Message-Id: <20250127081402.2587605-2-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250127081402.2587605-1-vinay.belgaumkar@intel.com>
References: <20250127081402.2587605-1-vinay.belgaumkar@intel.com>
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

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 lib/igt_perf.c | 68 ++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/igt_perf.h |  2 ++
 2 files changed, 70 insertions(+)

diff --git a/lib/igt_perf.c b/lib/igt_perf.c
index 3866c6d77..e333744bb 100644
--- a/lib/igt_perf.c
+++ b/lib/igt_perf.c
@@ -92,6 +92,74 @@ const char *xe_perf_device(int xe, char *buf, int buflen)
 	return buf;
 }
 
+/**
+ * perf_xe_event_format_gt: Returns the start position of GT id in the event format
+ * @device: Device string in driver:pci format
+ * Returns: Start bit for GT id
+ *
+ */
+int perf_xe_event_format_gt(const char *device)
+{
+	char buf[150];
+	ssize_t ret;
+	int fd, start, end;
+
+	snprintf(buf, sizeof(buf),
+		 "/sys/bus/event_source/devices/%s/format/gt",
+		 device);
+
+	fd = open(buf, O_RDONLY);
+	if (fd < 0)
+		return -EINVAL;
+
+	ret = read(fd, buf, sizeof(buf) - 1);
+	close(fd);
+	if (ret < 1)
+		return ret;
+
+	buf[ret] = '\0';
+	ret = sscanf(buf, "config:%d-%d", &start, &end);
+	if (ret != 2)
+		return -EINVAL;
+
+	return start;
+}
+
+/**
+ * perf_xe_event_config:
+ * @device: Device string in driver:pci format
+ * @event: The event name
+ * @config: Pointer to the config
+ * Returns: 0 for success, negative value on error
+ */
+int perf_xe_event_config(const char *device, const char *event, uint64_t *config)
+{
+	char buf[150];
+	ssize_t ret;
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
+	ret = read(fd, buf, sizeof(buf) - 1);
+	close(fd);
+	if (ret < 1)
+		return ret;
+
+	buf[ret] = '\0';
+	ret = sscanf(buf, "config=0x%lx", config);
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
index 3d9ba2917..f51c44bb2 100644
--- a/lib/igt_perf.h
+++ b/lib/igt_perf.h
@@ -71,5 +71,7 @@ int perf_i915_open(int i915, uint64_t config);
 int perf_i915_open_group(int i915, uint64_t config, int group);
 
 int perf_xe_open(int xe, uint64_t config);
+int perf_xe_event_config(const char *device, const char *event, uint64_t *config);
+int perf_xe_event_format_gt(const char *device);
 
 #endif /* I915_PERF_H */
-- 
2.38.1

