Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F697AAE0AC
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 15:25:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1B5010E19E;
	Wed,  7 May 2025 13:25:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="bBjkL+Wb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05EFE10E19E
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 May 2025 13:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1746624349;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=mQ87kutm7N8Rv0SzH5/nm6rEAqlaYfaTkXSKo8noDAM=;
 b=bBjkL+WbJXsDGzkJCCSkPQ1W/BK0lf53ZQra72HXlXlr5a5oBbhI+u0oxgCEiZaEw2S2qz
 wMw1LyRKjZOVVX/OlzKOb36jOIWCKRniFE95BwW9PyxsM269SASlebP2bsTFW9Xj7rGdEe
 Tthb9kK8ptnFrqzDzjE7Bqzo7dwkXeI=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-433-0BPpvFIVOzuQbsSrK7ucJA-1; Wed, 07 May 2025 09:25:48 -0400
X-MC-Unique: 0BPpvFIVOzuQbsSrK7ucJA-1
X-Mimecast-MFC-AGG-ID: 0BPpvFIVOzuQbsSrK7ucJA_1746624346
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-43d733063cdso50668165e9.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 May 2025 06:25:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746624346; x=1747229146;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:references:cc:to:from:subject:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=mQ87kutm7N8Rv0SzH5/nm6rEAqlaYfaTkXSKo8noDAM=;
 b=H0q7tUgCHbz+LDqNw2Osl50hr+aVaYYIhOpeB+iFsbt7SHZIW9aow2YM5XDbur5CfT
 noL8LXLPK2+y1Yj/R8ry7kM6xrRqKFUq1EFyWFA1dl1HmngnKTm8U51k8aiVlQypL5Zo
 4R32NKkKEg57eXcpAtYeRpF6ZZCgsnoSDMWFhovhFtdJbkySV4pKfQEFgb5o5VMe3A9I
 g+4Dw4buOQ6338HorN0BvV4XFsq+5ZkrMpemN37Zg/FWPNTiZwHQsHMoezRkZEOR5lcq
 JreKMlh/8yYa1GtA3ZG3/yKoj0U+BFhYs5HNZHJ4oiNC2urJiBqjM0rplS5VaOsJbDXo
 K9tQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXWEThoUySkxWKEX5PP1yu8Lo6zaeEAvl2qpNbv/Uv2yPbyG8IE4TODr/6d6qKe4AshLc+LfTUeq3s=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxSj0nsUdVGh9Gzcz0EugiYxewYngJCJ8Mamd83CBCMD0/mDYdR
 eO5klTxJW7RWm8W+jLL/kZfWKZRl5xEp13X9Q1D6Dz+NxYKRKnfEMwr+O18ssmc0gBU1oFKsU6c
 7LNDHYIn/YXM3bQwuoY7pbFCYTh0WT8RQQKk3sZEYdekW0AWRMGlsNsP6IgWYvYVbTA==
X-Gm-Gg: ASbGnctlk/BNGPPEQypim3YNe6/2Ms1H39zi8ydSmMryJW+XGI6c3diA736rg3vcqAd
 tRz3zOC5/OpgR5366kzzn5lvmZrV8ebUwpYgZGJE6D78z28ZNjr3LDgB5vItwpbBNT8w2sdBIwP
 vmjOglCb+O1eQxlSkwa40Q5V5+oWoF36AvHCKy/KzJsT6vnfflgP/+JYEjSAAWUKK9HkRIrtb9E
 jyrPeboBf3eLWyspfvQnZPuWffGLO/ZjFLvzGXoVdOMShutK44NNusVUUpvGG1gx4QhfpCZ3r5n
 OK3bxyk9QX1dqNat1giXazHEJbNyGE/5Bk1DvQOVOfdx8WxuN7HZK+4oCxiHjXyzG3VZPzqhjim
 Q2/ATVF3nIrbwgwwBM+EkHxByEJMEM3KWksXmDA==
X-Received: by 2002:a05:600c:1d08:b0:43c:f78d:82eb with SMTP id
 5b1f17b1804b1-441d44c792emr31664605e9.15.1746624345749; 
 Wed, 07 May 2025 06:25:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+1Ky9C4coQ85osYWKKGHU+pocikhT4lHpCGTYLpjKz/iPr8oxTy+OB9C07fn9xoNI8fOezQ==
X-Received: by 2002:a05:600c:1d08:b0:43c:f78d:82eb with SMTP id
 5b1f17b1804b1-441d44c792emr31664025e9.15.1746624345291; 
 Wed, 07 May 2025 06:25:45 -0700 (PDT)
Received: from ?IPV6:2003:d8:2f12:d400:ed3c:fb0c:1ec0:c628?
 (p200300d82f12d400ed3cfb0c1ec0c628.dip0.t-ipconnect.de.
 [2003:d8:2f12:d400:ed3c:fb0c:1ec0:c628])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-442cd350d96sm941285e9.18.2025.05.07.06.25.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 07 May 2025 06:25:44 -0700 (PDT)
Message-ID: <6fa60c1d-ccbe-4bf4-a572-39711ac379ee@redhat.com>
Date: Wed, 7 May 2025 15:25:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 05/11] mm: convert VM_PFNMAP tracking to pfnmap_track()
 + pfnmap_untrack()
From: David Hildenbrand <david@redhat.com>
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
 Pedro Falcato <pfalcato@suse.de>, Peter Xu <peterx@redhat.com>,
 Suren Baghdasaryan <surenb@google.com>
References: <20250425081715.1341199-1-david@redhat.com>
 <20250425081715.1341199-6-david@redhat.com>
 <b92e3a0d-b878-43cf-9b68-9f7c228e45fa@lucifer.local>
 <7035fb14-c9f6-4281-9f65-b220aaa8f5c3@redhat.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 WNyWQQ==
Organization: Red Hat
In-Reply-To: <7035fb14-c9f6-4281-9f65-b220aaa8f5c3@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: fDHaq3ZgNTjuAXIB8sdCAvqR00jTva_ISnpV3T9G1Jw_1746624346
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

>>
>> Obviously my series will break this but should be _fairly_ trivial to
>> update.
>>
>> You will however have to make sure to update tools/testing/vma/* to handle
>> the new functions in userland testing (they need to be stubbed otu).

Hmm, seems to compile. I guess, because we won't have
"__HAVE_PFNMAP_TRACKING" defined in the test environment, so
the existing stubs in there already seem to do the trick.


+#else
+static inline int vma_pfnmap_track_ctx_dup(struct vm_area_struct *orig,
+              struct vm_area_struct *new)
+{
+      return 0;
  }
+static inline void vma_pfnmap_track_ctx_release(struct vm_area_struct *vma)
+{
+}
+#endif


-- 
Cheers,

David / dhildenb

