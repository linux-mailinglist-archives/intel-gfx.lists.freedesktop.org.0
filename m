Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDAD2DE017
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 09:50:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B494489209;
	Fri, 18 Dec 2020 08:49:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1805889209;
 Fri, 18 Dec 2020 08:49:58 +0000 (UTC)
IronPort-SDR: eDSUzrbsgsOfXFZkaL5qV7zl+9QXKY9IWapWsv6C2GOXtdrnUrYezuxzuZSVZO7slhlBe1WKxv
 LFouGG/VgDGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="155207193"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="155207193"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 00:49:54 -0800
IronPort-SDR: NDP+K7ryO97wAaKDs8xWd9FPcyQ9934PQuh3HLsabRAcWZK7DMoWyarmIihFyeyF9vHZMlITz7
 NedvtnOViRRg==
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="340289754"
Received: from mizrahid-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.205.41])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 00:49:51 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 18 Dec 2020 08:49:39 +0000
Message-Id: <20201218084939.1767210-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib/igt_perf: Request CLOCK_MONOTONIC
 when opening events
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

Ask for CLOCK_MONOTONIC which is more stable than the default perf clock.

(Ability to select a clock has been available since kernel version 4.1.)

The change should not have any significant impact on the IGT as whole
apart from maybe improving the occasional jitter in tests/tools which use
nanosleep(2) and use time slept together with perf reported time delta
either in direct or indirect calculations.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 lib/igt_perf.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/lib/igt_perf.c b/lib/igt_perf.c
index 418c1c18891c..b743859f5d29 100644
--- a/lib/igt_perf.c
+++ b/lib/igt_perf.c
@@ -1,12 +1,13 @@
-#include <stdint.h>
+#include <errno.h>
 #include <fcntl.h>
-#include <unistd.h>
+#include <stdint.h>
 #include <stdlib.h>
 #include <string.h>
-#include <errno.h>
 #include <sys/stat.h>
 #include <sys/sysinfo.h>
 #include <sys/sysmacros.h>
+#include <time.h>
+#include <unistd.h>
 
 #include "igt_perf.h"
 
@@ -111,6 +112,8 @@ _perf_open(uint64_t type, uint64_t config, int group, uint64_t format)
 
 	attr.read_format = format;
 	attr.config = config;
+	attr.use_clockid = 1;
+	attr.clockid = CLOCK_MONOTONIC;
 
 	do {
 		ret = perf_event_open(&attr, -1, cpu++, group, 0);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
