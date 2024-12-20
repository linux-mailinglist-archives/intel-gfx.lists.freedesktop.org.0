Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1EA9F890D
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 01:41:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF8FF10EE20;
	Fri, 20 Dec 2024 00:40:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Oq/7cStI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D676210EE25;
 Fri, 20 Dec 2024 00:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734655259; x=1766191259;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ebturm+PCGww8peiPXROSc7VvKCvFDB4uDfgaUhZCBs=;
 b=Oq/7cStIO0+rqKTkqRT42nMYahUZSxZ2r4/saslrZdI5GF2e5BzjCIWw
 RB30NwSsNtskwxq3yOE58t1pbZA5v+9zogIidmRUAaCwKIBlkUT5Gm/iL
 dqE5OnbAk3fovwAWAlT46Da4etsBz7TdwdGzpYYyLfCXMV3xtFFIAps2R
 /tU+jOaWOFNWKcH5q6ECLBBRddeCpGLYEpLYziG9qRkgadSsT0xzvc9m+
 FxYYb40atp4O8NkEWha6OfiwoX4lY1zr5dy0Vpy6aQTPZs+IuLOTaf3Wc
 SdzFPBNcB6mlFyx1sH1JyrNOQbVYM8t3xv2/eTInq/ppClyvq8JheweX/ w==;
X-CSE-ConnectionGUID: icEG6WWTQlux9TxsL4uONA==
X-CSE-MsgGUID: /LHMjpjxT+uDqZD80bXc0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="46576441"
X-IronPort-AV: E=Sophos;i="6.12,249,1728975600"; d="scan'208";a="46576441"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 16:40:59 -0800
X-CSE-ConnectionGUID: M2icNVycSWeoJWQ+BBSd8Q==
X-CSE-MsgGUID: lVSHW4jQQ+WcmlFcoPUn7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,249,1728975600"; d="scan'208";a="103233338"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa004.fm.intel.com with ESMTP; 19 Dec 2024 16:40:58 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH i-g-t v2 3/4] lib/igt_perf: Add utils to extract PMU event info
Date: Thu, 19 Dec 2024 16:37:33 -0800
Message-Id: <20241220003734.69174-4-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241220003734.69174-1-vinay.belgaumkar@intel.com>
References: <20241220003734.69174-1-vinay.belgaumkar@intel.com>
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

Functions to parse config ID and GT bit shift for PMU events.

Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 lib/igt_perf.c | 68 ++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/igt_perf.h |  2 ++
 2 files changed, 70 insertions(+)

diff --git a/lib/igt_perf.c b/lib/igt_perf.c
index 3866c6d77..fec07b2d3 100644
--- a/lib/igt_perf.c
+++ b/lib/igt_perf.c
@@ -92,6 +92,74 @@ const char *xe_perf_device(int xe, char *buf, int buflen)
 	return buf;
 }
 
+/**
+ * perf_xe_format_gt_id:
+ * @device: Device string in driver:pci format
+ * Returns: The number of bits GT id is shifted in config
+ *
+ */
+int perf_xe_format_gt_shift(const char *device)
+{
+	char buf[150];
+	ssize_t ret;
+	int fd, start, end;
+
+	snprintf(buf, sizeof(buf),
+		 "/sys/bus/event_source/devices/%s/format/gt_id",
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
index 3d9ba2917..2505e7a45 100644
--- a/lib/igt_perf.h
+++ b/lib/igt_perf.h
@@ -71,5 +71,7 @@ int perf_i915_open(int i915, uint64_t config);
 int perf_i915_open_group(int i915, uint64_t config, int group);
 
 int perf_xe_open(int xe, uint64_t config);
+int perf_xe_event_config(const char *device, const char *event, uint64_t *config);
+int perf_xe_format_gt_shift(const char *device);
 
 #endif /* I915_PERF_H */
-- 
2.38.1

