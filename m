Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33769456F36
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 14:00:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 129D96F564;
	Fri, 19 Nov 2021 13:00:17 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DED096F563;
 Fri, 19 Nov 2021 13:00:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="295222736"
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="295222736"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 05:00:12 -0800
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="455769605"
Received: from egedeon-mobl2.amr.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.209.179.224])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 05:00:10 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 19 Nov 2021 12:59:42 +0000
Message-Id: <20211119125945.55056-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211119125945.55056-1-tvrtko.ursulin@linux.intel.com>
References: <20211119125945.55056-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/6] igt/core: Fix build warning
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

.../lib/igt_thread.c: In function ‘__igt_unique____igt_constructor_l66’:
.../lib/igt_thread.c:68:9: warning: ‘pthread_setspecific’ expecting 1 byte in a region of size 0 [-Wstringop-overread]
   68 |         pthread_setspecific(__igt_is_main_thread, (void*) 0x1);
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Petri Latvala <petri.latvala@intel.com>
---
 lib/igt_core.c   | 6 ++++--
 lib/igt_thread.c | 4 +++-
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/lib/igt_core.c b/lib/igt_core.c
index ec05535cd56e..acb9743c4a24 100644
--- a/lib/igt_core.c
+++ b/lib/igt_core.c
@@ -2752,6 +2752,8 @@ void igt_vlog(const char *domain, enum igt_log_level level, const char *format,
 	char *line, *formatted_line;
 	char *thread_id;
 	const char *program_name;
+	const uintptr_t false_key = 0;
+	const uintptr_t true_key = 1;
 	const char *igt_log_level_str[] = {
 		"DEBUG",
 		"INFO",
@@ -2796,9 +2798,9 @@ void igt_vlog(const char *domain, enum igt_log_level level, const char *format,
 	}
 
 	if (line[strlen(line) - 1] == '\n')
-		pthread_setspecific(__vlog_line_continuation, (void*) false);
+		pthread_setspecific(__vlog_line_continuation, &false_key);
 	else
-		pthread_setspecific(__vlog_line_continuation, (void*) true);
+		pthread_setspecific(__vlog_line_continuation, &true_key);
 
 	/* append log buffer */
 	_igt_log_buffer_append(formatted_line);
diff --git a/lib/igt_thread.c b/lib/igt_thread.c
index 5bdda4102def..f5de2d57eaaa 100644
--- a/lib/igt_thread.c
+++ b/lib/igt_thread.c
@@ -64,6 +64,8 @@ bool igt_thread_is_main(void)
 }
 
 igt_constructor {
+	const uintptr_t key = 1;
+
 	pthread_key_create(&__igt_is_main_thread, NULL);
-	pthread_setspecific(__igt_is_main_thread, (void*) 0x1);
+	pthread_setspecific(__igt_is_main_thread, &key);
 }
-- 
2.32.0

