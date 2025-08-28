Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68861B3AC3C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 23:01:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C59D10EAD8;
	Thu, 28 Aug 2025 21:01:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="OzJ/hIqB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D512810EAD9
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Aug 2025 21:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1756414878;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=iesHPe3095uz1hg1RS4IEYFmUcjEO4H8uiojPv6Z2C8=;
 b=OzJ/hIqBDrvSDqyq6nuzFXhf9IAt0EyVGiRbsH94kTS4uRRbMFuVxbTGJjbLGpOu/SoBSZ
 H6H0KtTlM0GM5tO//M3jDeqOoYTqduWX+rb3gFY2JYOpK7g8a+CqLJkJpkDU8tTt2A9CjG
 seXcpmQEfJRO5eAg5ENmNFcSrLUd3SY=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-496-9sWRdHpgMXyyQslD-tmHYA-1; Thu, 28 Aug 2025 17:01:16 -0400
X-MC-Unique: 9sWRdHpgMXyyQslD-tmHYA-1
X-Mimecast-MFC-AGG-ID: 9sWRdHpgMXyyQslD-tmHYA_1756414875
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-45b467f5173so10644505e9.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Aug 2025 14:01:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756414875; x=1757019675;
 h=content-transfer-encoding:in-reply-to:autocrypt:content-language
 :from:references:cc:to:subject:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=iesHPe3095uz1hg1RS4IEYFmUcjEO4H8uiojPv6Z2C8=;
 b=kQQ+/7aQMWUZE0qNqHqoJwQEG4yxC1dEtkH4n1aVHJjie50jvfHeHPPIG+EavIEoTI
 CjfaLF6cBxuShD0QGGj+Z6+FUe3FTUKqHgz7/pebp5zfxnoaJSht1GEpA5CSTgRlyZBG
 bHpJmEootZ52aJDtcLh8eucZI6mxSq6l/csxpDb3eTYMO13gb+TJ8DPl4YkO0L5Nwduo
 09JcYjB5tm0Vs4tbiduPuZODNYFobVwytTDb8WI0JlS/1HJX5anDyD5cq3H0j2/UsWJc
 ITjdaloZ5PF1DOD8EXUSW/kNG4IcK7JLVB60BVfpuzys9prjzXhX4nDu2iSuKErMvD1x
 Avkg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXZ50kmk2XwbV/pQXYcYygpN15iaDoN0+SgN0q/uhtWDYn02iBDVN9oWgdS2qBueBSRSFVFnkx3HQk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzf3CjsHZqmIm9uH282Xi5iMLdoZxrE34PdD/NsGyuAh8W6vddK
 vqbD9engeHIkRDWVlagX/YSiTTfSU4sb2Y64DHxwpgJlK8uMksD/OtX/XQCcGHAEV1CAcG/DOyE
 atF/E3N77j1K3FMNKApvH0xwiYH+iKZ/tDcaQYXiKfRJx2Ce8vaekAvxPdDANE1NfdKVpbA==
X-Gm-Gg: ASbGncvsWKqX2IHemlneObeRriWgeHHmToH7KZZj06phkFobJ9ZUQWg68pGyMr/5lfL
 5Cgh6Blb0bZTjUAnxuTMZogvilUTfVWpMF4SHMcIxxhGsuVVO/raDLxrqbQ5/BHk+rJFzoCbqX6
 aXqQEatPXm4OXpJE5yCVVmM4K64g1rFgTBc3gvvsZEkopV1qhs/OAxfNPsQd/bRvnIQchkHG/Go
 rarLB/IB5xAqVqmY2Ep49GkGp/XUz4IUmhpTemC9NojCSLjJWXSz2b0CzrJC8bb8mUgd2LHFbn2
 MKkz7tu12oaPAO79ByezaRucGlVvQsUojA2swTdChB5GVc4gpVxf4wjgue+xA+rEsEQytpWWv/L
 UahaHdCzGRdhtQCggf6FKan4O0vvDE3hmHqvmb4dH9LgTXI55Cdc4Ee6EyFgkLXau6xg=
X-Received: by 2002:a05:6000:1a8d:b0:3ca:2bc7:e821 with SMTP id
 ffacd0b85a97d-3ca2bc7ef61mr12602364f8f.53.1756414874934; 
 Thu, 28 Aug 2025 14:01:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELkWMXHF95PsTcVdmFjM8EzCAM7gzseZtqGs+N0bJROmmnC1culcus9SRn7U0k/o9W/T4AXg==
X-Received: by 2002:a05:6000:1a8d:b0:3ca:2bc7:e821 with SMTP id
 ffacd0b85a97d-3ca2bc7ef61mr12602341f8f.53.1756414874375; 
 Thu, 28 Aug 2025 14:01:14 -0700 (PDT)
Received: from ?IPV6:2003:d8:2f28:c100:2225:10aa:f247:7b85?
 (p200300d82f28c100222510aaf2477b85.dip0.t-ipconnect.de.
 [2003:d8:2f28:c100:2225:10aa:f247:7b85])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3cf270fd2dfsm685916f8f.3.2025.08.28.14.01.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 Aug 2025 14:01:13 -0700 (PDT)
Message-ID: <f0338ec0-b093-4ba7-a26a-a3668587e334@redhat.com>
Date: Thu, 28 Aug 2025 23:01:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: stupid PAT :)
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 x86@kernel.org
Cc: airlied@gmail.com, matthew.brost@intel.com, dave.hansen@linux.intel.com,
 luto@kernel.org, peterz@infradead.org,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
References: <20250820143739.3422-1-christian.koenig@amd.com>
 <edf4aee5-54eb-4fad-aa89-4913d44371fe@redhat.com>
 <4e5f4ef0-53f1-417e-8f3b-76fd7c64cd23@amd.com>
 <f983521c-b43d-4245-93fc-fcb847908573@redhat.com>
 <a1b95d23-1908-42c1-8ff6-da051fc140aa@amd.com>
 <6591105b-969d-44d6-80e1-233c1b84b121@redhat.com>
 <fc3e013c-e7f7-441d-a638-2ee3dd372775@amd.com>
 <75aca34d-3557-49e9-a523-bd3244c28190@redhat.com>
 <a01f7ca8-7930-4b04-b597-0ebf8500a748@amd.com>
 <b297fb4289ceaf36e8a9a237a7b2ac8d5f373158.camel@linux.intel.com>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 qIws/H2t
In-Reply-To: <b297fb4289ceaf36e8a9a237a7b2ac8d5f373158.camel@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: p1btFDwZMwm12gg3spOoO0uqT7W942t0JIQCrJgQIYw_1756414875
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

On 26.08.25 16:27, Thomas Hellström wrote:
> Hi, Christian,
> 
> On Tue, 2025-08-26 at 11:56 +0200, Christian König wrote:
>> On 26.08.25 11:17, David Hildenbrand wrote:
>>> On 26.08.25 11:00, Christian König wrote:
>>>> On 26.08.25 10:46, David Hildenbrand wrote:
>>>>>>> So my assumption would be that that is missing for the
>>>>>>> drivers here?
>>>>>>
>>>>>> Well yes and no.
>>>>>>
>>>>>> See the PAT is optimized for applying specific caching
>>>>>> attributes to ranges [A..B] (e.g. it uses an R/B tree). But
>>>>>> what drivers do here is that they have single pages (usually
>>>>>> for get_free_page or similar) and want to apply a certain
>>>>>> caching attribute to it.
>>>>>>
>>>>>> So what would happen is that we completely clutter the R/B
>>>>>> tree used by the PAT with thousands if not millions of
>>>>>> entries.
>>>>>>
>>>>>
>>>>> Hm, above you're saying that there is no direct map, but now
>>>>> you are saying that the pages were obtained through
>>>>> get_free_page()?
>>>>
>>>> The problem only happens with highmem pages on 32bit kernels.
>>>> Those pages are not in the linear mapping.
>>>
>>> Right, in the common case there is a direct map.
>>>
>>>>
>>>>> I agree that what you describe here sounds suboptimal. But if
>>>>> the pages where obtained from the buddy, there surely is a
>>>>> direct map -- unless we explicitly remove it :(
>>>>>
>>>>> If we're talking about individual pages without a directmap, I
>>>>> would wonder if they are actually part of a bigger memory
>>>>> region that can just be reserved in one go (similar to how
>>>>> remap_pfn_range()) would handle it.
>>>>>
>>>>> Can you briefly describe how your use case obtains these PFNs,
>>>>> and how scattered tehy + their caching attributes might be?
>>>>
>>>> What drivers do is to call get_free_page() or alloc_pages_node()
>>>> with the GFP_HIGHUSER flag set.
>>>>
>>>> For non highmem pages drivers then calls set_pages_wc/uc() which
>>>> changes the caching of the linear mapping, but for highmem pages
>>>> there is no linear mapping so set_pages_wc() or set_pages_uc()
>>>> doesn't work and drivers avoid calling it.
>>>>
>>>> Those are basically just random system memory pages. So they are
>>>> potentially scattered over the whole memory address space.
>>>
>>> Thanks, that's valuable information.
>>>
>>> So essentially these drivers maintain their own consistency and PAT
>>> is not aware of that.
>>>
>>> And the real problem is ordinary system RAM.
>>>
>>> There are various ways forward.
>>>
>>> 1) We use another interface that consumes pages instead of PFNs,
>>> like a
>>>     vm_insert_pages_pgprot() we would be adding.
>>>
>>>     Is there any strong requirement for inserting non-refcounted
>>> PFNs?
>>
>> Yes, there is a strong requirement to insert non-refcounted PFNs.
>>
>> We had a lot of trouble with KVM people trying to grab a reference to
>> those pages even if the VMA had the VM_PFNMAP flag set.
>>
>>> 2) We add another interface that consumes PFNs, but explicitly
>>> states
>>>     that it is only for ordinary system RAM, and that the user is
>>>     required for updating the direct map.
>>>
>>>     We could sanity-check the direct map in debug kernels.
>>
>> I would rather like to see vmf_insert_pfn_prot() fixed instead.
>>
>> That function was explicitly added to insert the PFN with the given
>> attributes and as far as I can see all users of that function expect
>> exactly that.
>>
>>>
>>> 3) We teach PAT code in pfnmap_setup_cachemode_pfn() about treating
>>> this
>>>     system RAM differently.
>>>
>>>
>>> There is also the option for a mixture between 1 and 2, where we
>>> get pages, but we map them non-refcounted in a VM_PFNMAP.
>>>
>>> In general, having pages makes it easier to assert that they are
>>> likely ordinary system ram pages, and that the interface is not
>>> getting abused for something else.
>>
>> Well, exactly that's the use case here and that is not abusive at all
>> as far as I can see.
>>
>> What drivers want is to insert a PFN with a certain set of caching
>> attributes regardless if it's system memory or iomem. That's why
>> vmf_insert_pfn_prot() was created in the first place.
>>
>> That drivers need to call set_pages_wc/uc() for the linear mapping on
>> x86 manually is correct and checking that is clearly a good idea for
>> debug kernels.
> 
> So where is this trending? Is the current suggestion to continue
> disallowing aliased mappings with conflicting caching modes and enforce
> checks in debug kernels?

Not sure, it's a mess. The big question is to find out when it is really 
ok to bypass PAT and when to better let it have a saying.

-- 
Cheers

David / dhildenb

