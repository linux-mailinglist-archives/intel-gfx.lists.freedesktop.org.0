Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A36A02DCF94
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 11:38:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE0696E249;
	Thu, 17 Dec 2020 10:38:25 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 386C46E249;
 Thu, 17 Dec 2020 10:38:25 +0000 (UTC)
IronPort-SDR: ZVEYgzrYypuVLzhI1rsWp9Gi/KlXSkpV1nFmfn6yV0qtp9eS0Bt/vubXHqlX8j5c+5jy5L511V
 CkXBGMetizBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9837"; a="171725556"
X-IronPort-AV: E=Sophos;i="5.78,426,1599548400"; d="scan'208";a="171725556"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 02:38:23 -0800
IronPort-SDR: yV/EJGGaxbyx60n6ap8x+rFod42eb4Xj+Nnz9t9LUcf7IBZVg9huFonVtlTDStmEnCMxj9rRMX
 hRIPrjKQHTJg==
X-IronPort-AV: E=Sophos;i="5.78,426,1599548400"; d="scan'208";a="339243357"
Received: from acherneg-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.210.48])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 02:38:22 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 17 Dec 2020 10:38:10 +0000
Message-Id: <20201217103812.1174024-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/3] intel_gpu_top: Support exiting the
 tool by pressing 'q'
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

Analoguous to top(1) we can enable the user to exit from the tool by
pressing 'q' on the console.

v2:
 * Fix sleep period with closed stdin. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 man/intel_gpu_top.rst |  6 ++++
 tools/intel_gpu_top.c | 80 ++++++++++++++++++++++++++++++++++++-------
 2 files changed, 73 insertions(+), 13 deletions(-)

diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
index 5552e9699d26..2e0c3a05acc1 100644
--- a/man/intel_gpu_top.rst
+++ b/man/intel_gpu_top.rst
@@ -48,6 +48,12 @@ OPTIONS
 -d
     Select a specific GPU using supported filter.
 
+RUNTIME CONTROL
+===============
+
+Supported keys:
+
+    'q'    Exit from the tool.
 
 DEVICE SELECTION
 ================
diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index dbd353673e55..46221c9543eb 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -23,24 +23,26 @@
 
 #include "igt_device_scan.h"
 
-#include <stdio.h>
-#include <sys/types.h>
-#include <dirent.h>
-#include <stdint.h>
 #include <assert.h>
-#include <string.h>
 #include <ctype.h>
-#include <stdlib.h>
-#include <unistd.h>
-#include <sys/stat.h>
+#include <dirent.h>
+#include <errno.h>
 #include <fcntl.h>
 #include <inttypes.h>
-#include <sys/ioctl.h>
-#include <errno.h>
-#include <math.h>
-#include <locale.h>
 #include <limits.h>
+#include <locale.h>
+#include <math.h>
+#include <poll.h>
 #include <signal.h>
+#include <stdint.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <sys/ioctl.h>
+#include <sys/stat.h>
+#include <sys/types.h>
+#include <unistd.h>
+#include <termios.h>
 
 #include "igt_perf.h"
 
@@ -1246,6 +1248,54 @@ static char *tr_pmu_name(struct igt_device_card *card)
 	return device;
 }
 
+static void interactive_stdin(void)
+{
+	struct termios termios = { };
+	int ret;
+
+	ret = fcntl(0, F_GETFL, NULL);
+	ret |= O_NONBLOCK;
+	ret = fcntl(0, F_SETFL, ret);
+	assert(ret == 0);
+
+	ret = tcgetattr(0, &termios);
+	assert(ret == 0);
+
+	termios.c_lflag &= ~ICANON;
+	termios.c_cc[VMIN] = 1;
+	termios.c_cc[VTIME] = 0; /* Deciseconds only - we'll use poll. */
+
+	ret = tcsetattr(0, TCSAFLUSH, &termios);
+	assert(ret == 0);
+}
+
+static void process_stdin(unsigned int timeout_us)
+{
+	struct pollfd p = { .fd = 0, .events = POLLIN };
+	int ret;
+
+	ret = poll(&p, 1, timeout_us / 1000);
+	if (ret <= 0) {
+		if (ret < 0)
+			stop_top = true;
+		return;
+	}
+
+	for (;;) {
+		char c;
+
+		ret = read(0, &c, 1);
+		if (ret <= 0)
+			break;
+
+		switch (c) {
+		case 'q':
+			stop_top = true;
+			break;
+		};
+	}
+}
+
 int main(int argc, char **argv)
 {
 	unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
@@ -1315,6 +1365,7 @@ int main(int argc, char **argv)
 	switch (output_mode) {
 	case INTERACTIVE:
 		pops = &term_pops;
+		interactive_stdin();
 		break;
 	case STDOUT:
 		pops = &stdout_pops;
@@ -1427,7 +1478,10 @@ int main(int argc, char **argv)
 		if (stop_top)
 			break;
 
-		usleep(period_us);
+		if (output_mode == INTERACTIVE)
+			process_stdin(period_us);
+		else
+			usleep(period_us);
 	}
 
 	free(codename);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
