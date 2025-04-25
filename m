Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 058DEA9C0B4
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 10:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7936F10E8BD;
	Fri, 25 Apr 2025 08:17:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="bQ4LT7Aw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C94310E8D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 08:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745569061;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rqCDzyJE3N7q1dfRPTJIKewHsgjJcYj+B7llEZA1rCc=;
 b=bQ4LT7AwLAyp+GymBcgrzB1KEPSTOrTBjzh7//b8kM+1yZyoPtY+WszSunzZvU1IWlKQeT
 fvaU30jLkvdv/3JBRgqx5KEy9qBMA8XBXdKIg8XQ/CAKnjV/Xn1eH7ZRb1EWkL7fCXQGmL
 4whdAxWJEsmoKJzeGo/LVLeEIjTVtKA=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-386-cciqr7LEOYSOYMycC6ot9A-1; Fri, 25 Apr 2025 04:17:40 -0400
X-MC-Unique: cciqr7LEOYSOYMycC6ot9A-1
X-Mimecast-MFC-AGG-ID: cciqr7LEOYSOYMycC6ot9A_1745569059
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-3912fe32b08so817861f8f.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 01:17:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745569059; x=1746173859;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rqCDzyJE3N7q1dfRPTJIKewHsgjJcYj+B7llEZA1rCc=;
 b=AdCBXoqTq1XN0tBMELmEblsa7a5KphU8kwT/Tt4JU/kv0IvCB5RyT/UvJ0ixirlEa3
 +9NMrlCBuXgL1Gsv6+CrjOzNPQP9NZn/QtqL9huQvOABbOxhM5umsrGszYSOFq+rQYR5
 9SdcAwcUt1DmkxRLbc5zv9LEq76Me/jriG33LENXYiWam10gGJY3ZLDRSyDSjYKcDpfO
 yM45fvBplWptmYfLHvprYx7oVOKBG6ZwfrbJJ3hFtDqSWrJAdTMPNOSEaFeHIiVjT+qW
 jm14l+qUEAsQjJdy3cmCpTy0Ubo+VrTsHJXFcC/QE7Lw+oOuVjDezicdTYeOwFdb2gEc
 pcuA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXTwdTbVpJngjCdJhBWz3ep7XujH8jNRPdFUJqlqbqpT3xbfqf5lKeWV3ywqAINnT0knnT28GfXNuY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzFW0wDA8LBsIIg6++tBm1HPjlexviMr2WXU1yQA+5JXAyvw2zQ
 c0NfGAo5IAfwds5VUJaRLdRPhuXtV/JOFFMyANMt8HTW+rnDy7olJn+l+4rHC13LJBAB3erZU0T
 PVavZHnEghWnux7sT+FsRnwYbVSRJa14X0l/Unj6ZYnCngFYlXD8ctNLVttGa2EdI0w==
X-Gm-Gg: ASbGncsemPZJTEl+lgMrQ9N87htK4y7v+ZqDNGiGWYodYKfEfK6PJ0zHxcj/sU9zNDG
 KliboyIy13d8D+QCggtM2XQoXCZuWbMrke0nTeExP8NjyPtXoyZqsivikclXvF2ZX5IeUBASy76
 dQHmsJvaMVdC/ihoK+wfIE4kVvElokcR2eorrbX5mEXwam8NhiSliL/UcR/cnnF+YLyZ3Aox7t5
 HwgzfqUECo1Tezh6NCuezEMCAyrhQvB8G3SUHiRvsByalNlRmUGLm63ZIBGmpubep2N/zznrBwN
 boFiAc1aYx+DhnXeI4unfuyTCCMuuF/g0Gq5GKTyyQXYwPOzXPu83bvd1jUyQvbkX3iKBtg=
X-Received: by 2002:a05:6000:4026:b0:38d:badf:9df5 with SMTP id
 ffacd0b85a97d-3a074e1e7c1mr893873f8f.17.1745569059279; 
 Fri, 25 Apr 2025 01:17:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEeMJVro3CtNN/nAt/kzydgqpqMLMz4QDAdVYj55uYz4S+yOKx9n2ojCFKF9ThYiE7nLuy7NA==
X-Received: by 2002:a05:6000:4026:b0:38d:badf:9df5 with SMTP id
 ffacd0b85a97d-3a074e1e7c1mr893849f8f.17.1745569058900; 
 Fri, 25 Apr 2025 01:17:38 -0700 (PDT)
Received: from localhost
 (p200300cbc70f69006c5680f80c146d2a.dip0.t-ipconnect.de.
 [2003:cb:c70f:6900:6c56:80f8:c14:6d2a])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-4408d8d191bsm78695765e9.1.2025.04.25.01.17.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Apr 2025 01:17:38 -0700 (PDT)
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
 Pedro Falcato <pfalcato@suse.de>, Peter Xu <peterx@redhat.com>
Subject: [PATCH v1 09/11] x86/mm/pat: remove MEMTYPE_*_MATCH
Date: Fri, 25 Apr 2025 10:17:13 +0200
Message-ID: <20250425081715.1341199-10-david@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250425081715.1341199-1-david@redhat.com>
References: <20250425081715.1341199-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Bh3oJAUR4thfdc52RX5swsIxCfo3Vm9-5DCt16l5GP8_1745569059
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

