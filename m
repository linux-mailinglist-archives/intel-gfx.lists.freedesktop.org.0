Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 772CE2DC317
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 16:28:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 354086E1F2;
	Wed, 16 Dec 2020 15:28:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0F8E6E1EE;
 Wed, 16 Dec 2020 15:28:25 +0000 (UTC)
IronPort-SDR: WXh1wVJfVMuftay0LqIGc0T1wM02EcUhrGdPqO0A0mNvjHwyg8gQJrKNSZ/v6u9DayoZft6fOY
 5hoCBRBsOdyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9837"; a="154312575"
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="154312575"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 07:28:25 -0800
IronPort-SDR: 5RAofbcVzKB/AG194ziPSqV7RAcaqt1x9gcvy3p1OpqjoQdte/uxSDNxueK5EaTiamsEh4ADuM
 RCE5ozE39mKQ==
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="369115562"
Received: from rafik-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.174.118])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 07:28:23 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 16 Dec 2020 15:28:08 +0000
Message-Id: <20201216152809.706094-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] intel_gpu_top: Support exiting the
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

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 man/intel_gpu_top.rst |  6 ++++
 tools/intel_gpu_top.c | 77 +++++++++++++++++++++++++++++++++++--------
 2 files changed, 70 insertions(+), 13 deletions(-)

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
index dbd353673e55..68911940f1d0 100644
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
@@ -1427,7 +1478,7 @@ int main(int argc, char **argv)
 		if (stop_top)
 			break;
 
-		usleep(period_us);
+		process_stdin(period_us);
 	}
 
 	free(codename);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
