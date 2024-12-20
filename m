Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8E19F890E
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 01:41:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7D2510EE25;
	Fri, 20 Dec 2024 00:41:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nY6PtmZT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1577610EE10;
 Fri, 20 Dec 2024 00:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734655263; x=1766191263;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gCciFelwR8Gjzdx9rZgYG3HqQFdNyY5/UbsTHDDJlMQ=;
 b=nY6PtmZTRALnzekxlebxhWhtNiB11iyWKm8C5du6jyQb57UrwUrgK5T5
 QSFsKZYIYkc2l2iup2n4/VdaamE/YaO06U9QA27s+mJ5SiULuA52IVCfx
 otQovjMj8MwlwzBUm2kA2eMQZpdHxp9O82fkI6C872eoD3IP1vN9qVpkg
 q5CZ7ys1aeM8PvSSeL7aLNePI8N/XQjWY6w0yRkbgYHEs1m/CSJ09T+od
 UCUcuSU6bFhSbRZWvUVCyn3gsES5ufa5EiKewPvMYpZ9NlE3v2hk//bta
 btCIi+LiGjw8MY5vtUNbs1RRXVITKRFDMGaKIyFjBgumntJvU/0wg2QMJ g==;
X-CSE-ConnectionGUID: YAba8Q+aRH6TdKRUAkd1BA==
X-CSE-MsgGUID: QipW24RpQjGpw2UiY3fLuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="46576446"
X-IronPort-AV: E=Sophos;i="6.12,249,1728975600"; d="scan'208";a="46576446"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 16:41:02 -0800
X-CSE-ConnectionGUID: OmPOnOeYSeWC5aRLYjNglA==
X-CSE-MsgGUID: xkIkxytsR4GYw94j1QzodA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,249,1728975600"; d="scan'208";a="103233356"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa004.fm.intel.com with ESMTP; 19 Dec 2024 16:41:01 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH i-g-t v2 4/4] tools/gputop: Add GT freq and c6 stats
Date: Thu, 19 Dec 2024 16:37:34 -0800
Message-Id: <20241220003734.69174-5-vinay.belgaumkar@intel.com>
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

Add GT C6 and Frequency support. These will use the PMU interface
and are displayed per GT/device in the header.

GT: 0, c6:  94.54% req_freq:  750.63 MHz act_freq:    0.00 MHz
GT: 1, c6:   2.75% req_freq: 1200.71 MHz act_freq: 1112.66 MHz

v2: Split patch into logical units and other review
comments (Rodrigo, Kamil)

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tools/gputop.c    | 197 ++++++++++++++++++++++++++++++++++++++++++++++
 tools/meson.build |   2 +-
 2 files changed, 198 insertions(+), 1 deletion(-)

diff --git a/tools/gputop.c b/tools/gputop.c
index 4e3663417..df038bdbb 100644
--- a/tools/gputop.c
+++ b/tools/gputop.c
@@ -29,6 +29,7 @@
 #include "igt_core.h"
 #include "igt_drm_clients.h"
 #include "igt_drm_fdinfo.h"
+#include "igt_perf.h"
 #include "igt_profiling.h"
 #include "drmtest.h"
 
@@ -104,6 +105,200 @@ static void print_percentage_bar(double percent, int max_len)
 	putchar('|');
 }
 
+static int
+get_num_gts(uint64_t type, uint64_t config, int gt_shift)
+{
+	int fd, gt_id;
+
+	errno = 0;
+	for (gt_id = 0; gt_id < MAX_GTS; gt_id++) {
+		config |= (uint64_t)gt_id << gt_shift;
+		fd = igt_perf_open(type, config);
+		if (fd < 0)
+			break;
+		close(fd);
+	}
+
+	if (!gt_id || (errno && errno != ENOENT))
+		gt_id = -errno;
+
+	return gt_id;
+}
+
+
+#define _open_pmu(type, cnt, pmu, fd) \
+({ \
+	int fd__; \
+\
+	fd__ = igt_perf_open_group((type), (pmu)->config, (fd)); \
+	if (fd__ >= 0) { \
+		if ((fd) == -1) \
+			(fd) = fd__; \
+		(pmu)->present = true; \
+		(pmu)->idx = (cnt)++; \
+	} \
+\
+	fd__; \
+})
+
+static int pmu_init(struct igt_drm_client *c)
+{
+	struct pmu_info *info;
+	unsigned int i, num_cntr = 0;
+	int fd = -1, ret;
+	/* TODO  get device events path*/
+	char *path;
+	uint64_t type;
+	uint64_t config;
+	int gt_shift;
+	char event_str[100];
+
+	info = (struct pmu_info *)malloc(sizeof(struct pmu_info));
+	if (!info)
+		return -ENOMEM;
+
+	snprintf(info->device_events_path, sizeof(info->device_events_path) - 1,
+		 "%s_%s", c->driver, c->pdev);
+	path = info->device_events_path;
+	for (; *path; ++path)
+		if (*path == ':')
+			*path = '_';
+
+	type = igt_perf_type_id(info->device_events_path);
+
+	/* Get a sample event config which can be used to find num_gts */
+	ret = perf_xe_event_config(info->device_events_path, "actual-frequency", &config);
+	if (ret < 0)
+		return -EINVAL;
+
+	gt_shift = perf_xe_format_gt_shift(info->device_events_path);
+	if (ret < 0)
+		return -EINVAL;
+
+	info->num_gts = get_num_gts(type, config, gt_shift);
+
+	for (i = 0; i < info->num_gts; i++) {
+		snprintf(event_str, sizeof(event_str), "c6-residency");
+		ret = perf_xe_event_config(info->device_events_path, event_str,
+					   &info->c6[i].config);
+		assert(ret >= 0);
+		info->c6[i].config |= (uint64_t)i << gt_shift;
+		_open_pmu(type, num_cntr, &info->c6[i], fd);
+
+		snprintf(event_str, sizeof(event_str), "actual-frequency");
+		ret = perf_xe_event_config(info->device_events_path, event_str,
+					   &info->act_freq[i].config);
+		assert(ret >= 0);
+		info->act_freq[i].config |= (uint64_t)i << gt_shift;
+		_open_pmu(type, num_cntr, &info->act_freq[i], fd);
+
+		snprintf(event_str, sizeof(event_str), "requested-frequency");
+		ret = perf_xe_event_config(info->device_events_path, event_str,
+					   &info->req_freq[i].config);
+		assert(ret >= 0);
+		info->req_freq[i].config |= (uint64_t)i << gt_shift;
+		_open_pmu(type, num_cntr, &info->req_freq[i], fd);
+	}
+
+	if (fd < 0)
+		return -EINVAL;
+	info->pmu_fd = fd;
+	info->num_counters = num_cntr;
+
+	/* Save PMU info in the client */
+	c->pmu_info = info;
+
+	return 0;
+}
+
+static uint64_t pmu_read_multi(int fd, unsigned int num, uint64_t *val)
+{
+	uint64_t buf[2 + num];
+	unsigned int i;
+	ssize_t len;
+
+	memset(buf, 0, sizeof(buf));
+
+	len = read(fd, buf, sizeof(buf));
+	if (len != sizeof(buf))
+		return 0;
+
+	for (i = 0; i < num; i++)
+		val[i] = buf[2 + i];
+
+	return buf[1];
+}
+
+
+static void __update_sample(struct pmu_counter *counter, uint64_t val)
+{
+	counter->val.prev = counter->val.cur;
+	counter->val.cur = val;
+}
+
+static void update_sample(struct pmu_counter *counter, uint64_t *val)
+{
+	if (counter->present)
+		__update_sample(counter, val[counter->idx]);
+}
+
+static void
+calc_c6_pct(struct pmu_info *info, unsigned int gt, unsigned long t)
+{
+	unsigned long c6_diff = info->c6[gt].val.cur - info->c6[gt].val.prev;
+
+	printf("GT: %d, c6: %6.2lf%%", gt, 100 * (double)((1e6 * c6_diff) / (double)t));
+}
+
+static void
+calc_freq(struct pmu_info *info, uint8_t gt, uint64_t t)
+{
+	uint64_t req_freq_diff = 1e9 * (info->req_freq[gt].val.cur - info->req_freq[gt].val.prev);
+	uint64_t act_freq_diff = 1e9 * (info->act_freq[gt].val.cur - info->act_freq[gt].val.prev);
+
+	printf(" req_freq: %7.2lf MHz", (double)req_freq_diff / (double)t);
+	printf(" act_freq: %7.2lf MHz", (double)act_freq_diff / (double)t);
+}
+
+static void
+print_pmu_stats(struct igt_drm_client *c, int *lines)
+{
+	struct pmu_info *info;
+	int i;
+	uint64_t *val;
+	uint64_t ts_diff;
+
+	if (!c->pmu_info)
+		if (pmu_init(c))
+			return;
+
+	info = (struct pmu_info *)c->pmu_info;
+	if (info->num_counters <= 0)
+		return;
+
+	val = (uint64_t *)malloc(info->num_counters * sizeof(uint64_t));
+	if (!val)
+		return;
+
+	/* Calculate timestamp diffs */
+	info->ts_prev = info->ts_cur;
+	info->ts_cur = pmu_read_multi(info->pmu_fd, info->num_counters, val);
+	ts_diff = info->ts_cur - info->ts_prev;
+
+	for (i = 0; i < info->num_gts; i++) {
+		update_sample(&info->c6[i], val);
+		update_sample(&info->req_freq[i], val);
+		update_sample(&info->act_freq[i], val);
+		calc_c6_pct(info, i, ts_diff);
+		calc_freq(info, i, ts_diff);
+		putchar('\n');
+		(*lines)++;
+	}
+
+	if (val)
+		free(val);
+}
+
 static int
 print_client_header(struct igt_drm_client *c, int lines, int con_w, int con_h,
 		    int *engine_w)
@@ -120,6 +315,8 @@ print_client_header(struct igt_drm_client *c, int lines, int con_w, int con_h,
 	if (lines++ >= con_h)
 		return lines;
 
+	print_pmu_stats(c, &lines);
+
 	putchar('\n');
 	if (c->regions->num_regions)
 		len = printf("%*s      MEM      RSS ",
diff --git a/tools/meson.build b/tools/meson.build
index 38b04851c..9e6c8546a 100644
--- a/tools/meson.build
+++ b/tools/meson.build
@@ -70,7 +70,7 @@ endif
 executable('gputop', 'gputop.c',
            install : true,
            install_rpath : bindir_rpathdir,
-           dependencies : [lib_igt_drm_clients,lib_igt_drm_fdinfo,lib_igt_profiling,math])
+           dependencies : [lib_igt_perf,lib_igt_drm_clients,lib_igt_drm_fdinfo,lib_igt_profiling,math])
 
 intel_l3_parity_src = [ 'intel_l3_parity.c', 'intel_l3_udev_listener.c' ]
 executable('intel_l3_parity', sources : intel_l3_parity_src,
-- 
2.38.1

