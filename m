Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 533C1A9C0B9
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 10:17:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B579110E8CD;
	Fri, 25 Apr 2025 08:17:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="imk4Me+1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8737A10E8CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 08:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745569066;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9zl4AHm9mXbjqorzBNgFLxI0voD1/7+bTcOR/2Fa4AA=;
 b=imk4Me+1Ay8brj625GxsXOT+9XHyGo4igx0qr2zwaHkswWjfwobl2AkML4g8hMC1UzD9h8
 A07Ca8jLjIx/EYYrB8+vSjxlZ+7eFVj3q/SxXOZNxLzj/h10SKpkdNmoEI+Gb0nJ4QXn6X
 VviaOX3T/wnaZnILZ202xfGN9rXZW1I=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-397-wh5gDL_bPfWv3OsRKdCA-w-1; Fri, 25 Apr 2025 04:17:42 -0400
X-MC-Unique: wh5gDL_bPfWv3OsRKdCA-w-1
X-Mimecast-MFC-AGG-ID: wh5gDL_bPfWv3OsRKdCA-w_1745569061
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-39d917b1455so623273f8f.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 01:17:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745569061; x=1746173861;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9zl4AHm9mXbjqorzBNgFLxI0voD1/7+bTcOR/2Fa4AA=;
 b=dAzqd5XgO4qhDbvt1TKZmlNLyCXEptcWK0JDvFpn5ICoMFIicFgDh++1BuD6HHuHjF
 jL+acrciVVAq4gAVCPCw+zo1JXRSDJghf+Dk08dLmZMZshgNQGzOQgGX1ahETVBNEWHj
 7TxujJ68S24+9FSegsl1WDX+MRcQeMOWMYOBEb4N7C0T8Ex/ZwG8QaAKqAYWQ/qi8nXZ
 BmiPCc+/i5TwgkmS419CBXHWeSY6zU8UUO1Pz2VJNm2+mYC5mkvu6uFfWiLn8TBIGO1V
 uVGJEgJ2hrOjdLfM4L2VKIH8k1S+TWxhgDhOeuYqyOmzNohcK0xeu+TclofX15nX63w/
 AS2g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWD/htf0j3yKr1na9AlLq6NH/5kvZWxwPwqFM2gBlbFHHO3xPHSHAYddTnceCS3e3eP9wPfeFHG7QU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yyj/Ndyx1zjKqXjIC19LzDlSfHglzlseIjUhVOmxSVIB5M+rcrP
 UwdkVHkXB5fXAvj3LxsaUdS/bYhSVfhCWxioNtzohD+8YwgHfy6cXx3yeAWrXTR6fRx670Wq3WX
 xe3kYtATm8YX/UjFhq/ewBo8caimczskkJ6FZlFNYyCYOjdR9j6cSXCavuzJCAa9YYg==
X-Gm-Gg: ASbGncsWvPc8l0/LbduJVzJV4EoByAsp8ZPhOG8lI9htfPtyWbKc3iHzjjh1Rpc2dSd
 4RKxwIu5F84pRR6z9VIg9OdTTPEM7K3dOhSmXL3l8XS1zE4IuKFZPmNcMV0SK08XJv2g4vc5JsN
 Z8xN8Fk+c3yXYTaqoKXhOdufePoDfLJ1JV8TAYGpfFC3kMwRb80Ky9Lo5vFdGJ7MwuyF6vsZJHF
 kWkOmuP5LC9yR0rhhmYp7mmMdDiKLPjeXI8bcnpUSeojZexrq9xH3LGEnfZpNqGrm5lAze08NUO
 1/UKf6Li99/3Zpe3sWqoXQCUBtC0Jy7Zh0+3EFwEaCSXi8h5h6YH3EeFsTAC2n47QlrMRlw=
X-Received: by 2002:a05:6000:4028:b0:391:2ab1:d4b8 with SMTP id
 ffacd0b85a97d-3a074e0efd6mr859031f8f.1.1745569061433; 
 Fri, 25 Apr 2025 01:17:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6cbIXolQS+v1W8kKfDd2qap93n7uHX4eGz19p8/zV2hhP2TLcyzd7t5uofpqhlq66/UdpGw==
X-Received: by 2002:a05:6000:4028:b0:391:2ab1:d4b8 with SMTP id
 ffacd0b85a97d-3a074e0efd6mr859013f8f.1.1745569061032; 
 Fri, 25 Apr 2025 01:17:41 -0700 (PDT)
Received: from localhost
 (p200300cbc70f69006c5680f80c146d2a.dip0.t-ipconnect.de.
 [2003:cb:c70f:6900:6c56:80f8:c14:6d2a])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3a073cc4153sm1649210f8f.57.2025.04.25.01.17.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Apr 2025 01:17:40 -0700 (PDT)
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
Subject: [PATCH v1 10/11] drm/i915: track_pfn() -> "pfnmap tracking"
Date: Fri, 25 Apr 2025 10:17:14 +0200
Message-ID: <20250425081715.1341199-11-david@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250425081715.1341199-1-david@redhat.com>
References: <20250425081715.1341199-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: YUCu8iZWw6GtybVbVzfY2ms1tPeP9UW2VUD1nFwuOhw_1745569061
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
 drivers/gpu/drm/i915/i915_mm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index 76e2801619f09..c33bd3d830699 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -100,7 +100,7 @@ int remap_io_mapping(struct vm_area_struct *vma,
 
 	GEM_BUG_ON((vma->vm_flags & EXPECTED_FLAGS) != EXPECTED_FLAGS);
 
-	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
+	/* We rely on prevalidation of the io-mapping to skip pfnmap tracking. */
 	r.mm = vma->vm_mm;
 	r.pfn = pfn;
 	r.prot = __pgprot((pgprot_val(iomap->prot) & _PAGE_CACHE_MASK) |
@@ -140,7 +140,7 @@ int remap_io_sg(struct vm_area_struct *vma,
 	};
 	int err;
 
-	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
+	/* We rely on prevalidation of the io-mapping to skip pfnmap tracking. */
 	GEM_BUG_ON((vma->vm_flags & EXPECTED_FLAGS) != EXPECTED_FLAGS);
 
 	while (offset >= r.sgt.max >> PAGE_SHIFT) {
-- 
2.49.0

