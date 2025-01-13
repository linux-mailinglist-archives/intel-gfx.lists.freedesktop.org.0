Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E886CA0B430
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 11:11:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91F8910E62C;
	Mon, 13 Jan 2025 10:11:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="MdA0HQRT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CDAA10E62C
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 10:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1736763079;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=YZBajfUNgRiEJRmGIjwkNpRomTM63CRth9yeImlQ4I4=;
 b=MdA0HQRTYt5DzQxRc93dC3oBAJSyGRsRnntS/iHjx0kFPYPFYt2WCrHp1DL8xT1fdaTh2Y
 6OwIIaQ6eow8xuhrB0Mn2USD2T1QYY7OzdbTp+GQsOjaI+5d4KSOM5bvKDIk9c65sBoAuQ
 8vK0+SH5EeW0SchrX4r8yNQEdwlkG0Q=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-626-iXzfT2MSO1CrmWizrHPuCQ-1; Mon, 13 Jan 2025 05:11:13 -0500
X-MC-Unique: iXzfT2MSO1CrmWizrHPuCQ-1
X-Mimecast-MFC-AGG-ID: iXzfT2MSO1CrmWizrHPuCQ
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-aaf5ca740aeso351477766b.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 02:11:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736763072; x=1737367872;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:from:references:cc:to:subject:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=YZBajfUNgRiEJRmGIjwkNpRomTM63CRth9yeImlQ4I4=;
 b=PxuEsj2/3+rTSe/A9si3lT1MfVF3cUFYSGMy5KeheaQbOZWwWdrnP1I4WX55ZzzUSS
 bSSwb9FCRoFW9xGXY0nS0nrMX/6PwsE1hMUvAX12HpL3OZcW33vHr0wPT87GoGy0011B
 9uISg07slzJXTqA19WkAXhfZKBaLDejPdfQIGrUGoPTtc1/8vDNgi7PktfDZZ2JmP9oc
 hzBCQEvNHpsiVrDakA93IF/xZcDB0plT87IThjDQFwWXseYklNRw/a4EoIbw54fR39NV
 xxOUSfKajsd501MMeqIgylz/P/onzwveo3Lq+evK7IZu8IMCNHhcroUM1d9SEJqRLf8x
 tKxw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXmOC5MEAsX0Jp8SoPqO3wYCKqkpYntZpMI62NHVOhszl+exyBBYyTR9r20KJUw+m+Jbfi3s0k42Jc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw918rOECNj8mgaXCfEAW8HzZKWagVUwpAobQ7ECGwgrHpzY2Ve
 f5R3ZbgFkLy/O7c9+KMLoEUdazxfsuiax1O2mzLmREYhX5kgJheTAngrLe0nX5HChLl7PFU+ORi
 0qXkYciN5m7LcYY6g3eBRx39Hi2GPpSpv//MH8hSxH3Kp4dv4wn0VJ54fGuX90rBeAA==
X-Gm-Gg: ASbGncs6UsNv0d4P1Xsjbg/qxchWt+pZqUO0cHfYKHvDTuYskioox8iL/2lrZFdyJm8
 BUDJ/62Li74EW4thHEvWLJyCNYtBpLCc8LzmCUaNndu1z11mHdjZVhww5p8GeGwJlJooFudEbRc
 q1fG0nEcmwPBPeEyHaYGggmc5IE6qu1FfZErYO7lpSf2B+m9MXf4WdxXDBZp1PmAoB3SCW0mAKh
 ErYFVDVOumEoTNKdBYAQ8ofjLqPfedI8LTbghdZbVNNo69hhxJpKD+SQ7zJNJHcO1ZYK0ILJrLF
 lxxli6uhmJmH7sI=
X-Received: by 2002:a17:906:7953:b0:aa6:6ea7:e5a7 with SMTP id
 a640c23a62f3a-ab2ab6f348cmr1725617366b.28.1736763072052; 
 Mon, 13 Jan 2025 02:11:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHdirr8D1MdJ8hZhK3LadmHC0HxERF0KeEuDEciej7XDiPtcSZAmFDQxQhmEiGpM73ALQDUcw==
X-Received: by 2002:a17:906:7953:b0:aa6:6ea7:e5a7 with SMTP id
 a640c23a62f3a-ab2ab6f348cmr1725613566b.28.1736763071607; 
 Mon, 13 Jan 2025 02:11:11 -0800 (PST)
Received: from ?IPV6:2a09:80c0:192:0:5dac:bf3d:c41:c3e7?
 ([2a09:80c0:192:0:5dac:bf3d:c41:c3e7])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ab2c95615a6sm485906366b.94.2025.01.13.02.11.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Jan 2025 02:11:10 -0800 (PST)
Message-ID: <a75e6fa9-d08a-45d8-b501-a9d9d0325951@redhat.com>
Date: Mon, 13 Jan 2025 11:11:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] mm: Remove PG_reclaim
To: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>, Jens Axboe <axboe@kernel.dk>
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Chengming Zhou <chengming.zhou@linux.dev>,
 Christian Brauner <brauner@kernel.org>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Dan Carpenter <dan.carpenter@linaro.org>, David Airlie <airlied@gmail.com>,
 Hao Ge <gehao@kylinos.cn>, Jani Nikula <jani.nikula@linux.intel.com>,
 Johannes Weiner <hannes@cmpxchg.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Josef Bacik <josef@toxicpanda.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Miklos Szeredi <miklos@szeredi.hu>, Nhat Pham <nphamcs@gmail.com>,
 Oscar Salvador <osalvador@suse.de>, Ran Xiaokai <ran.xiaokai@zte.com.cn>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>,
 Steven Rostedt <rostedt@goodmis.org>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Vlastimil Babka <vbabka@suse.cz>, Yosry Ahmed <yosryahmed@google.com>,
 Yu Zhao <yuzhao@google.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-mm@kvack.org,
 linux-trace-kernel@vger.kernel.org
References: <20250113093453.1932083-1-kirill.shutemov@linux.intel.com>
 <20250113093453.1932083-9-kirill.shutemov@linux.intel.com>
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
In-Reply-To: <20250113093453.1932083-9-kirill.shutemov@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: dJBdllFucUuFdKMeyVtQPLVJ-czM_0P7B67J_ILyc-A_1736763072
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

On 13.01.25 10:34, Kirill A. Shutemov wrote:
> Nobody sets the flag anymore.
> 
> Remove the PG_reclaim, making PG_readhead exclusive user of the page
> flag bit.
> 

Acked-by: David Hildenbrand <david@redhat.com>

-- 
Cheers,

David / dhildenb

