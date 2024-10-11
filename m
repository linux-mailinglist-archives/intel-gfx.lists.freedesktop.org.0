Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D3499A7E3
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 17:35:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E47D010EB1C;
	Fri, 11 Oct 2024 15:35:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RwIdfZ6h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCDC710EB1B;
 Fri, 11 Oct 2024 15:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728660940; x=1760196940;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fJdSSoHD50FYcSaCVjrcQSNhERwUGjgYCa3cE16BCZc=;
 b=RwIdfZ6hSDEG8TKTSU1xXETOeChs19Hg9yW7cf9Fj/GcY5oUnlGpZA6S
 bvJUhSW5haIXRdI53325QyBaBs20HxawSak0WJoSSgOYkpNfvOA7asjP9
 lt4adPNrBWpndoWjfGf9fRFILzdzyonSttbSc/w+F6dlyrcgXZpBzCM2H
 Pp25QbkVeL7wvR9GaYsrWv8pFogPSjeDKBVfHEmySTpBgNqJsMpsKLkAy
 u2/lxugaRvroBisULFIxGkgnhAQdUx5OZ7/kFQiLA41abS0iaRUVzF5MZ
 gdwGVncLn5jIAGGoawGYEGv4svdWdgf0sd8n9sZYUsWCiN254LvKC/8hg g==;
X-CSE-ConnectionGUID: cFo0ZYgfRgSvtQy2Nf+cUw==
X-CSE-MsgGUID: GLJRD7FOQZ6SUMyhamQM+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28171857"
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="28171857"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 08:35:40 -0700
X-CSE-ConnectionGUID: gH6ZesOuR1C1KDwxcp4Xjw==
X-CSE-MsgGUID: 6t6oZwOYS2m0m7sAeviiJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="77757801"
Received: from ldmartin-desk2.corp.intel.com (HELO ldmartin-desk2.lan)
 ([10.125.111.131])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 08:35:40 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-xe@lists.freedesktop.org>,
	intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH topic/core-for-CI] Revert "perf/core: Only copy-to-user after
 completely unlocking all locks, v3."
Date: Fri, 11 Oct 2024 10:35:30 -0500
Message-ID: <20241011153530.451751-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
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

This reverts commit 80e846398c695dc3d0d2eac6da91772ff2aade65.

Let's see what CI says about reverting this 4 ~ 5 years old commit. We
shouldn't be in the business of changing perf/core in our "for CI" drm
branch.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 kernel/events/core.c | 49 ++++++++++++++++++++++----------------------
 1 file changed, 24 insertions(+), 25 deletions(-)

diff --git a/kernel/events/core.c b/kernel/events/core.c
index bf5b8fc8979e..ac5e7c683526 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -5729,16 +5729,20 @@ static int __perf_read_group_add(struct perf_event *leader,
 }
 
 static int perf_read_group(struct perf_event *event,
-			   u64 read_format, char __user *buf,
-			   u64 *values)
+				   u64 read_format, char __user *buf)
 {
 	struct perf_event *leader = event->group_leader, *child;
 	struct perf_event_context *ctx = leader->ctx;
 	int ret;
+	u64 *values;
 
 	lockdep_assert_held(&ctx->mutex);
 
-	*values = 1 + leader->nr_siblings;
+	values = kzalloc(event->read_size, GFP_KERNEL);
+	if (!values)
+		return -ENOMEM;
+
+	values[0] = 1 + leader->nr_siblings;
 
 	mutex_lock(&leader->child_mutex);
 
@@ -5752,17 +5756,25 @@ static int perf_read_group(struct perf_event *event,
 			goto unlock;
 	}
 
+	mutex_unlock(&leader->child_mutex);
+
 	ret = event->read_size;
+	if (copy_to_user(buf, values, event->read_size))
+		ret = -EFAULT;
+	goto out;
+
 unlock:
 	mutex_unlock(&leader->child_mutex);
+out:
+	kfree(values);
 	return ret;
 }
 
 static int perf_read_one(struct perf_event *event,
-			 u64 read_format, char __user *buf,
-			 u64 *values)
+				 u64 read_format, char __user *buf)
 {
 	u64 enabled, running;
+	u64 values[5];
 	int n = 0;
 
 	values[n++] = __perf_event_read_value(event, &enabled, &running);
@@ -5775,6 +5787,9 @@ static int perf_read_one(struct perf_event *event,
 	if (read_format & PERF_FORMAT_LOST)
 		values[n++] = atomic64_read(&event->lost_samples);
 
+	if (copy_to_user(buf, values, n * sizeof(u64)))
+		return -EFAULT;
+
 	return n * sizeof(u64);
 }
 
@@ -5795,8 +5810,7 @@ static bool is_event_hup(struct perf_event *event)
  * Read the performance event - simple non blocking version for now
  */
 static ssize_t
-__perf_read(struct perf_event *event, char __user *buf,
-	    size_t count, u64 *values)
+__perf_read(struct perf_event *event, char __user *buf, size_t count)
 {
 	u64 read_format = event->attr.read_format;
 	int ret;
@@ -5814,9 +5828,9 @@ __perf_read(struct perf_event *event, char __user *buf,
 
 	WARN_ON_ONCE(event->ctx->parent_ctx);
 	if (read_format & PERF_FORMAT_GROUP)
-		ret = perf_read_group(event, read_format, buf, values);
+		ret = perf_read_group(event, read_format, buf);
 	else
-		ret = perf_read_one(event, read_format, buf, values);
+		ret = perf_read_one(event, read_format, buf);
 
 	return ret;
 }
@@ -5826,31 +5840,16 @@ perf_read(struct file *file, char __user *buf, size_t count, loff_t *ppos)
 {
 	struct perf_event *event = file->private_data;
 	struct perf_event_context *ctx;
-	u64 stack_values[8];
-	u64 *values;
 	int ret;
 
 	ret = security_perf_event_read(event);
 	if (ret)
 		return ret;
 
-	if (event->read_size <= sizeof(stack_values))
-		values = memset(stack_values, 0, event->read_size);
-	else
-		values = kzalloc(event->read_size, GFP_KERNEL);
-	if (!values)
-		return -ENOMEM;
-
 	ctx = perf_event_ctx_lock(event);
-	ret = __perf_read(event, buf, count, values);
+	ret = __perf_read(event, buf, count);
 	perf_event_ctx_unlock(event, ctx);
 
-	if (ret > 0 && copy_to_user(buf, values, ret))
-		ret = -EFAULT;
-
-	if (values != stack_values)
-		kfree(values);
-
 	return ret;
 }
 
-- 
2.47.0

