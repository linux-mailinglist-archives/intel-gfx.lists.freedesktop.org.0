Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 906964CF9AA
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 11:12:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4EBA10F114;
	Mon,  7 Mar 2022 10:12:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC1C010F115
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 10:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646647970;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EAtJPNtZqQT+pzIC8Y0yY8ijMFQMxHJn+7uAlJm9E2A=;
 b=Ap5JrlyFIm6Nqu766DUOeEhTHSDPQeURKKCN6Ik52vDoek/MTZxZZcQ5++BWaq+FEWfjM9
 jocsfvYWMN02jbIIc3X8XRmnCfAMdNGmv+cr+Dskh3+qyy2SAtU5R2vx4QYJ3lOayD3M6D
 y/JDT8AhCYNIaRQRmMKmueuXMFUgeTY=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-663-GcUM-z6KNsquyplOoGkE-g-1; Mon, 07 Mar 2022 05:12:47 -0500
X-MC-Unique: GcUM-z6KNsquyplOoGkE-g-1
Received: by mail-wr1-f71.google.com with SMTP id
 z1-20020adfec81000000b001f1f7e7ec99so394235wrn.17
 for <intel-gfx@lists.freedesktop.org>; Mon, 07 Mar 2022 02:12:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:organization:in-reply-to
 :content-transfer-encoding;
 bh=EAtJPNtZqQT+pzIC8Y0yY8ijMFQMxHJn+7uAlJm9E2A=;
 b=2YSVXr+yxSWURLs/kPljUfJiiuMDt2arGB6ufVlBM4JwVRx+2suVlN8WxvSdYLKU1D
 fsXxYpz8VfFsnf7kSAIUFTGlePQqG8SN6rOEUv7i5++Nt26w1+4dy/+xnT2WJwpVfRQH
 n8Ck55D4jHhSL63ipSITtNxRw4Z46ffs7lO8hhRpBxqTR1wcmmk+gVTtH47OZZhpGVNh
 RIJmFZU+c3PY/88tiAM6OQq0I3/dBTUW8DpxlEtlASqFcvU5w6XeuXxQlRRXoY3XjOL/
 Do/44jJNmnLObtODcybL01ikW97dPQEMHkcTgKc/7vzjt6moUiwar6Kl7OEm6hNiRTQZ
 y15g==
X-Gm-Message-State: AOAM530s/GdWBniX8w3KuNYZ0lHbC2QKWqzKqJgFhfupa+rm35v+A+Av
 hGFU6rRe/xywVhIYqpR8aA0qqvGTND3QMhPbv8EcDISVC4MkBPJS0tdMRkJN0k3UrpKwodddedt
 INbf5ZtBVvFWrtLlrE/R5zGxZrZgv
X-Received: by 2002:a5d:6046:0:b0:1f0:4973:142f with SMTP id
 j6-20020a5d6046000000b001f04973142fmr7674916wrt.538.1646647966511; 
 Mon, 07 Mar 2022 02:12:46 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwEV99RC6J+Vin5f1sKjrk/pcIneCd29UN8hGV1eMibccSf0NvkVF1D5zaL4pxEGhCcclmMGQ==
X-Received: by 2002:a5d:6046:0:b0:1f0:4973:142f with SMTP id
 j6-20020a5d6046000000b001f04973142fmr7674887wrt.538.1646647966292; 
 Mon, 07 Mar 2022 02:12:46 -0800 (PST)
Received: from ?IPV6:2003:cb:c705:1e00:8d67:f75a:a8ae:dc02?
 (p200300cbc7051e008d67f75aa8aedc02.dip0.t-ipconnect.de.
 [2003:cb:c705:1e00:8d67:f75a:a8ae:dc02])
 by smtp.gmail.com with ESMTPSA id
 bg18-20020a05600c3c9200b0037c2ef07493sm14954074wmb.3.2022.03.07.02.12.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Mar 2022 02:12:45 -0800 (PST)
Message-ID: <d6b09f23-f470-c119-8d3e-7d72a3448b64@redhat.com>
Date: Mon, 7 Mar 2022 11:12:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
To: Jarkko Sakkinen <jarkko@kernel.org>, linux-mm@kvack.org
References: <20220306053211.135762-1-jarkko@kernel.org>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <20220306053211.135762-1-jarkko@kernel.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=david@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH RFC 0/3] MAP_POPULATE for device memory
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
Cc: Michal Hocko <mhocko@suse.com>, zhangyiru <zhangyiru3@huawei.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Alexander Mikhalitsyn <alexander.mikhalitsyn@virtuozzo.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-unionfs@vger.kernel.org,
 codalist@coda.cs.cmu.edu, Matthew Auld <matthew.auld@intel.com>,
 Vasily Averin <vvs@virtuozzo.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, linux-mips@vger.kernel.org,
 Shakeel Butt <shakeelb@google.com>,
 Reinette Chatre <reinette.chatre@intel.com>, linux-sgx@vger.kernel.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Nathaniel McCallum <nathaniel@profian.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Alexey Gladkov <legion@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 06.03.22 06:32, Jarkko Sakkinen wrote:
> For device memory (aka VM_IO | VM_PFNMAP) MAP_POPULATE does nothing. Allow
> to use that for initializing the device memory by providing a new callback
> f_ops->populate() for the purpose.
> 
> SGX patches are provided to show the callback in context.
> 
> An obvious alternative is a ioctl but it is less elegant and requires
> two syscalls (mmap + ioctl) per memory range, instead of just one
> (mmap).

What about extending MADV_POPULATE_READ | MADV_POPULATE_WRITE to support
VM_IO | VM_PFNMAP (as well?) ?


-- 
Thanks,

David / dhildenb

