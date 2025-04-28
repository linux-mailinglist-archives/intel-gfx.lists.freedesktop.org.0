Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCA7A9F569
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 18:16:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3C8C10E5E2;
	Mon, 28 Apr 2025 16:16:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="OGv5yTIc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F06510E5F4
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Apr 2025 16:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745856987;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=LSBCFCBONXHckZIZ52LuoO+2BI59EZkDvF6TeRKrYmY=;
 b=OGv5yTIcCHpiqRH6YV8yBS8PcZWWdRpTSP9KjLG+P+4fwLbh2E88S0sVliwX14fjhLJLpe
 fW2zm8sV8r929lDNDXFjzyxSTGo5O3IEEp6DUW1N1oOOdQEQw6tmtWusAQt7SUaJQmzH8O
 u6ggKr3N861BXSNOrWv33P/+iXkG0Os=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-624-252O_xJGNJegC5YfMsSBJQ-1; Mon, 28 Apr 2025 12:16:25 -0400
X-MC-Unique: 252O_xJGNJegC5YfMsSBJQ-1
X-Mimecast-MFC-AGG-ID: 252O_xJGNJegC5YfMsSBJQ_1745856984
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-43cec217977so25141975e9.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Apr 2025 09:16:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745856984; x=1746461784;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:from:references:cc:to:subject:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=LSBCFCBONXHckZIZ52LuoO+2BI59EZkDvF6TeRKrYmY=;
 b=eSvt8PQJ8fi0wLbDS5HhNIQXjeMAv0Ig/3/5P+O5pmubXMZ9mvY3EWd2AmK1feBdJy
 Ilf4DY7Lab1AJR+1tnnZhsSJ8eVuV4cV8/4WuGcsP+ucDZw4aIDdQeBoDRtLbKDBGQeF
 D/X/Y6yiowvZecr6tGjKNOcBsGA4WCXDSbHwkpPVLpbn/NcGQrP/7nwojgyw25wKX1mw
 eAVNZctdENBlMpHnogxoMrgV0TZI9hXYHXQiQiyjfxHK6S/7PPoy49M0DMPq4BBkTu8q
 oIoGwqWDNaxi563sBcQxV00K9WgU7JsoYlR5zebgulWYtm/KVP08RCUBkVqkBaUiPnSP
 ymWg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU4DMrMQwV7rdUOfw9p7Oc9l5Z62XPb853f4tWDSSQLmS3lNKlYgmqyFNYBycn6fmVdYjYkMSAJMXI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzp01Cv0DY0J/TO64nORd2S9BXCXNke6gX22x6ioEiD4VZHFdOu
 btu3yHHsD0EMKK4Qj2FdV5kz+P2yUsezU1IOKmDol+DOM/otejkD+K7xj4IXXNf4wpW6lU3P3Fg
 RQnYpesPmlYalDi+JzKZLvlOQ2UeQXHP4iy12diiMRACbW5tGkIPMLoD3c+Nt2vGrxg==
X-Gm-Gg: ASbGncvUmBhBnQ3wNZp2dU3ElYDxL9SG2sl/xBYlCRnghY+KauTmV/e5A1gPqpYiDA4
 SttDfQcbkEgZCLHsFod28V5rVx1yp0p3AkWXnZggTWsjtQ5mmtcU1EeLvoQK7M5DnWQBnOt7V/D
 vHB9al1ZeFnlU3S1iQKv0ewbwfbUcZJZpqHxh5UsK2+LXmBvnP8CDDtV3GAMs9t+9j6ulGmkBmB
 SaEI8Ylya9heNVaswTfS273holmF9lU+zukipek5iLULg4fFz++5gksXf+SnDKIsGCdgDLZ53xW
 ulgjxXWXxF5Y+vN+i3C7TA4OFQb4ZjEGB5O9CKL1FXwCKolgtyxyKMc0Sx4XBYh4O1lELbx1KOt
 MlASRjYkE2H182+SVZAYLFgHh2ypanXtsiwCGZA==
X-Received: by 2002:a05:600c:3c91:b0:43c:fabf:9146 with SMTP id
 5b1f17b1804b1-440ab7e8c1amr95665845e9.17.1745856984320; 
 Mon, 28 Apr 2025 09:16:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJ3tmkKQRgcbOe1thvkYMOwxvDkqDKaZa592PEuEMSy3W4S5JaiopHPKIlRfxSC6ElBCcvTA==
X-Received: by 2002:a05:600c:3c91:b0:43c:fabf:9146 with SMTP id
 5b1f17b1804b1-440ab7e8c1amr95665265e9.17.1745856983789; 
 Mon, 28 Apr 2025 09:16:23 -0700 (PDT)
Received: from ?IPV6:2003:d8:2f32:c200:9add:4a7a:46aa:f740?
 (p200300d82f32c2009add4a7a46aaf740.dip0.t-ipconnect.de.
 [2003:d8:2f32:c200:9add:4a7a:46aa:f740])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-440a530a6e9sm128836965e9.16.2025.04.28.09.16.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Apr 2025 09:16:23 -0700 (PDT)
Message-ID: <7a26e29c-d889-450a-a5e1-ce671f09e4c8@redhat.com>
Date: Mon, 28 Apr 2025 18:16:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 05/11] mm: convert VM_PFNMAP tracking to pfnmap_track()
 + pfnmap_untrack()
To: Peter Xu <peterx@redhat.com>
Cc: linux-kernel@vger.kernel.org, linux-mm@kvack.org, x86@kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-trace-kernel@vger.kernel.org, Dave Hansen
 <dave.hansen@linux.intel.com>, Andy Lutomirski <luto@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Andrew Morton <akpm@linux-foundation.org>,
 Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu
 <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>,
 Pedro Falcato <pfalcato@suse.de>
References: <20250425081715.1341199-1-david@redhat.com>
 <20250425081715.1341199-6-david@redhat.com> <aAvvQ1h9bg11hiqI@x1.local>
 <bbadf008-9ffc-4628-9809-2d8cf104a424@redhat.com> <aA-n9hvSX9JLsRM-@x1.local>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 WNyWQQ==
Organization: Red Hat
In-Reply-To: <aA-n9hvSX9JLsRM-@x1.local>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 0-YoDlHRt_tULhxEOfGJD1cBglhqHYLu5DQNJ5qP9og_1745856984
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 28.04.25 18:08, Peter Xu wrote:
> On Fri, Apr 25, 2025 at 10:36:55PM +0200, David Hildenbrand wrote:
>> On 25.04.25 22:23, Peter Xu wrote:
>>> On Fri, Apr 25, 2025 at 10:17:09AM +0200, David Hildenbrand wrote:
>>>> Let's use our new interface. In remap_pfn_range(), we'll now decide
>>>> whether we have to track (full VMA covered) or only sanitize the pgprot
>>>> (partial VMA covered).
>>>>
>>>> Remember what we have to untrack by linking it from the VMA. When
>>>> duplicating VMAs (e.g., splitting, mremap, fork), we'll handle it similar
>>>> to anon VMA names, and use a kref to share the tracking.
>>>>
>>>> Once the last VMA un-refs our tracking data, we'll do the untracking,
>>>> which simplifies things a lot and should sort our various issues we saw
>>>> recently, for example, when partially unmapping/zapping a tracked VMA.
>>>>
>>>> This change implies that we'll keep tracking the original PFN range even
>>>> after splitting + partially unmapping it: not too bad, because it was
>>>> not working reliably before. The only thing that kind-of worked before
>>>> was shrinking such a mapping using mremap(): we managed to adjust the
>>>> reservation in a hacky way, now we won't adjust the reservation but
>>>> leave it around until all involved VMAs are gone.
>>>>
>>>> Signed-off-by: David Hildenbrand <david@redhat.com>
>>>> ---
>>>>    include/linux/mm_inline.h |  2 +
>>>>    include/linux/mm_types.h  | 11 ++++++
>>>>    kernel/fork.c             | 54 ++++++++++++++++++++++++--
>>>>    mm/memory.c               | 81 +++++++++++++++++++++++++++++++--------
>>>>    mm/mremap.c               |  4 --
>>>>    5 files changed, 128 insertions(+), 24 deletions(-)
>>>>
>>>> diff --git a/include/linux/mm_inline.h b/include/linux/mm_inline.h
>>>> index f9157a0c42a5c..89b518ff097e6 100644
>>>> --- a/include/linux/mm_inline.h
>>>> +++ b/include/linux/mm_inline.h
>>>> @@ -447,6 +447,8 @@ static inline bool anon_vma_name_eq(struct anon_vma_name *anon_name1,
>>>>    #endif  /* CONFIG_ANON_VMA_NAME */
>>>> +void pfnmap_track_ctx_release(struct kref *ref);
>>>> +
>>>>    static inline void init_tlb_flush_pending(struct mm_struct *mm)
>>>>    {
>>>>    	atomic_set(&mm->tlb_flush_pending, 0);
>>>> diff --git a/include/linux/mm_types.h b/include/linux/mm_types.h
>>>> index 56d07edd01f91..91124761cfda8 100644
>>>> --- a/include/linux/mm_types.h
>>>> +++ b/include/linux/mm_types.h
>>>> @@ -764,6 +764,14 @@ struct vma_numab_state {
>>>>    	int prev_scan_seq;
>>>>    };
>>>> +#ifdef __HAVE_PFNMAP_TRACKING
>>>> +struct pfnmap_track_ctx {
>>>> +	struct kref kref;
>>>> +	unsigned long pfn;
>>>> +	unsigned long size;
>>>> +};
>>>> +#endif
>>>> +
>>>>    /*
>>>>     * This struct describes a virtual memory area. There is one of these
>>>>     * per VM-area/task. A VM area is any part of the process virtual memory
>>>> @@ -877,6 +885,9 @@ struct vm_area_struct {
>>>>    	struct anon_vma_name *anon_name;
>>>>    #endif
>>>>    	struct vm_userfaultfd_ctx vm_userfaultfd_ctx;
>>>> +#ifdef __HAVE_PFNMAP_TRACKING
>>>> +	struct pfnmap_track_ctx *pfnmap_track_ctx;
>>>> +#endif
>>>
>>> So this was originally the small concern (or is it small?) that this will
>>> grow every vma on x86, am I right?
>>
>> Yeah, and last time I looked into this, it would have grown it such that it would
>> require a bigger slab. Right now:
> 
> Probably due to what config you have.  E.g., when I'm looking mine it's
> much bigger and already consuming 256B, but it's because I enabled more
> things (userfaultfd, lockdep, etc.).

Note that I enabled everything that you would expect on a production 
system (incld. userfaultfd, mempolicy, per-vma locks), so I didn't 
enable lockep.

Thanks for verifying!

-- 
Cheers,

David / dhildenb

