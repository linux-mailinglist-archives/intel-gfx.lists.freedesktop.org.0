Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4CFAB370A
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 14:34:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 424B610E3E3;
	Mon, 12 May 2025 12:34:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="GgKa0kFY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92B6810E3E4
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 12:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1747053284;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=P/UT1PJepYZyksnYsraxL/8N12b3Ge+B9agKxkMscSY=;
 b=GgKa0kFYOg+l9jLxluxnhRuTLZA3S+nicgO2wjSyOkt1ZR3C3R+ry4n0MMbLUZu6b0tAUE
 HgrkozKvj7OuiWHq0UB4rZ22IOWjTpuHvI1UOcq0Glv06EsKVzhDFk18B2VetC7LAp3nCJ
 e+8uS7KBOLySAD3Va3wqfSDBlyDcOtI=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-450-a1Fxb4oBMRGhpvjFELU2qg-1; Mon, 12 May 2025 08:34:43 -0400
X-MC-Unique: a1Fxb4oBMRGhpvjFELU2qg-1
X-Mimecast-MFC-AGG-ID: a1Fxb4oBMRGhpvjFELU2qg_1747053282
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-442d472cf7fso24634905e9.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 05:34:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747053282; x=1747658082;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=P/UT1PJepYZyksnYsraxL/8N12b3Ge+B9agKxkMscSY=;
 b=U05Ht/HSQ1hDHm5z0thDzCb8vBhblYgt8AohV6dXjnQQiBx7/0TEWqx+U9kHHk0xLu
 uTk9br2j/XdfuxhLTrctYfraob+HBYftfmRD+K/aReoGd269f5KeizqoFp7CbayGxjjS
 qyS84TRU+vC3LPukn79fF72L7j9b1ISCvThKghsJA4xOfWDSDRkkgOkRTa8cqEhh8szn
 h97OP9YdJL1f+bQV3XhhxAW+GmXm5jnJbAJ4ZqqGK2A2i9hklWbdogfDW7P9vaGUuADs
 7Z5tCN802pFSGJgVJojY6Mmq1s+z5UNwX2k/1ljcutht5tv6HbPtrVTHywPE4acdbQB3
 qDUw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU17GDR1+KK+zYcjryR4lI2cVvQoeVA68sc+8tbkW1s/Uk4yU/Y+KTgV3QPL4lNZFF+SaEpeXXrG5s=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy36CLi0PlEYxkmil80OLQdC0pX/wiFsvT+hTqDyHP2uX6rUrJO
 xQa7BQcRNPiWPzxicUmDxnD3Wm4xEaOvm+2rleuNXAnjQITFBQvZ5Hj/WtQzkNHJjwRiThGXVKV
 fUyeELjfd3lzXp2WxvpwezJX+ZwUs8gZCpng3h1EeoxQm/FSxDHhVXU8rTOh7uqtdmg==
X-Gm-Gg: ASbGncsmjGshUmJer+xBz38OH0+xFD/G6Uq29FMF7KJqHEZd2E00mOKps9YILDln56u
 i8sfFcp+z/O2pmFDuWQY05RCnrrxcoNvWaUIQcfcL9dvUQ8PwIWI0H7TAsPI3sXkqxGAL//VoUw
 3lmU+lWOTwdwUJOyHXELSDmX56tXoPM3mzFLi672XFb1hj57vHiDFReQx8MUoyRUodJXFpkiONG
 WUGcW9h+y67vLGf4xTQkuE11cMapbWUNIHkRRtfOi4zlYE2Ukij2m+nkDhj4MqnqjUYD3Bqz1pz
 EtScDPQkhYjUatevBf+l9TCrWDzDQVJumIIpNBThrVSCTlXLn4REcJt1y763mEyqbLQhxBnT
X-Received: by 2002:a05:600c:5297:b0:439:9b2a:1b2f with SMTP id
 5b1f17b1804b1-442d6d0a9dfmr115315245e9.3.1747053282325; 
 Mon, 12 May 2025 05:34:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFywN6624bTf4LyaE2Qvs6JUb4DihepKIjEJxodQ9QeZ2Wkqkhy5X7PHmdPSSD8j6qE1uzKzw==
X-Received: by 2002:a05:600c:5297:b0:439:9b2a:1b2f with SMTP id
 5b1f17b1804b1-442d6d0a9dfmr115314985e9.3.1747053281990; 
 Mon, 12 May 2025 05:34:41 -0700 (PDT)
Received: from localhost
 (p200300d82f4a5800f1ae8e20d7f451b0.dip0.t-ipconnect.de.
 [2003:d8:2f4a:5800:f1ae:8e20:d7f4:51b0])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-442d773f794sm82894295e9.0.2025.05.12.05.34.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 May 2025 05:34:41 -0700 (PDT)
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
Subject: [PATCH v2 06/11] mm: remove VM_PAT
Date: Mon, 12 May 2025 14:34:19 +0200
Message-ID: <20250512123424.637989-7-david@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250512123424.637989-1-david@redhat.com>
References: <20250512123424.637989-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: jpLDG001XANh0E4t7nPAI15wH7B9VZMB_29cuq-EnQY_1747053282
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

It's unused, so let's remove it.

Reviewed-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Acked-by: Ingo Molnar <mingo@kernel.org> # x86 bits
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 include/linux/mm.h             | 4 +---
 include/trace/events/mmflags.h | 4 +---
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 38e16c984b9a6..c4efa9b17655e 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -357,9 +357,7 @@ extern unsigned int kobjsize(const void *objp);
 # define VM_SHADOW_STACK	VM_NONE
 #endif
 
-#if defined(CONFIG_X86)
-# define VM_PAT		VM_ARCH_1	/* PAT reserves whole VMA at once (x86) */
-#elif defined(CONFIG_PPC64)
+#if defined(CONFIG_PPC64)
 # define VM_SAO		VM_ARCH_1	/* Strong Access Ordering (powerpc) */
 #elif defined(CONFIG_PARISC)
 # define VM_GROWSUP	VM_ARCH_1
diff --git a/include/trace/events/mmflags.h b/include/trace/events/mmflags.h
index 15aae955a10bf..aa441f593e9a6 100644
--- a/include/trace/events/mmflags.h
+++ b/include/trace/events/mmflags.h
@@ -172,9 +172,7 @@ IF_HAVE_PG_ARCH_3(arch_3)
 	__def_pageflag_names						\
 	) : "none"
 
-#if defined(CONFIG_X86)
-#define __VM_ARCH_SPECIFIC_1 {VM_PAT,     "pat"           }
-#elif defined(CONFIG_PPC64)
+#if defined(CONFIG_PPC64)
 #define __VM_ARCH_SPECIFIC_1 {VM_SAO,     "sao"           }
 #elif defined(CONFIG_PARISC)
 #define __VM_ARCH_SPECIFIC_1 {VM_GROWSUP,	"growsup"	}
-- 
2.49.0

