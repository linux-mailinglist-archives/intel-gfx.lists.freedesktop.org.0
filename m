Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B324C592FA6
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Aug 2022 15:18:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DD09C6677;
	Mon, 15 Aug 2022 13:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAFD111A136;
 Wed, 10 Aug 2022 18:53:20 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-13.nat.spd-mgts.ru
 [109.252.119.13])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: dmitry.osipenko)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 944246601C70;
 Wed, 10 Aug 2022 19:53:16 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1660157599;
 bh=xbCaL2ScXB+T0FyoL/VdM0qhBj61RQMv/0Mh8aht9Y0=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=byieT9EU43F/eRBpe3bi/nsXqvGsphP+xnN+9uCcJQiiqE+2eL+6OggtflfgiZV5H
 2tbgBedC4VmW8VqMPGH+MSJmFXxmN5L0KjGxSmnjKSb9TYnT6q+8+bdtF2Dueo+auX
 67XZQj1miiDmUza/2oi5U1NkSKSVPEVKs1DgEoiMZjakSsK7ADM0J790qkaQ8pphu7
 M1BkTB2bL3dJox2DaLhHDMTu8D3c4zfRYO6jQNX4dYPdDaIr7OfFFbIsXhbVC8CrhI
 DDaWDFnqfaqxGjPW9cdp+mVCoxjC3Q4VxEfkM8NccRtG0HVYtdCNsAeJQgHxfz0CIU
 fpCGA/irmwkpA==
Message-ID: <0863cafa-c252-e194-3d23-ef640941e36e@collabora.com>
Date: Wed, 10 Aug 2022 21:53:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20220725151839.31622-1-dmitry.osipenko@collabora.com>
 <20220725151839.31622-4-dmitry.osipenko@collabora.com>
 <6c8bded9-1809-608f-749a-5ee28b852d32@gmail.com>
 <562fbacf-3673-ff3c-23a1-124284b4456c@collabora.com>
 <87724722-b9f3-a016-c25c-4b0415f2c37f@amd.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <87724722-b9f3-a016-c25c-4b0415f2c37f@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 15 Aug 2022 13:18:12 +0000
Subject: Re: [Intel-gfx] [Linaro-mm-sig] [PATCH v2 3/5] dma-buf: Move all
 dma-bufs to dynamic locking specification
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
 Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <digetx@gmail.com>,
 kernel@collabora.com, Sumit Semwal <sumit.semwal@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-rdma@vger.kernel.org,
 Daniel Stone <daniel@fooishbar.org>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 spice-devel@lists.freedesktop.org, Chia-I Wu <olvaffe@gmail.com>,
 linux-media@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, David Airlie <airlied@linux.ie>,
 amd-gfx@lists.freedesktop.org, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 8/10/22 21:25, Christian König wrote:
> Am 10.08.22 um 19:49 schrieb Dmitry Osipenko:
>> On 8/10/22 14:30, Christian König wrote:
>>> Am 25.07.22 um 17:18 schrieb Dmitry Osipenko:
>>>> This patch moves the non-dynamic dma-buf users over to the dynamic
>>>> locking specification. The strict locking convention prevents deadlock
>>>> situation for dma-buf importers and exporters.
>>>>
>>>> Previously the "unlocked" versions of the dma-buf API functions weren't
>>>> taking the reservation lock and this patch makes them to take the lock.
>>>>
>>>> Intel and AMD GPU drivers already were mapping imported dma-bufs under
>>>> the held lock, hence the "locked" variant of the functions are added
>>>> for them and the drivers are updated to use the "locked" versions.
>>> In general "Yes, please", but that won't be that easy.
>>>
>>> You not only need to change amdgpu and i915, but all drivers
>>> implementing the map_dma_buf(), unmap_dma_buf() callbacks.
>>>
>>> Auditing all that code is a huge bunch of work.
>> Hm, neither of drivers take the resv lock in map_dma_buf/unmap_dma_buf.
>> It's easy to audit them all and I did it. So either I'm missing
>> something or it doesn't take much time to check them all. Am I really
>> missing something?
> 
> Ok, so this is only changing map/unmap now?

It also vmap/vunmap and attach/detach: In the previous patch I added the
_unlocked postfix to the func names and in this patch I made them all to
actually take the lock.

> In this case please separate this from the documentation change.

I'll factor out the doc in the v3.

> I would also drop the _locked postfix from the function name, just
> having _unlocked on all functions which are supposed to be called with
> the lock held should be sufficient.

Noted for the v3.

> Thanks for looking into this,
> Christian.

Thank you for the review.

-- 
Best regards,
Dmitry
