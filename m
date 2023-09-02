Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A31790913
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Sep 2023 20:15:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEAF910E00E;
	Sat,  2 Sep 2023 18:15:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C4E610E00E;
 Sat,  2 Sep 2023 18:15:46 +0000 (UTC)
Received: from [192.168.2.205] (109-252-153-31.dynamic.spd-mgts.ru
 [109.252.153.31])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: dmitry.osipenko)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id EC29C6607285;
 Sat,  2 Sep 2023 19:15:42 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1693678544;
 bh=FyCtyr6Dwvn+sc0weVs44aNx+SOUMWKSFsC6ZkrwZvw=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=i/sTohqUQLU0kuEePtR6JuLlMa0Hy6AMJMbLi94fbE8Y9J9Rqb7Bf/Fm/9sduYJwE
 yFEikC6EgJiNDjK2AZavhcV+lN2yOJWOrrwrMjOxcYlimbFs84OLLAWXlJRRxUW516
 KKvkFLWTzda0ojw2CT7AMqeUFI1e5ZXMXfK7srfyVDHMGu+1pWhUgWUdpJOCjeBU15
 /34Mkv2C1BJEQsZE5dxDEHAgtITx5OZnIhgmYzSzaNPO53Yo2PpgFhkzFjks2aIpKx
 T87ZjlZwKcv/3sSjF9r0vxh1xRTCohX1PjD0mrrIAN9/7pitpSbweCiq9F5hS8pVai
 HcP9XPNwwdYWA==
Message-ID: <a587b4db-c3a8-654b-a043-b698f1d98bf6@collabora.com>
Date: Sat, 2 Sep 2023 21:15:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Boris Brezillon <boris.brezillon@collabora.com>
References: <20230827175449.1766701-1-dmitry.osipenko@collabora.com>
 <20230827175449.1766701-2-dmitry.osipenko@collabora.com>
 <20230828131647.18888896@collabora.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20230828131647.18888896@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v15 01/23] drm/shmem-helper: Fix UAF in
 error path when freeing SGT of imported GEM
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
Cc: Mark Rutland <mark.rutland@arm.com>, Emma Anholt <emma@anholt.net>,
 Peter Zijlstra <peterz@infradead.org>, dri-devel@lists.freedesktop.org,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Gerd Hoffmann <kraxel@redhat.com>, kernel@collabora.com,
 Will Deacon <will@kernel.org>, David Airlie <airlied@gmail.com>,
 Steven Price <steven.price@arm.com>, intel-gfx@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Boqun Feng <boqun.feng@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Melissa Wen <mwen@igalia.com>,
 virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Chia-I Wu <olvaffe@gmail.com>, Qiang Yu <yuq825@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 8/28/23 14:16, Boris Brezillon wrote:
> On Sun, 27 Aug 2023 20:54:27 +0300
> Dmitry Osipenko <dmitry.osipenko@collabora.com> wrote:
> 
>> Freeing drm-shmem GEM right after creating it using
>> drm_gem_shmem_prime_import_sg_table() frees SGT of the imported dma-buf
>> and then dma-buf frees this SGT second time.
>>
>> The v3d_prime_import_sg_table() is example of a error code path where
>> dma-buf's SGT is freed by drm-shmem and then it's freed second time by
>> dma_buf_unmap_attachment() in drm_gem_prime_import_dev().
>>
>> Add drm-shmem GEM flag telling that this is imported SGT shall not be
>> treated as own SGT, fixing the use-after-free bug.
>>
>> Cc: stable@vger.kernel.org
>> Fixes: 2194a63a818d ("drm: Add library for shmem backed GEM objects")
>> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
>> ---
>>  drivers/gpu/drm/drm_gem_shmem_helper.c | 3 ++-
>>  include/drm/drm_gem_shmem_helper.h     | 7 +++++++
>>  2 files changed, 9 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
>> index a783d2245599..78d9cf2355a5 100644
>> --- a/drivers/gpu/drm/drm_gem_shmem_helper.c
>> +++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
>> @@ -141,7 +141,7 @@ void drm_gem_shmem_free(struct drm_gem_shmem_object *shmem)
>>  
>>  	if (obj->import_attach) {
>>  		drm_prime_gem_destroy(obj, shmem->sgt);
>> -	} else {
>> +	} else if (!shmem->imported_sgt) {
>>  		dma_resv_lock(shmem->base.resv, NULL);
>>  
>>  		drm_WARN_ON(obj->dev, shmem->vmap_use_count);
>> @@ -758,6 +758,7 @@ drm_gem_shmem_prime_import_sg_table(struct drm_device *dev,
>>  		return ERR_CAST(shmem);
>>  
>>  	shmem->sgt = sgt;
>> +	shmem->imported_sgt = true;
> 
> 
> I feel like adding more fields that can be used to do the is_imported()
> check is going to be even more confusing. Can we instead have
> 
> 	/* drm_gem_shmem_prime_import_sg_table() can be called from a
> 	 * driver specific ->import_sg_table() implementations that
> 	 * have extra failable initialization steps. Assign
> 	 * drm_gem_object::import_attach here (even though it's
> 	 * assigned in drm_gem_prime_import_dev()), so we don't end up
> 	 * with driver error paths calling drm_gem_shmem_free() with an
> 	 * imported sg_table assigned to drm_gem_shmem_object::sgt and
> 	 * drm_gem_object::import_attach left uninitialized.
> 	 */
> 	shmem->base.import_attach = attach;
> 
> here?

AFAICT, this is not going to work because obj->import_attach will be
released by drm_prime core by the time drm_gem_shmem_free() is invoked
and drm_gem_shmem_free() uses obj->import_attach as well. I'll keep this
patch around unless there will be other suggestions. To me the flag is
good enough, I'll add a clarifying comment to the code in v16.

-- 
Best regards,
Dmitry

