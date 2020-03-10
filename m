Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 586E317F364
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 10:22:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABDFE6E15A;
	Tue, 10 Mar 2020 09:22:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88AC96E15A
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 09:21:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20505102-1500050 
 for multiple; Tue, 10 Mar 2020 09:21:20 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: linux-kernel@vger.kernel.org
Date: Tue, 10 Mar 2020 09:21:19 +0000
Message-Id: <20200310092119.14965-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] list: Prevent compiler reloads inside 'safe'
 list iteration
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
Cc: "Paul E. McKenney" <paulmck@kernel.org>, intel-gfx@lists.freedesktop.org,
 Randy Dunlap <rdunlap@infradead.org>, stable@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instruct the compiler to read the next element in the list iteration
once, and that it is not allowed to reload the value from the stale
element later. This is important as during the course of the safe
iteration, the stale element may be poisoned (unbeknownst to the
compiler).

This helps prevent kcsan warnings over 'unsafe' conduct in releasing the
list elements during list_for_each_entry_safe() and friends.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: "Paul E. McKenney" <paulmck@kernel.org>
Cc: Randy Dunlap <rdunlap@infradead.org>
Cc: stable@vger.kernel.org
---
 include/linux/list.h | 50 +++++++++++++++++++++++++++++++-------------
 1 file changed, 36 insertions(+), 14 deletions(-)

diff --git a/include/linux/list.h b/include/linux/list.h
index 884216db3246..c4d215d02259 100644
--- a/include/linux/list.h
+++ b/include/linux/list.h
@@ -536,6 +536,17 @@ static inline void list_splice_tail_init(struct list_head *list,
 #define list_next_entry(pos, member) \
 	list_entry((pos)->member.next, typeof(*(pos)), member)
 
+/**
+ * list_next_entry_safe - get the next element in list [once]
+ * @pos:	the type * to cursor
+ * @member:	the name of the list_head within the struct.
+ *
+ * Like list_next_entry() but prevents the compiler from reloading the
+ * next element.
+ */
+#define list_next_entry_safe(pos, member) \
+	list_entry(READ_ONCE((pos)->member.next), typeof(*(pos)), member)
+
 /**
  * list_prev_entry - get the prev element in list
  * @pos:	the type * to cursor
@@ -544,6 +555,17 @@ static inline void list_splice_tail_init(struct list_head *list,
 #define list_prev_entry(pos, member) \
 	list_entry((pos)->member.prev, typeof(*(pos)), member)
 
+/**
+ * list_prev_entry_safe - get the prev element in list [once]
+ * @pos:	the type * to cursor
+ * @member:	the name of the list_head within the struct.
+ *
+ * Like list_prev_entry() but prevents the compiler from reloading the
+ * previous element.
+ */
+#define list_prev_entry_safe(pos, member) \
+	list_entry(READ_ONCE((pos)->member.prev), typeof(*(pos)), member)
+
 /**
  * list_for_each	-	iterate over a list
  * @pos:	the &struct list_head to use as a loop cursor.
@@ -686,9 +708,9 @@ static inline void list_splice_tail_init(struct list_head *list,
  */
 #define list_for_each_entry_safe(pos, n, head, member)			\
 	for (pos = list_first_entry(head, typeof(*pos), member),	\
-		n = list_next_entry(pos, member);			\
+		n = list_next_entry_safe(pos, member);			\
 	     &pos->member != (head); 					\
-	     pos = n, n = list_next_entry(n, member))
+	     pos = n, n = list_next_entry_safe(n, member))
 
 /**
  * list_for_each_entry_safe_continue - continue list iteration safe against removal
@@ -700,11 +722,11 @@ static inline void list_splice_tail_init(struct list_head *list,
  * Iterate over list of given type, continuing after current point,
  * safe against removal of list entry.
  */
-#define list_for_each_entry_safe_continue(pos, n, head, member) 		\
-	for (pos = list_next_entry(pos, member), 				\
-		n = list_next_entry(pos, member);				\
-	     &pos->member != (head);						\
-	     pos = n, n = list_next_entry(n, member))
+#define list_for_each_entry_safe_continue(pos, n, head, member) 	\
+	for (pos = list_next_entry(pos, member), 			\
+		n = list_next_entry_safe(pos, member);			\
+	     &pos->member != (head);					\
+	     pos = n, n = list_next_entry_safe(n, member))
 
 /**
  * list_for_each_entry_safe_from - iterate over list from current point safe against removal
@@ -716,10 +738,10 @@ static inline void list_splice_tail_init(struct list_head *list,
  * Iterate over list of given type from current point, safe against
  * removal of list entry.
  */
-#define list_for_each_entry_safe_from(pos, n, head, member) 			\
-	for (n = list_next_entry(pos, member);					\
-	     &pos->member != (head);						\
-	     pos = n, n = list_next_entry(n, member))
+#define list_for_each_entry_safe_from(pos, n, head, member) 		\
+	for (n = list_next_entry_safe(pos, member);			\
+	     &pos->member != (head);					\
+	     pos = n, n = list_next_entry_safe(n, member))
 
 /**
  * list_for_each_entry_safe_reverse - iterate backwards over list safe against removal
@@ -733,9 +755,9 @@ static inline void list_splice_tail_init(struct list_head *list,
  */
 #define list_for_each_entry_safe_reverse(pos, n, head, member)		\
 	for (pos = list_last_entry(head, typeof(*pos), member),		\
-		n = list_prev_entry(pos, member);			\
+		n = list_prev_entry_safe(pos, member);			\
 	     &pos->member != (head); 					\
-	     pos = n, n = list_prev_entry(n, member))
+	     pos = n, n = list_prev_entry_safe(n, member))
 
 /**
  * list_safe_reset_next - reset a stale list_for_each_entry_safe loop
@@ -750,7 +772,7 @@ static inline void list_splice_tail_init(struct list_head *list,
  * completing the current iteration of the loop body.
  */
 #define list_safe_reset_next(pos, n, member)				\
-	n = list_next_entry(pos, member)
+	n = list_next_entry_safe(pos, member)
 
 /*
  * Double linked lists with a single pointer list head.
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
