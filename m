Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD8C6B937B
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 13:17:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7995E10E7A4;
	Tue, 14 Mar 2023 12:17:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FDF710E7A0;
 Tue, 14 Mar 2023 12:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678796268; x=1710332268;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZMhRfre70UjRwO0+abjAW4P4fRO9TIaMpNh2O6XmLQ8=;
 b=Ntqjv8mtemsq0LVZZVUI7Nsj/ioSfgXgqsabQYHTxC6u/A/nWz/fSyJ6
 QoWh2DKEI4otpkZ8wBahrvHvsGuuaeEmYN07xbTuYA9ZdJg6J7G8S7TYl
 49pAHOBNRnK/Wab4ekTFxAY935CUKwmKQOTt6PiITzXxaVpZOdXCKFYqj
 ARgZvcpQG+2pGr7uw/ulk+oDRiUPqRY97sRryWL+iTygaqfkV4RdSymy/
 6e0ynqgTb8E9msqgDJcpxJ10Wh4WWv178I7eNGOGHcvff9AYdzraaey+B
 9g88LDJxQxwFr8tjAjC5E9NgmXpRFgveENCmmyTzLsRyNbC/2LrUqsBmG w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="334886544"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="334886544"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 05:17:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="822350186"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="822350186"
Received: from mjtillin-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.236.227])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 05:17:46 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Tue, 14 Mar 2023 12:17:40 +0000
Message-Id: <20230314121740.1195358-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Use actual period when
 calculating client busyness
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

On a slow machine, or with many processes and/or file descriptors to
parse, the period of the scanning loop can drift significantly from the
assumed value. This results in artificially inflated client busyness
percentages.

To alleviate the issue take some real timestamps and use actual elapsed
time when calculating relative busyness.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 39 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 38 insertions(+), 1 deletion(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index e13e35b71f4b..af4b350da8e4 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -43,6 +43,7 @@
 #include <sys/types.h>
 #include <unistd.h>
 #include <termios.h>
+#include <time.h>
 #include <sys/sysmacros.h>
 
 #include "igt_perf.h"
@@ -2524,6 +2525,38 @@ static void show_help_screen(void)
 "\n");
 }
 
+static int gettime(struct timespec *ts)
+{
+	memset(ts, 0, sizeof(*ts));
+
+#ifdef CLOCK_MONOTONIC_RAW
+	if (!clock_gettime(CLOCK_MONOTONIC_RAW, ts))
+		return 0;
+#endif
+#ifdef CLOCK_MONOTONIC_COARSE
+	if (!clock_gettime(CLOCK_MONOTONIC_COARSE, ts))
+		return 0;
+#endif
+
+	return clock_gettime(CLOCK_MONOTONIC, ts);
+}
+
+static unsigned long elapsed_us(struct timespec *prev, unsigned int period_us)
+{
+	unsigned long elapsed;
+	struct timespec now;
+
+	if (gettime(&now))
+		return period_us;
+
+	elapsed = ((now.tv_nsec - prev->tv_nsec) / 1000 +
+	           (unsigned long)USEC_PER_SEC * (now.tv_sec - prev->tv_sec));
+
+	*prev = now;
+
+	return elapsed;
+}
+
 int main(int argc, char **argv)
 {
 	unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
@@ -2537,6 +2570,7 @@ int main(int argc, char **argv)
 	char *pmu_device, *opt_device = NULL;
 	struct igt_device_card card;
 	char *codename = NULL;
+	struct timespec ts;
 
 	/* Parse options */
 	while ((ch = getopt(argc, argv, "o:s:d:pcJLlh")) != -1) {
@@ -2690,6 +2724,7 @@ int main(int argc, char **argv)
 
 	pmu_sample(engines);
 	scan_clients(clients, false);
+	gettime(&ts);
 	codename = igt_device_get_pretty_name(&card, false);
 
 	if (output_mode == JSON)
@@ -2698,6 +2733,7 @@ int main(int argc, char **argv)
 	while (!stop_top) {
 		struct clients *disp_clients;
 		bool consumed = false;
+		unsigned int scan_us;
 		int j, lines = 0;
 		struct winsize ws;
 		struct client *c;
@@ -2720,6 +2756,7 @@ int main(int argc, char **argv)
 		t = (double)(engines->ts.cur - engines->ts.prev) / 1e9;
 
 		disp_clients = scan_clients(clients, true);
+		scan_us = elapsed_us(&ts, period_us);
 
 		if (stop_top)
 			break;
@@ -2757,7 +2794,7 @@ int main(int argc, char **argv)
 
 					lines = print_client(c, engines, t,
 							     lines, con_w,
-							     con_h, period_us,
+							     con_h, scan_us,
 							     &class_w);
 				}
 
-- 
2.37.2

