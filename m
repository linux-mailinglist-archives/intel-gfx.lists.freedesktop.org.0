Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EA0AB3718
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 14:35:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 329F810E3E6;
	Mon, 12 May 2025 12:34:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="i9YK9rmK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 880DE10E3E6
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 12:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1747053295;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bC3rmCqfA5icmQmv1eGXLPySmScZgaTKRTiPQFcrNeg=;
 b=i9YK9rmKA03tZJHhju5UwiDtKhxCCLh15GNUPeCHVL8ljp2O6d39xm97knzg2eSFcRRF2F
 l4SiBFPgdrLlbs+8AgeJxzmAOAK8Lw0bg0xiCjvk7cuNkqZenCoTm4R10LCwSwWei5Euha
 rqgexsVLOtukOYCbPdmNNBBTJ3mbfQo=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-507-zwi425q3Nfe2mpwjSUXFjA-1; Mon, 12 May 2025 08:34:54 -0400
X-MC-Unique: zwi425q3Nfe2mpwjSUXFjA-1
X-Mimecast-MFC-AGG-ID: zwi425q3Nfe2mpwjSUXFjA_1747053293
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-43e9b0fd00cso21505955e9.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 05:34:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747053293; x=1747658093;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=bC3rmCqfA5icmQmv1eGXLPySmScZgaTKRTiPQFcrNeg=;
 b=Pvpz5U0JdAHZajbs1akx+JEYlF6yHFTdjlttZxwF6hofhBu1XUx2GA+9+tnAaVVwWU
 QGpbfrNDBjROmyYB7L/+UZaOpsSDGKVbLf+GOH+vrlgynLcMpbr4UujGo4hLs0hwXO0/
 aXcFp9ytmJNfX+T2FOu4SXOE6iX9iXrTmrmIcleGeJjGFf0a13zOw0TfdZGKIxAbwLdg
 x9Y85n/AFSbRdsxoxzIKNYjQgCL6jTmd/F00K4vEmv3PpkRZdZL9wOYBhH/SurJR6dBt
 UFtRIcNPekt0K0aIOXW3vf+vOATEq4gmadVYKrTS8qm8q7QaOaTt7QoY3HBQHighXd9k
 ThXQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUd55zzJeHWHOttwt2oDJZpC/NPXpNNtCa0ynigaQvsXHmZCK51a9Ufy68kFeBd3KujYbgFhiZ6XbE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyHrNU+RfPkiZjjbgHJ2+4B06vDk+cdOzGJhQPx75chHyfcfu89
 WYr1dt9aIGgWSQxIJJpv+tR//GFz0MCIr8nDcN205+WlltmSz+W/43T+4s/dv56lDk0owiTtArT
 REGbMyfXOPEhpld1+CHWVIUsiwohOVlh0RH7xuPvJgCr0Z1Bo+ZSjgnb6WiOW+XxTMw==
X-Gm-Gg: ASbGncs2JimCdFfwx1OxPhRy6sKAuqTLDpC1sjoeO8r/mZoTy2y/R0lKVLyWiiyNFlu
 NxSYA0yCMcrjDTMl8zQuD5ttv//hvzNqyzBzRAMihnRg59mxKdSL0lx30ihqja6OFAG2UlS8j9x
 hRkWTnFt1iDWAfCosCUpqpeIq3f5xKjoD3iAl0eCyLEyWPawJ+JhtkdaIENAb0jJ6RAdVjzH0er
 2fhLLI6PDfXtQR19zTVEk7pBjISNgwe43ydQVOgrHJQoT/4jpChG3+uTmFCNRq6EIaqs0G7eqYd
 bpbix6wkvP8oXjyRf/g6odtaf0eJObOskxp1SgxqaWy9prLgkrJJ47NgxvoHaa9gWAGuSdKu
X-Received: by 2002:a05:600c:c0c3:10b0:439:8878:5029 with SMTP id
 5b1f17b1804b1-442d6d71e58mr72191695e9.2.1747053293024; 
 Mon, 12 May 2025 05:34:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGmemaQ8osM6LIu2Hwsj+bFw5CfMQg914aObUDJRDyOqNqUwk6qAxyXq65jxeriv3mY00DEQ==
X-Received: by 2002:a05:600c:c0c3:10b0:439:8878:5029 with SMTP id
 5b1f17b1804b1-442d6d71e58mr72191505e9.2.1747053292674; 
 Mon, 12 May 2025 05:34:52 -0700 (PDT)
Received: from localhost
 (p200300d82f4a5800f1ae8e20d7f451b0.dip0.t-ipconnect.de.
 [2003:d8:2f4a:5800:f1ae:8e20:d7f4:51b0])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-442d67d74b5sm125447555e9.2.2025.05.12.05.34.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 May 2025 05:34:52 -0700 (PDT)
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
Subject: [PATCH v2 11/11] mm/io-mapping: track_pfn() -> "pfnmap tracking"
Date: Mon, 12 May 2025 14:34:24 +0200
Message-ID: <20250512123424.637989-12-david@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250512123424.637989-1-david@redhat.com>
References: <20250512123424.637989-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: BytAx9LMIGijQ61IGQtou2aJuMmkosle4sNRliXmeb8_1747053293
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

track_pfn() does not exist, let's simply refer to it as "pfnmap
tracking".

Reviewed-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Acked-by: Ingo Molnar <mingo@kernel.org> # x86 bits
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 mm/io-mapping.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/io-mapping.c b/mm/io-mapping.c
index f44a6a1347123..d3586e95c12c5 100644
--- a/mm/io-mapping.c
+++ b/mm/io-mapping.c
@@ -24,7 +24,7 @@ int io_mapping_map_user(struct io_mapping *iomap, struct vm_area_struct *vma,
 	pgprot_t remap_prot = __pgprot((pgprot_val(iomap->prot) & _PAGE_CACHE_MASK) |
 				       (pgprot_val(vma->vm_page_prot) & ~_PAGE_CACHE_MASK));
 
-	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
+	/* We rely on prevalidation of the io-mapping to skip pfnmap tracking. */
 	return remap_pfn_range_notrack(vma, addr, pfn, size, remap_prot);
 }
 EXPORT_SYMBOL_GPL(io_mapping_map_user);
-- 
2.49.0

