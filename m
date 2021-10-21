Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0364B436E6E
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 01:41:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB56D6E504;
	Thu, 21 Oct 2021 23:40:47 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06D836E504;
 Thu, 21 Oct 2021 23:40:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="292644805"
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="292644805"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 16:40:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="484446170"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga007.jf.intel.com with ESMTP; 21 Oct 2021 16:40:44 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Cc: Intel-GFX@Lists.FreeDesktop.Org, John Harrison <John.C.Harrison@Intel.com>
Date: Thu, 21 Oct 2021 16:40:42 -0700
Message-Id: <20211021234044.3071069-7-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211021234044.3071069-1-John.C.Harrison@Intel.com>
References: <20211021234044.3071069-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 6/8] lib/igt_sysfs: Support large files
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

From: John Harrison <John.C.Harrison@Intel.com>

The syfs helper functions were all using basic 'int' data types for
sizs, offsets, etc. when reading from sysfs. This works fine for
little files, but not for large error capture logs (which can be
gigabytes in sizes).

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 lib/igt_sysfs.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/lib/igt_sysfs.c b/lib/igt_sysfs.c
index 6919ac361..ee75e3ef1 100644
--- a/lib/igt_sysfs.c
+++ b/lib/igt_sysfs.c
@@ -53,9 +53,11 @@
  * provides basic support for like igt_sysfs_open().
  */
 
-static int readN(int fd, char *buf, int len)
+static ssize_t readN(int fd, char *buf, size_t len)
 {
-	int ret, total = 0;
+	ssize_t ret;
+	size_t total = 0;
+
 	do {
 		ret = read(fd, buf + total, len - total);
 		if (ret < 0)
@@ -69,9 +71,11 @@ static int readN(int fd, char *buf, int len)
 	return total ?: ret;
 }
 
-static int writeN(int fd, const char *buf, int len)
+static ssize_t writeN(int fd, const char *buf, size_t len)
 {
-	int ret, total = 0;
+	ssize_t ret;
+	size_t total = 0;
+
 	do {
 		ret = write(fd, buf + total, len - total);
 		if (ret < 0)
@@ -218,8 +222,9 @@ bool igt_sysfs_set(int dir, const char *attr, const char *value)
 char *igt_sysfs_get(int dir, const char *attr)
 {
 	char *buf;
-	int len, offset, rem;
-	int ret, fd;
+	size_t len, offset, rem;
+	ssize_t ret;
+	int fd;
 
 	fd = openat(dir, attr, O_RDONLY);
 	if (igt_debug_on(fd < 0))
-- 
2.25.1

