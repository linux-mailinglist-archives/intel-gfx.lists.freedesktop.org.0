Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A268CA9D198
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 21:32:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DE6410E999;
	Fri, 25 Apr 2025 19:32:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="SrM5Zp+o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B0AC10E9B0
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 19:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745609517;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nrYbbQSySK8OLKh12FO2t07RFwtdpfiRESaN7ZV7Leo=;
 b=SrM5Zp+omnsYNnpp2hNZN7OKKVpZw3Wiu7wzpjXyM1IrlJSuTUuf99LrWgyTMUc/S6m3xe
 e5jFOee/gqF7qW+4Fnyx1is1ugOdfioeQNa/LszOunI918OxkCdb3ua7a6b83sHKaiz3V5
 r9T0Jo0pySyZFPnYnOanTz2BrreOR5Y=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-454-MHzrhnI1N1-AE8h1eqeH3w-1; Fri, 25 Apr 2025 15:31:54 -0400
X-MC-Unique: MHzrhnI1N1-AE8h1eqeH3w-1
X-Mimecast-MFC-AGG-ID: MHzrhnI1N1-AE8h1eqeH3w_1745609514
Received: by mail-qv1-f72.google.com with SMTP id
 6a1803df08f44-6e91ee078aaso42075586d6.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 12:31:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745609514; x=1746214314;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nrYbbQSySK8OLKh12FO2t07RFwtdpfiRESaN7ZV7Leo=;
 b=wxZoDj2lINsTLZKVBfV5ohqk/OIrSDQfbsrZ4RUrbQQjfK36VjdscZ3xmpQTkeZz6R
 uJ/Cp8agQ9PJC2svzSltSibOnHk2mc7UIothKU2hk+yKU59/FDyYjYyvmhvXSn8R/6PS
 YBDDtekpF13wZiktv4wLH1BkiEmCYdffoD6ZuDrkVdbHfSCXFnlO8gKbF9cBWe2aRZzY
 54gKjQFe1u1h6m5M/Gh3hXunYsnFxn/2AxUXJhIJxjP0nrKpWcT/xkC06SIrTQKW4Gh0
 vRAdR9P7O3QwArg3DFx0xzFEjWeJyvyhsD3abSAxEEzIFovBZ0CLeCnClYH/xVFoJaOc
 Vmkw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVU3yE/zx0rLBxR6mklZgFmik2Uv+L9tvzfS0HeyEBHjopgqaQWYbASGXg9mSWodktmETwgSJCbZBQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwPum9miSPbZwosADBiTwe1YsGI/j8oCUnDmmtx+BRwPQlO/IZc
 tH85oLhzr5zZHSpRm6SeD2TfQCAog+jl8jzSfchDFdIBmLjUYzKnr9U/Ur+GPRKhyVqnoCq7qU4
 3DaWO0Cql3UNc3Yhu62xrdkngIoFR5o6vz5tB15jze3/kR4vYGZku4PQdLX3vir8mhw==
X-Gm-Gg: ASbGncsBwwPrSBARFesChUkuXSOguVVrztzYG8Q9V7GdCiBv4iMmOXQVhJrwqfDQ28S
 XOJh5pSOb/ZvANZOx2OwxQ4UfKWPxq2zlxsY3iuy9vigqaVUxqVszJPOI3d1PZEBSiueSAEovVR
 7wKKz9suDFJeUV5ESdHe9ITwSW4wCWrtcRZLcdwFrWDu9hP0E0fkTdb0LtoOsjjT8/7cvkpmcbE
 BznHRupSPN+O0DFAwRhytPHl0J2g7WGcAmGvI8ia0wVn09IhqbvQnqkC045ycgFJDouYLOjFSZv
 7rY=
X-Received: by 2002:a05:6214:260e:b0:6e4:4011:9df7 with SMTP id
 6a1803df08f44-6f4cb9d3063mr67389926d6.16.1745609513945; 
 Fri, 25 Apr 2025 12:31:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHuFeye1Pg4uChOid/ZXXFZAWI36zPtd4Gkr5VYk4K8JYNC09QMimMlctuGeX7CWMMP3iJGqQ==
X-Received: by 2002:a05:6214:260e:b0:6e4:4011:9df7 with SMTP id
 6a1803df08f44-6f4cb9d3063mr67389486d6.16.1745609513528; 
 Fri, 25 Apr 2025 12:31:53 -0700 (PDT)
Received: from x1.local ([85.131.185.92]) by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6f4c0aae675sm25488566d6.100.2025.04.25.12.31.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Apr 2025 12:31:52 -0700 (PDT)
Date: Fri, 25 Apr 2025 15:31:48 -0400
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
Subject: Re: [PATCH v1 02/11] mm: convert track_pfn_insert() to
 pfnmap_sanitize_pgprot()
Message-ID: <aAvjJOmvm5GsZ-JN@x1.local>
References: <20250425081715.1341199-1-david@redhat.com>
 <20250425081715.1341199-3-david@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20250425081715.1341199-3-david@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: gUFe94mvN_tB5bbqjKkE7XYLEgJOeKlo_5pMaOfulDU_1745609514
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

On Fri, Apr 25, 2025 at 10:17:06AM +0200, David Hildenbrand wrote:
> ... by factoring it out from track_pfn_remap().
> 
> For PMDs/PUDs, actually check the full range, and trigger a fallback
> if we run into this "different memory types / cachemodes" scenario.

The current patch looks like to still pass PAGE_SIZE into the new helper at
all track_pfn_insert() call sites, so it seems this comment does not 100%
match with the code?  Or I may have misread somewhere.

Maybe it's still easier to keep the single-pfn lookup to never fail..  more
below.

> 
> Add some documentation.
> 
> Will checking each page result in undesired overhead? We'll have to
> learn. Not checking each page looks wrong, though. Maybe we could
> optimize the lookup internally.
> 
> Signed-off-by: David Hildenbrand <david@redhat.com>
> ---
>  arch/x86/mm/pat/memtype.c | 24 ++++++++----------------
>  include/linux/pgtable.h   | 28 ++++++++++++++++++++--------
>  mm/huge_memory.c          |  7 +++++--
>  mm/memory.c               |  4 ++--
>  4 files changed, 35 insertions(+), 28 deletions(-)
> 
> diff --git a/arch/x86/mm/pat/memtype.c b/arch/x86/mm/pat/memtype.c
> index edec5859651d6..193e33251b18f 100644
> --- a/arch/x86/mm/pat/memtype.c
> +++ b/arch/x86/mm/pat/memtype.c
> @@ -1031,7 +1031,6 @@ int track_pfn_remap(struct vm_area_struct *vma, pgprot_t *prot,
>  		    unsigned long pfn, unsigned long addr, unsigned long size)
>  {
>  	resource_size_t paddr = (resource_size_t)pfn << PAGE_SHIFT;
> -	enum page_cache_mode pcm;
>  
>  	/* reserve the whole chunk starting from paddr */
>  	if (!vma || (addr == vma->vm_start
> @@ -1044,13 +1043,17 @@ int track_pfn_remap(struct vm_area_struct *vma, pgprot_t *prot,
>  		return ret;
>  	}
>  
> +	return pfnmap_sanitize_pgprot(pfn, size, prot);
> +}
> +
> +int pfnmap_sanitize_pgprot(unsigned long pfn, unsigned long size, pgprot_t *prot)
> +{
> +	resource_size_t paddr = (resource_size_t)pfn << PAGE_SHIFT;
> +	enum page_cache_mode pcm;
> +
>  	if (!pat_enabled())
>  		return 0;
>  
> -	/*
> -	 * For anything smaller than the vma size we set prot based on the
> -	 * lookup.
> -	 */
>  	pcm = lookup_memtype(paddr);
>  
>  	/* Check memtype for the remaining pages */
> @@ -1065,17 +1068,6 @@ int track_pfn_remap(struct vm_area_struct *vma, pgprot_t *prot,
>  	return 0;
>  }
>  
> -void track_pfn_insert(struct vm_area_struct *vma, pgprot_t *prot, pfn_t pfn)
> -{
> -	enum page_cache_mode pcm;
> -
> -	if (!pat_enabled())
> -		return;
> -
> -	pcm = lookup_memtype(pfn_t_to_phys(pfn));
> -	pgprot_set_cachemode(prot, pcm);
> -}
> -
>  /*
>   * untrack_pfn is called while unmapping a pfnmap for a region.
>   * untrack can be called for a specific region indicated by pfn and size or
> diff --git a/include/linux/pgtable.h b/include/linux/pgtable.h
> index b50447ef1c921..91aadfe2515a5 100644
> --- a/include/linux/pgtable.h
> +++ b/include/linux/pgtable.h
> @@ -1500,13 +1500,10 @@ static inline int track_pfn_remap(struct vm_area_struct *vma, pgprot_t *prot,
>  	return 0;
>  }
>  
> -/*
> - * track_pfn_insert is called when a _new_ single pfn is established
> - * by vmf_insert_pfn().
> - */
> -static inline void track_pfn_insert(struct vm_area_struct *vma, pgprot_t *prot,
> -				    pfn_t pfn)
> +static inline int pfnmap_sanitize_pgprot(unsigned long pfn, unsigned long size,
> +		pgprot_t *prot)
>  {
> +	return 0;
>  }
>  
>  /*
> @@ -1556,8 +1553,23 @@ static inline void untrack_pfn_clear(struct vm_area_struct *vma)
>  extern int track_pfn_remap(struct vm_area_struct *vma, pgprot_t *prot,
>  			   unsigned long pfn, unsigned long addr,
>  			   unsigned long size);
> -extern void track_pfn_insert(struct vm_area_struct *vma, pgprot_t *prot,
> -			     pfn_t pfn);
> +
> +/**
> + * pfnmap_sanitize_pgprot - sanitize the pgprot for a pfn range

Nit: s/sanitize/update|setup|.../?

But maybe you have good reason to use sanitize.  No strong opinions.

> + * @pfn: the start of the pfn range
> + * @size: the size of the pfn range
> + * @prot: the pgprot to sanitize
> + *
> + * Sanitize the given pgprot for a pfn range, for example, adjusting the
> + * cachemode.
> + *
> + * This function cannot fail for a single page, but can fail for multiple
> + * pages.
> + *
> + * Returns 0 on success and -EINVAL on error.
> + */
> +int pfnmap_sanitize_pgprot(unsigned long pfn, unsigned long size,
> +		pgprot_t *prot);
>  extern int track_pfn_copy(struct vm_area_struct *dst_vma,
>  		struct vm_area_struct *src_vma, unsigned long *pfn);
>  extern void untrack_pfn_copy(struct vm_area_struct *dst_vma,
> diff --git a/mm/huge_memory.c b/mm/huge_memory.c
> index fdcf0a6049b9f..b8ae5e1493315 100644
> --- a/mm/huge_memory.c
> +++ b/mm/huge_memory.c
> @@ -1455,7 +1455,9 @@ vm_fault_t vmf_insert_pfn_pmd(struct vm_fault *vmf, pfn_t pfn, bool write)
>  			return VM_FAULT_OOM;
>  	}
>  
> -	track_pfn_insert(vma, &pgprot, pfn);
> +	if (pfnmap_sanitize_pgprot(pfn_t_to_pfn(pfn), PAGE_SIZE, &pgprot))
> +		return VM_FAULT_FALLBACK;

Would "pgtable" leak if it fails?  If it's PAGE_SIZE, IIUC it won't ever
trigger, though.

Maybe we could have a "void pfnmap_sanitize_pgprot_pfn(&pgprot, pfn)" to
replace track_pfn_insert() and never fail?  Dropping vma ref is definitely
a win already in all cases.

> +
>  	ptl = pmd_lock(vma->vm_mm, vmf->pmd);
>  	error = insert_pfn_pmd(vma, addr, vmf->pmd, pfn, pgprot, write,
>  			pgtable);
> @@ -1577,7 +1579,8 @@ vm_fault_t vmf_insert_pfn_pud(struct vm_fault *vmf, pfn_t pfn, bool write)
>  	if (addr < vma->vm_start || addr >= vma->vm_end)
>  		return VM_FAULT_SIGBUS;
>  
> -	track_pfn_insert(vma, &pgprot, pfn);
> +	if (pfnmap_sanitize_pgprot(pfn_t_to_pfn(pfn), PAGE_SIZE, &pgprot))
> +		return VM_FAULT_FALLBACK;
>  
>  	ptl = pud_lock(vma->vm_mm, vmf->pud);
>  	insert_pfn_pud(vma, addr, vmf->pud, pfn, write);
> diff --git a/mm/memory.c b/mm/memory.c
> index 424420349bd3c..c737a8625866a 100644
> --- a/mm/memory.c
> +++ b/mm/memory.c
> @@ -2563,7 +2563,7 @@ vm_fault_t vmf_insert_pfn_prot(struct vm_area_struct *vma, unsigned long addr,
>  	if (!pfn_modify_allowed(pfn, pgprot))
>  		return VM_FAULT_SIGBUS;
>  
> -	track_pfn_insert(vma, &pgprot, __pfn_to_pfn_t(pfn, PFN_DEV));
> +	pfnmap_sanitize_pgprot(pfn, PAGE_SIZE, &pgprot);
>  
>  	return insert_pfn(vma, addr, __pfn_to_pfn_t(pfn, PFN_DEV), pgprot,
>  			false);
> @@ -2626,7 +2626,7 @@ static vm_fault_t __vm_insert_mixed(struct vm_area_struct *vma,
>  	if (addr < vma->vm_start || addr >= vma->vm_end)
>  		return VM_FAULT_SIGBUS;
>  
> -	track_pfn_insert(vma, &pgprot, pfn);
> +	pfnmap_sanitize_pgprot(pfn_t_to_pfn(pfn), PAGE_SIZE, &pgprot);
>  
>  	if (!pfn_modify_allowed(pfn_t_to_pfn(pfn), pgprot))
>  		return VM_FAULT_SIGBUS;
> -- 
> 2.49.0
> 

-- 
Peter Xu

