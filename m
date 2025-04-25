Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D615A9C0BA
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 10:17:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1891A10E8CF;
	Fri, 25 Apr 2025 08:17:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="faF/HXue";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5EBE10E8D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 08:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745569068;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=W6VKic5wKMEIAlcOpats+61qo+m5NRwuI82rD38neOc=;
 b=faF/HXuet5ES+/ui24DWxQB2OTiVJAxSdd+/+0DPg9HWkXpU3YKH1ssWbutVUIm9YzVygo
 y7wI8nBZgVVLWSfRev/GGhDoRkZSqeuch3nBZiW+sKre9weAoqbkSkT6mRx4wcX7FoD95C
 12ZWuk5uvVhz5Ri4QQGs+I9FdBUW3g4=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-5-E9A156CuMZevm5qqy59yPg-1; Fri, 25 Apr 2025 04:17:44 -0400
X-MC-Unique: E9A156CuMZevm5qqy59yPg-1
X-Mimecast-MFC-AGG-ID: E9A156CuMZevm5qqy59yPg_1745569063
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-43d0830c3f7so14458535e9.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 01:17:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745569063; x=1746173863;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=W6VKic5wKMEIAlcOpats+61qo+m5NRwuI82rD38neOc=;
 b=Psh9OZax4GgXfMIM1E0R2mnjoqy7Gkfdu5HS6y4pVyQnE2Xhv90QUATpSinRuEKRey
 +NTQ9WkrEWO4BRBGuXmsa9iEW56o3X0oprsZdH4gTUG6BYX496R7QqnnSoYSQrEGlP3F
 4MOh1/7OQWnWBKJDaHmVL8gfqawcAv8G9DB1tHWnkGHzKZqw9pzCwj68CSMG0EPH9awK
 axlMk7p7z7IS2pJj8fNuXU1fAYebYFiDxxcorlPt52oY9ZRWLxkx597BJBmlHV9fTrQs
 SzLEqvP1kkS1KZpsMMMXEe3D/Tg8TJbC4nWOLgYDuupTHCEC7P/PWsDeYrR6+i0FhWEZ
 BSYA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW/SDMrIyHBJFCvA5IiBpAonLnlEM0ve6b5qA82MsxmhAuV4CSsiA6mX2WiDejeH9pOKTCTnlNcpAs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxugvonpLZkcprsZnT/5F3CgBFz7BDFhx00cSKrGuJyNvh1VWe1
 3Mzi/V/FIoyqu2G5E39+HK434al9YQvtwmWhoPL4wJGmhd6/mZ4vFv7Y8jKHUHlbo9iY1UZXH02
 oQJfEw9xdgJqmiJwYSHQZI5sWLjUNy5r2yd/tQ8pSyxbo4KhKe2l7xUB3+PaIPNd+2w==
X-Gm-Gg: ASbGncvB2Rsoz+veRXrmF+gKT+S+ZagiABWj6ZScQJmgMMeYrPyNywhXVcC25FEW21P
 J0Ie30QnuH5lMuSWKY6EirsRf4HK4451SVKo91s2/comwKBBwbF5rcBsJXxq2iXITCVg+LvmxRw
 s/YIB7sRrQeob6LGOxM1iE75FysLWYeRBJwmgeI2cdhC9WqJg6TjNRG24VXvt+shuA+pbr74Pm4
 TdX7oSezlu7SazxxJ6yg2MFno8QgG8v51KfNosb4lXzg/C9iHLpsqED2zIB00UK9UQalknCkbbk
 DQeh7TD8KqpclncTsq9wVPREnJEY6/OVisEGxzMfYGvzABgXWJ/LCvblyr+dz6aIW3Dkg38=
X-Received: by 2002:a05:600c:a418:b0:43c:fad6:fa5a with SMTP id
 5b1f17b1804b1-440a66d91cbmr9335325e9.24.1745569063560; 
 Fri, 25 Apr 2025 01:17:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZBsLQHuNB03USKo+AemF2nPVLejdezBsqoRXAvjTmH+TtvceXr84oTyLSWQmeHt1CNvX3vA==
X-Received: by 2002:a05:600c:a418:b0:43c:fad6:fa5a with SMTP id
 5b1f17b1804b1-440a66d91cbmr9334915e9.24.1745569063186; 
 Fri, 25 Apr 2025 01:17:43 -0700 (PDT)
Received: from localhost
 (p200300cbc70f69006c5680f80c146d2a.dip0.t-ipconnect.de.
 [2003:cb:c70f:6900:6c56:80f8:c14:6d2a])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3a073ca5467sm1591850f8f.28.2025.04.25.01.17.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Apr 2025 01:17:42 -0700 (PDT)
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
Subject: [PATCH v1 11/11] mm/io-mapping: track_pfn() -> "pfnmap tracking"
Date: Fri, 25 Apr 2025 10:17:15 +0200
Message-ID: <20250425081715.1341199-12-david@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250425081715.1341199-1-david@redhat.com>
References: <20250425081715.1341199-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: cNDvXKArfRTiBpPgb4OJkmLxYVdpTIx54BSgzRTdK44_1745569063
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

Signed-off-by: David Hildenbrand <david@redhat.com>
---
 mm/io-mapping.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/io-mapping.c b/mm/io-mapping.c
index 01b3627999304..7266441ad0834 100644
--- a/mm/io-mapping.c
+++ b/mm/io-mapping.c
@@ -21,7 +21,7 @@ int io_mapping_map_user(struct io_mapping *iomap, struct vm_area_struct *vma,
 	if (WARN_ON_ONCE((vma->vm_flags & expected_flags) != expected_flags))
 		return -EINVAL;
 
-	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
+	/* We rely on prevalidation of the io-mapping to skip pfnmap tracking. */
 	return remap_pfn_range_notrack(vma, addr, pfn, size,
 		__pgprot((pgprot_val(iomap->prot) & _PAGE_CACHE_MASK) |
 			 (pgprot_val(vma->vm_page_prot) & ~_PAGE_CACHE_MASK)));
-- 
2.49.0

