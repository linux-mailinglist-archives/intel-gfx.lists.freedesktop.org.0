Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /cjLNODhomkQ7wQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Feb 2026 13:38:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 259A61C2FE5
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Feb 2026 13:38:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FD3010E29D;
	Sat, 28 Feb 2026 12:38:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="lrbsrG0b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f73.google.com (mail-wm1-f73.google.com
 [209.85.128.73])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1C2010E158
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Feb 2026 12:38:51 +0000 (UTC)
Received: by mail-wm1-f73.google.com with SMTP id
 5b1f17b1804b1-48372facfedso26100605e9.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Feb 2026 04:38:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1772282330; x=1772887130;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=mOaqhQImVlbU+bIaPkzVliN+MSpqLdHsMK4C5p4HbTE=;
 b=lrbsrG0b8Q37SOHbOkCbIgTMy1CAzw5/Fgo5KDAzfp9foE1DPpsiKSt5OPCPbdE+iI
 1jx7Wgqa/6tjZoU90cPv6KP/YNSY9PM369At83ePyIr9N3JfJZ2A5mG4JsA3oZydwe7Q
 R7TsarVpR3TKVvtKFZWy90VFugu7oizdRTDaDGYPwrNxwCXu5l3q2i4/MX6ps6RpSpCN
 Yujl/1kckfAzd+dKY9xF5jc661IqGNpnLmXNZlgZgEU3ga1OicmHOH0tk8lrzEpHz4Sq
 CspSqpP/y3qQmy3qt+bKhWIP+WGWZT3y4ABdCi2EIiVYEbZw6YxyLxfCdLAkiiw+cFQi
 H8ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772282330; x=1772887130;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=mOaqhQImVlbU+bIaPkzVliN+MSpqLdHsMK4C5p4HbTE=;
 b=PvPBA1/0Nu2ZYtVbWEY6K/Zvp0Vqcq/r+Zc0TUdYgoQBse7SuPO7aCYEldZl/iRQIw
 LyA9fXGYx3ihuSDxXMXFe6pZDSjq/PWVinp0TkNUJKt66f6DF8PqDzedbnoM1WEK7TkK
 TOHvZ6VjLnGtLIe5rFLJrnkmzj4wuFpx8KOldvdqJ7RyRx2btniCm3TRocmmMINQlgOu
 YGG0YzlWoApLQ0hLiBC2ckUBWjWjLJOfGI1zcHNlRWYMgwaXkuUwXoHUvOaUQXuyZHIW
 liw/1V/LiDpQS9HLHrjI3txkGtZe8k8yeSHhbTYU2cZkrWvo3dHVojS925eeLovKA84O
 /Xkw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW3x3jd0YQ08P9CFdEAPqqno3wBtMVp4ha0r6mExVKVehp2c6uwz7IK8u3mXn2YRbg6dRHFUy+z5C8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzmVFijQ5p5SA+qOrWq8O3Y2pH50aB6rsLEV0Bw25t8IPg33koV
 YTvxNsXgRvSWLJQvdcNzYbe2G+Qp7oDYW+yGIMDncRqHfQ6dPUjPrDcB+aEkjt1jdN6E0Gy+c1x
 pIp/tpAj6PGf9oOJytA==
X-Received: from wmby19.prod.google.com ([2002:a05:600c:c053:b0:480:690c:88de])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:8b5b:b0:481:a662:b3f3 with SMTP id
 5b1f17b1804b1-483c990c263mr116931775e9.7.1772282329804; 
 Sat, 28 Feb 2026 04:38:49 -0800 (PST)
Date: Sat, 28 Feb 2026 12:38:48 +0000
In-Reply-To: <20260227200848.114019-3-david@kernel.org>
Mime-Version: 1.0
References: <20260227200848.114019-1-david@kernel.org>
 <20260227200848.114019-3-david@kernel.org>
Message-ID: <aaLh2BxSgC9Jl5iS@google.com>
Subject: Re: [PATCH v1 02/16] mm/memory: remove "zap_details" parameter from
 zap_page_range_single()
From: Alice Ryhl <aliceryhl@google.com>
To: "David Hildenbrand (Arm)" <david@kernel.org>
Cc: linux-kernel@vger.kernel.org, 
 "linux-mm @ kvack . org" <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>, 
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>, 
 Vlastimil Babka <vbabka@kernel.org>, Mike Rapoport <rppt@kernel.org>, 
 Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>,
 Jann Horn <jannh@google.com>, 
 Pedro Falcato <pfalcato@suse.de>, David Rientjes <rientjes@google.com>, 
 Shakeel Butt <shakeel.butt@linux.dev>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>, 
 Madhavan Srinivasan <maddy@linux.ibm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, 
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, 
 Claudio Imbrenda <imbrenda@linux.ibm.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>, 
 Gerald Schaefer <gerald.schaefer@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, 
 Vasily Gorbik <gor@linux.ibm.com>, Jarkko Sakkinen <jarkko@kernel.org>,
 Thomas Gleixner <tglx@kernel.org>, 
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Arve =?utf-8?B?SGrDuG5uZXbDpWc=?=" <arve@android.com>,
 Todd Kjos <tkjos@android.com>, 
 Christian Brauner <brauner@kernel.org>, Carlos Llamas <cmllamas@google.com>,
 Ian Abbott <abbotti@mev.co.uk>, 
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Jason Gunthorpe <jgg@ziepe.ca>,
 Leon Romanovsky <leon@kernel.org>, 
 Dimitri Sivanich <dimitri.sivanich@hpe.com>, Arnd Bergmann <arnd@arndb.de>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
 Andrii Nakryiko <andrii@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
 Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 Andy Lutomirski <luto@kernel.org>, 
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Eric Dumazet <edumazet@google.com>, 
 Neal Cardwell <ncardwell@google.com>, "David S. Miller" <davem@davemloft.net>, 
 David Ahern <dsahern@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, 
 Miguel Ojeda <ojeda@kernel.org>, linuxppc-dev@lists.ozlabs.org,
 kvm@vger.kernel.org, 
 linux-s390@vger.kernel.org, linux-sgx@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-rdma@vger.kernel.org, bpf@vger.kernel.org, 
 linux-perf-users@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 netdev@vger.kernel.org, rust-for-linux@vger.kernel.org, x86@kernel.org
Content-Type: text/plain; charset="utf-8"
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kvack.org,linux-foundation.org,oracle.com,kernel.org,google.com,suse.com,suse.de,linux.dev,infradead.org,linux.ibm.com,ellerman.id.au,redhat.com,alien8.de,linuxfoundation.org,android.com,mev.co.uk,visionengravers.com,linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,ziepe.ca,hpe.com,arndb.de,iogearbox.net,arm.com,davemloft.net,lists.ozlabs.org,lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:david@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mm@kvack.org,m:akpm@linux-foundation.org,m:lorenzo.stoakes@oracle.com,m:Liam.Howlett@oracle.com,m:vbabka@kernel.org,m:rppt@kernel.org,m:surenb@google.com,m:mhocko@suse.com,m:jannh@google.com,m:pfalcato@suse.de,m:rientjes@google.com,m:shakeel.butt@linux.dev,m:willy@infradead.org,m:maddy@linux.ibm.com,m:mpe@ellerman.id.au,m:borntraeger@linux.ibm.com,m:frankja@linux.ibm.com,m:imbrenda@linux.ibm.com,m:agordeev@linux.ibm.com,m:gerald.schaefer@linux.ibm.com,m:hca@linux.ibm.com,m:gor@linux.ibm.com,m:jarkko@kernel.org,m:tglx@kernel.org,m:mingo@redhat.com,m:bp@alien8.de,m:gregkh@linuxfoundation.org,m:arve@android.com,m:tkjos@android.com,m:brauner@kernel.org,m:cmllamas@google.com,m:abbotti@mev.co.uk,m:hsweeten@visionengravers.com,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:jgg@ziepe.ca,m:leon@kernel.org,m:
 dimitri.sivanich@hpe.com,m:arnd@arndb.de,m:ast@kernel.org,m:daniel@iogearbox.net,m:andrii@kernel.org,m:peterz@infradead.org,m:acme@kernel.org,m:namhyung@kernel.org,m:luto@kernel.org,m:vincenzo.frascino@arm.com,m:edumazet@google.com,m:ncardwell@google.com,m:davem@davemloft.net,m:dsahern@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:ojeda@kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:kvm@vger.kernel.org,m:linux-s390@vger.kernel.org,m:linux-sgx@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-rdma@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:netdev@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:x86@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[aliceryhl@google.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_GT_50(0.00)[73];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 259A61C2FE5
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 09:08:33PM +0100, David Hildenbrand (Arm) wrote:
> Nobody except memory.c should really set that parameter to non-NULL. So
> let's just drop it and make unmap_mapping_range_vma() use
> zap_page_range_single_batched() instead.
> 
> Signed-off-by: David Hildenbrand (Arm) <david@kernel.org>

> diff --git a/rust/kernel/mm/virt.rs b/rust/kernel/mm/virt.rs
> index da21d65ccd20..b8e59e4420f3 100644
> --- a/rust/kernel/mm/virt.rs
> +++ b/rust/kernel/mm/virt.rs
> @@ -124,7 +124,7 @@ pub fn zap_page_range_single(&self, address: usize, size: usize) {
>          // sufficient for this method call. This method has no requirements on the vma flags. The
>          // address range is checked to be within the vma.
>          unsafe {
> -            bindings::zap_page_range_single(self.as_ptr(), address, size, core::ptr::null_mut())
> +            bindings::zap_page_range_single(self.as_ptr(), address, size)
>          };

Please run rustfmt on Rust changes. Here, rustfmt leads to this being
formatted on a single line:

unsafe { bindings::zap_page_range_single(self.as_ptr(), address, size) };

with the above changed:

Acked-by: Alice Ryhl <aliceryhl@google.com> # Rust and Binder

Alice
