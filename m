Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62952A9F5B5
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 18:24:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2D0F10E60C;
	Mon, 28 Apr 2025 16:24:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="aJpdQ0V9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ED2D10E60C
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Apr 2025 16:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745857469;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=KRdiWHlG77Us6l2oFM6nu2eUggr09dOOElY1pvowm4s=;
 b=aJpdQ0V9ZxPSTTOwZ4GMj4oiAIJEoR7vBQM1KeADhsY42PV4K3a4q5/1vYTnjKRKWAE7wL
 B+eArxsWeIootTRZ0IshGaQShHSFSU1aLOIQ9M4DsSsQXJNeFZWD9QB6rgWzsVNiTfHZ50
 LEfrC0jslxwTMX7bNd2D3bmuIJpH5as=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-538-r-_OokAoOEuBy7giJ-zlVw-1; Mon, 28 Apr 2025 12:24:27 -0400
X-MC-Unique: r-_OokAoOEuBy7giJ-zlVw-1
X-Mimecast-MFC-AGG-ID: r-_OokAoOEuBy7giJ-zlVw_1745857467
Received: by mail-qt1-f200.google.com with SMTP id
 d75a77b69052e-476870bad3bso75623271cf.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Apr 2025 09:24:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745857467; x=1746462267;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KRdiWHlG77Us6l2oFM6nu2eUggr09dOOElY1pvowm4s=;
 b=dpwL708f7tkCl+veVd4owup9hnm6fQCbf0huPaqFLXcjhwy4okuE1M2ch6VXDE/rG8
 rLFgxYn4O2qGDFvTv0irmPSghlwoeCnk0ImDmRMNZz8t+9rfFG3PhhVmd7cSXRG7HqAm
 su+B/n5vQaQTXVshcH6jpJ1u+WmU2TYn/Sq0I0R8QfeuC4xZ54dSE4M6xQzNeezM1QTD
 3Eo2QqgLSgpRUm3/O44RgCD8gKUQjlr40wGMs7KZi4grFLnl17OowB1F96ciZA83a5H/
 aKsF34dXkm8l7cTpbtGBL7WlVwm0jbxjBXebRHOUAXqDEHzRJUPhXxgfgHLZiuuxhPg9
 PhiA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU/dwuVlXeuVutqBOpv0ektkscGfvokqOvySzzMV0wOOQgjyxrPgTpArNGWyZ7qlDAhzyqA69j3JxU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyFWYGL1KuwEJ/MU2VV6WBXY3jgsGTDRX+rS8qahAH+IpIen1gV
 Tkqe8g4eQl1D/JPOucD1tP1DxCvYv5cBA+h27amRsxAapHdm7PI6H9dGjh7nS1cNPbRgh/6tOWg
 ZDouerJe4pH9ubAWYq8ITvAbrof/D8aqRBVttVFChr9kB4g/CGdEncMKyek+vF+ylSw==
X-Gm-Gg: ASbGnct8Ng24tGljIFqSvsR1rM6no8LorVGpt2avYEWWTwZTAEsJyxvMW+4G38JQFWQ
 wburdUsHt6wmNM4Ym6U2KSc2LyRpdPgxeILZIuUP7/jioDs0740msxlBGJ8Uc7uROslLNLVANZ8
 zFCL7H/Z4xtRJBif0BVf8EkoZjDGxmQxMoBt/Fyh90Qaj5P2iDZgdAuHX4QgsnzCRIDC7ebxXwI
 xN9aiVWlhzcxUd+mIkb9V7yUCNS42OO4OlpDH30bo7LxukclX88TB1EIrEEhsieWUy4TCvxExoi
 X2Y=
X-Received: by 2002:ac8:5885:0:b0:476:8ee8:d8a1 with SMTP id
 d75a77b69052e-48025238433mr189998891cf.45.1745857467105; 
 Mon, 28 Apr 2025 09:24:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEbtfAYJXqWijuqC9qE1XAYSFE+Ms0Ul7NtVdmGjB5I/RjjP9FCiSLL88Eit0raUnSdKc6qiA==
X-Received: by 2002:ac8:5885:0:b0:476:8ee8:d8a1 with SMTP id
 d75a77b69052e-48025238433mr189998431cf.45.1745857466831; 
 Mon, 28 Apr 2025 09:24:26 -0700 (PDT)
Received: from x1.local ([85.131.185.92]) by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-47e9eaf264dsm70223561cf.10.2025.04.28.09.24.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Apr 2025 09:24:26 -0700 (PDT)
Date: Mon, 28 Apr 2025 12:24:22 -0400
From: Peter Xu <peterx@redhat.com>
To: David Hildenbrand <david@redhat.com>
Cc: linux-kernel@vger.kernel.org, linux-mm@kvack.org, x86@kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-trace-kernel@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Andy Lutomirski <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Andrew Morton <akpm@linux-foundation.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>,
 Pedro Falcato <pfalcato@suse.de>
Subject: Re: [PATCH v1 05/11] mm: convert VM_PFNMAP tracking to
 pfnmap_track() + pfnmap_untrack()
Message-ID: <aA-rtji7ujQgckbM@x1.local>
References: <20250425081715.1341199-1-david@redhat.com>
 <20250425081715.1341199-6-david@redhat.com>
 <aAvvQ1h9bg11hiqI@x1.local>
 <bbadf008-9ffc-4628-9809-2d8cf104a424@redhat.com>
 <aA-n9hvSX9JLsRM-@x1.local>
 <7a26e29c-d889-450a-a5e1-ce671f09e4c8@redhat.com>
MIME-Version: 1.0
In-Reply-To: <7a26e29c-d889-450a-a5e1-ce671f09e4c8@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: XZVAR32t3jM2fLS3_UBdGm0ZBzA0ZjhqAdcBJJKFsNQ_1745857467
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
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

On Mon, Apr 28, 2025 at 06:16:21PM +0200, David Hildenbrand wrote:
> > Probably due to what config you have.  E.g., when I'm looking mine it's
> > much bigger and already consuming 256B, but it's because I enabled more
> > things (userfaultfd, lockdep, etc.).
> 
> Note that I enabled everything that you would expect on a production system
> (incld. userfaultfd, mempolicy, per-vma locks), so I didn't enable lockep.

I still doubt whether you at least enabled userfaultfd, e.g., your previous
paste has:

  struct vm_userfaultfd_ctx  vm_userfaultfd_ctx;   /*   176     0 */

Not something that matters.. but just in case you didn't use the expected
config file you wanted to use..

-- 
Peter Xu

