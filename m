Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B2CAA6B73
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 09:18:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2832B10E8BA;
	Fri,  2 May 2025 07:18:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="ZX+mt2V5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3427E10E8BA
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 May 2025 07:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1746170325;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=WvVwxa/l0Dpro0/sAgCe/uKQ25ooLoIul7E/bG/CZSA=;
 b=ZX+mt2V55iCOxdF0asN5aPU/VH+R+/j8Xh/5GMzeJZc/Qr10/WFj8+vCfVYwagzDoHxL+D
 suQvQhAS1Huydm/7Q6wotbM4pwjBB1EspU7jQPpXY40UKaK8YRXmIrp55qlMfSg+DyRIK9
 r+44YUYJeQ1xjks1g3WJtro+kHw2m2k=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-492-Pfu9liboPSOjVVY7tdYL6g-1; Fri, 02 May 2025 03:18:44 -0400
X-MC-Unique: Pfu9liboPSOjVVY7tdYL6g-1
X-Mimecast-MFC-AGG-ID: Pfu9liboPSOjVVY7tdYL6g_1746170323
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-39126c3469fso433539f8f.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 May 2025 00:18:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746170323; x=1746775123;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:from:references:cc:to:subject:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=WvVwxa/l0Dpro0/sAgCe/uKQ25ooLoIul7E/bG/CZSA=;
 b=tw65a1FJSMStA6OEMyWcvMmPsigIDiuZLugR9OhGzpqD5N49hLZ8QHey6/y89OljH/
 Z/qCv9lKMooVoPAZ2Kx9kSaWtBfJx07BoAr0tr69Pf8+1yED4XF9mXUCXYKzYUX8n6mw
 qVV14RaCrpZ4Fi68ZA5A7IdGR7+kxx+fKh4fKx8od7Y41nLbCArRuWiaSl3hOK48jxXd
 YhPL2T3FdPEoMzXxaRXzwXdBDKj1drH7k3jAoZrWmBBO7Qpf6VtlywZcg9I/7lfXg9/O
 2XRMt24HW0aVEUrioohk2eq8VzVbm3jSTuaQhrw+uAx9h5M/k80pNPdVUSSc5H0TIgc4
 fB2Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUgQ6AyrLg+5kyvRtmhjAZk5mT0Nn0BkJh0ECblQJwQ46OTjP9XSX5sA/8orS6V+329U7Tn/2hDQbQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Ywuid/V8V12+g+/xhm3OUQMQiyGk8L3G8Rdb2dh2C6fEx81xtD4
 +GjAM/6O61XDqaXwll2hGziVEyXYACHydB2uYyFEo2KEEiWOqWOr489BGZwua98cVzDZiErquf5
 ZW0OmA2F1kVlzMMrJha8EQMeE4abjG2mBrGdWhBHCPqb56Y0Ze2xRxmCNegyQrrwTog==
X-Gm-Gg: ASbGncsqkcrWMBBxgD3t14qyXSk2GBHKBmyZ4iDDprHYas/2FG34f9OHz5eLtRdKu9V
 Xl2MMz6FS5rH/kcPzBAVP0L9cjnpXeyOqGYywz7i71yAEFDSq0auXb67AlvH22V0FS+jpIezlDC
 9jEXHDP7IwmQ8wDR9cwaXfhA7NQYPaWEDlTD1lhXjTtHKXwzm9cr3Lqj99gcOTJ2KpcggN2cd2Q
 6MRFj4UyttxSDSxzmkU2Ckg4NaBcCPRbUEITIEDKdGXmUSdIdyf4GNZYtLSTwsNd6zvBJel6p6d
 DrRgznrYthanFFOcrUUXFrD5W05ZStu/H9RDIXIfBio/d6QbaDktbyY88ouo8mzZBRqxynX559e
 sG9omOUMvCDCTpoybU04/GynnuCuchAmmP+MVkRY=
X-Received: by 2002:a05:6000:420f:b0:3a0:7139:d178 with SMTP id
 ffacd0b85a97d-3a099aef9c0mr971157f8f.51.1746170323352; 
 Fri, 02 May 2025 00:18:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFyRMNgoo6YPSxUQFUuMJW5ewbRCwkZNmCBDuHOusZvSz6tTMPNpdjOI6X6GDT8vuzy7+l7EA==
X-Received: by 2002:a05:6000:420f:b0:3a0:7139:d178 with SMTP id
 ffacd0b85a97d-3a099aef9c0mr971132f8f.51.1746170322963; 
 Fri, 02 May 2025 00:18:42 -0700 (PDT)
Received: from ?IPV6:2003:cb:c713:d600:afc5:4312:176f:3fb0?
 (p200300cbc713d600afc54312176f3fb0.dip0.t-ipconnect.de.
 [2003:cb:c713:d600:afc5:4312:176f:3fb0])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a099ae338bsm1299223f8f.27.2025.05.02.00.18.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 02 May 2025 00:18:42 -0700 (PDT)
Message-ID: <72978e3a-ee67-47d4-b06d-e911bc5d57ff@redhat.com>
Date: Fri, 2 May 2025 09:18:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [REGRESSION] Re: [PATCH v3 3/6] mm: shmem: add large folio
 support for tmpfs
To: Baolin Wang <baolin.wang@linux.alibaba.com>,
 Daniel Gomez <da.gomez@kernel.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: akpm@linux-foundation.org, hughd@google.com, willy@infradead.org,
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
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 WNyWQQ==
Organization: Red Hat
In-Reply-To: <57dc4929-268b-4f3f-a0f8-43d6ec85974f@linux.alibaba.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: L9kYurIGbu7BEpfdl7wgqnGB6VcdUgEPL0GSbrY4D_E_1746170323
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

On 02.05.25 03:02, Baolin Wang wrote:
> 
> 
> On 2025/4/30 21:24, Daniel Gomez wrote:
>> On Wed, Apr 30, 2025 at 02:20:02PM +0100, Ville Syrjälä wrote:
>>> On Wed, Apr 30, 2025 at 02:32:39PM +0800, Baolin Wang wrote:
>>>> On 2025/4/30 01:44, Ville Syrjälä wrote:
>>>>> On Thu, Nov 28, 2024 at 03:40:41PM +0800, Baolin Wang wrote:
>>>>> Hi,
>>>>>
>>>>> This causes a huge regression in Intel iGPU texturing performance.
>>>>
>>>> Unfortunately, I don't have such platform to test it.
>>>>
>>>>>
>>>>> I haven't had time to look at this in detail, but presumably the
>>>>> problem is that we're no longer getting huge pages from our
>>>>> private tmpfs mount (done in i915_gemfs_init()).
>>>>
>>>> IIUC, the i915 driver still limits the maximum write size to PAGE_SIZE
>>>> in the shmem_pwrite(),
>>>
>>> pwrite is just one random way to write to objects, and probably
>>> not something that's even used by current Mesa.
>>>
>>>> which prevents tmpfs from allocating large
>>>> folios. As mentioned in the comments below, tmpfs like other file
>>>> systems that support large folios, will allow getting a highest order
>>>> hint based on the size of the write and fallocate paths, and then will
>>>> attempt each allowable huge order.
>>>>
>>>> Therefore, I think the shmem_pwrite() function should be changed to
>>>> remove the limitation that the write size cannot exceed PAGE_SIZE.
>>
>> To enable mTHP on tmpfs, the necessary knobs must first be enabled in sysfs
>> as they are not enabled by default IIRC (only THP, PMD level). Ville, I
>> see i915_gemfs the huge=within_size mount option is passed. Can you confirm
>> if /sys/kernel/mm/transparent_hugepage/hugepages-*/enabled are also marked as
>> 'always' when the regression is found?
> 
> The tmpfs mount will not be controlled by
> '/sys/kernel/mm/transparent_hugepage/hugepages-*Kb/enabled' (except for
> the debugging options 'deny' and 'force').

Right, IIRC as requested by Willy, it should behave like other FSes 
where there is no control over the folio size to be used.

-- 
Cheers,

David / dhildenb

