Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA2B6F330E
	for <lists+intel-gfx@lfdr.de>; Mon,  1 May 2023 17:42:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9D9810E117;
	Mon,  1 May 2023 15:42:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3832110E117;
 Mon,  1 May 2023 15:42:47 +0000 (UTC)
Received: from [192.168.2.246] (109-252-144-198.dynamic.spd-mgts.ru
 [109.252.144.198])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (No client certificate requested)
 (Authenticated sender: dmitry.osipenko)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id EB81C66029DE;
 Mon,  1 May 2023 16:42:43 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1682955765;
 bh=tnb48ajCvVa+EQpEey/B5t9Rz5vp0zrnI8Dk3GtJzds=;
 h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
 b=WgvDqGNqkRpELu/Mnul8g+QVtXq/hzn4k+FFEpusaFYSFGnm1Jzhw7htlINg83ht0
 rimocQaotDdO/fUi53zoTX3QHV7v9281Ek5Igtx+auJwFkjZpXDctQ0M/Kn5vHfS4+
 OW4QnmZX768H0BwI2PhD+LIZzOHhUDWBMs+Ix1NrYapO0+w/aY+gydF6hv1Foy7+Gb
 ViVwJ+6U+FpEkMOKSwdCn/llqkyoZM7FDHdwIeDlq2uH1XtoQerfiViPJdSJ5w6mWI
 1vjSPku078f0wkOVjQ9EvdrbQ3FtYALJUEpnGClgOfUj1aOcHAQUZKOvTnrFiO979u
 8o4Qf3UIpdQqQ==
Message-ID: <14d7ed85-7ab6-04d9-1958-d5ceae2a79f8@collabora.com>
Date: Mon, 1 May 2023 18:42:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20230406160637.541702-1-dmitry.osipenko@collabora.com>
 <20230406160637.541702-7-dmitry.osipenko@collabora.com>
In-Reply-To: <20230406160637.541702-7-dmitry.osipenko@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 6/7] dma-buf: Change locking policy for
 mmap()
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
Cc: dri-devel@lists.freedesktop.org, John Stultz <jstultz@google.com>,
 Gerd Hoffmann <kraxel@redhat.com>, kernel@collabora.com,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-media@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Tomi Valkeinen <tomba@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Liam Mark <lmark@codeaurora.org>, Tomasz Figa <tfiga@chromium.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Amol Maheshwari <amahesh@qti.qualcomm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 4/6/23 19:06, Dmitry Osipenko wrote:
> Change locking policy of mmap() callback, making exporters responsible
> for handling dma-buf reservation locking. Previous locking policy stated
> that dma-buf is locked for both importers and exporters by the dma-buf
> core, which caused a deadlock problem for DRM drivers in a case of
> self-imported dma-bufs which required to take the lock from the DRM
> exporter side.
> 
> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> ---
>  drivers/dma-buf/dma-buf.c | 17 +++--------------
>  1 file changed, 3 insertions(+), 14 deletions(-)

Christian, may I add yours ack to this patch?

-- 
Best regards,
Dmitry

