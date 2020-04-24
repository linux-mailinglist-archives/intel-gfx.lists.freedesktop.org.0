Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFF21B7C0C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 18:47:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BB2E6EAD6;
	Fri, 24 Apr 2020 16:47:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from asavdk3.altibox.net (asavdk3.altibox.net [109.247.116.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2CE26EACA;
 Fri, 24 Apr 2020 16:47:20 +0000 (UTC)
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 39B5D2002E;
 Fri, 24 Apr 2020 18:47:19 +0200 (CEST)
Date: Fri, 24 Apr 2020 18:47:17 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20200424164717.GE3822@ravnborg.org>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-42-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415074034.175360-42-daniel.vetter@ffwll.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=ULXz4hXy c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=kj9zAlcOel0A:10 a=jIQo8A4GAAAA:8 a=7gkXJVJtAAAA:8 a=e5mUnYsNAAAA:8
 a=fNed3IODEi-RMkAuivkA:9 a=CjuIK1q_8ugA:10 a=Lf5xNeLK5dgiOs8hzIjU:22
 a=E9Po1WZjFZOl8hwRPBS3:22 a=Vxmtnl_E_bksehYqCbjh:22
Subject: Re: [Intel-gfx] [PATCH 41/59] drm/arcpgu: Delete arcpgu_priv->fb
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Alexey Brodkin <abrodkin@synopsys.com>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 15, 2020 at 09:40:16AM +0200, Daniel Vetter wrote:
> Leftover from the conversion to the generic fbdev emulation.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Alexey Brodkin <abrodkin@synopsys.com>

Subject: drm/arc: arcpgu: Delete arcpgu_priv->fb

With subject fixed:
Acked-by: Sam Ravnborg <sam@ravnborg.org>

	Sam

> ---
>  drivers/gpu/drm/arc/arcpgu.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/arc/arcpgu.h b/drivers/gpu/drm/arc/arcpgu.h
> index 87821c91a00c..ed77dd5dd5cb 100644
> --- a/drivers/gpu/drm/arc/arcpgu.h
> +++ b/drivers/gpu/drm/arc/arcpgu.h
> @@ -12,7 +12,6 @@ struct arcpgu_drm_private {
>  	struct drm_device	drm;
>  	void __iomem		*regs;
>  	struct clk		*clk;
> -	struct drm_framebuffer	*fb;
>  	struct drm_crtc		crtc;
>  	struct drm_plane	*plane;
>  };
> -- 
> 2.25.1
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
