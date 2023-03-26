Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 653F06C935D
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Mar 2023 11:19:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8064A10E09D;
	Sun, 26 Mar 2023 09:19:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D64610E076;
 Sun, 26 Mar 2023 09:19:31 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id x3so24187425edb.10;
 Sun, 26 Mar 2023 02:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679822369;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=iHZVFQkvBzOY5c4akiAgaCUw1iB4MGS8We/N4ruh3k8=;
 b=gqqvpvRZ0SdoxCmQqae1KSjIEjDh2PjxWE9UOelHJdAZQNfXsfpIUmhQzlSEEoqf+o
 mfQUctvn6msdbvoegyTomav7T+kjGRO3PRvwcyFXV0AWKAuqXbCTVILx//2bumI7cxGH
 KBI+kaEhRIdAt97A53YpSBEBjoJNNyonkARH4XdfaqZYtZfwdnvQNSF39wUcd7my8HKj
 m/Qtv/qshyPbwYZ1/LnrqlafjseLlHovhJs61rABrFLmZoZ/3APhoBnDgGLBifFPCQ5z
 ezjlApqFuRBYlMEJPbb34cSN6GyqZUfrFT7g8FLDS8hztVQrLVgzQQ3W+yW5jubhPOhh
 l8AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679822369;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=iHZVFQkvBzOY5c4akiAgaCUw1iB4MGS8We/N4ruh3k8=;
 b=B1EHN1tbtmSqOvzNCKvuIxoIjpDYhfSIjdkEdNMzmj3KKWksSlE8b/1sgk7bff9CYg
 cjjvXxiQOViFtbRrpdQmcLpR5Iq4uD0tWoEY3J5hIAbJcOVMKqpO6gDtN3GS32J//OEk
 nrLO9xvRLuxPyDMKS6IF625TQhhv4/rXDioZeaWf3o3RI8IkVayUI+7yGuQw8WitrF8+
 wFbU0wrhE8uZ52xxyIzWX+/rD8waFqthEAshZrmZI7NJHNFofvR5bvfRDW/potK5SU5l
 rkswi9nMa9ytq528eJ8Vh/8TVaQcLk3CpkUxISNCxQNU3Onq/KLRwTGSrIOLrRrcQvbF
 8I1g==
X-Gm-Message-State: AAQBX9cmulq50bgI54hUsupaPI2jNjmC/UFsRWoQmRq7ANpOvulnjOvs
 yM/ZY+2hVVq9F+kipGUoE+8=
X-Google-Smtp-Source: AKy350YY0uqokPOGnxU+dnpux6gC0xC75d1rTwE9/7vPu2Z8GpOMozFb6sLJdMp92bUZ13hIuhS3MA==
X-Received: by 2002:a17:906:1514:b0:92b:ae6c:23e7 with SMTP id
 b20-20020a170906151400b0092bae6c23e7mr8926676ejd.56.1679822369040; 
 Sun, 26 Mar 2023 02:19:29 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:87fb:f6c5:5d64:ee25?
 ([2a02:908:1256:79a0:87fb:f6c5:5d64:ee25])
 by smtp.gmail.com with ESMTPSA id
 c24-20020a50d658000000b00501d5432f2fsm8382000edj.60.2023.03.26.02.19.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 26 Mar 2023 02:19:28 -0700 (PDT)
Message-ID: <2631edac-a57e-638d-226c-08ea3d9b6b8d@gmail.com>
Date: Sun, 26 Mar 2023 11:19:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
References: <20230314022659.1816246-1-dmitry.osipenko@collabora.com>
 <20230314022659.1816246-2-dmitry.osipenko@collabora.com>
 <6b5644cf-6229-f99b-d429-a45d724493ee@collabora.com>
 <20c88807-8513-a816-aed9-5cd67eb5c1ed@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20c88807-8513-a816-aed9-5cd67eb5c1ed@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v13 01/10] drm/shmem-helper: Switch to
 reservation lock
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
Cc: Daniel Almeida <daniel.almeida@collabora.com>,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 Gerd Hoffmann <kraxel@redhat.com>, kernel@collabora.com,
 David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Rob Herring <robh@kernel.org>, Daniel Stone <daniel@fooishbar.org>,
 Steven Price <steven.price@arm.com>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Chia-I Wu <olvaffe@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Gurchetan Singh <gurchetansingh@chromium.org>, linux-kernel@vger.kernel.org,
 Qiang Yu <yuq825@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Am 25.03.23 um 15:58 schrieb Dmitry Osipenko:
> On 3/15/23 16:46, Dmitry Osipenko wrote:
>> On 3/14/23 05:26, Dmitry Osipenko wrote:
>>> @@ -633,7 +605,10 @@ int drm_gem_shmem_mmap(struct drm_gem_shmem_object *shmem, struct vm_area_struct
>>>   		return ret;
>>>   	}
>>>   
>>> +	dma_resv_lock(shmem->base.resv, NULL);
>>>   	ret = drm_gem_shmem_get_pages(shmem);
>>> +	dma_resv_unlock(shmem->base.resv);
>> Intel CI reported locking problem [1] here. It actually was also
>> reported for v12, but I missed that report because of the other noisy
>> reports.
>>
>> [1]
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114671v2/shard-snb5/igt@prime_vgem@sync@rcs0.html
>>
>> The test does the following:
>>
>> 1. creates vgem
>> 2. export it do dmabuf
>> 3. mmaps dmabuf
>>
>> There is an obvious deadlock there. The DRM code assumes that mmap() is
>> unlocked, while for dma-buf it's locked. I'll see how to fix it for v14.
>>
> Christian, there is a deadlock problem in drm_gem_shmem_mmap() once we
> move drm-shmem to use resv lock. The current dma-buf locking policy
> claims that importer holds the lock for mmap(), but DRM code assumes
> that obj->mmap() handles the locking itself and then the same
> obj->mmap() code path is used by both dma-buf DRM and a usual DRM object
> paths. Hence importer -> dma_buf_mmap_internal()[takes the lock] ->
> exporter -> drm_gem_shmem_mmap()[takes the lock] deadlocks.
>
> I was looking at how to fix it and to me the best option is to change
> the dma-buf locking policy, making exporter responsible for handling the
> resv lock. Changing DRM code mmap lockings might be possible too [moving
> locking to drm_gem_mmap_obj()], but will be very messy and doesn't feel
> intuitive.
>
> Want to get yours thoughts on this before sending out the dma-buf mmap()
> policy-change patch. Does the new mmap() locking policy sound good to
> you? Thanks!


IIRC we tried that before and ran into problems.

dma_buf_mmap() needs to swap the backing file of the VMA and for this 
calls fput() on the old file.

This fput() in turn could (in theory) grab the resv lock as well and 
there isn't anything we could do about that.

Just information from the back of my memory, probably best if you double 
check that.

Regards,
Christian.
