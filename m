Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9684538E1FE
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 09:53:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7667F6E123;
	Mon, 24 May 2021 07:53:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2571D6E134
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 07:53:42 +0000 (UTC)
Received: from [192.168.1.111] (91-157-208-71.elisa-laajakaista.fi
 [91.157.208.71])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id B2C11140C;
 Mon, 24 May 2021 09:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1621842816;
 bh=AtMQHVfiglCLqM5L+PcEfbs4AxmjJUM2/Lhq8HbfTro=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=c0vD9mtcBVVe2a5PSs0i772SG6U0v3BH7A/ZZZrYYCOfUrJdg3YFnlWzX2/skSyIj
 pXRgxXA7XQJRB4Tu2mht9puPm28B1XYvrE+asnJaBp95w8enIMeiXqhTbJzW2iw4Y7
 Y75yW5/65EMShJxrLVE5SAZAEsv6Wxcoex726Vdw=
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <20210521090959.1663703-9-daniel.vetter@ffwll.ch>
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Message-ID: <a8f87dea-5c1d-0424-6764-d844b8451d39@ideasonboard.com>
Date: Mon, 24 May 2021 10:53:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210521090959.1663703-9-daniel.vetter@ffwll.ch>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/11] drm/omap: Follow implicit fencing in
 prepare_fb
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 21/05/2021 12:09, Daniel Vetter wrote:
> I guess no one ever tried running omap together with lima or panfrost,
> not even sure that's possible. Anyway for consistency, fix this.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Tomi Valkeinen <tomba@kernel.org>
> ---
>   drivers/gpu/drm/omapdrm/omap_plane.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/omapdrm/omap_plane.c b/drivers/gpu/drm/omapdrm/omap_plane.c
> index 801da917507d..512af976b7e9 100644
> --- a/drivers/gpu/drm/omapdrm/omap_plane.c
> +++ b/drivers/gpu/drm/omapdrm/omap_plane.c
> @@ -6,6 +6,7 @@
>   
>   #include <drm/drm_atomic.h>
>   #include <drm/drm_atomic_helper.h>
> +#include <drm/drm_gem_atomic_helper.h>
>   #include <drm/drm_plane_helper.h>
>   
>   #include "omap_dmm_tiler.h"
> @@ -29,6 +30,8 @@ static int omap_plane_prepare_fb(struct drm_plane *plane,
>   	if (!new_state->fb)
>   		return 0;
>   
> +	drm_gem_plane_helper_prepare_fb(plane, new_state);
> +
>   	return omap_framebuffer_pin(new_state->fb);
>   }
>   
> 

Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

  Tomi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
