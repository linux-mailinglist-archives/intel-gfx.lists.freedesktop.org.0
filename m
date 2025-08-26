Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C34AB35EC8
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 14:08:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B705710E640;
	Tue, 26 Aug 2025 12:07:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="LT6YwBJR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8886310E640
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Aug 2025 12:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1756210077;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=Uo8QqPtYPWcbg2SJ7UNAfQxo4xVeFqBTJ7SinpEUAHI=;
 b=LT6YwBJRt5Jv5hFynYfvIs6DnsPKBpjPx7K/oUdJLbtSB6xJgkCE3mqTF1Rr/o0WoGp8K5
 TRGK0vszpmaWuz7giEOPq+8h93FdP2cFlnqeFV6/UKYAf7BT0LmhTzKNpb+YYA2msBYSx0
 ansHSR1teeEWKlQfFTlIU+eVgj85pIw=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-639-7wxtj13fMiSX_a9IL2_mxg-1; Tue, 26 Aug 2025 08:07:54 -0400
X-MC-Unique: 7wxtj13fMiSX_a9IL2_mxg-1
X-Mimecast-MFC-AGG-ID: 7wxtj13fMiSX_a9IL2_mxg_1756210073
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-3c79f0a6050so1335542f8f.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Aug 2025 05:07:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756210073; x=1756814873;
 h=content-transfer-encoding:in-reply-to:autocrypt:content-language
 :from:references:cc:to:subject:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Uo8QqPtYPWcbg2SJ7UNAfQxo4xVeFqBTJ7SinpEUAHI=;
 b=iD2qilkRSG4rYmJhxcTT8XgPG0APJsJT+wAn+FDg/eLmt2G9bvO7/SglhsHfFeUQwt
 7czMOqgRaSiOruVTFB0aYOHdcr6NiApZYIXVJnSNI4jgAxXgAMF2BrTqe4/eCvlC5O7S
 DzUXkxSKYBKc1zuKCTgSAyIzekjHT3C03Fb/Hn4erxzoLSW03hUW7IdI6/ginhnWzfjQ
 Bf8RF/c3PKt4NLahTWTQeR+KhjDR652XhqZP+XF23EGfds770lYJ4UDdngExMEQ3EhDA
 yTxpNOUYZIfSaB1YQ99EY4rnmSH5JNWsdQsWA+8iTPgUkxVNg4kdLWDasOwK4WPoIm1g
 aV9Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXkM+10lpCGjSyVkvKe2nQW3IzfDB7OJDf5ahUeSqp5xoweaCTKNgUomsRzSSDseV0Hz3sl13g4ICw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzJE2kV08U3iBcQCjDiMrdSMAEssJhbifIc8CFo19xH078PXMUd
 c73ynZclg3szfs0Q/UsHhYSZ4lV5SH+D5IDCmEq5ad6ViFEWkOs/a7PlOq9c/62tnvdcqKZ1h/X
 DmpebKNeWISz3fOwQswO8cPsM/Ukh+ulVOKcem4SWEjFt+jnLplb28PEjLzado9Q0MG+6fg==
X-Gm-Gg: ASbGnctOGEar8vqV06DimgmS1mW+gv/dgD73BulpJs1WMnthAY9nfAkqTZukxVqCsGX
 /YuvTDqQVprY8Flz5qcBIW/3XXY0wwyDn6uhliZUEdp3riGyRQBIOPG34Pm/mAXBvNm5CxjyjvI
 7F9nxwk9iKudbKIBV0nhA3ldBPCkzKUn4hF3o3G0WdHFX3e4mfqodikYYRONlOOp9R1ahPmG5KO
 5Sc7HdQysRDkDLj4uTT11SKJbQoc+IDZyHw4Vx1Xcpy92sBZOBSBni9LdbyNkHjcyj71MTmRKTM
 wlj58aKDIwE71wmHmbDZT5BY9F6MOkafhCD2HsJPpLeZfltDisByDgv9ufzPXM5iVd9mOR/reA=
 =
X-Received: by 2002:a5d:4948:0:b0:3c6:af40:a774 with SMTP id
 ffacd0b85a97d-3c6af40aa2amr8520861f8f.22.1756210073127; 
 Tue, 26 Aug 2025 05:07:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGph2EoUnVtafTDMODsVx9IZs4dFlfHWSAK/zJyh0p3gRtMg5bs99D6Y9j7BY5F1T/rMK8pCA==
X-Received: by 2002:a5d:4948:0:b0:3c6:af40:a774 with SMTP id
 ffacd0b85a97d-3c6af40aa2amr8520837f8f.22.1756210072601; 
 Tue, 26 Aug 2025 05:07:52 -0700 (PDT)
Received: from ?IPV6:2a09:80c0:192:0:5dac:bf3d:c41:c3e7?
 ([2a09:80c0:192:0:5dac:bf3d:c41:c3e7])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3cbb710172fsm1709728f8f.48.2025.08.26.05.07.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 Aug 2025 05:07:52 -0700 (PDT)
Message-ID: <d32fa753-66a1-451a-8cef-95c1f78fc366@redhat.com>
Date: Tue, 26 Aug 2025 14:07:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re:
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 x86@kernel.org
Cc: airlied@gmail.com, thomas.hellstrom@linux.intel.com,
 matthew.brost@intel.com, dave.hansen@linux.intel.com, luto@kernel.org,
 peterz@infradead.org, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
References: <20250820143739.3422-1-christian.koenig@amd.com>
 <edf4aee5-54eb-4fad-aa89-4913d44371fe@redhat.com>
 <4e5f4ef0-53f1-417e-8f3b-76fd7c64cd23@amd.com>
 <f983521c-b43d-4245-93fc-fcb847908573@redhat.com>
 <a1b95d23-1908-42c1-8ff6-da051fc140aa@amd.com>
 <6591105b-969d-44d6-80e1-233c1b84b121@redhat.com>
 <fc3e013c-e7f7-441d-a638-2ee3dd372775@amd.com>
 <75aca34d-3557-49e9-a523-bd3244c28190@redhat.com>
 <a01f7ca8-7930-4b04-b597-0ebf8500a748@amd.com>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 qIws/H2t
In-Reply-To: <a01f7ca8-7930-4b04-b597-0ebf8500a748@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: lDVO6FfcamWl4iUu3wAsjFII-Sgf70Rm6eK9-riifLY_1756210073
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

>>
>> 1) We use another interface that consumes pages instead of PFNs, like a
>>     vm_insert_pages_pgprot() we would be adding.
>>
>>     Is there any strong requirement for inserting non-refcounted PFNs?
> 
> Yes, there is a strong requirement to insert non-refcounted PFNs.
> 
> We had a lot of trouble with KVM people trying to grab a reference to those pages even if the VMA had the VM_PFNMAP flag set.

Yes, KVM ignored (and maybe still does) VM_PFNMAP to some degree, which 
is rather nasty.

> 
>> 2) We add another interface that consumes PFNs, but explicitly states
>>     that it is only for ordinary system RAM, and that the user is
>>     required for updating the direct map.
>>
>>     We could sanity-check the direct map in debug kernels.
> 
> I would rather like to see vmf_insert_pfn_prot() fixed instead.
> 
> That function was explicitly added to insert the PFN with the given attributes and as far as I can see all users of that function expect exactly that.

It's all a bit tricky :(

> 
>>
>> 3) We teach PAT code in pfnmap_setup_cachemode_pfn() about treating this
>>     system RAM differently.
>>
>>
>> There is also the option for a mixture between 1 and 2, where we get pages, but we map them non-refcounted in a VM_PFNMAP.
>>
>> In general, having pages makes it easier to assert that they are likely ordinary system ram pages, and that the interface is not getting abused for something else.
> 
> Well, exactly that's the use case here and that is not abusive at all as far as I can see.
> 
> What drivers want is to insert a PFN with a certain set of caching attributes regardless if it's system memory or iomem. That's why vmf_insert_pfn_prot() was created in the first place.

I mean, the use case of "allocate pages from the buddy and fixup the 
linear map" sounds perfectly reasonable to me. Absolutely no reason to 
get PAT involved. Nobody else should be messing with that memory after all.

As soon as we are talking about other memory ranges (iomem) that are not 
from the buddy, it gets weird to bypass PAT, and the question I am 
asking myself is, when is it okay, and when not.

> 
> That drivers need to call set_pages_wc/uc() for the linear mapping on x86 manually is correct and checking that is clearly a good idea for debug kernels.

I'll have to think about this a bit: assuming only vmf_insert_pfn() 
calls pfnmap_setup_cachemode_pfn() but vmf_insert_pfn_prot() doesn't, 
how could we sanity check that somebody is doing something against the 
will of PAT.

-- 
Cheers

David / dhildenb

