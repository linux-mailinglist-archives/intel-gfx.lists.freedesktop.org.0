Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C662B65BF
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 14:59:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AAC36E20A;
	Tue, 17 Nov 2020 13:59:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DC3F89DD2;
 Tue, 17 Nov 2020 13:59:27 +0000 (UTC)
IronPort-SDR: N/wREGZpQe2fbw2qnnqrT/uFNeYrCAaGVpZVMOY8Z9uo0+tkJfLjv+tJwH+CFCDnBf0NeWQceZ
 j8OvSYaqCS4g==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="188983099"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="188983099"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 05:59:26 -0800
IronPort-SDR: 908yOIsUmBEZkHPYN2EQ/sYAIXiMKOwA+WInnDTKtdtSjxqR4nu0Q62uoKgtyEu01E1U4zAATU
 3oDB8XLc5e5g==
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="475930940"
Received: from jgagatko-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.50.93])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 05:59:25 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 17 Nov 2020 13:59:18 +0000
Message-Id: <20201117135918.354284-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201117114050.302583-1-tvrtko.ursulin@linux.intel.com>
References: <20201117114050.302583-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2] gem_wsim: Implement device selection
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

-L and -D <device> on the command line.

With no device specified tool tries to find i915 discrete or integrated in
that order.

v2:
 * Fix error handling and support render devices.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 benchmarks/gem_wsim.c | 75 ++++++++++++++++++++++++++++++++++++-------
 1 file changed, 64 insertions(+), 11 deletions(-)

diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
index ecad4a8dcd22..1c0c591ed8af 100644
--- a/benchmarks/gem_wsim.c
+++ b/benchmarks/gem_wsim.c
@@ -43,6 +43,7 @@
 #include <pthread.h>
 #include <math.h>
 
+#include "igt_device_scan.h"
 #include "intel_chipset.h"
 #include "intel_reg.h"
 #include "drm.h"
@@ -2520,7 +2521,9 @@ static void print_help(void)
 "                    clients.\n"
 "  -d                Sync between data dependencies in userspace.\n"
 "  -f <scale>        Scale factor for batch durations.\n"
-"  -F <scale>        Scale factor for delays."
+"  -F <scale>        Scale factor for delays.\n"
+"  -L                List GPUs.\n"
+"  -D <gpu>          One of the GPUs from -L.\n"
 	);
 }
 
@@ -2570,6 +2573,8 @@ add_workload_arg(struct w_arg *w_args, unsigned int nr_args, char *w_arg,
 
 int main(int argc, char **argv)
 {
+	struct igt_device_card card = { };
+	bool list_devices_arg = false;
 	unsigned int repeat = 1;
 	unsigned int clients = 1;
 	unsigned int flags = 0;
@@ -2581,26 +2586,25 @@ int main(int argc, char **argv)
 	char *append_workload_arg = NULL;
 	struct w_arg *w_args = NULL;
 	int exitcode = EXIT_FAILURE;
+	char *device_arg = NULL;
 	double scale_time = 1.0f;
 	double scale_dur = 1.0f;
 	int prio = 0;
 	double t;
 	int i, c, ret;
-
-	/*
-	 * Open the device via the low-level API so we can do the GPU quiesce
-	 * manually as close as possible in time to the start of the workload.
-	 * This minimizes the gap in engine utilization tracking when observed
-	 * via external tools like trace.pl.
-	 */
-	fd = __drm_open_driver_render(DRIVER_INTEL);
-	igt_require(fd);
+	char *drm_dev;
 
 	master_prng = time(NULL);
 
 	while ((c = getopt(argc, argv,
-			   "hqvsSdc:r:w:W:a:p:I:f:F:")) != -1) {
+			   "LhqvsSdc:r:w:W:a:p:I:f:F:D:")) != -1) {
 		switch (c) {
+		case 'L':
+			list_devices_arg = true;
+			break;
+		case 'D':
+			device_arg = strdup(optarg);
+			break;
 		case 'W':
 			if (master_workload >= 0) {
 				wsim_err("Only one master workload can be given!\n");
@@ -2661,6 +2665,55 @@ int main(int argc, char **argv)
 		}
 	}
 
+	igt_devices_scan(false);
+
+	if (list_devices_arg) {
+		struct igt_devices_print_format fmt = {
+			.type = IGT_PRINT_USER,
+			.option = IGT_PRINT_DRM,
+		};
+
+		igt_devices_print(&fmt);
+		return EXIT_SUCCESS;
+	}
+
+	if (device_arg) {
+		ret = igt_device_card_match(device_arg, &card);
+		if (!ret) {
+			wsim_err("Requested device %s not found!\n",
+				 device_arg);
+			free(device_arg);
+			return EXIT_FAILURE;
+		}
+		free(device_arg);
+	} else {
+		ret = igt_device_find_first_i915_discrete_card(&card);
+		if (!ret)
+			ret = igt_device_find_integrated_card(&card);
+		if (!ret) {
+			wsim_err("No device filter specified and no i915 devices found!\n");
+			return EXIT_FAILURE;
+		}
+	}
+
+	if (strlen(card.card)) {
+		drm_dev = card.card;
+	} else if (strlen(card.render)) {
+		drm_dev = card.render;
+	} else {
+		wsim_err("Failed to detect device!\n");
+		return EXIT_FAILURE;
+	}
+
+	fd = open(drm_dev, O_RDWR);
+	if (fd < 0) {
+		wsim_err("Failed to open '%s'! (%s)\n",
+			 drm_dev, strerror(errno));
+		return EXIT_FAILURE;
+	}
+	if (verbose > 1)
+		printf("Using device %s\n", drm_dev);
+
 	if (!nr_w_args) {
 		wsim_err("No workload descriptor(s)!\n");
 		goto err;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
