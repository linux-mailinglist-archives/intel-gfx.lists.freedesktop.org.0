Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3945933B9C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 13:01:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FB8610E0B1;
	Wed, 17 Jul 2024 11:01:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="UjtEnEAZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16F6710EA6A
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2024 11:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1721214063;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=3dokGBRJNRPX4aDNhf96lE0TemV8Sinj+IipwlZ/PiA=;
 b=UjtEnEAZcsV2/y4rwXlMlowTc7q1ptcWXufr3Neq33zB/G2CuvCjUoauN36BnCNvDH7rqe
 scGuSo3m2Uk5hQESDHvVq9f7SGw414/7Obkno+WcK/xLCp2E1Kmpm5TDC3tJycN4lcG0zT
 Mm/3MI5e/j/TYXTCncPQH+f72MbjmM8=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-358-5rVKUYt4OyCSFoUrWYl_kA-1; Wed, 17 Jul 2024 07:01:01 -0400
X-MC-Unique: 5rVKUYt4OyCSFoUrWYl_kA-1
Received: by mail-lj1-f199.google.com with SMTP id
 38308e7fff4ca-2eebdfcb63eso66801791fa.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2024 04:01:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721214060; x=1721818860;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3dokGBRJNRPX4aDNhf96lE0TemV8Sinj+IipwlZ/PiA=;
 b=f1zS42BLCguPUjLopVA59DTi3rkhxL0xF40nqn/NsECYQNp1jx8NGqjq1Q2OMpNsD4
 i04psGCZ4UgW7MtnqfHz6J+YokdYCerJc8+Jht89sz57C5t3r49rXTrdBIZgy0nOMLKG
 JKYDewj57LMrQLR9vXbONX3yoO3zsleUxCNhOlOHkPMQI4BkgoN3CNgEJKuG6w1n0okz
 M1ukVdyOtPqGf5TMQ/uHPY9ZpnRGwgLeFYbJmwgBwvkSwwm2Wwm8uBaVoXZs0saPxeUF
 UeNeIO8DkD8Jhvc6+PesLat6tqkKF/iNRc8ngiFPgFQas110xEKpEYQehevSxrdEgmI+
 N8DA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUvDfFCECYY26PVQ2cR4ldOSFT0/pl0+Q4QLwg7D6v6+r0P2tNfO5S6PiZmJLGZM7k/CMWK60BMtd30yEal/QFr+qHn23Hf2SPSJzW2TyV4
X-Gm-Message-State: AOJu0YyKnU8n3zVM4kRFTMcUnSLKvsVuKeRUMybH0psRioJ16U0gTT9H
 Jm+v/eONl7O/Pwqg/vhC3ruLcge+J/sIUT1jzYikb4lCAhUjncNeeZ9DZtpSZXBUHHE+GpXvtST
 Nlpn6xTs8fJlwlHY54OJKlB479qIdaO511D2IohDSJGRtpESa5OCa5M8TOELzR96dTA==
X-Received: by 2002:a05:651c:201d:b0:2ee:bcf3:2686 with SMTP id
 38308e7fff4ca-2eefd0ae355mr8730081fa.21.1721214060281; 
 Wed, 17 Jul 2024 04:01:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHcZ9Od4wgDKc6WEeGi24L5FDxYMjC4X23trcMFTV8Ot8EMEAEMHaFlb/NzL91WTKBaTxT4ww==
X-Received: by 2002:a05:651c:201d:b0:2ee:bcf3:2686 with SMTP id
 38308e7fff4ca-2eefd0ae355mr8729881fa.21.1721214059803; 
 Wed, 17 Jul 2024 04:00:59 -0700 (PDT)
Received: from ?IPV6:2003:cb:c714:c00:b08b:a871:ce99:dfde?
 (p200300cbc7140c00b08ba871ce99dfde.dip0.t-ipconnect.de.
 [2003:cb:c714:c00:b08b:a871:ce99:dfde])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-427a5e77488sm169682395e9.9.2024.07.17.04.00.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jul 2024 04:00:59 -0700 (PDT)
Message-ID: <e3c17dad-a93f-4885-8f14-69874be76482@redhat.com>
Date: Wed, 17 Jul 2024 13:00:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on linux-next (next-20240712)
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "peili.dev@gmail.com" <peili.dev@gmail.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <SJ1PR11MB6129A77D51B206E29E242B95B9A22@SJ1PR11MB6129.namprd11.prod.outlook.com>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 WNyWQQ==
Organization: Red Hat
In-Reply-To: <SJ1PR11MB6129A77D51B206E29E242B95B9A22@SJ1PR11MB6129.namprd11.prod.outlook.com>
X-Mimecast-Spam-Score: 0
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

On 16.07.24 07:37, Borah, Chaitanya Kumar wrote:
> Hello Pei,
> 
> Hope you are doing well. I am Chaitanya from the linux graphics team in Intel.
> 
> This mail is regarding a regression we are seeing in our CI runs[1] on linux-next repository.
> 
> In version next-20240712[2], we saw the following regression (currently being masked by another regression)
> 
> `````````````````````````````````````````````````````````````````````````````````
> <4>[   14.530533] ============================================
> <4>[   14.530533] WARNING: possible recursive locking detected
> <4>[   14.530534] 6.10.0-rc7-next-20240712-next-20240712-g3fe121b62282+ #1 Not tainted
> <4>[   14.530535] --------------------------------------------
> <4>[   14.530535] (direxec)/171 is trying to acquire lock:
> <4>[   14.530536] ffff8881010725d8 (&mm->mmap_lock){++++}-{3:3}, at: unmap_single_vma+0xea/0x170
> <4>[   14.530541]
>                    but task is already holding lock:
> <4>[   14.530542] ffff8881010725d8 (&mm->mmap_lock){++++}-{3:3}, at: exit_mmap+0x6a/0x450
> <4>[   14.530545]
>                    other info that might help us debug this:
> <4>[   14.530545]  Possible unsafe locking scenario:
> `````````````````````````````````````````````````````````````````````````````````
> Details log can be found in [3].
> 
> After bisecting the tree, the following patch [4] seems to be the first "bad"
> commit
> 
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> commit a13252049629a8225f38a9be7d8d4fc4ff5350e8
> Author: Pei Li mailto:peili.dev@gmail.com
> Date:   Wed Jul 10 22:13:17 2024 -0700
> 
>      mm: fix mmap_assert_locked() in follow_pte()
> 
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> 
> We also verified that if we revert the patch the issue is not seen.
> 
> Could you please check why the patch causes this regression and provide a fix if necessary?

This is know.

There is a discussion along the original patch [1] on how to do it 
differently. But likely we'll tackle it differently [2]. So this patch 
should be dropped for -- which I think already happened because I cannot 
spot that patch in mm-unstable anymore.

[1] https://lore.kernel.org/all/20240710-bug12-v1-1-0e5440f9b8d3@gmail.com/

[2] https://lkml.kernel.org/r/20240712144244.3090089-1-peterx@redhat.com

-- 
Cheers,

David / dhildenb

