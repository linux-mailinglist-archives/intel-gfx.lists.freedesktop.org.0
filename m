Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2B1AB4EDD
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 11:11:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6879710E4FB;
	Tue, 13 May 2025 09:11:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="eUaUJ8lI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FE4D10E4F8
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 May 2025 09:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1747127483;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=JSlPm88SIkjkiBRZsyS46kSgWynYHRXFDyfKf5tWqyE=;
 b=eUaUJ8lIiPOGVMWHSGYfC834EJeydgK3eiXWefCk6H7MkVjq+7T2hv5wHfrC1kAcs2cJm4
 qzdnG28CbXRk+IFgqTM+uTF07s11LKeCs45tJssv4Nvth0BM3cASApQ/bXB4JdM09kFJJE
 NiPdEHrUWkH6hRSHN4f1MtSY8hpP/6E=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-517-e6tQwfnOPdqAMF-YNsjO0Q-1; Tue, 13 May 2025 05:11:21 -0400
X-MC-Unique: e6tQwfnOPdqAMF-YNsjO0Q-1
X-Mimecast-MFC-AGG-ID: e6tQwfnOPdqAMF-YNsjO0Q_1747127481
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-43efa869b0aso40109715e9.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 May 2025 02:11:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747127481; x=1747732281;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:from:references:cc:to:subject:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=JSlPm88SIkjkiBRZsyS46kSgWynYHRXFDyfKf5tWqyE=;
 b=bp/HSDNHlHP/He3TVspoSMO6fZLhH8gjru1jjNQ0B469D5bRtHiHun3zRiiKzZcjfL
 4uo0fZupsqkp+S0Z0i/PG1EjqsL2p32okgl9Z15mLRZaYguBBF9xkPb4hDX9eXBRR02E
 MREnZXEJ+7n1hFuWAsgtG+1Wmgm+uveohEDDBlIlV8vUisLcL+T3qy67MXXYTBukW+AG
 luEmOO5lZUGIykgb9jMgWvnkh95Kj5JDUvZCCX3bZ5mVfHg95nnMuxOm+U9cKvMxsZQ7
 39VGYfTy/xo/d0y9pV0UDB1JhGDbvkY0REkX8rUqHWTTCWmMWa2NpRiQK6BjLuzVbACD
 /kpA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVnI5fpnKJKG6AJIls7Tx9SAA6V8CFTvhkJfQxCTA235Q+Am36RUQUJvkinmbnJRXWJ80w+c4KAuvg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwMKS7C+IliVKeLbl1iLOLvhFTkVlG7vXM55nUn3wAruZO171Am
 PBbTkTc+oqkC3T7jy0liuwHP5/1Nf/Z2rnJy/Dkuvw+eDtuyiQMWP+bTZShxRa0j08DVVGBAtX4
 Dq/ALqOfDNRNKwR3zIjc9KFOCwgTC6rHfHxcZTiY+xYwP1TdH9OkaQa470WlvTP0Jpg==
X-Gm-Gg: ASbGncuhx4nVdTvx5oGf8GFPA9B0byRnRruY6SGGH2zrUz9ZdN6700Tdg+uP0GzaoCp
 +YVZtbrRyzZSCCZ+f3Nb+JWFoA/LBzfYb7MYhsRyfJr0GL/LeV9bR7Kx62TgHGT3qk1UHivNEov
 qF8C4tPcycu4/qj2+MelGB4D7atmhQvgovsq2v6dlfsnfzUhhP58yrm5JBgrhcI15W3atKBzJ8H
 7EqsAYEJrEQZb6PKBgoJjoIFQQy/MKDJu3HShs3vrRnITMoVcKU0+HrXU1lHiIV09t84icnI1Bm
 npPjAEcMkQxyE0KU4TfaOMiNKKzB8+kFltVJTolP4EwQ5Xew2mdOkAQ9dA25diKKsS+DaWZKRds
 dMGYamIrbQALw8XEWyCqDgj3SerlmYLzUGZsRnUI=
X-Received: by 2002:a05:600c:1da8:b0:43c:fb95:c76f with SMTP id
 5b1f17b1804b1-442d6d1f997mr156291045e9.9.1747127480764; 
 Tue, 13 May 2025 02:11:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9ghet9aF8amZilO/vkHy1B4XFzTUPfjgkdweKtN1NAAJCvLYTyhLoiOI22rO51NhAW8dGZA==
X-Received: by 2002:a05:600c:1da8:b0:43c:fb95:c76f with SMTP id
 5b1f17b1804b1-442d6d1f997mr156290775e9.9.1747127480386; 
 Tue, 13 May 2025 02:11:20 -0700 (PDT)
Received: from ?IPV6:2003:d8:2f4d:1a00:4fdf:53e2:1a36:ba34?
 (p200300d82f4d1a004fdf53e21a36ba34.dip0.t-ipconnect.de.
 [2003:d8:2f4d:1a00:4fdf:53e2:1a36:ba34])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-442cd3af15bsm203828665e9.30.2025.05.13.02.11.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 13 May 2025 02:11:19 -0700 (PDT)
Message-ID: <207630dc-75a4-43cb-b135-84d4d9d5beb5@redhat.com>
Date: Tue, 13 May 2025 11:11:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/11] x86/mm/pat: inline memtype_match() into
 memtype_erase()
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
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
 "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka
 <vbabka@suse.cz>, Jann Horn <jannh@google.com>,
 Pedro Falcato <pfalcato@suse.de>, Peter Xu <peterx@redhat.com>
References: <20250512123424.637989-1-david@redhat.com>
 <20250512123424.637989-10-david@redhat.com>
 <81aa38a0-ae35-41b1-900a-cc60f5367d06@lucifer.local>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 WNyWQQ==
Organization: Red Hat
In-Reply-To: <81aa38a0-ae35-41b1-900a-cc60f5367d06@lucifer.local>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: bDgJSmwfdQSuDYioJQPlTPXIQyws7RbIJ2TZyF5ebsE_1747127481
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

On 12.05.25 18:49, Lorenzo Stoakes wrote:
> On Mon, May 12, 2025 at 02:34:22PM +0200, David Hildenbrand wrote:
>> Let's just have it in a single function. The resulting function is
>> certainly small enough and readable.
>>
>> Signed-off-by: David Hildenbrand <david@redhat.com>
> 
> Nice, great bit of refactoring :) the new version is considerably clearer.

Thanks!

-- 
Cheers,

David / dhildenb

