Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B95246AC800
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 17:32:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9667110E3ED;
	Mon,  6 Mar 2023 16:32:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0190810E3EC;
 Mon,  6 Mar 2023 16:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678120354; x=1709656354;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=fkjGvDLGnqfWXqERgwLxoLJ8bMf+bRuRswHYc5L4n/I=;
 b=AC3xOPTXdwjzi9gXMoUbPItH+/Ay8eSaMAxEGrPgCDk3Lr9KKOqyQ4UG
 BPylngjacsqnppx1ORANK1BKvcbadA1FdqfYrYkfuhnl619PPOJ8wDxaC
 rZsXEt/csldPd2NTXdkpKRHaHw/iY8pswoprtjxCOYikboZwlJ/kKNVYv
 AFJaH80EBWpPiB2gmWPrjjXjA0Vu3YVFauIWmyWQV92TiMxhW91lZZo/u
 O7TwIfrlu0lo74BqRvOl0/9dfNu/ZRirzw4VquD3H7B/RVzKXlrVMxrM2
 ovpTji5HYEPW7aZPADB0L/4V9IYl3ycK0lHwQlvClhPT/EbAFavMJTkqf w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="315998630"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="315998630"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 08:32:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="745132845"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="745132845"
Received: from lab-ah.igk.intel.com ([10.102.42.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 08:32:29 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Mon, 06 Mar 2023 17:31:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230224-track_gt-v4-3-464e8ab4c9ab@intel.com>
References: <20230224-track_gt-v4-0-464e8ab4c9ab@intel.com>
In-Reply-To: <20230224-track_gt-v4-0-464e8ab4c9ab@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
X-Mailer: b4 0.11.1
Subject: [Intel-gfx] [PATCH v4 03/10] lib/ref_tracker: add printing to
 memory buffer
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
Cc: netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Eric Dumazet <edumazet@google.com>,
 Chris Wilson <chris.p.wilson@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Dmitry Vyukov <dvyukov@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In case one wants to show stats via debugfs.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 include/linux/ref_tracker.h |  8 +++++++
 lib/ref_tracker.c           | 56 ++++++++++++++++++++++++++++++++++++++-------
 2 files changed, 56 insertions(+), 8 deletions(-)

diff --git a/include/linux/ref_tracker.h b/include/linux/ref_tracker.h
index a2cf1f6309adb2..2fdbfd2e14797a 100644
--- a/include/linux/ref_tracker.h
+++ b/include/linux/ref_tracker.h
@@ -50,6 +50,8 @@ void __ref_tracker_dir_print(struct ref_tracker_dir *dir,
 void ref_tracker_dir_print(struct ref_tracker_dir *dir,
 			   unsigned int display_limit);
 
+int ref_tracker_dir_snprint(struct ref_tracker_dir *dir, char *buf, size_t size);
+
 int ref_tracker_alloc(struct ref_tracker_dir *dir,
 		      struct ref_tracker **trackerp, gfp_t gfp);
 
@@ -78,6 +80,12 @@ static inline void ref_tracker_dir_print(struct ref_tracker_dir *dir,
 {
 }
 
+static inline int ref_tracker_dir_snprint(struct ref_tracker_dir *dir,
+					  char *buf, size_t size)
+{
+	return 0;
+}
+
 static inline int ref_tracker_alloc(struct ref_tracker_dir *dir,
 				    struct ref_tracker **trackerp,
 				    gfp_t gfp)
diff --git a/lib/ref_tracker.c b/lib/ref_tracker.c
index ab1253fde244ea..2ef4596b6b36f5 100644
--- a/lib/ref_tracker.c
+++ b/lib/ref_tracker.c
@@ -62,8 +62,27 @@ ref_tracker_get_stats(struct ref_tracker_dir *dir, unsigned int limit)
 	return stats;
 }
 
-void __ref_tracker_dir_print(struct ref_tracker_dir *dir,
-			   unsigned int display_limit)
+struct ostream {
+	char *buf;
+	int size, used;
+};
+
+#define pr_ostream(stream, fmt, args...) \
+({ \
+	struct ostream *_s = (stream); \
+\
+	if (!_s->buf) { \
+		pr_err(fmt, ##args); \
+	} else { \
+		int ret, len = _s->size - _s->used; \
+		ret = snprintf(_s->buf + _s->used, len, pr_fmt(fmt), ##args); \
+		_s->used += min(ret, len); \
+	} \
+})
+
+static void
+__ref_tracker_dir_pr_ostream(struct ref_tracker_dir *dir,
+			     unsigned int display_limit, struct ostream *s)
 {
 	struct ref_tracker_dir_stats *stats;
 	unsigned int i = 0, skipped;
@@ -77,8 +96,8 @@ void __ref_tracker_dir_print(struct ref_tracker_dir *dir,
 
 	stats = ref_tracker_get_stats(dir, display_limit);
 	if (IS_ERR(stats)) {
-		pr_err("%s@%pK: couldn't get stats, error %pe\n",
-		       dir->name, dir, stats);
+		pr_ostream(s, "%s@%pK: couldn't get stats, error %pe\n",
+			   dir->name, dir, stats);
 		return;
 	}
 
@@ -88,19 +107,27 @@ void __ref_tracker_dir_print(struct ref_tracker_dir *dir,
 		stack = stats->stacks[i].stack_handle;
 		if (sbuf && !stack_depot_snprint(stack, sbuf, STACK_BUF_SIZE, 4))
 			sbuf[0] = 0;
-		pr_err("%s@%pK has %d/%d users at\n%s\n", dir->name, dir,
-		       stats->stacks[i].count, stats->total, sbuf);
+		pr_ostream(s, "%s@%pK has %d/%d users at\n%s\n", dir->name, dir,
+			   stats->stacks[i].count, stats->total, sbuf);
 		skipped -= stats->stacks[i].count;
 	}
 
 	if (skipped)
-		pr_err("%s@%pK skipped reports about %d/%d users.\n",
-		       dir->name, dir, skipped, stats->total);
+		pr_ostream(s, "%s@%pK skipped reports about %d/%d users.\n",
+			   dir->name, dir, skipped, stats->total);
 
 	kfree(sbuf);
 
 	kfree(stats);
 }
+
+void __ref_tracker_dir_print(struct ref_tracker_dir *dir,
+			   unsigned int display_limit)
+{
+	struct ostream os = {};
+
+	__ref_tracker_dir_pr_ostream(dir, display_limit, &os);
+}
 EXPORT_SYMBOL(__ref_tracker_dir_print);
 
 void ref_tracker_dir_print(struct ref_tracker_dir *dir,
@@ -114,6 +141,19 @@ void ref_tracker_dir_print(struct ref_tracker_dir *dir,
 }
 EXPORT_SYMBOL(ref_tracker_dir_print);
 
+int ref_tracker_dir_snprint(struct ref_tracker_dir *dir, char *buf, size_t size)
+{
+	struct ostream os = { .buf = buf, .size = size };
+	unsigned long flags;
+
+	spin_lock_irqsave(&dir->lock, flags);
+	__ref_tracker_dir_pr_ostream(dir, 16, &os);
+	spin_unlock_irqrestore(&dir->lock, flags);
+
+	return os.used;
+}
+EXPORT_SYMBOL(ref_tracker_dir_snprint);
+
 void ref_tracker_dir_exit(struct ref_tracker_dir *dir)
 {
 	struct ref_tracker *tracker, *n;

-- 
2.34.1
