Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8222AAB3710
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 14:34:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0624510E3DB;
	Mon, 12 May 2025 12:34:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Kguc3RQG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4119310E3DB
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 12:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1747053291;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WLXTuxdzeoCOS7HE06BqHxnwP6g0cDhZW8Z+d4gkxmw=;
 b=Kguc3RQGVZ95gnikf0J5zmrnYCuto6zRjY7BlwmBCbiIu75xpZfUCIf1+x4O+7kJktjMCX
 +Gpl6u0hdiu3Gy8uDvNarBygQn0PxBvbSaI47Q881rlwv2ibi3dxezvD30h28CRsqhBunD
 dTNvqKgzOx4G+VHqSNQjk+oeLf5GIVU=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-133-xOmRcpvoNdOC7_ZLdENWRw-1; Mon, 12 May 2025 08:34:48 -0400
X-MC-Unique: xOmRcpvoNdOC7_ZLdENWRw-1
X-Mimecast-MFC-AGG-ID: xOmRcpvoNdOC7_ZLdENWRw_1747053287
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-44059976a1fso14262945e9.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 05:34:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747053287; x=1747658087;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=WLXTuxdzeoCOS7HE06BqHxnwP6g0cDhZW8Z+d4gkxmw=;
 b=A8pAt7E4P82NdfhgBXcaJ/MWnV6U2w7f78Ca9ARuta8qpFGm4YSduWQXpB9Tvoql29
 uY6I6IlFojGKUQ57+P7tXe93wTfPe+FdeyIYgnizZSCuURZywINaCmn313Txun2PRJ1L
 aOTket/c36zVForgpBGR8BgdjX3CLwJcCkHxytnhsO5R4ds5jsAjOlVA1bMeWuYb/MOn
 0roc5I+xZqI808pW2VhmOFXhTw1VkD1qCYFjWL5SR+CwtyxaSF+eRZoAZ1ojvA2qvzDG
 RBHBUjCDok4lNu5vr3lcaHNI2mFn8dzsl8dd/LwuDzMpFAogFMw088vX3GCOppw/fZOX
 usaw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUALhQPkVo1UKiOl2I2V3pPosXe+CF21ONFVqgR8pvYJuMr8wTc2pfpGHjIOg9Jd6MOB5v5YDhaQjk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzAkT6XGgqyk11wavzPaH3EJM043RcblNiZcaY0vkyBpFdNDrJ1
 RjhHMs1rlvqLsOJ44zyKESKIZqQEWr33UXZca3cq2X5IIfQ12GbyBp3BNDY5WZYJZuC3K4AQagl
 +//XIn5l4pkB0SbdyUVIQbrUwULdZqmJrlTAIrUZkE/sgJKTom2dmDJC9hw1kcOy7vw==
X-Gm-Gg: ASbGncvc5pdHkFFd9f4S8eGeYeO7JUClj/TICw2riAQYCGfoa3VllKWKCsBw0omJv5g
 XR6DcFNpsoDH1RLq7h0eQs+RiiEYcDU/9A0G98ddZTjo10pog4Blrx9z4OnyM8JCiXAXGHdKDuf
 NvJEdw+MetvQteI7QfNyloJbDjALMXQxj84Qp4YsqtLYcIefY6rlOMdOp9vcA9nIJmaqp+Tjmyg
 5RP/UQWuJEFU7eLqeO1npaAQ5cd4YJl2YmkzZdBoM9cPW/TxHHK3YC4bJ3YiyRGjbGLiEesJY34
 wQ4rqY+gQyix5ORjAE+JYzEBOTHZk6+MFoWg6w03rHI4fm6ZUX8Qra02QeDs1EewNtonvmO0
X-Received: by 2002:a5d:5f56:0:b0:39e:dce8:1c07 with SMTP id
 ffacd0b85a97d-3a1f64a43a5mr11025573f8f.46.1747053287224; 
 Mon, 12 May 2025 05:34:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGXC2JTlHqMNEkDQGwHpsMemWHOSr9CrtHgYnjEcClwN7Gy0FNgR8cW6E5jpqWqORj+so6DMQ==
X-Received: by 2002:a5d:5f56:0:b0:39e:dce8:1c07 with SMTP id
 ffacd0b85a97d-3a1f64a43a5mr11025549f8f.46.1747053286815; 
 Mon, 12 May 2025 05:34:46 -0700 (PDT)
Received: from localhost
 (p200300d82f4a5800f1ae8e20d7f451b0.dip0.t-ipconnect.de.
 [2003:d8:2f4a:5800:f1ae:8e20:d7f4:51b0])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3a1f58ebd43sm12647639f8f.37.2025.05.12.05.34.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 May 2025 05:34:46 -0700 (PDT)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: linux-mm@kvack.org, x86@kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-trace-kernel@vger.kernel.org,
 David Hildenbrand <david@redhat.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Andy Lutomirski <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Andrew Morton <akpm@linux-foundation.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>,
 Pedro Falcato <pfalcato@suse.de>, Peter Xu <peterx@redhat.com>,
 Ingo Molnar <mingo@kernel.org>
Subject: [PATCH v2 08/11] x86/mm/pat: remove MEMTYPE_*_MATCH
Date: Mon, 12 May 2025 14:34:21 +0200
Message-ID: <20250512123424.637989-9-david@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250512123424.637989-1-david@redhat.com>
References: <20250512123424.637989-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: FrfrU76ohOzm85ghH7EcTE7FAecxfkVVTFW2Sl0o1ds_1747053287
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
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

The "memramp() shrinking" scenario no longer applies, so let's remove
that now-unnecessary handling.

Reviewed-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Acked-by: Ingo Molnar <mingo@kernel.org> # x86 bits
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 arch/x86/mm/pat/memtype_interval.c | 44 ++++--------------------------
 1 file changed, 6 insertions(+), 38 deletions(-)

diff --git a/arch/x86/mm/pat/memtype_interval.c b/arch/x86/mm/pat/memtype_interval.c
index 645613d59942a..9d03f0dbc4715 100644
--- a/arch/x86/mm/pat/memtype_interval.c
+++ b/arch/x86/mm/pat/memtype_interval.c
@@ -49,26 +49,15 @@ INTERVAL_TREE_DEFINE(struct memtype, rb, u64, subtree_max_end,
 
 static struct rb_root_cached memtype_rbroot = RB_ROOT_CACHED;
 
-enum {
-	MEMTYPE_EXACT_MATCH	= 0,
-	MEMTYPE_END_MATCH	= 1
-};
-
-static struct memtype *memtype_match(u64 start, u64 end, int match_type)
+static struct memtype *memtype_match(u64 start, u64 end)
 {
 	struct memtype *entry_match;
 
 	entry_match = interval_iter_first(&memtype_rbroot, start, end-1);
 
 	while (entry_match != NULL && entry_match->start < end) {
-		if ((match_type == MEMTYPE_EXACT_MATCH) &&
-		    (entry_match->start == start) && (entry_match->end == end))
-			return entry_match;
-
-		if ((match_type == MEMTYPE_END_MATCH) &&
-		    (entry_match->start < start) && (entry_match->end == end))
+		if (entry_match->start == start && entry_match->end == end)
 			return entry_match;
-
 		entry_match = interval_iter_next(entry_match, start, end-1);
 	}
 
@@ -132,32 +121,11 @@ struct memtype *memtype_erase(u64 start, u64 end)
 {
 	struct memtype *entry_old;
 
-	/*
-	 * Since the memtype_rbroot tree allows overlapping ranges,
-	 * memtype_erase() checks with EXACT_MATCH first, i.e. free
-	 * a whole node for the munmap case.  If no such entry is found,
-	 * it then checks with END_MATCH, i.e. shrink the size of a node
-	 * from the end for the mremap case.
-	 */
-	entry_old = memtype_match(start, end, MEMTYPE_EXACT_MATCH);
-	if (!entry_old) {
-		entry_old = memtype_match(start, end, MEMTYPE_END_MATCH);
-		if (!entry_old)
-			return ERR_PTR(-EINVAL);
-	}
-
-	if (entry_old->start == start) {
-		/* munmap: erase this node */
-		interval_remove(entry_old, &memtype_rbroot);
-	} else {
-		/* mremap: update the end value of this node */
-		interval_remove(entry_old, &memtype_rbroot);
-		entry_old->end = start;
-		interval_insert(entry_old, &memtype_rbroot);
-
-		return NULL;
-	}
+	entry_old = memtype_match(start, end);
+	if (!entry_old)
+		return ERR_PTR(-EINVAL);
 
+	interval_remove(entry_old, &memtype_rbroot);
 	return entry_old;
 }
 
-- 
2.49.0

