Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F705A9F587
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 18:21:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8DBA10E606;
	Mon, 28 Apr 2025 16:21:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="RP11Cptf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE28810E608
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Apr 2025 16:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745857284;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ICKzzB8taBJD0eGbxcxv8f4DsFK3m+kwUBskNGBQM7I=;
 b=RP11Cptf6B2oHHbDG8zp9ipsIcmI0sOuu+wB7F1ZY5+EObDRdVAYbJ2vKTOFfsNcS5TtUw
 3lEnPW2aeI0UPi2WCt2WODN5ZhwlibjfOKpc9+fci5eUaf3wvZ1/g/wvCbag0QUUEmU0sP
 4OY6XeoRppztbG/11vOUkNIWxxJ6TXk=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-83-QwxJa6q2P5yMhegfxtVO-w-1; Mon, 28 Apr 2025 12:21:22 -0400
X-MC-Unique: QwxJa6q2P5yMhegfxtVO-w-1
X-Mimecast-MFC-AGG-ID: QwxJa6q2P5yMhegfxtVO-w_1745857281
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-6e8f9057432so101021996d6.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Apr 2025 09:21:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745857281; x=1746462081;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ICKzzB8taBJD0eGbxcxv8f4DsFK3m+kwUBskNGBQM7I=;
 b=SU3NC0U2PDPpNryD7dpEQEWtUv9h6PKnifGcVNbAw3q644dBXfd+XcvCH+CMK63iB2
 yX+BYT21UKSE/uwpjolvIRH+jF5XTaZgmn0AT/BrETbHYNnjwykQlIQPQ7pLUE2KaBkn
 jUYhqj+GyrO9LyuytwrKN6JuHSgESYsKH/GVUJTK6fXddt3VDeTqAz9nyqwCoDFAUBWO
 vPyPyillRZCjpVxCRJhxcBzMveZpjiHEnz2WnuBRja/d6hk+6HQFodNNIvMJnY3p4m8C
 4EokMAFkfg1cORiktaBW2CqrD4c+KrYsiuzHwAWQ2sMpLl2my8Cuxk+7neiLrYUTY2t/
 JLzQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWpx1uByZcpHb42PM6BJ8YLWUJvaZrgbEie+dXKmrbxkvni9OBhOzmWTUKFdEwTRjXSgQe3CPLYDdQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx0hE3RvHNXiW2qIpk7K+1IL3rhnVJ42Io3Y+Bmc6V6G3np8E9H
 xCgvWEIIVnYaweSRygxHLW3yNq4wav41O3eHfre+lMabzkV2FkpjBZmyl93qVmkcgtfbJzJiwtZ
 l7PrjXcpQqTy0IdejFkl4H1hWQcCDhyugO9iMikx20+QJTa95xGwATdg2g5wPVnBwCQ==
X-Gm-Gg: ASbGncuAjEu6BXP98jahPbyCI26kPuHoGSG/onrWUBeDE8daLLScCZ7a6B2mzTo9Dkv
 5wN5/4PHLCviY87M09TLPu/uA0SGsGoBbeIGN8+bkWujcRAYf2KZtf68p1LVudAsrlVGkqeQmGg
 1CWDBajyxE18Qb9xme9D0FsP3795LYPfr72H8wOFsKnho89JVBwH3D/mZaJUGivOxlsvCNw+G9X
 nrSj2jN3+6RYnJAbbHi0xXY4KOggpeB/RkckicNpMJnCYpUagV/QxIAqlIdY/Kg8wVtGpfxbvp3
 0YQ=
X-Received: by 2002:a05:620a:19a3:b0:7c5:7a03:8467 with SMTP id
 af79cd13be357-7c9668d1d61mr1640814585a.55.1745857281501; 
 Mon, 28 Apr 2025 09:21:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQz1zkMFXlMEPUAS7D8yAHGiL/XnLPod9B0w30kVOxZ+K3YH+CRaciRSMW1T3Yxr1P4D1AmQ==
X-Received: by 2002:a05:620a:19a3:b0:7c5:7a03:8467 with SMTP id
 af79cd13be357-7c9668d1d61mr1640808385a.55.1745857280905; 
 Mon, 28 Apr 2025 09:21:20 -0700 (PDT)
Received: from x1.local ([85.131.185.92]) by smtp.gmail.com with ESMTPSA id
 af79cd13be357-7c958e9fdaesm639851585a.95.2025.04.28.09.21.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Apr 2025 09:21:20 -0700 (PDT)
Date: Mon, 28 Apr 2025 12:21:16 -0400
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
Message-ID: <aA-q_PrThAw5v1PF@x1.local>
References: <20250425081715.1341199-1-david@redhat.com>
 <20250425081715.1341199-3-david@redhat.com>
 <aAvjJOmvm5GsZ-JN@x1.local>
 <78f88303-6b00-42cf-8977-bf7541fa45a9@redhat.com>
 <aAwh6n058Hh490io@x1.local>
 <75998f7c-93d2-4b98-bb53-8d858b2c108e@redhat.com>
MIME-Version: 1.0
In-Reply-To: <75998f7c-93d2-4b98-bb53-8d858b2c108e@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: TR4_j2WMckqJwl51hNbJhCay42xOTFVIim86GkbIGfU_1745857281
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

On Mon, Apr 28, 2025 at 04:58:46PM +0200, David Hildenbrand wrote:
> 
> > > What it does on PAT (only implementation so far ...) is looking up the
> > > memory type to select the caching mode that can be use.
> > > 
> > > "sanitize" was IMHO a good fit, because we must make sure that we don't use
> > > the wrong caching mode.
> > > 
> > > update/setup/... don't make that quite clear. Any other suggestions?
> > 
> > I'm very poor on naming.. :( So far anything seems slightly better than
> > sanitize to me, as the word "sanitize" is actually also used in memtype.c
> > for other purpose.. see sanitize_phys().
> 
> Sure, one can sanitize a lot of things. Here it's the cachemode/pgrpot, in
> the other functions it's an address.
> 
> Likely we should just call it pfnmap_X_cachemode()/
> 
> Set/update don't really fit for X in case pfnmap_X_cachemode() is a NOP.
> 
> pfnmap_setup_cachemode() ? Hm.

Sounds good here.

> 
> > 
> > > 
> > > > 
> > > > > + * @pfn: the start of the pfn range
> > > > > + * @size: the size of the pfn range
> > > > > + * @prot: the pgprot to sanitize
> > > > > + *
> > > > > + * Sanitize the given pgprot for a pfn range, for example, adjusting the
> > > > > + * cachemode.
> > > > > + *
> > > > > + * This function cannot fail for a single page, but can fail for multiple
> > > > > + * pages.
> > > > > + *
> > > > > + * Returns 0 on success and -EINVAL on error.
> > > > > + */
> > > > > +int pfnmap_sanitize_pgprot(unsigned long pfn, unsigned long size,
> > > > > +		pgprot_t *prot);
> > > > >    extern int track_pfn_copy(struct vm_area_struct *dst_vma,
> > > > >    		struct vm_area_struct *src_vma, unsigned long *pfn);
> > > > >    extern void untrack_pfn_copy(struct vm_area_struct *dst_vma,
> > > > > diff --git a/mm/huge_memory.c b/mm/huge_memory.c
> > > > > index fdcf0a6049b9f..b8ae5e1493315 100644
> > > > > --- a/mm/huge_memory.c
> > > > > +++ b/mm/huge_memory.c
> > > > > @@ -1455,7 +1455,9 @@ vm_fault_t vmf_insert_pfn_pmd(struct vm_fault *vmf, pfn_t pfn, bool write)
> > > > >    			return VM_FAULT_OOM;
> > > > >    	}
> > > > > -	track_pfn_insert(vma, &pgprot, pfn);
> > > > > +	if (pfnmap_sanitize_pgprot(pfn_t_to_pfn(pfn), PAGE_SIZE, &pgprot))
> > > > > +		return VM_FAULT_FALLBACK;
> > > > 
> > > > Would "pgtable" leak if it fails?  If it's PAGE_SIZE, IIUC it won't ever
> > > > trigger, though.
> > > > 
> > > > Maybe we could have a "void pfnmap_sanitize_pgprot_pfn(&pgprot, pfn)" to
> > > > replace track_pfn_insert() and never fail?  Dropping vma ref is definitely
> > > > a win already in all cases.
> > > 
> > > It could be a simple wrapper around pfnmap_sanitize_pgprot(), yes. That's
> > > certainly helpful for the single-page case.
> > > 
> > > Regarding never failing here: we should check the whole range. We have to
> > > make sure that none of the pages has a memory type / caching mode that is
> > > incompatible with what we setup.
> > 
> > Would it happen in real world?
> > > IIUC per-vma registration needs to happen first, which checks for
> memtype
> > conflicts in the first place, or reserve_pfn_range() could already have
> > failed.
> > > Here it's the fault path looking up the memtype, so I would expect it is
> > guaranteed all pfns under the same vma is following the verified (and same)
> > memtype?
> 
> The whole point of track_pfn_insert() is that it is used when we *don't* use
> reserve_pfn_range()->track_pfn_remap(), no?
> 
> track_pfn_remap() would check the whole range that gets mapped, so
> track_pfn_insert() user must similarly check the whole range that gets
> mapped.
> 
> Note that even track_pfn_insert() is already pretty clear on the intended
> usage: "called when a _new_ single pfn is established"

We need to define "new" then..  But I agree it's not crystal clear at
least.  I think I just wasn't the first to assume it was reserved, see this
(especially, the "Expectation" part..):

commit 5180da410db6369d1f95c9014da1c9bc33fb043e
Author: Suresh Siddha <suresh.b.siddha@intel.com>
Date:   Mon Oct 8 16:28:29 2012 -0700

    x86, pat: separate the pfn attribute tracking for remap_pfn_range and vm_insert_pfn
    
    With PAT enabled, vm_insert_pfn() looks up the existing pfn memory
    attribute and uses it.  Expectation is that the driver reserves the
    memory attributes for the pfn before calling vm_insert_pfn().

-- 
Peter Xu

