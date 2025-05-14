Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5393CAB73B3
	for <lists+intel-gfx@lfdr.de>; Wed, 14 May 2025 19:57:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D319610E6F4;
	Wed, 14 May 2025 17:57:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="bXkoUJW7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8776C10E6F9
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 May 2025 17:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1747245456;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=0bWZ4WIW6USGmd3fCtPku9lyZiPCoKVx7jpPxXIn3KU=;
 b=bXkoUJW7imyM8Xf2/K5SdcIpt3XkGWWd6Ox79TkP5iHS1ln4xXzicqvgaG/7c/s2n4qPui
 XlzqqGIQZFWDIHkeS5KisH8nAuhkD6/qD+pycGxZB+Tn0hQ8bXRcsVbxyO530zDUe9KUix
 fu9d3D1BWPx4e3CLOIwwd1F0Budd6xA=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-106-WKs0F3G7OWqxW5GANkI7XQ-1; Wed, 14 May 2025 13:57:34 -0400
X-MC-Unique: WKs0F3G7OWqxW5GANkI7XQ-1
X-Mimecast-MFC-AGG-ID: WKs0F3G7OWqxW5GANkI7XQ_1747245452
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-3a1f6c5f4f2so15039f8f.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 May 2025 10:57:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747245452; x=1747850252;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:from:references:to:subject:user-agent:mime-version
 :date:message-id:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0bWZ4WIW6USGmd3fCtPku9lyZiPCoKVx7jpPxXIn3KU=;
 b=qOUtIyPbxUN9dke2x9a6JrFH5fUGRUPTAvu1ezR3zAjMCrM7TQZ0kUq3L1AD5ctebW
 iFtu0jXwpRjylIqEnpW9R/PpHxBBLDXyBf9NL1A8gqD9Jmg1z/YC4ku/g2DVCEBiu/U0
 KvzLWZ7AMwbxAoVzTzhsDZjfuJRnrz5Hnqy7fSWiTCIg9Ok84Hu8G1HWATFUeOykL984
 E0vWfZ1MdtBieZKCN/Arp550P266cGoBvlkE50MBFRMNFEJJS0E2d0T0+kUs9q+n7CSk
 j2iTcBn8uWCEVpKcj6zOP9y+gvpDF7h0lwJndZq4SvpB5ymU0Jv/5cL47chceXC9dlbl
 ckfw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW7n5xXXkLyKHvj898xZcu5tqwQkPkt1kbfde2GS+jvfqj8TRB8wn8WWzWuBK+OyvmtCccqRKHBmiw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyEyJZLv5EUvApxVcWSKmiDv56KvC1fOGPihi4Y+YREAgJyfeOK
 W6kLvCASvy7YReZ40tBpMGKFa3eVzDOoeFtE4GMpjyE8t2bHj8dGUEMQHLDBb5F0Aspdl555R1A
 y6gC2lWKth8rx+VE4XNDwB3pcfr1WdX8HhpPljzrjGtGLSb8ZeUHMpiH+uqgL7CSoJw==
X-Gm-Gg: ASbGncuymqu1WJTGZploXNwINgiDPgwjsTSr0NRIK4vkCJHfhHhZWMsx902JZlOJ+fM
 zPjFRI8F8wjulMaJa5fOhjitFF+Qe1iObggILb58MSTNkTk5oHRLpvGbQgptBUV2sUAQtU5LGaN
 +5oAEA0F9/LW23K2wp8qi3gdaNqNjP0pTrky4CZb6Xg3vGMH1mnDSJBLUSlq5LvWfLLfcEzBoYC
 wMLDqJeYTpsclesxeMsfgHbv78HXTay8U7ze0JxP5dIv7CNH8DvC3yHsWjP21+GOdjVSsJh48It
 dtvwTElt0PHrJdW3noSUKdwKAqHAczGJVCblgKM78LGnWNM+oAg0h9lx+CStlA3LYefCD6Bwa54
 yYkGEuezCLpd+9uvRlUsMWXg0rXXAFxsB83rrzE8=
X-Received: by 2002:a05:6000:430d:b0:3a0:b5db:559a with SMTP id
 ffacd0b85a97d-3a349954e89mr3786761f8f.59.1747245452392; 
 Wed, 14 May 2025 10:57:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFp4OKdBffaHI+7gilOZzshfSllV9gdjyqy9+7eDS0fOGPhf7CpV4/kX9mFGXIv7GQk11jdug==
X-Received: by 2002:a05:6000:430d:b0:3a0:b5db:559a with SMTP id
 ffacd0b85a97d-3a349954e89mr3786725f8f.59.1747245451911; 
 Wed, 14 May 2025 10:57:31 -0700 (PDT)
Received: from ?IPV6:2003:d8:2f15:6200:d485:1bcd:d708:f5df?
 (p200300d82f156200d4851bcdd708f5df.dip0.t-ipconnect.de.
 [2003:d8:2f15:6200:d485:1bcd:d708:f5df])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a1f58ecadfsm20235782f8f.22.2025.05.14.10.57.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 14 May 2025 10:57:31 -0700 (PDT)
Message-ID: <31998178-7f18-4c5c-9207-180998768cfe@redhat.com>
Date: Wed, 14 May 2025 19:57:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/11] mm: introduce pfnmap_track() and
 pfnmap_untrack() and use them for memremap
To: "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, x86@kernel.org,
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
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>,
 Pedro Falcato <pfalcato@suse.de>, Peter Xu <peterx@redhat.com>,
 Ingo Molnar <mingo@kernel.org>
References: <20250512123424.637989-1-david@redhat.com>
 <20250512123424.637989-4-david@redhat.com>
 <beqj5nkucukfi7nq7cptzqwksugo5dkljzjg2opzlize7ixfvc@q27zsivgbcow>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 WNyWQQ==
Organization: Red Hat
In-Reply-To: <beqj5nkucukfi7nq7cptzqwksugo5dkljzjg2opzlize7ixfvc@q27zsivgbcow>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: WaDq7S2PvDHiOCAQkynl1THvkCvjOZHn4Hdv9MQajnk_1747245452
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

On 13.05.25 19:40, Liam R. Howlett wrote:
> * David Hildenbrand <david@redhat.com> [250512 08:34]:
>> Let's provide variants of track_pfn_remap() and untrack_pfn() that won't
>> mess with VMAs, and replace the usage in mm/memremap.c.
>>
>> Add some documentation.
>>
>> Reviewed-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
>> Acked-by: Ingo Molnar <mingo@kernel.org> # x86 bits
>> Signed-off-by: David Hildenbrand <david@redhat.com>
> 
> Small nit with this one, but either way:
> 
> Reviewed-by: Liam R. Howlett <Liam.Howlett@oracle.com>

Thanks!

[...]

> 
> The other user is pfnmap_track_ctx_alloc() in mm/memory.c which is
> called from remap_pfn_range(), which also has addr.
> 
> Couldn't we just use the address directly?
> 
> I think the same holds for untrack as well.

Hm, conceptually, I want the "pfntrack" interface to consume ... PFNs :)

Actually, I was thinking about converting the "size" parameter to 
nr_pages as well, but decided to leave that for another day.

... because I really should be working on (... checking todo list ...) 
anything else but PAT at this point.

So unless there are strong feelings, I'll leave it that way (the way the 
old interface also used it), and add it to my todo list (either make it 
an address or make size -> nr_pages).

Thanks for all the review Liam!

-- 
Cheers,

David / dhildenb

