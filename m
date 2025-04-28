Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF0AA9F580
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 18:19:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C203E10E5FF;
	Mon, 28 Apr 2025 16:19:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="F51mqulN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6181B10E5FF
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Apr 2025 16:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745857187;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=VmOzNNa2lSW/GlQQhEhQ9IBRbBC+qenaKrXSKelhh2w=;
 b=F51mqulNPQfYjAmKzsiitzCqNhbwPNn3S4msXLwEG+0mAjB2JSNuUiggtoh0t5qCtyEjtq
 DrPd+YFGHHnOme20APBmjGBGA7UZ+7A5S6QPzc+dWeseCYUxxkYDCTykEfGK3aDle4plwF
 mKFZXsn3f6e7G2ERR7qfFbFmjRG/Dms=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-375-3JlptvSbM9O-J8ioYKRBAw-1; Mon, 28 Apr 2025 12:19:44 -0400
X-MC-Unique: 3JlptvSbM9O-J8ioYKRBAw-1
X-Mimecast-MFC-AGG-ID: 3JlptvSbM9O-J8ioYKRBAw_1745857183
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-3913b2d355fso1366692f8f.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Apr 2025 09:19:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745857183; x=1746461983;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:from:references:cc:to:subject:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=VmOzNNa2lSW/GlQQhEhQ9IBRbBC+qenaKrXSKelhh2w=;
 b=tKAoekm0lN76BhUvTpybNznZ9wESJTUva/7b7FgNtCsqE6HmuEcTNouFRqcgXa24Lb
 s7DwsKKmazkM0x5MRUgrVytg4EULUnLtXZl6lkPxKb7ZUEbhtY54omIpPGvUtXBHkour
 qvUUb3jZMQJ378+jBRkLirc/nsl3+hqpUOkGuxqTy174D/FJd8yO3Px7M4jGzMJVexnE
 OPKodPjbGf5pyyPYUi8HY0jmJrNWin/bS2GvG1zu27NYh3c5o3cd4mYxfWmgrn2BLyRQ
 ZL+EnmszbzlzZD2PsXWEx0R/riQGfcjPk6nUJxXW57HYX8rrr8sw7+ooIQZRnq+Jsr25
 hOCw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVbid4SJ5p/bLRO9ZDxNaLrKgteoKinWKKh8LjFI9NKrrgxGLUy1pC+Hr6pgaLlOTf0Uz1SNaoakAI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzcOg9IoWYQhK0wLZraCoYLU5ZKh3w9MVZFG3XvWeaap4TmT5Ll
 cZerNLY7pCS7jllr6QTmF0YrH8FnggS7hsDrLzdn9D4K2cIK0fVPSRjWMZWVks/zDJxU6mDeNtJ
 y7ayNTpAb7TBlgT3+nosqwubBDouGvZDYx4G8XN8leO4Q1lwkjIN4UUcTcb29JWwu6g==
X-Gm-Gg: ASbGncu9BF86cqWrrJMErIOqVxpRU/lBB++nfvI9JvfWI88gQ+is8wZalbZBAvGxYaC
 yXd8oqqQD7B2OKVO0nFQIyMjHBIx0mDg0oY1H9TcnCtIGXTgRuLqTk3sXiTWdEOXjHDD794NfJF
 Hn2Oxhh5hymHuYR8Hja0YrCMGIMCHddCdbQhuH6gQ8ipmYxCjzyPKMEq00MNjXAwUPF3FHQHaQP
 Fn/jbvh2vyMEz5E/LHAP0xti7a7vMpNxCZdS4Q9ESOhlo4eWv2/QCt49ZD9YzPfLyMHKGk/F8T/
 tdxhNsKZsWPWP6jiNPO6q+yqTwQ39inll3xAf2b/UDiL8kteo8heWE53mP4OG2V7U9V72yVQyDF
 yeBKwBQhHMJYhvCsAqro8V2s5+vY9oVq8AtZ2cg==
X-Received: by 2002:a05:6000:40cb:b0:390:e5c6:920 with SMTP id
 ffacd0b85a97d-3a07aa5aae6mr6979537f8f.3.1745857182947; 
 Mon, 28 Apr 2025 09:19:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGfmXkFACO0g+j1lWpGRrjxvjpCuhLDHs85OpH7KxVI0nfzMRleb7eHjmZesdIvv0+FDZpOXQ==
X-Received: by 2002:a05:6000:40cb:b0:390:e5c6:920 with SMTP id
 ffacd0b85a97d-3a07aa5aae6mr6979515f8f.3.1745857182529; 
 Mon, 28 Apr 2025 09:19:42 -0700 (PDT)
Received: from ?IPV6:2003:d8:2f32:c200:9add:4a7a:46aa:f740?
 (p200300d82f32c2009add4a7a46aaf740.dip0.t-ipconnect.de.
 [2003:d8:2f32:c200:9add:4a7a:46aa:f740])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4409d29b990sm166199255e9.4.2025.04.28.09.19.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Apr 2025 09:19:41 -0700 (PDT)
Message-ID: <3feed348-a646-4a41-b9d4-9df788b3ef85@redhat.com>
Date: Mon, 28 Apr 2025 18:19:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 01/11] x86/mm/pat: factor out setting cachemode into
 pgprot_set_cachemode()
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
References: <20250425081715.1341199-1-david@redhat.com>
 <20250425081715.1341199-2-david@redhat.com>
 <da28d743-8622-46fc-aa60-5db9c776bd87@lucifer.local>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 WNyWQQ==
Organization: Red Hat
In-Reply-To: <da28d743-8622-46fc-aa60-5db9c776bd87@lucifer.local>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: fHwtIj_6W4Z7JkFF4Jye41FoAZg9J5mn-6BgIrCoc94_1745857183
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

n 0;
>>   }
>>
>> @@ -1073,10 +1072,8 @@ void track_pfn_insert(struct vm_area_struct *vma, pgprot_t *prot, pfn_t pfn)
>>   	if (!pat_enabled())
>>   		return;
>>
>> -	/* Set prot based on lookup */
> 
> We're losing a comment here but who cares, it's obvious what's happening.
> 

Yeah, it's now self-documented :)

lookup ... set cachemode


Thanks!

-- 
Cheers,

David / dhildenb

