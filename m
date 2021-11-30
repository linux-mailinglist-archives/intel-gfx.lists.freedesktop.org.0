Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA90646369D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 15:25:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 144076E2B4;
	Tue, 30 Nov 2021 14:25:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x34a.google.com (mail-wm1-x34a.google.com
 [IPv6:2a00:1450:4864:20::34a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E51E26E838
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 10:14:07 +0000 (UTC)
Received: by mail-wm1-x34a.google.com with SMTP id
 a64-20020a1c7f43000000b003335e5dc26bso10179224wmd.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 02:14:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=GIp7EQn2UnohoTj+yPMh1P0FmhJDYsjIC78ghQsH60U=;
 b=PGw1FmJ+9GtdWBnIbq7f+hljBVAL0lFbftpkYi1JLWLVMNYhLv7261fjg4MqiYs3kv
 R8poFfyshuoIbY13aW6fVh2RUJjOfFJqRKmb1Qu540Xuco19JGFOfU0aRxU0/gVTqb7L
 d+miGay8ofozSEpc9+9bgYsb4ZzIqZgdc5Lyqo/qUcinDbViru5aSfKjydYBhCxM9gSI
 /ZJxKOVZHWtHUmb0Gz7Q8CoK2/VjU2W0+ZJye7JyyG7XHPK4CLdYWyKbHAOZc3NTwBmJ
 bxHO1oIuPKFcdO7fehRy7s/817CNqQ968rheE0GoOAdmojCvdHngtz1Y4yINbTR0iKeN
 QJ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=GIp7EQn2UnohoTj+yPMh1P0FmhJDYsjIC78ghQsH60U=;
 b=dJ+BeJyRIbIS6yDi0BotRF981V3Okb8j+Y/2hwtgoOLr2GVF0a7Sk0HLr6L+WbBROa
 q+V/mP74p900EQ3IFScXz/yLZ6XfS0v/LvZMdWN6ySEYfM8N9QZ7zU0hJPdFVT9v9HGD
 xljtntgZ65Qr+WAvO+dCIhsppuzDmIiNPLibyBurBDnN1XXsTdXk5207DKzJVi89EkAe
 UgpRDkW3DMK9Aq8pOjIDlJ/YxBkpFQ/zUuFOpVdV6D7P6Hw9dTR+a4ctdIHHpwi3c9cL
 f5mpwveg3hHhHlpQ2sLtNFtCee0yJo+ywYUMJjvYzLQvgatkaQwTOPaxWYi4LJt5mIah
 7/hw==
X-Gm-Message-State: AOAM5321bW90og4cDGlWytd59hM4+XjC37lxnHe9wtpjpfr3INOMdN3K
 3+3YE3UzKvzyos/riRUVh30wmcaopA==
X-Google-Smtp-Source: ABdhPJxZ/cQtxZDq13eLfl7Z5mw2/skPl5gwILIaBmKsGNdiwTMcLcVdLHag+IyGI45Qp/W/X+ZIkCuzcA==
X-Received: from elver.muc.corp.google.com
 ([2a00:79e0:15:13:86b7:11e9:7797:99f0])
 (user=elver job=sendgmr) by 2002:adf:dd0a:: with SMTP id
 a10mr39649481wrm.60.1638267246341; 
 Tue, 30 Nov 2021 02:14:06 -0800 (PST)
Date: Tue, 30 Nov 2021 10:57:27 +0100
Message-Id: <20211130095727.2378739-1-elver@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.0.rc2.393.gf8c9666880-goog
From: Marco Elver <elver@google.com>
To: elver@google.com, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Tue, 30 Nov 2021 14:25:49 +0000
Subject: [Intel-gfx] [PATCH] lib/stackdepot: always do filter_irq_stacks()
 in stack_depot_save()
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
Cc: Jani Nikula <jani.nikula@intel.com>, dri-devel@lists.freedesktop.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, kasan-dev@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Andrey Ryabinin <ryabinin.a.a@gmail.com>,
 Alexander Potapenko <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>,
 Imran Khan <imran.f.khan@oracle.com>, Vijayanand Jitta <vjitta@codeaurora.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org,
 Vlastimil Babka <vbabka@suse.cz>, Andrey Konovalov <andreyknvl@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The non-interrupt portion of interrupt stack traces before interrupt
entry is usually arbitrary. Therefore, saving stack traces of interrupts
(that include entries before interrupt entry) to stack depot leads to
unbounded stackdepot growth.

As such, use of filter_irq_stacks() is a requirement to ensure
stackdepot can efficiently deduplicate interrupt stacks.

Looking through all current users of stack_depot_save(), none (except
KASAN) pass the stack trace through filter_irq_stacks() before passing
it on to stack_depot_save().

Rather than adding filter_irq_stacks() to all current users of
stack_depot_save(), it became clear that stack_depot_save() should
simply do filter_irq_stacks().

Signed-off-by: Marco Elver <elver@google.com>
---
 lib/stackdepot.c  | 13 +++++++++++++
 mm/kasan/common.c |  1 -
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/lib/stackdepot.c b/lib/stackdepot.c
index b437ae79aca1..519c7898c7f2 100644
--- a/lib/stackdepot.c
+++ b/lib/stackdepot.c
@@ -305,6 +305,9 @@ EXPORT_SYMBOL_GPL(stack_depot_fetch);
  * (allocates using GFP flags of @alloc_flags). If @can_alloc is %false, avoids
  * any allocations and will fail if no space is left to store the stack trace.
  *
+ * If the stack trace in @entries is from an interrupt, only the portion up to
+ * interrupt entry is saved.
+ *
  * Context: Any context, but setting @can_alloc to %false is required if
  *          alloc_pages() cannot be used from the current context. Currently
  *          this is the case from contexts where neither %GFP_ATOMIC nor
@@ -323,6 +326,16 @@ depot_stack_handle_t __stack_depot_save(unsigned long *entries,
 	unsigned long flags;
 	u32 hash;
 
+	/*
+	 * If this stack trace is from an interrupt, including anything before
+	 * interrupt entry usually leads to unbounded stackdepot growth.
+	 *
+	 * Because use of filter_irq_stacks() is a requirement to ensure
+	 * stackdepot can efficiently deduplicate interrupt stacks, always
+	 * filter_irq_stacks() to simplify all callers' use of stackdepot.
+	 */
+	nr_entries = filter_irq_stacks(entries, nr_entries);
+
 	if (unlikely(nr_entries == 0) || stack_depot_disable)
 		goto fast_exit;
 
diff --git a/mm/kasan/common.c b/mm/kasan/common.c
index 8428da2aaf17..efaa836e5132 100644
--- a/mm/kasan/common.c
+++ b/mm/kasan/common.c
@@ -36,7 +36,6 @@ depot_stack_handle_t kasan_save_stack(gfp_t flags, bool can_alloc)
 	unsigned int nr_entries;
 
 	nr_entries = stack_trace_save(entries, ARRAY_SIZE(entries), 0);
-	nr_entries = filter_irq_stacks(entries, nr_entries);
 	return __stack_depot_save(entries, nr_entries, flags, can_alloc);
 }
 
-- 
2.34.0.rc2.393.gf8c9666880-goog

