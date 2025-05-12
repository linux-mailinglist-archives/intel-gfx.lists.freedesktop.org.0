Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E11A2AB3712
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 14:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AE2C10E3F0;
	Mon, 12 May 2025 12:34:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="KPnPguiR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A735F10E3D8
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1747053292;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2DrqxmiOL3McpG/dCHwH1I+FCiwsh4PlvLiMszfDdMo=;
 b=KPnPguiRR57cuB5U/KpVK0GRhzmS/ao/W4Ncu6CjbMr4cPFfld5U4o+WgNeCXONrwAE62f
 clmtrQvZ5Xw0IfV8oIcb82qcOQBSACRjAqGz47fZHMpESsTAWv4AXSm2Mxpa1qy4Z1+ksU
 yhvmQRW0K81QLz7KckjPk0rV5GVLgFw=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-675-rHXZP9q2M_yrWM9a03RjlQ-1; Mon, 12 May 2025 08:34:51 -0400
X-MC-Unique: rHXZP9q2M_yrWM9a03RjlQ-1
X-Mimecast-MFC-AGG-ID: rHXZP9q2M_yrWM9a03RjlQ_1747053289
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-3a1f7204d72so1680890f8f.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 05:34:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747053289; x=1747658089;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2DrqxmiOL3McpG/dCHwH1I+FCiwsh4PlvLiMszfDdMo=;
 b=aycaq7KenIwshlqiuuVZonuAXg/VFyZwFdmLixtzoBrxsi1YTQ/8eMWElqKrYBG8RT
 aYXhHO9t1E32KSlB4XyrZHP2l6g+o21qbhnAiispIFQgSki7kQvIagTC3oeZw3MTZlPj
 T9xcf38OLaXiF39RXwVSanLuOuDnrPEy0XyI7iBAXLbopGhKy/6alIJbBZSkdTBVMVVD
 r2nTs9e0UQ0rvCAhCIQE1V+uD8f03XDVhtw2XgB6jmclwM0v+JzU6ntumY/z3lA2tr8N
 PlRiWObFpj27sju8NABQyP2NW8GO8pG9XpAX9fa0pUYT6LMk9mO2VPmP+fwceCxuhL7/
 GIzw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUM0oXkAqt+V7UHUrVdyiHqCGunGgw84OWjCaHQudnpj68kgxCKMX510B8cHWBd/OZVZy6djaGKJ1A=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx+OPeBkhsH2qwnfsKkb0nm4RYSGOoMQaUjt9bBywjYHImd+HQH
 rDqwE4OyhwhfCRVcLbaPP3WPZK0AMLlCtDh21OOoxj+7boFgbbZuUFNdo5EH9GAOpcZgWUgT+We
 CY4ZzMDH3DNKsWBcsGTeH/3NqrmHuN3+0G7AHF7NVAUsa4DU1BKM/XkFmMn2fxCxr/g==
X-Gm-Gg: ASbGncts9ucIvqhD0j4/mAzqVizQzsc6AqEANTDuDXCdvANZvQHfWrOVeXxMkCcvDub
 q6/OSeQvM9tRRDBj5UJngRIOd/xwSIY7QFYvp8FsACV44Zy22GmZy+Nmml8q0WMJ2U0allO3WJd
 gaAqosHuOqlzhvQNCg1/05jY6JnXRp3BvxOmfm/T9cNo74KxSV2O8pm1qeRRRe7qEu981qKQswB
 OkwPoamvdeCLMSLHqZJJONXGekM3LTJDWQ2f0ftI0f1250f44THb5OsMae+I84gykb3j2n4am0k
 MAlIOicfXITdMNS8NusFiQlTLdHIZ9+DyeV4qJSOUfUhxz0RLpZGU68pzwDC+6mcS1zGbkNO
X-Received: by 2002:a05:6000:186e:b0:3a0:830d:ec58 with SMTP id
 ffacd0b85a97d-3a1f6446e78mr9882914f8f.28.1747053289241; 
 Mon, 12 May 2025 05:34:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0s3h7inHrYSooQ8NhTVln7D4g+9j4TOqzMH9jwIQneuWGNhcfmrI3NwJv0snFOVP2u3wuBw==
X-Received: by 2002:a05:6000:186e:b0:3a0:830d:ec58 with SMTP id
 ffacd0b85a97d-3a1f6446e78mr9882884f8f.28.1747053288844; 
 Mon, 12 May 2025 05:34:48 -0700 (PDT)
Received: from localhost
 (p200300d82f4a5800f1ae8e20d7f451b0.dip0.t-ipconnect.de.
 [2003:d8:2f4a:5800:f1ae:8e20:d7f4:51b0])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3a1f5a4c583sm12120673f8f.84.2025.05.12.05.34.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 May 2025 05:34:48 -0700 (PDT)
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
Subject: [PATCH v2 09/11] x86/mm/pat: inline memtype_match() into
 memtype_erase()
Date: Mon, 12 May 2025 14:34:22 +0200
Message-ID: <20250512123424.637989-10-david@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250512123424.637989-1-david@redhat.com>
References: <20250512123424.637989-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Ni5VwkvInzLZ3TZ1q6-079QX5zJ1ibIOwBlT8qApdYo_1747053289
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

Let's just have it in a single function. The resulting function is
certainly small enough and readable.

Signed-off-by: David Hildenbrand <david@redhat.com>
---
 arch/x86/mm/pat/memtype_interval.c | 33 +++++++++---------------------
 1 file changed, 10 insertions(+), 23 deletions(-)

diff --git a/arch/x86/mm/pat/memtype_interval.c b/arch/x86/mm/pat/memtype_interval.c
index 9d03f0dbc4715..e5844ed1311ed 100644
--- a/arch/x86/mm/pat/memtype_interval.c
+++ b/arch/x86/mm/pat/memtype_interval.c
@@ -49,21 +49,6 @@ INTERVAL_TREE_DEFINE(struct memtype, rb, u64, subtree_max_end,
 
 static struct rb_root_cached memtype_rbroot = RB_ROOT_CACHED;
 
-static struct memtype *memtype_match(u64 start, u64 end)
-{
-	struct memtype *entry_match;
-
-	entry_match = interval_iter_first(&memtype_rbroot, start, end-1);
-
-	while (entry_match != NULL && entry_match->start < end) {
-		if (entry_match->start == start && entry_match->end == end)
-			return entry_match;
-		entry_match = interval_iter_next(entry_match, start, end-1);
-	}
-
-	return NULL; /* Returns NULL if there is no match */
-}
-
 static int memtype_check_conflict(u64 start, u64 end,
 				  enum page_cache_mode reqtype,
 				  enum page_cache_mode *newtype)
@@ -119,14 +104,16 @@ int memtype_check_insert(struct memtype *entry_new, enum page_cache_mode *ret_ty
 
 struct memtype *memtype_erase(u64 start, u64 end)
 {
-	struct memtype *entry_old;
-
-	entry_old = memtype_match(start, end);
-	if (!entry_old)
-		return ERR_PTR(-EINVAL);
-
-	interval_remove(entry_old, &memtype_rbroot);
-	return entry_old;
+	struct memtype *entry = interval_iter_first(&memtype_rbroot, start, end - 1);
+
+	while (entry && entry->start < end) {
+		if (entry->start == start && entry->end == end) {
+			interval_remove(entry, &memtype_rbroot);
+			return entry;
+		}
+		entry = interval_iter_next(entry, start, end - 1);
+	}
+	return ERR_PTR(-EINVAL);
 }
 
 struct memtype *memtype_lookup(u64 addr)
-- 
2.49.0

