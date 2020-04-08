Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D5D1A1CFA
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 09:59:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 867276E998;
	Wed,  8 Apr 2020 07:59:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from asavdk3.altibox.net (asavdk3.altibox.net [109.247.116.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 664226E998;
 Wed,  8 Apr 2020 07:59:05 +0000 (UTC)
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 9593820027;
 Wed,  8 Apr 2020 09:59:03 +0200 (CEST)
Date: Wed, 8 Apr 2020 09:59:02 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20200408075902.GP14965@ravnborg.org>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
 <20200403135828.2542770-35-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403135828.2542770-35-daniel.vetter@ffwll.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=QyXUC8HyAAAA:8
 a=ER_8r6IbAAAA:8 a=7gkXJVJtAAAA:8 a=e5mUnYsNAAAA:8 a=W9GrBFWLyRNNeEoKAFkA:9
 a=CjuIK1q_8ugA:10 a=9LHmKk7ezEChjTCyhBa9:22 a=E9Po1WZjFZOl8hwRPBS3:22
 a=Vxmtnl_E_bksehYqCbjh:22
Subject: Re: [Intel-gfx] [PATCH 34/44] drm/ingenic: Use devm_drm_dev_alloc
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
Cc: Paul Cercueil <paul@crapouillou.net>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 03, 2020 at 03:58:18PM +0200, Daniel Vetter wrote:
> Already using devm_drm_dev_init, so very simple replacment.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Paul Cercueil <paul@crapouillou.net>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  drivers/gpu/drm/ingenic/ingenic-drm.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/ingenic/ingenic-drm.c b/drivers/gpu/drm/ingenic/ingenic-drm.c
> index a9bc6623b488..bb62d8e93985 100644
> --- a/drivers/gpu/drm/ingenic/ingenic-drm.c
> +++ b/drivers/gpu/drm/ingenic/ingenic-drm.c
> @@ -614,9 +614,10 @@ static int ingenic_drm_probe(struct platform_device *pdev)
>  		return -EINVAL;
>  	}
>  
> -	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
> -	if (!priv)
> -		return -ENOMEM;
> +	priv = devm_drm_dev_alloc(dev, &ingenic_drm_driver_data,
> +				  struct ingenic_drm, drm);
> +	if (IS_ERR(priv))
> +		return PTR_ERR(priv);
>  
>  	priv->soc_info = soc_info;
>  	priv->dev = dev;
> @@ -625,13 +626,6 @@ static int ingenic_drm_probe(struct platform_device *pdev)
>  
>  	platform_set_drvdata(pdev, priv);
>  
> -	ret = devm_drm_dev_init(dev, drm, &ingenic_drm_driver_data);
> -	if (ret) {
> -		kfree(priv);
> -		return ret;
> -	}
> -	drmm_add_final_kfree(drm, priv);
> -
>  	ret = drmm_mode_config_init(drm);
>  	if (ret)
>  		return ret;
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
