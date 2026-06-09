Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GocdFCobKGox+AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 15:54:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE015660C38
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 15:54:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=Uf7zi2A8;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=linux.dev
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB16510E3BD;
	Tue,  9 Jun 2026 13:54:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out-173.mta0.migadu.com (out-173.mta0.migadu.com
 [91.218.175.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 612F810E0E2
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2026 06:43:02 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1780987378;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aY/Q2Y4YJZOouDOZHMnVH0A77nfCK6zvU7h1qy64BMY=;
 b=Uf7zi2A8S1Vt216no9vzZ3Kbmiu5WNcJlAjtZ2+I6gLXdoyBsFLfGuy4jDTTeA3xO1+pln
 Ds87oWHmnpQTX0CVJXI1T2pOOcEbz3YgF0qLAuuBFcwrnzZevA48QTk2qsWUyaePK41llH
 LokoxYxt8pU9/doCU/rEpYO3EWSrNiI=
From: Kaitao Cheng <kaitao.cheng@linux.dev>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Muchun Song <muchun.song@linux.dev>,
 Philipp Reisner <philipp.reisner@linbit.com>,
 Lars Ellenberg <lars.ellenberg@linbit.com>,
 =?UTF-8?q?Christoph=20B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>,
 Jens Axboe <axboe@kernel.dk>, Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>,
 Eddie James <eajames@linux.ibm.com>, Mark Brown <broonie@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Thierry Reding <thierry.reding@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Sowjanya Komatineni <skomatineni@nvidia.com>,
 Davidlohr Bueso <dave@stgolabs.net>,
 "Paul E . McKenney" <paulmck@kernel.org>,
 Josh Triplett <josh@joshtriplett.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>, Waiman Long <longman@redhat.com>,
 drbd-dev@lists.linbit.com, linux-block@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-spi@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Christian Brauner <brauner@kernel.org>,
 David Howells <dhowells@redhat.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Kaitao Cheng <kaitao.cheng@linux.dev>,
 Kaitao Cheng <chengkaitao@kylinos.cn>
Subject: [PATCH v2 14/14] list: Cache cursors in entry iterators
Date: Tue,  9 Jun 2026 14:41:22 +0800
Message-ID: <20260609064122.95825-2-kaitao.cheng@linux.dev>
In-Reply-To: <20260609064122.95825-1-kaitao.cheng@linux.dev>
References: <20260609061347.93688-1-kaitao.cheng@linux.dev>
 <20260609064122.95825-1-kaitao.cheng@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Approved-At: Tue, 09 Jun 2026 13:54:41 +0000
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,intel.com,redhat.com,lists.linbit.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,st-md-mailman.stormreply.com,lists.infradead.org,linux-foundation.org,infradead.org,kernel.org,bootlin.com,linux.dev,kylinos.cn];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@linux.intel.com,m:muchun.song@linux.dev,m:philipp.reisner@linbit.com,m:lars.ellenberg@linbit.com,m:christoph.boehmwalder@linbit.com,m:axboe@kernel.dk,m:o-takashi@sakamocchi.jp,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:christian.koenig@amd.com,m:ray.huang@amd.com,m:eajames@linux.ibm.com,m:broonie@kernel.org,m:mcoquelin.stm32@gmail.com,m:alexandre.torgue@foss.st.com,m:ldewangan@nvidia.com,m:thierry.reding@kernel.org,m:jonathanh@nvidia.com,m:skomatineni@nvidia.com,m:dave@stgolabs.net,m:paulmck@kernel.org,m:josh@joshtriplett.org,m:peterz@infradead.org,m:mingo@redhat.com,m:will@kernel.org,m:boqun@kernel.org,m:lgirdwood@gmail.com,m:perex@perex.cz,m:tiwai@suse.com,m:Laurent.pinchart@ideaso
 nboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:longman@redhat.com,m:drbd-dev@lists.linbit.com,m:linux-block@vger.kernel.org,m:linux1394-devel@lists.sourceforge.net,m:dri-devel@lists.freedesktop.org,m:linux-spi@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-arm-kernel@lists.infradead.org,m:linux-tegra@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:akpm@linux-foundation.org,m:rdunlap@infradead.org,m:brauner@kernel.org,m:dhowells@redhat.com,m:luca.ceresoli@bootlin.com,m:kaitao.cheng@linux.dev,m:chengkaitao@kylinos.cn,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,linux.dev,linbit.com,kernel.dk,sakamocchi.jp,intel.com,linaro.org,kernel.org,suse.de,gmail.com,ffwll.ch,ursulin.net,amd.com,linux.ibm.com,foss.st.com,nvidia.com,stgolabs.net,joshtriplett.org,infradead.org,redhat.com,perex.cz,suse.com];
	FORGED_SENDER(0.00)[kaitao.cheng@linux.dev,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kaitao.cheng@linux.dev,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	RCPT_COUNT_GT_50(0.00)[63];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,kylinos.cn:email,linux.dev:dkim,linux.dev:mid,linux.dev:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE015660C38

From: Kaitao Cheng <chengkaitao@kylinos.cn>

The non-safe list_for_each_entry() family advances by deriving the next
element from the current cursor in the loop step. If the loop body
unlinks the current entry, the step can no longer rely on the current
entry's list pointers.

Callers can use the _safe variants today, but those interfaces require a
temporary cursor to be declared outside the macro. That is necessary when
the caller actually needs the temporary cursor, but it looks redundant
and awkward when the cursor is only there to satisfy the macro and is
never otherwise used.

Add private next and previous cursors for the common entry iterators and
use unique internal names so callers keep the same interface. This lets
the loop step use a cursor captured before the body runs, while callers
that need to alter traversal state can still open-code the walk.

The safe variants remain useful when the caller needs access to the
temporary cursor or has stronger mutation requirements. Update their
comments to steer users toward the simpler iterators when that temporary
cursor is not needed.

Signed-off-by: Kaitao Cheng <chengkaitao@kylinos.cn>
---
 include/linux/list.h | 46 +++++++++++++++++++++++++++++++++-----------
 1 file changed, 35 insertions(+), 11 deletions(-)

diff --git a/include/linux/list.h b/include/linux/list.h
index 09d979976b3b..9df84a56a789 100644
--- a/include/linux/list.h
+++ b/include/linux/list.h
@@ -809,6 +809,29 @@ static inline size_t list_count_nodes(struct list_head *head)
 #define list_entry_is_head(pos, head, member)				\
 	list_is_head(&pos->member, (head))
 
+#define __list_for_each_entry(pos, next, head, member)			\
+	for (typeof(pos) next = list_next_entry(pos =			\
+		list_first_entry(head, typeof(*pos), member), member);	\
+	     !list_entry_is_head(pos, head, member);			\
+	     pos = next, next = list_next_entry(next, member))
+
+#define __list_for_each_entry_reverse(pos, prev, head, member)		\
+	for (typeof(pos) prev = list_prev_entry(pos =			\
+		list_last_entry(head, typeof(*pos), member), member);	\
+	     !list_entry_is_head(pos, head, member);			\
+	     pos = prev, prev = list_prev_entry(prev, member))
+
+#define __list_for_each_entry_continue(pos, next, head, member)		\
+	for (typeof(pos) next = list_next_entry(pos =			\
+		list_next_entry(pos, member), member);			\
+	     !list_entry_is_head(pos, head, member);			\
+	     pos = next, next = list_next_entry(next, member))
+
+#define __list_for_each_entry_from(pos, next, head, member)		\
+	for (typeof(pos) next = list_next_entry(pos, member);		\
+	     !list_entry_is_head(pos, head, member);			\
+	     pos = next, next = list_next_entry(next, member))
+
 /**
  * list_for_each_entry	-	iterate over list of given type
  * @pos:	the type * to use as a loop cursor.
@@ -816,9 +839,7 @@ static inline size_t list_count_nodes(struct list_head *head)
  * @member:	the name of the list_head within the struct.
  */
 #define list_for_each_entry(pos, head, member)				\
-	for (pos = list_first_entry(head, typeof(*pos), member);	\
-	     !list_entry_is_head(pos, head, member);			\
-	     pos = list_next_entry(pos, member))
+	__list_for_each_entry(pos, __UNIQUE_ID(next), head, member)
 
 /**
  * list_for_each_entry_reverse - iterate backwards over list of given type.
@@ -827,9 +848,7 @@ static inline size_t list_count_nodes(struct list_head *head)
  * @member:	the name of the list_head within the struct.
  */
 #define list_for_each_entry_reverse(pos, head, member)			\
-	for (pos = list_last_entry(head, typeof(*pos), member);		\
-	     !list_entry_is_head(pos, head, member); 			\
-	     pos = list_prev_entry(pos, member))
+	__list_for_each_entry_reverse(pos, __UNIQUE_ID(prev), head, member)
 
 /**
  * list_prepare_entry - prepare a pos entry for use in list_for_each_entry_continue()
@@ -852,9 +871,7 @@ static inline size_t list_count_nodes(struct list_head *head)
  * the current position.
  */
 #define list_for_each_entry_continue(pos, head, member) 		\
-	for (pos = list_next_entry(pos, member);			\
-	     !list_entry_is_head(pos, head, member);			\
-	     pos = list_next_entry(pos, member))
+	__list_for_each_entry_continue(pos, __UNIQUE_ID(next), head, member)
 
 /**
  * list_for_each_entry_continue_reverse - iterate backwards from the given point
@@ -879,8 +896,7 @@ static inline size_t list_count_nodes(struct list_head *head)
  * Iterate over list of given type, continuing from current position.
  */
 #define list_for_each_entry_from(pos, head, member) 			\
-	for (; !list_entry_is_head(pos, head, member);			\
-	     pos = list_next_entry(pos, member))
+	__list_for_each_entry_from(pos, __UNIQUE_ID(next), head, member)
 
 /**
  * list_for_each_entry_from_reverse - iterate backwards over list of given type
@@ -901,6 +917,8 @@ static inline size_t list_count_nodes(struct list_head *head)
  * @n:		another type * to use as temporary storage
  * @head:	the head for your list.
  * @member:	the name of the list_head within the struct.
+ *
+ * Prefer list_for_each_entry() unless the temporary cursor is needed.
  */
 #define list_for_each_entry_safe(pos, n, head, member)			\
 	for (pos = list_first_entry(head, typeof(*pos), member),	\
@@ -917,6 +935,8 @@ static inline size_t list_count_nodes(struct list_head *head)
  *
  * Iterate over list of given type, continuing after current point,
  * safe against removal of list entry.
+ *
+ * Prefer list_for_each_entry_continue() unless the temporary cursor is needed.
  */
 #define list_for_each_entry_safe_continue(pos, n, head, member) 		\
 	for (pos = list_next_entry(pos, member), 				\
@@ -933,6 +953,8 @@ static inline size_t list_count_nodes(struct list_head *head)
  *
  * Iterate over list of given type from current point, safe against
  * removal of list entry.
+ *
+ * Prefer list_for_each_entry_from() unless the temporary cursor is needed.
  */
 #define list_for_each_entry_safe_from(pos, n, head, member) 			\
 	for (n = list_next_entry(pos, member);					\
@@ -948,6 +970,8 @@ static inline size_t list_count_nodes(struct list_head *head)
  *
  * Iterate backwards over list of given type, safe against removal
  * of list entry.
+ *
+ * Prefer list_for_each_entry_reverse() unless the temporary cursor is needed.
  */
 #define list_for_each_entry_safe_reverse(pos, n, head, member)		\
 	for (pos = list_last_entry(head, typeof(*pos), member),		\
-- 
2.43.0

