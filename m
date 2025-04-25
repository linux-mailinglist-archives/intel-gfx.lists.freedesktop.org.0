Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16094A9D2E4
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 22:23:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8399010E9CB;
	Fri, 25 Apr 2025 20:23:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="SqwGWUdH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD92510E9CA
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 20:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745612618;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Lnuw5o7CPzgYgSg30nFZeV0xqdVhh4HEfg3UbcumuG4=;
 b=SqwGWUdH6LPEIKz4sShX6NCXAxf5PW2M/kD1rTkUTpzf3/L5h9336WexrL0t4ZPSxPtqF/
 6mkpQ+snZHKP649zeU6GECVv4ArReXF7z9uFQdeYUkMWN+oGTb5+k4AlSc1zb5/KQ+Dkyk
 b2CUeYPBYR6bp8A9YkvLJS+v04JJgvc=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-523-IChjZlEOMH6TuIuPhuEf7Q-1; Fri, 25 Apr 2025 16:23:37 -0400
X-MC-Unique: IChjZlEOMH6TuIuPhuEf7Q-1
X-Mimecast-MFC-AGG-ID: IChjZlEOMH6TuIuPhuEf7Q_1745612617
Received: by mail-qv1-f72.google.com with SMTP id
 6a1803df08f44-6e8f9450b19so55975846d6.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 13:23:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745612617; x=1746217417;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Lnuw5o7CPzgYgSg30nFZeV0xqdVhh4HEfg3UbcumuG4=;
 b=Xk4cDLyFLqAbtaYllRrRoS41hRkfjEj8b0WKGkznV53UMd4x7/18XA6H63G55qQxx8
 L2zdtrp2PihZA3+2n9/A4vfeIaAnqBevYpPjG340AK5pStvBbD1IRUeHtxt9TOQ8LVth
 J90iqEe+czVRd5caefl5bllg/TkIFnad2MN2QTUWRd1vUcpS/+X80fsS2nuevxgLNiuj
 7X3M9HGzzxDLOmWZkl5o8U7fixP79zeXMbSY0yleehVF90ohD2EcLbt0qNBnpkinwLlL
 CP00FzJ4y1E2W0t1Ss2uaadkl8g3Ss6D9wSetVXelkEXXmgodSf1Cac+AdYM49zy2cqe
 0Riw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUDHf0mUq+xg1eN1lDFOxBcaWXr2aMmAYkHZsChJYTsVTNVfKoc3JWagtU8uycHLPvROcpfkaelUPg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YynN9XR2lflNRc1sTYtG/S4ERHlPTfqbEkZPCyrHf1hN4DVbjPe
 a6eYhTNJyxV9/8Q3mMNDeAfTSyj6TG+3au/QaAwnPC8BBzxy6JBr6dWTQLOGMyaK+J/VhFnVVDz
 fGEwmjEW9jhI1zMVzr9j+e4oNzTY9OMDNJQlKfzjtUOsPgJ3TksPEA6SUy0J6OEhgww==
X-Gm-Gg: ASbGncu1JlDS25rbcT5O0lAJ1pwg3Qfbi/WVMdFNTEuxv5/7rmMsKGOqxvxVYLipK3Y
 Nraf9nSJrg3yvKh7FRxJPKafThDn4OBDm7+As4VAcM+zRmbt8w4GqeTCJrmdVD5MdbwrkQ3LF1Y
 XL7h81pL/oYFRQRsDcJ98HbBHlNP9of/OjUfYRlh/C213lcQo2nEt2574iq1p7BPwS87lcBGkoa
 6lvxYbP9K7l3LdgXHBEiRoj3jfvywVzIM0sZvmusFtVKAaGYilsna1ZPo1B9LzajC3dmfZeF56f
 C0c=
X-Received: by 2002:a05:6214:ca2:b0:6f4:c939:a3f5 with SMTP id
 6a1803df08f44-6f4cc38cae8mr50223886d6.17.1745612616900; 
 Fri, 25 Apr 2025 13:23:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHAbB9VBhNfVFkn16GQ1jhi8yEPGvnD0kLIi/1k7vzQQf+ePUU4ZzjJOht8FgMwVJBxtCN+iQ==
X-Received: by 2002:a05:6214:ca2:b0:6f4:c939:a3f5 with SMTP id
 6a1803df08f44-6f4cc38cae8mr50223586d6.17.1745612616494; 
 Fri, 25 Apr 2025 13:23:36 -0700 (PDT)
Received: from x1.local ([85.131.185.92]) by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6f4c0aaf9a3sm25917506d6.98.2025.04.25.13.23.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Apr 2025 13:23:35 -0700 (PDT)
Date: Fri, 25 Apr 2025 16:23:31 -0400
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
Message-ID: <aAvvQ1h9bg11hiqI@x1.local>
References: <20250425081715.1341199-1-david@redhat.com>
 <20250425081715.1341199-6-david@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20250425081715.1341199-6-david@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 1RtGVc7gw2tlwH8czLr4kBweocA7UFrssC8VmivstTA_1745612617
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

On Fri, Apr 25, 2025 at 10:17:09AM +0200, David Hildenbrand wrote:
> Let's use our new interface. In remap_pfn_range(), we'll now decide
> whether we have to track (full VMA covered) or only sanitize the pgprot
> (partial VMA covered).
> 
> Remember what we have to untrack by linking it from the VMA. When
> duplicating VMAs (e.g., splitting, mremap, fork), we'll handle it similar
> to anon VMA names, and use a kref to share the tracking.
> 
> Once the last VMA un-refs our tracking data, we'll do the untracking,
> which simplifies things a lot and should sort our various issues we saw
> recently, for example, when partially unmapping/zapping a tracked VMA.
> 
> This change implies that we'll keep tracking the original PFN range even
> after splitting + partially unmapping it: not too bad, because it was
> not working reliably before. The only thing that kind-of worked before
> was shrinking such a mapping using mremap(): we managed to adjust the
> reservation in a hacky way, now we won't adjust the reservation but
> leave it around until all involved VMAs are gone.
> 
> Signed-off-by: David Hildenbrand <david@redhat.com>
> ---
>  include/linux/mm_inline.h |  2 +
>  include/linux/mm_types.h  | 11 ++++++
>  kernel/fork.c             | 54 ++++++++++++++++++++++++--
>  mm/memory.c               | 81 +++++++++++++++++++++++++++++++--------
>  mm/mremap.c               |  4 --
>  5 files changed, 128 insertions(+), 24 deletions(-)
> 
> diff --git a/include/linux/mm_inline.h b/include/linux/mm_inline.h
> index f9157a0c42a5c..89b518ff097e6 100644
> --- a/include/linux/mm_inline.h
> +++ b/include/linux/mm_inline.h
> @@ -447,6 +447,8 @@ static inline bool anon_vma_name_eq(struct anon_vma_name *anon_name1,
>  
>  #endif  /* CONFIG_ANON_VMA_NAME */
>  
> +void pfnmap_track_ctx_release(struct kref *ref);
> +
>  static inline void init_tlb_flush_pending(struct mm_struct *mm)
>  {
>  	atomic_set(&mm->tlb_flush_pending, 0);
> diff --git a/include/linux/mm_types.h b/include/linux/mm_types.h
> index 56d07edd01f91..91124761cfda8 100644
> --- a/include/linux/mm_types.h
> +++ b/include/linux/mm_types.h
> @@ -764,6 +764,14 @@ struct vma_numab_state {
>  	int prev_scan_seq;
>  };
>  
> +#ifdef __HAVE_PFNMAP_TRACKING
> +struct pfnmap_track_ctx {
> +	struct kref kref;
> +	unsigned long pfn;
> +	unsigned long size;
> +};
> +#endif
> +
>  /*
>   * This struct describes a virtual memory area. There is one of these
>   * per VM-area/task. A VM area is any part of the process virtual memory
> @@ -877,6 +885,9 @@ struct vm_area_struct {
>  	struct anon_vma_name *anon_name;
>  #endif
>  	struct vm_userfaultfd_ctx vm_userfaultfd_ctx;
> +#ifdef __HAVE_PFNMAP_TRACKING
> +	struct pfnmap_track_ctx *pfnmap_track_ctx;
> +#endif

So this was originally the small concern (or is it small?) that this will
grow every vma on x86, am I right?

After all pfnmap vmas are the minority, I was thinking whether we could
work it out without extending vma struct.

I had a quick thought quite a while ago, but never tried out (it was almost
off-track since vfio switched away from remap_pfn_range..), which is to
have x86 maintain its own mapping of vma <-> pfn tracking using a global
stucture.  After all, the memtype code did it already with the
memtype_rbroot, so I was thinking if vma info can be memorized as well, so
as to get rid of get_pat_info() too.

Maybe it also needs the 2nd layer like what you did with the track ctx, but
the tree maintains the mapping instead of adding the ctx pointer into vma.

Maybe it could work with squashing the two layers (or say, extending
memtype rbtree), but maybe not..

It could make it slightly slower than vma->pfnmap_track_ctx ref when
looking up pfn when holding a vma ref, but I assume it's ok considering
that track/untrack should be slow path for pfnmaps, and pfnmaps shouldn't
be a huge lot.

I didn't think further, but if that'll work it'll definitely avoids the
additional fields on x86 vmas.  I'm curious whether you explored that
direction, or maybe it's a known decision that the 8 bytes isn't a concern.

Thanks,

-- 
Peter Xu

