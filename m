Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A554D0157
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 15:34:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2557110E190;
	Mon,  7 Mar 2022 14:34:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6276610E1DE
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 14:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646663644;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EFYNbblCnNcuaPx8LOQ1Hn2woAp9Zpf6py8Ud+OJaTY=;
 b=JHkA6iHsw6poTI57aQopSoC4FjWrUtIrxyKlpOU3vBRG2DSVZYvMdC75dBgEHV46h6FDVE
 8C4zsRyQlB1N/AX2pVS2FEsPDkrGiciZYIME3zy7/QREXjjzNWFm2n5uPZe9H7Q8ZC4VCD
 Aib3JK1eNIUIti8k2BTbGvt54rtaMJg=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-209-TzPv-hlyOxWchWFD-rJViQ-1; Mon, 07 Mar 2022 09:34:03 -0500
X-MC-Unique: TzPv-hlyOxWchWFD-rJViQ-1
Received: by mail-wm1-f69.google.com with SMTP id
 i83-20020a1c3b56000000b00389a203e5adso710884wma.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 07 Mar 2022 06:34:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent
 :content-language:to:cc:references:from:organization:subject
 :in-reply-to:content-transfer-encoding;
 bh=EFYNbblCnNcuaPx8LOQ1Hn2woAp9Zpf6py8Ud+OJaTY=;
 b=MxQMvOpP6qMKSraPATd2qMqel9lD6OttCLSMOLd5nTtE7NQQopK+8L1/6CPAe5lul/
 FyM7BW8Jc5YFmIA0MZ19Q7t4SaIFJDXYg+aJ6nXE/bIjo4I6Nh61YQ4xfTGo5RBM5cqu
 DnJWW2xJLpk1Y5Klcu102/4sCtdiFWlrKaeNBbs0wS/fU1+c3nnhRMWCHsU5SmDb6ig6
 uSYM+5oEc9B83Gkn4UvsTCZufPQr6f1aOo5Tj6dBI1k8oGmgckT+aSJLavJ4+GtsnkZz
 09YxvqZccDMngAGFUI7Ry0AUrZd7+moAGZ7QEIspWDLqHCHHULLm1XpBn2z8NgIOkfrH
 iOGg==
X-Gm-Message-State: AOAM530oGQkjwZT0DSlZJzRIFUAtCJoXqu1YMEZyv16xqS01Z8NQrce/
 maegP2GsKznsTsKI3K6ixl7qwByLX6EXKfyjyNs+FLC9BHtkTBAOyOP5TDMbK+zNOLVJNrJjZyd
 efdxSQxxWvmt1F/2lHcnSqfMruurT
X-Received: by 2002:a7b:ca49:0:b0:389:bcde:f7ab with SMTP id
 m9-20020a7bca49000000b00389bcdef7abmr1185203wml.7.1646663642075; 
 Mon, 07 Mar 2022 06:34:02 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxPQNqWxZSPrdYEmAfxwtZ3y4N0Kf0xHJe42MVbdVGbGB8hJ9qV6tBxdbfd3Fa3fXlIgu+yCQ==
X-Received: by 2002:a7b:ca49:0:b0:389:bcde:f7ab with SMTP id
 m9-20020a7bca49000000b00389bcdef7abmr1185173wml.7.1646663641772; 
 Mon, 07 Mar 2022 06:34:01 -0800 (PST)
Received: from ?IPV6:2003:cb:c705:1e00:8d67:f75a:a8ae:dc02?
 (p200300cbc7051e008d67f75aa8aedc02.dip0.t-ipconnect.de.
 [2003:cb:c705:1e00:8d67:f75a:a8ae:dc02])
 by smtp.gmail.com with ESMTPSA id
 h12-20020a5d548c000000b001f1f99e7792sm2398939wrv.111.2022.03.07.06.33.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Mar 2022 06:33:54 -0800 (PST)
Message-ID: <dab25b2d-88f1-7ad5-c28a-15a97b38af03@redhat.com>
Date: Mon, 7 Mar 2022 15:33:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
To: Jarkko Sakkinen <jarkko@kernel.org>
References: <20220306053211.135762-1-jarkko@kernel.org>
 <d6b09f23-f470-c119-8d3e-7d72a3448b64@redhat.com> <YiYVHTkS8IsMMw6T@iki.fi>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <YiYVHTkS8IsMMw6T@iki.fi>
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
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm@kvack.org,
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

On 07.03.22 15:22, Jarkko Sakkinen wrote:
> On Mon, Mar 07, 2022 at 11:12:44AM +0100, David Hildenbrand wrote:
>> On 06.03.22 06:32, Jarkko Sakkinen wrote:
>>> For device memory (aka VM_IO | VM_PFNMAP) MAP_POPULATE does nothing. Allow
>>> to use that for initializing the device memory by providing a new callback
>>> f_ops->populate() for the purpose.
>>>
>>> SGX patches are provided to show the callback in context.
>>>
>>> An obvious alternative is a ioctl but it is less elegant and requires
>>> two syscalls (mmap + ioctl) per memory range, instead of just one
>>> (mmap).
>>
>> What about extending MADV_POPULATE_READ | MADV_POPULATE_WRITE to support
>> VM_IO | VM_PFNMAP (as well?) ?
> 
> What would be a proper point to bind that behaviour? For mmap/mprotect it'd
> be probably populate_vma_page_range() because that would span both mmap()
> and mprotect() (Dave's suggestion in this thread).

MADV_POPULATE_* ends up in faultin_vma_page_range(), right next to
populate_vma_page_range(). So it might require a similar way to hook
into the driver I guess.

> 
> For MAP_POPULATE I did not have hard proof to show that it would be used
> by other drivers but for madvice() you can find at least a few ioctl
> based implementations:
> 
> $ git grep -e madv --and \( -e ioc \)  drivers/
> drivers/gpu/drm/i915/gem/i915_gem_ioctls.h:int i915_gem_madvise_ioctl(struct drm_device *dev, void *data,
> drivers/gpu/drm/i915/i915_driver.c:     DRM_IOCTL_DEF_DRV(I915_GEM_MADVISE, i915_gem_madvise_ioctl, DRM_RENDER_ALLOW),
> drivers/gpu/drm/i915/i915_gem.c:i915_gem_madvise_ioctl(struct drm_device *dev, void *data,
> drivers/gpu/drm/msm/msm_drv.c:static int msm_ioctl_gem_madvise(struct drm_device *dev, void *data,
> drivers/gpu/drm/msm/msm_drv.c:  DRM_IOCTL_DEF_DRV(MSM_GEM_MADVISE,  msm_ioctl_gem_madvise,  DRM_RENDER_ALLOW),
> drivers/gpu/drm/panfrost/panfrost_drv.c:static int panfrost_ioctl_madvise(struct drm_device *dev, void *data,
> drivers/gpu/drm/vc4/vc4_drv.c:  DRM_IOCTL_DEF_DRV(VC4_GEM_MADVISE, vc4_gem_madvise_ioctl, DRM_RENDER_ALLOW),
> drivers/gpu/drm/vc4/vc4_drv.h:int vc4_gem_madvise_ioctl(struct drm_device *dev, void *data,
> drivers/gpu/drm/vc4/vc4_gem.c:int vc4_gem_madvise_ioctl(struct drm_device *dev, void *data,
> 
> IMHO this also provides supportive claim for MAP_POPULATE, and yeah, I
> agree that to be consistent implementation, both madvice() and MAP_POPULATE
> should work.

MADV_POPULATE_WRITE + MADV_DONTNEED/FALLOC_FL_PUNCH_HOLE is one way to
dynamically manage memory consumption inside a sparse memory mapping
(preallocate/populate via MADV_POPULATE_WRITE, discard via
MADV_DONTNEED/FALLOC_FL_PUNCH_HOLE).  Extending that whole mechanism to
deal with VM_IO | VM_PFNMAP mappings as well could be interesting.

At least I herd about some ideas where we might want to dynamically
expose memory to a VM (via virtio-mem) inside a sparse memory mapping,
and the memory in that sparse memory mapping is provided from a
dedicated memory pool managed by a device driver -- not just using
ordinary anonymous/file/hugetlb memory as we do right now.

Now, this is certainly stuff for the future, I just wanted to mention it.

-- 
Thanks,

David / dhildenb

