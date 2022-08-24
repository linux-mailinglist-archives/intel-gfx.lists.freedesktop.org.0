Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 337815A4CFA
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 15:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14F8910F1F6;
	Mon, 29 Aug 2022 13:06:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA3C2B80BB;
 Wed, 24 Aug 2022 15:49:34 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-13.nat.spd-mgts.ru
 [109.252.119.13])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (No client certificate requested)
 (Authenticated sender: dmitry.osipenko)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 003536601DAD;
 Wed, 24 Aug 2022 16:49:30 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1661356173;
 bh=vOJMhTQ7HzZBp0ZZo9K4hrXQVabXIso7oNLwG6hsKLo=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=c6s4L7HIzhqXHIRjPO78mUx2njs0FTSDwh/if1G8GrYUXKIesr5TSuVpzCCXzCFaC
 RQwFs9mzKIF/SoKOeW/iFsEtF2HNDrH0QYgFH8Bjb0EODV2gEnzbMJNa3D7Euz+aq1
 ttSiIgN9lBknJRw6hrDsumfPw8z1mfE/u3dAN4OYGFY1SnY5ytLPSVBmnTh6lKyQde
 YOUN/UNH4qT1TRrXxpbCLStfVkyl6+y4obXi9sfi44ZsbJWXBmSFG438Hbbw7Cm9FD
 zamHCbpRiEHeEJEqGHwgMIgiFMUhzX7OjakAgX0Hfj9WgvOsPDRnfMMAi2GCcW6bPu
 eS/kqb6U0BR1g==
Message-ID: <25d6b7e7-bbcc-7613-42d1-13c2b9ab2937@collabora.com>
Date: Wed, 24 Aug 2022 18:49:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu
 <olvaffe@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Daniel Stone <daniel@fooishbar.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding
 <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas_os@shipmail.org>,
 Qiang Yu <yuq825@gmail.com>
References: <20220824102248.91964-1-dmitry.osipenko@collabora.com>
 <20220824102248.91964-7-dmitry.osipenko@collabora.com>
 <055c3c05-ac4c-430e-f2b9-08f000acf435@gmail.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <055c3c05-ac4c-430e-f2b9-08f000acf435@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 29 Aug 2022 13:04:13 +0000
Subject: Re: [Intel-gfx] [Linaro-mm-sig] [PATCH v3 6/9] dma-buf: Move
 dma-buf attachment to dynamic locking specification
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
Cc: lima@lists.freedesktop.org, linux-rdma@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, Dmitry Osipenko <digetx@gmail.com>,
 kernel@collabora.com, linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 8/24/22 18:24, Christian König wrote:
> Am 24.08.22 um 12:22 schrieb Dmitry Osipenko:
>> Move dma-buf attachment API functions to the dynamic locking
>> specification.
>> The strict locking convention prevents deadlock situations for dma-buf
>> importers and exporters.
>>
>> Previously, the "unlocked" versions of the attachment API functions
>> weren't taking the reservation lock and this patch makes them to take
>> the lock.
>>
>> Intel and AMD GPU drivers already were mapping the attached dma-bufs
>> under
>> the held lock during attachment, hence these drivers are updated to use
>> the locked functions.
>>
>> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
>> ---
>>   drivers/dma-buf/dma-buf.c                  | 115 ++++++++++++++-------
>>   drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c    |   4 +-
>>   drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c |   8 +-
>>   drivers/gpu/drm/i915/gem/i915_gem_object.c |  12 +++
>>   include/linux/dma-buf.h                    |  20 ++--
>>   5 files changed, 110 insertions(+), 49 deletions(-)
>>
>> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
>> index 4556a12bd741..f2a5a122da4a 100644
>> --- a/drivers/dma-buf/dma-buf.c
>> +++ b/drivers/dma-buf/dma-buf.c
>> @@ -559,7 +559,7 @@ static struct file *dma_buf_getfile(struct dma_buf
>> *dmabuf, int flags)
>>    * 2. Userspace passes this file-descriptors to all drivers it wants
>> this buffer
>>    *    to share with: First the file descriptor is converted to a
>> &dma_buf using
>>    *    dma_buf_get(). Then the buffer is attached to the device using
>> - *    dma_buf_attach().
>> + *    dma_buf_attach_unlocked().
> 
> Now I get why this is confusing me so much.
> 
> The _unlocked postfix implies that there is another function which
> should be called with the locks already held, but this is not the case
> for attach/detach (because they always need to grab the lock themselves).

That's correct. The attach/detach ops of exporter can take the lock
(like i915 exporter does it), hence importer must not grab the lock
around dma_buf_attach() invocation.

> So I suggest to drop the _unlocked postfix for the attach/detach
> functions. Another step would then be to unify attach/detach with
> dynamic_attach/dynamic_detach when both have the same locking convention
> anyway.

It's not a problem to change the name, but it's unclear to me why we
should do it. The _unlocked postfix tells importer that reservation must
be unlocked and it must be unlocked in case of dma_buf_attach().

Dropping the postfix will make dma_buf_attach() inconsistent with the
rest of the _unlocked functions(?). Are you sure we need to rename it?

> Sorry that this is going so much back and forth, it's really complicated
> to keep all the stuff in my head at the moment :)

Not a problem at all, I expected that it will take some time for this
patchset to settle down.

-- 
Best regards,
Dmitry
