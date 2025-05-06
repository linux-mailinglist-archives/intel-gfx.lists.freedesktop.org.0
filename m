Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB31FAAC82C
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 16:36:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 130BA10E34D;
	Tue,  6 May 2025 14:36:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="gSENK6OJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA65510E34D
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 May 2025 14:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1746542191;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=IzH/tkJn6lVBdTS8VMGJ+rH7vzL7J2XnCGspuIlgQmc=;
 b=gSENK6OJWIlEdNJIpEgGEjkcuERAndYLSfVWgyEyYqGzFLF1aJNk2FWdKQ2czPWsmsKvp6
 FJDJs2FzPshD6SfbFolxZHEriEeTsa/6TrW6Lf8wkEWQ5DqYI0JMTj4q/RSjbr6kcT6fOz
 GHk8qyzi9EHsO6ZXaoMkmWe8vtm1TBE=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-173-Oy1w6oAqO1yYa3_RdcvRjQ-1; Tue, 06 May 2025 10:36:30 -0400
X-MC-Unique: Oy1w6oAqO1yYa3_RdcvRjQ-1
X-Mimecast-MFC-AGG-ID: Oy1w6oAqO1yYa3_RdcvRjQ_1746542186
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-43d0a037f97so31107805e9.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 May 2025 07:36:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746542186; x=1747146986;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:from:references:cc:to:subject:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=IzH/tkJn6lVBdTS8VMGJ+rH7vzL7J2XnCGspuIlgQmc=;
 b=w2Alckj8WBXPyUTcFUBfGRCN5BBYCD7Pqt4M4YSNLf8VoftpeY4LRkx+yUILeQclUF
 rCkTrx2l19KBILWjrEnbum5dhTFMIHlmJ1CPWQ1ZnursWJDrRjQqq3Wjc2EDpuIS1mtc
 iu+ZWAqU1EagJleoY7xXOFpTphbRcVKhwB1wsOcnx2Th6Y5RR+39MET1AOtGBvG0J8zS
 YInMroC/DKL09QL9bH8G8IbaO40sYIXfR/RyWFwUnZjSynzUvIEQinV5wbZctVPWOdQE
 KNlcXImxY8oXUbYAnjtXppF/wd6PO+S5I1zaUEyqEX9gePQOFRvT9XlTUE4SYYKhrE0+
 Zvow==
X-Forwarded-Encrypted: i=1;
 AJvYcCXCpdd1pQqsYSdwPCPMe2gydxjYSZKHdsQsyFbelKCfsHayc2NXTPRnYU8Q0Fx4wAsMEQYwqVDdjm4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx0pdPFQlx/0CPqapm5C935f6yUVDcUgeiwktFwqSq8zGj79w50
 f+m9hOx82RSDzj9rN993uAx4ve9JEAHgk6U1dwCgZ7JIfoyuSk/kWgigK2d/dojV2Rq/PlW457f
 7cRknzM7YLkuBTJYqkMH4n44KLiBQ/PEBurhjLbeKR9X5pZB3sCvT15eP5KqPWZFAsA==
X-Gm-Gg: ASbGncu70PW59PN1yiAnURD5wIRlmpSUZ5FL5oZAijvN7gWGtUvpGLmm/SnDesnxY1J
 s/M5qRzV/J7KbkUO6SKpSv1u2AAgJR/lwC9emjHpnlPljT8Nq7Ap+Hr24EPxBPkSA/8kLytWpTn
 tv9C7V1wPTkOPqMPWnV+Gl8GLqyjhaDVsJqXFDWdKmk5I+JbsftPvggBSgak9o8qE64jAGKd5wB
 CZ2n665VlcyHWwkMsI28WoIHNgMvTbnXL8uWqK3/gDsyF3NrzAVPAlEf6ucREQBsb0bYK/Eb71j
 d4ozysc7wwDrIIkdNOd1OKd2+NaPAVZHYQO4zDSZCeM055ye+jM=
X-Received: by 2002:a05:600c:a409:b0:43b:cd0d:9466 with SMTP id
 5b1f17b1804b1-441d0a909b9mr32408615e9.9.1746542186118; 
 Tue, 06 May 2025 07:36:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFELAacPpWBYwZLLNgreFFAeKxOJOPVs/9qbII4n9nSgPnrvi/TERouc+DLkXPGSqiv0SFhDw==
X-Received: by 2002:a05:600c:a409:b0:43b:cd0d:9466 with SMTP id
 5b1f17b1804b1-441d0a909b9mr32408275e9.9.1746542185689; 
 Tue, 06 May 2025 07:36:25 -0700 (PDT)
Received: from ?IPV6:2a01:599:915:8911:b13f:d972:e237:7fe2?
 ([2a01:599:915:8911:b13f:d972:e237:7fe2])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-441b8a285c2sm171119875e9.32.2025.05.06.07.36.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 06 May 2025 07:36:25 -0700 (PDT)
Message-ID: <f0187458-e576-4894-b728-5914d3d9ed36@redhat.com>
Date: Tue, 6 May 2025 16:36:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [REGRESSION] Re: [PATCH v3 3/6] mm: shmem: add large folio
 support for tmpfs
To: Baolin Wang <baolin.wang@linux.alibaba.com>,
 Daniel Gomez <da.gomez@kernel.org>
Cc: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 akpm@linux-foundation.org, hughd@google.com, willy@infradead.org,
 wangkefeng.wang@huawei.com, 21cnbao@gmail.com, ryan.roberts@arm.com,
 ioworker0@gmail.com, da.gomez@samsung.com, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, regressions@lists.linux.dev,
 intel-gfx@lists.freedesktop.org, Eero Tamminen <eero.t.tamminen@intel.com>
References: <cover.1732779148.git.baolin.wang@linux.alibaba.com>
 <035bf55fbdebeff65f5cb2cdb9907b7d632c3228.1732779148.git.baolin.wang@linux.alibaba.com>
 <aBEP-6iFhIC87zmb@intel.com>
 <ac8cbd8d-44e9-4a88-b88b-e29e9f30a2fd@linux.alibaba.com>
 <aBIHYqzar5J8uxGO@intel.com>
 <cxwpgygobg6wleoeezbowjhmid4mdhptzheqask44ew37h2q24@kryzkecuobbp>
 <57dc4929-268b-4f3f-a0f8-43d6ec85974f@linux.alibaba.com>
 <72978e3a-ee67-47d4-b06d-e911bc5d57ff@redhat.com>
 <exl3dpqh7oqhdd3afo3gvainumqw6j4ebfifkyeqkqvf36yxlh@pcuhdqanuy32>
 <a34c844d-b44f-411c-b5d7-8e38a50b0b05@redhat.com>
 <e54e0b31-1b92-4110-b8ac-4737893fe197@linux.alibaba.com>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; keydata=
 xsFNBFXLn5EBEAC+zYvAFJxCBY9Tr1xZgcESmxVNI/0ffzE/ZQOiHJl6mGkmA1R7/uUpiCjJ
 dBrn+lhhOYjjNefFQou6478faXE6o2AhmebqT4KiQoUQFV4R7y1KMEKoSyy8hQaK1umALTdL
 QZLQMzNE74ap+GDK0wnacPQFpcG1AE9RMq3aeErY5tujekBS32jfC/7AnH7I0v1v1TbbK3Gp
 XNeiN4QroO+5qaSr0ID2sz5jtBLRb15RMre27E1ImpaIv2Jw8NJgW0k/D1RyKCwaTsgRdwuK
 Kx/Y91XuSBdz0uOyU/S8kM1+ag0wvsGlpBVxRR/xw/E8M7TEwuCZQArqqTCmkG6HGcXFT0V9
 PXFNNgV5jXMQRwU0O/ztJIQqsE5LsUomE//bLwzj9IVsaQpKDqW6TAPjcdBDPLHvriq7kGjt
 WhVhdl0qEYB8lkBEU7V2Yb+SYhmhpDrti9Fq1EsmhiHSkxJcGREoMK/63r9WLZYI3+4W2rAc
 UucZa4OT27U5ZISjNg3Ev0rxU5UH2/pT4wJCfxwocmqaRr6UYmrtZmND89X0KigoFD/XSeVv
 jwBRNjPAubK9/k5NoRrYqztM9W6sJqrH8+UWZ1Idd/DdmogJh0gNC0+N42Za9yBRURfIdKSb
 B3JfpUqcWwE7vUaYrHG1nw54pLUoPG6sAA7Mehl3nd4pZUALHwARAQABzSREYXZpZCBIaWxk
 ZW5icmFuZCA8ZGF2aWRAcmVkaGF0LmNvbT7CwZgEEwEIAEICGwMGCwkIBwMCBhUIAgkKCwQW
 AgMBAh4BAheAAhkBFiEEG9nKrXNcTDpGDfzKTd4Q9wD/g1oFAl8Ox4kFCRKpKXgACgkQTd4Q
 9wD/g1oHcA//a6Tj7SBNjFNM1iNhWUo1lxAja0lpSodSnB2g4FCZ4R61SBR4l/psBL73xktp
 rDHrx4aSpwkRP6Epu6mLvhlfjmkRG4OynJ5HG1gfv7RJJfnUdUM1z5kdS8JBrOhMJS2c/gPf
 wv1TGRq2XdMPnfY2o0CxRqpcLkx4vBODvJGl2mQyJF/gPepdDfcT8/PY9BJ7FL6Hrq1gnAo4
 3Iv9qV0JiT2wmZciNyYQhmA1V6dyTRiQ4YAc31zOo2IM+xisPzeSHgw3ONY/XhYvfZ9r7W1l
 pNQdc2G+o4Di9NPFHQQhDw3YTRR1opJaTlRDzxYxzU6ZnUUBghxt9cwUWTpfCktkMZiPSDGd
 KgQBjnweV2jw9UOTxjb4LXqDjmSNkjDdQUOU69jGMUXgihvo4zhYcMX8F5gWdRtMR7DzW/YE
 BgVcyxNkMIXoY1aYj6npHYiNQesQlqjU6azjbH70/SXKM5tNRplgW8TNprMDuntdvV9wNkFs
 9TyM02V5aWxFfI42+aivc4KEw69SE9KXwC7FSf5wXzuTot97N9Phj/Z3+jx443jo2NR34XgF
 89cct7wJMjOF7bBefo0fPPZQuIma0Zym71cP61OP/i11ahNye6HGKfxGCOcs5wW9kRQEk8P9
 M/k2wt3mt/fCQnuP/mWutNPt95w9wSsUyATLmtNrwccz63XOwU0EVcufkQEQAOfX3n0g0fZz
 Bgm/S2zF/kxQKCEKP8ID+Vz8sy2GpDvveBq4H2Y34XWsT1zLJdvqPI4af4ZSMxuerWjXbVWb
 T6d4odQIG0fKx4F8NccDqbgHeZRNajXeeJ3R7gAzvWvQNLz4piHrO/B4tf8svmRBL0ZB5P5A
 2uhdwLU3NZuK22zpNn4is87BPWF8HhY0L5fafgDMOqnf4guJVJPYNPhUFzXUbPqOKOkL8ojk
 CXxkOFHAbjstSK5Ca3fKquY3rdX3DNo+EL7FvAiw1mUtS+5GeYE+RMnDCsVFm/C7kY8c2d0G
 NWkB9pJM5+mnIoFNxy7YBcldYATVeOHoY4LyaUWNnAvFYWp08dHWfZo9WCiJMuTfgtH9tc75
 7QanMVdPt6fDK8UUXIBLQ2TWr/sQKE9xtFuEmoQGlE1l6bGaDnnMLcYu+Asp3kDT0w4zYGsx
 5r6XQVRH4+5N6eHZiaeYtFOujp5n+pjBaQK7wUUjDilPQ5QMzIuCL4YjVoylWiBNknvQWBXS
 lQCWmavOT9sttGQXdPCC5ynI+1ymZC1ORZKANLnRAb0NH/UCzcsstw2TAkFnMEbo9Zu9w7Kv
 AxBQXWeXhJI9XQssfrf4Gusdqx8nPEpfOqCtbbwJMATbHyqLt7/oz/5deGuwxgb65pWIzufa
 N7eop7uh+6bezi+rugUI+w6DABEBAAHCwXwEGAEIACYCGwwWIQQb2cqtc1xMOkYN/MpN3hD3
 AP+DWgUCXw7HsgUJEqkpoQAKCRBN3hD3AP+DWrrpD/4qS3dyVRxDcDHIlmguXjC1Q5tZTwNB
 boaBTPHSy/Nksu0eY7x6HfQJ3xajVH32Ms6t1trDQmPx2iP5+7iDsb7OKAb5eOS8h+BEBDeq
 3ecsQDv0fFJOA9ag5O3LLNk+3x3q7e0uo06XMaY7UHS341ozXUUI7wC7iKfoUTv03iO9El5f
 XpNMx/YrIMduZ2+nd9Di7o5+KIwlb2mAB9sTNHdMrXesX8eBL6T9b+MZJk+mZuPxKNVfEQMQ
 a5SxUEADIPQTPNvBewdeI80yeOCrN+Zzwy/Mrx9EPeu59Y5vSJOx/z6OUImD/GhX7Xvkt3kq
 Er5KTrJz3++B6SH9pum9PuoE/k+nntJkNMmQpR4MCBaV/J9gIOPGodDKnjdng+mXliF3Ptu6
 3oxc2RCyGzTlxyMwuc2U5Q7KtUNTdDe8T0uE+9b8BLMVQDDfJjqY0VVqSUwImzTDLX9S4g/8
 kC4HRcclk8hpyhY2jKGluZO0awwTIMgVEzmTyBphDg/Gx7dZU1Xf8HFuE+UZ5UDHDTnwgv7E
 th6RC9+WrhDNspZ9fJjKWRbveQgUFCpe1sa77LAw+XFrKmBHXp9ZVIe90RMe2tRL06BGiRZr
 jPrnvUsUUsjRoRNJjKKA/REq+sAnhkNPPZ/NNMjaZ5b8Tovi8C0tmxiCHaQYqj7G2rgnT0kt
 WNyWQQ==
Organization: Red Hat
In-Reply-To: <e54e0b31-1b92-4110-b8ac-4737893fe197@linux.alibaba.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: z87AOZvB9ps6YU2-BZlwUjpVwVfTsd6Z-B8ppuTvQ18_1746542186
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

On 06.05.25 05:33, Baolin Wang wrote:
> 
> 
> On 2025/5/2 23:31, David Hildenbrand wrote:
>> On 02.05.25 15:10, Daniel Gomez wrote:
>>> On Fri, May 02, 2025 at 09:18:41AM +0100, David Hildenbrand wrote:
>>>> On 02.05.25 03:02, Baolin Wang wrote:
>>>>>
>>>>>
>>>>> On 2025/4/30 21:24, Daniel Gomez wrote:
>>>>>> On Wed, Apr 30, 2025 at 02:20:02PM +0100, Ville Syrjälä wrote:
>>>>>>> On Wed, Apr 30, 2025 at 02:32:39PM +0800, Baolin Wang wrote:
>>>>>>>> On 2025/4/30 01:44, Ville Syrjälä wrote:
>>>>>>>>> On Thu, Nov 28, 2024 at 03:40:41PM +0800, Baolin Wang wrote:
>>>>>>>>> Hi,
>>>>>>>>>
>>>>>>>>> This causes a huge regression in Intel iGPU texturing performance.
>>>>>>>>
>>>>>>>> Unfortunately, I don't have such platform to test it.
>>>>>>>>
>>>>>>>>>
>>>>>>>>> I haven't had time to look at this in detail, but presumably the
>>>>>>>>> problem is that we're no longer getting huge pages from our
>>>>>>>>> private tmpfs mount (done in i915_gemfs_init()).
>>>>>>>>
>>>>>>>> IIUC, the i915 driver still limits the maximum write size to
>>>>>>>> PAGE_SIZE
>>>>>>>> in the shmem_pwrite(),
>>>>>>>
>>>>>>> pwrite is just one random way to write to objects, and probably
>>>>>>> not something that's even used by current Mesa.
>>>>>>>
>>>>>>>> which prevents tmpfs from allocating large
>>>>>>>> folios. As mentioned in the comments below, tmpfs like other file
>>>>>>>> systems that support large folios, will allow getting a highest
>>>>>>>> order
>>>>>>>> hint based on the size of the write and fallocate paths, and then
>>>>>>>> will
>>>>>>>> attempt each allowable huge order.
>>>>>>>>
>>>>>>>> Therefore, I think the shmem_pwrite() function should be changed to
>>>>>>>> remove the limitation that the write size cannot exceed PAGE_SIZE.
>>>>>>
>>>>>> To enable mTHP on tmpfs, the necessary knobs must first be enabled
>>>>>> in sysfs
>>>>>> as they are not enabled by default IIRC (only THP, PMD level).
>>>>>> Ville, I
>>>>>> see i915_gemfs the huge=within_size mount option is passed. Can you
>>>>>> confirm
>>>>>> if /sys/kernel/mm/transparent_hugepage/hugepages-*/enabled are also
>>>>>> marked as
>>>>>> 'always' when the regression is found?
>>>>>
>>>>> The tmpfs mount will not be controlled by
>>>>> '/sys/kernel/mm/transparent_hugepage/hugepages-*Kb/enabled' (except for
>>>>> the debugging options 'deny' and 'force').
>>>>
>>>> Right, IIRC as requested by Willy, it should behave like other FSes
>>>> where
>>>> there is no control over the folio size to be used.
>>>
>>> Thanks for reminding me. I forgot we finally changed it.
>>>
>>> Could the performance drop be due to the driver no longer using
>>> PMD-level pages?
>>
>> I suspect that the faulting logic will now go to a smaller order first,
>> indeed.
>>
>> ... trying to digest shmem_allowable_huge_orders() and
>> shmem_huge_global_enabled(), having a hard time trying to isolate the
>> tmpfs case: especially, if we run here into the vma vs. !vma case.
>>
>> Without a VMA, I think we should have "mpfs will allow getting a highest
>> order hint based on and fallocate paths, then will try each allowable
>> order".
>>
>> With a VMA (no access hint), "we still use PMD-sized order to locate
>> huge pages due to lack of a write size hint."
>>
>> So if we get a fallocate()/write() that is, say, 1 MiB, we'd now
>> allocate an 1 MiB folio instead of a 2 MiB one.
> 
> Right.
> 
> So I asked Ville how the shmem folios are allocated in the i915 driver,
> and to see if we can make some improvements.

Maybe preallocation (using fallocate) might be reasonable for their use 
case: if they know they will consume all that memory either way. If it's 
sparse, it's more problematic.

-- 
Cheers,

David / dhildenb

