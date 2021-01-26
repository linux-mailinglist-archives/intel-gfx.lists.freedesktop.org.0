Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B17A303E05
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 14:05:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 228EE89AA2;
	Tue, 26 Jan 2021 13:05:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FD2589A88;
 Tue, 26 Jan 2021 13:05:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23703448-1500050 
 for multiple; Tue, 26 Jan 2021 13:05:03 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 13:05:04 +0000
Message-Id: <20210126130505.2938391-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] i915/sysfs_client: Ignore clients
 being closed as we read their sysfs
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

An earlier client from an old test may still be lingering and disappear
as we scan the sysfs. Be graceful and let it go without tripping over it.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/sysfs_clients.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/tests/i915/sysfs_clients.c b/tests/i915/sysfs_clients.c
index 6be52c04f..a3a1f81e1 100644
--- a/tests/i915/sysfs_clients.c
+++ b/tests/i915/sysfs_clients.c
@@ -62,11 +62,13 @@
 
 static void strterm(char *s, int len)
 {
-	igt_assert(len > 0);
-
-	s[len] = '\0';
-	if (s[len - 1] == '\n')
-		s[len - 1] = '\0';
+	if (len < 0) {
+		*s = '\0';
+	} else {
+		s[len] = '\0';
+		if (s[len - 1] == '\n')
+			s[len - 1] = '\0';
+	}
 }
 
 static void pidname(int i915, int clients)
@@ -78,7 +80,6 @@ static void pidname(int i915, int clients)
 	long count;
 	pid_t pid;
 	DIR *dir;
-	int len;
 
 	dir = fdopendir(dup(clients));
 	igt_assert(dir);
@@ -90,13 +91,11 @@ static void pidname(int i915, int clients)
 			continue;
 
 		snprintf(buf, sizeof(buf), "%s/name", de->d_name);
-		len = igt_sysfs_read(clients, buf, buf, sizeof(buf) - 1);
-		igt_assert_f(len > 0, "failed to open '%s/name'\n", de->d_name);
-		strterm(buf, len);
+		strterm(buf, igt_sysfs_read(clients, buf, buf, sizeof(buf) - 1));
 		igt_debug("%s: %s\n", de->d_name, buf);
 
 		/* Ignore closed clients created by drm_driver_open() */
-		if (*buf == '<')
+		if (*buf == '\0' || *buf == '<')
 			continue;
 
 		close(me);
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
