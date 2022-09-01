Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EB35AE87E
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 14:36:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7032D10E690;
	Tue,  6 Sep 2022 12:36:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A300F10E6CA;
 Thu,  1 Sep 2022 10:41:29 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-13.nat.spd-mgts.ru
 [109.252.119.13])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: dmitry.osipenko)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 0EC286601DF7;
 Thu,  1 Sep 2022 11:41:24 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1662028888;
 bh=4gRwEeQrpCCNInUGu4Wkln9ZnVQKU6fbLc+GiIs/ids=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=oAi2rxSwcnG0bXjo2QlMDHpLcITXazqjTc0dBalx+xOeHafTkvkjyLjXi6A6OOyur
 z7pbNTKLqD/VkqICHbjajAS8k3mrAX9GZO4wHzC1QonWNPPsB+Yz/xNrNkGHiYNqkW
 KkTeNffA7kOX5RP0brCKXhs5fgLYvkel3UkZEKV4IsG5BuPE8jfFljWb4zRoqwCW4G
 seQ5HIQoKzjXqwqMOZEyy+r7MpCNGUMFwnjvSCAObVKOgjJcGMutTDAsM5pfKtEEMm
 0OqK6C+DTZS/pjJwK1O6NhqMYskfUmdtIsJv4b93vGTms4LgyHT3lMm/bHN76TIS0u
 g+wfJ91stbLBw==
Message-ID: <b6d96128-7558-8111-71b0-5fe5502ddf4b@collabora.com>
Date: Thu, 1 Sep 2022 13:41:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Russell King <linux@armlinux.org.uk>, Lucas Stach <l.stach@pengutronix.de>,
 Christian Gmeiner <christian.gmeiner@gmail.com>
References: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
 <20220831153757.97381-10-dmitry.osipenko@collabora.com>
 <641f372f-4a30-72bb-ec8b-4fd6ff825594@amd.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <641f372f-4a30-72bb-ec8b-4fd6ff825594@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 06 Sep 2022 12:33:46 +0000
Subject: Re: [Intel-gfx] [PATCH v4 09/21] drm/etnaviv: Prepare to dynamic
 dma-buf locking specification
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
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <digetx@gmail.com>,
 kernel@collabora.com, Sumit Semwal <sumit.semwal@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Leon Romanovsky <leon@kernel.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-rdma@vger.kernel.org,
 Daniel Stone <daniel@fooishbar.org>,
 Gustavo Padovan <gustavo.padovan@collabora.com>, Chia-I Wu <olvaffe@gmail.com>,
 linux-media@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Juergen Gross <jgross@suse.com>,
 David Airlie <airlied@linux.ie>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomba@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Qiang Yu <yuq825@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexander.deucher@amd.com>,
 Amol Maheshwari <amahesh@qti.qualcomm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 9/1/22 09:50, Christian König wrote:
> Am 31.08.22 um 17:37 schrieb Dmitry Osipenko:
>> Prepare Etnaviv driver to the common dynamic dma-buf locking convention
>> by starting to use the unlocked versions of dma-buf API functions.
>>
>> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> 
> Interesting, where is the matching vmap()?
> 
> Anyway, this patch is Acked-by: Christian König <christian.koenig@amd.com>

Etnaviv maps GEM only once and then unmaps it when GEM is destroyed. The
dma-buf vmapping should happen under the reservation lock, hence only
the release function needs to be changed to the unlocked variant.

Lucas/Christian(Gmeiner), could you please check that I haven't missed
anything?

>> ---
>>   drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c
>> b/drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c
>> index 3fa2da149639..7031db145a77 100644
>> --- a/drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c
>> +++ b/drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c
>> @@ -65,7 +65,7 @@ static void etnaviv_gem_prime_release(struct
>> etnaviv_gem_object *etnaviv_obj)
>>       struct iosys_map map = IOSYS_MAP_INIT_VADDR(etnaviv_obj->vaddr);
>>         if (etnaviv_obj->vaddr)
>> -        dma_buf_vunmap(etnaviv_obj->base.import_attach->dmabuf, &map);
>> +       
>> dma_buf_vunmap_unlocked(etnaviv_obj->base.import_attach->dmabuf, &map);
>>         /* Don't drop the pages for imported dmabuf, as they are not
>>        * ours, just free the array we allocated:
> 


-- 
Best regards,
Dmitry
