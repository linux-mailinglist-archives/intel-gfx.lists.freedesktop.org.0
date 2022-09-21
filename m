Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BCB5BFC57
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 12:29:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D699110E2D0;
	Wed, 21 Sep 2022 10:29:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E7E510E187;
 Wed, 21 Sep 2022 10:29:15 +0000 (UTC)
Received: from [192.168.2.145] (109-252-122-187.nat.spd-mgts.ru
 [109.252.122.187])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: dmitry.osipenko)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 849396600375;
 Wed, 21 Sep 2022 11:29:10 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1663756153;
 bh=ZT5srTQo2GbRKK2KbdtuOuJEzC+8ncCgGSp7dm2y2mQ=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=KPQr5wDCdzoryN7A6LVprDyAfEKWUzqJjfZG9/T3ie9+Id2SgBPSkiw1tnPiVbIkh
 9xYi4rhroxm8IY+KtWBG7kcFoghtlJSjGRxD9Zytp+LrsqLoMKkz+F3fPmzq0K/KE0
 gZln48XpBZ4rppZf5Uw3l7jqj2le3d8o8fSbRO24fxqQGReVs+RXf9MhL2OIUJdl67
 09j126W1FOcPf5LF6iA61F+lB9ytLMh2Vp6FqSwuiEZ5AfOcfOzCTypft4YiMBWss4
 DYt+8EbmT0phFuB3P1uiR8i27jtygGVenFxHjBkYiz420ZoeLTqqU6QIxugByMigaa
 T2NKIJ/zl9B5w==
Message-ID: <333ce447-05e0-a127-6f8e-2ffd75e0c992@collabora.com>
Date: Wed, 21 Sep 2022 13:29:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
To: Sumit Semwal <sumit.semwal@linaro.org>
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
 <20220913192757.37727-16-dmitry.osipenko@collabora.com>
 <CAO_48GFtLjR657nO+yh9KwsrWbNmGVsf7srHj19biO+NauYt4w@mail.gmail.com>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <CAO_48GFtLjR657nO+yh9KwsrWbNmGVsf7srHj19biO+NauYt4w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v5 15/21] dma-buf: Move dma_buf_vmap() to
 dynamic locking specification
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
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <digetx@gmail.com>,
 kernel@collabora.com, Marek Szyprowski <m.szyprowski@samsung.com>,
 Stefano Stabellini <sstabellini@kernel.org>, Leon Romanovsky <leon@kernel.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Rodrigo Vivi <"rodrigo. vivi"@intel.com>,
 Russell King <linux@armlinux.org.uk>, Daniel Stone <daniel@fooishbar.org>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 "linux-arm- msm"@vger.kernel.org, virtualization@lists.linux-foundation.org,
 Chia-I Wu <olvaffe@gmail.com>, linux-media@vger.kernel.org,
 linux-rdma@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 linaro-mm-sig@lists.linaro.org,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Juergen Gross <jgross@suse.com>,
 Daniel Almeida <daniel.almeida@collabora.com>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomba@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Qiang Yu <yuq825@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 Amol Maheshwari <amahesh@qti.qualcomm.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 9/20/22 17:13, Sumit Semwal wrote:
> Hi Dmitry,
> 
> Thanks very much for the series.
> 
> On Wed, 14 Sept 2022 at 00:59, Dmitry Osipenko
> <dmitry.osipenko@collabora.com> wrote:
>>
>> Move dma_buf_vmap/vunmap_unlocked() functions to the dynamic locking
>> specification by asserting that the reservation lock is held.
> Thanks for the patch; just a minor nit - I think you mean dma_buf_vmap
> / vunmap() here, and not _unlocked?

Yes, the _unlocked should be dropped here. Thank you for the review!

-- 
Best regards,
Dmitry

