Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AF3A9FA68
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 22:23:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6340C10EA06;
	Mon, 28 Apr 2025 20:23:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="bSLs4dKf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0213410EA06
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Apr 2025 20:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745871830;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=rkEtrqEhBS4XY4MnxLuPuVZCrKNUqZ8c+beG4mFgbns=;
 b=bSLs4dKfggWz+q3KSLZgWhNGIBs0Ln8904BBhSwW9UsIT7ap+FpZG9kzGhhnbMRnP7KdDg
 THRKd0gMK41bt9P2ikjyGCKHEltCeIyk35WGUbG9kaNjvHXnUWz8knQrmttdeaSoD5ZJbH
 TBYd60TP4lTjffec6eCuWDlfUgcTzcQ=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-517-xVVJ-gNzOFGr5fAM4TJjYQ-1; Mon, 28 Apr 2025 16:23:46 -0400
X-MC-Unique: xVVJ-gNzOFGr5fAM4TJjYQ-1
X-Mimecast-MFC-AGG-ID: xVVJ-gNzOFGr5fAM4TJjYQ_1745871825
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-3a07a867a4dso1282279f8f.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Apr 2025 13:23:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745871825; x=1746476625;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:from:references:cc:to:subject:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=rkEtrqEhBS4XY4MnxLuPuVZCrKNUqZ8c+beG4mFgbns=;
 b=G4iMIvPgSITKGoOUSOyzmjnolIn+oyEUSRJnDohGt31atXKsMphZbr+OvHmhvgT+o0
 AqSAmtu484BrKL/yqZjJ6x5MUJ7DqKx0HH3DodDOUon7ODqDIodXZFAwcej4WbdXw3Yv
 nKBqRhNuNV7dVjWHgXqUKq0pZYQEJZtyaNS6CmWM+viThdA2stOFOwHgC9aiP48SUrOH
 EhOqYjZBqtVeXHEA/Rmd/R57xv1opw1zvUVh0g0CSnNyCPDjTw9x/zgXetaORoD3dyjH
 fZGGtDd+qyjQDgSqsZ0NnzfpeIhe5kmcUefbzz3hlKlDdlVuymXsWt02XVgO7gq9a3jx
 h5Sw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVSvYEa9FBMbHXYkQ190XDr+xewWGmQ9L7IOf3JyzyDNVxfSVonWu7Bn/EFVzG35MOPOEdaqWsum/g=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyzJrI8tc5URToTyPXIHd/enFS97gjYfFjMfxKTy8zFyOLoyBIc
 yKw1olQrzJZVm6W7ivTqGBx9I0gCm7ea1ZG7ijiH3vRtPRyLNvVpOks+fFJBPBzUJK8A2WWKQH2
 EUZ3dm6bISZ20CBvxVl92orGRTrUlUYmPm8YDRumlMv33KcOc/DHD1y8lwFWuuBeJJQ==
X-Gm-Gg: ASbGncuTPMvSreDCyDNixfDbe6XB1/lZ3g2FRjz86H3CLkMBrDgQ15GzH4IcRM2KQDy
 q9LUQqceeV44vkioBRrCABjMm1vUtDuF0Kz6Sr6EpBM7ya40TIxpCCNjM5igPJ/pEb1oqXhPZru
 zAuhA6rKp+xKDUE7sGedPo621u4kffHlUg5Bt16hARZh1jvWYT/MEPBTewW8ZaDCH/umvRqoPwR
 PQ4WmR6oku6DzBMoRl/Z6ZhZ8sn4ZiBLN56ZFOK67w0GvDfyod3ZQVymabdfeGlnkNR87FHjvW6
 T8RhidTB76e05FEHyWeGoqUs5jDc/R6SANk3ZMGeGqAjCgTmVbyN8vbp9Kl/OCuaLxoaVefsnnY
 reJlGOnbtu8xgGXHcKPFXzFuwDD9ycbPQ7WMWNC4=
X-Received: by 2002:a05:6000:b4e:b0:39e:cc5e:147 with SMTP id
 ffacd0b85a97d-3a0894a1aa8mr941301f8f.55.1745871825197; 
 Mon, 28 Apr 2025 13:23:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHi9BeKEw90HGojYH0uYj++rRWoQl9Ep0UCTEuLPP1j3Ci9jqWDeYDWhMBAhQ1IJFvMvOz7CA==
X-Received: by 2002:a05:6000:b4e:b0:39e:cc5e:147 with SMTP id
 ffacd0b85a97d-3a0894a1aa8mr941276f8f.55.1745871824797; 
 Mon, 28 Apr 2025 13:23:44 -0700 (PDT)
Received: from ?IPV6:2003:cb:c72f:ea00:2f00:e7e5:8875:a0ea?
 (p200300cbc72fea002f00e7e58875a0ea.dip0.t-ipconnect.de.
 [2003:cb:c72f:ea00:2f00:e7e5:8875:a0ea])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a073cbf04dsm12236556f8f.52.2025.04.28.13.23.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Apr 2025 13:23:44 -0700 (PDT)
Message-ID: <bd8ce421-cf2a-451b-a3eb-613e6856bb9e@redhat.com>
Date: Mon, 28 Apr 2025 22:23:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 05/11] mm: convert VM_PFNMAP tracking to pfnmap_track()
 + pfnmap_untrack()
To: Suren Baghdasaryan <surenb@google.com>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: Peter Xu <peterx@redhat.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, x86@kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-trace-kernel@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Andy Lutomirski
 <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Andrew Morton <akpm@linux-foundation.org>,
 Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu
 <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka
 <vbabka@suse.cz>, Jann Horn <jannh@google.com>,
 Pedro Falcato <pfalcato@suse.de>
References: <20250425081715.1341199-1-david@redhat.com>
 <20250425081715.1341199-6-david@redhat.com> <aAvvQ1h9bg11hiqI@x1.local>
 <bbadf008-9ffc-4628-9809-2d8cf104a424@redhat.com> <aA-n9hvSX9JLsRM-@x1.local>
 <7a26e29c-d889-450a-a5e1-ce671f09e4c8@redhat.com> <aA-rtji7ujQgckbM@x1.local>
 <884fab29-e16a-4663-8e33-885bc70ca2f7@redhat.com>
 <f08118b3-0736-4a5d-b780-8e3d88f45c02@lucifer.local>
 <CAJuCfpEtnBrAkSV-6PDv4Au5gs02vWYeMNHo3OxZb8NB0sy8cw@mail.gmail.com>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 WNyWQQ==
Organization: Red Hat
In-Reply-To: <CAJuCfpEtnBrAkSV-6PDv4Au5gs02vWYeMNHo3OxZb8NB0sy8cw@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 6iKWkNVn8gKSEjav3dIarYTGeo6MDxZMtlxCBF51IV0_1745871825
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

On 28.04.25 21:57, Suren Baghdasaryan wrote:
> On Mon, Apr 28, 2025 at 12:37 PM Lorenzo Stoakes
> <lorenzo.stoakes@oracle.com> wrote:
>>
>> On Mon, Apr 28, 2025 at 07:23:18PM +0200, David Hildenbrand wrote:
>>> On 28.04.25 18:24, Peter Xu wrote:
>>>> On Mon, Apr 28, 2025 at 06:16:21PM +0200, David Hildenbrand wrote:
>>>>>> Probably due to what config you have.  E.g., when I'm looking mine it's
>>>>>> much bigger and already consuming 256B, but it's because I enabled more
>>>>>> things (userfaultfd, lockdep, etc.).
>>>>>
>>>>> Note that I enabled everything that you would expect on a production system
>>>>> (incld. userfaultfd, mempolicy, per-vma locks), so I didn't enable lockep.
>>>>
>>>> I still doubt whether you at least enabled userfaultfd, e.g., your previous
>>>> paste has:
>>>>
>>>>     struct vm_userfaultfd_ctx  vm_userfaultfd_ctx;   /*   176     0 */
>>>>
>>>> Not something that matters.. but just in case you didn't use the expected
>>>> config file you wanted to use..
>>>
>>> You're absolutely right. I only briefly rechecked for this purpose here on
>>> my notebook, and only looked for the existence of members, not expecting
>>> that we have confusing stuff like vm_userfaultfd_ctx.
>>>
>>> I checked again and the size stays at 192 with allyesconfig and then
>>> disabling debug options.
>>
>> I think a reasonable case is everything on, except CONFIG_DEBUG_LOCK_ALLOC and I
>> don't care about nommu.
> 
> I think it's safe to assume that production systems would disable
> lockdep due to the performance overhead. At least that's what we do on
> Android - enable it on development branches but disable in production.

Right, and "struct lockdep_map" is ... significantly larger than 8 
bytes. With that enabled, one is already paying for extra VMA space ...

-- 
Cheers,

David / dhildenb

