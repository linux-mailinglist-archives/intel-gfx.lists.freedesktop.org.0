Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E82031A1C39
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 09:03:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA6D16E970;
	Wed,  8 Apr 2020 07:03:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from asavdk4.altibox.net (asavdk4.altibox.net [109.247.116.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 447046E970;
 Wed,  8 Apr 2020 07:03:17 +0000 (UTC)
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 2F12080535;
 Wed,  8 Apr 2020 09:03:15 +0200 (CEST)
Date: Wed, 8 Apr 2020 09:03:13 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20200408070313.GE14965@ravnborg.org>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
 <20200403135828.2542770-7-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403135828.2542770-7-daniel.vetter@ffwll.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=XpTUx2N9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=QyXUC8HyAAAA:8
 a=20KFwNOVAAAA:8 a=7gkXJVJtAAAA:8 a=e5mUnYsNAAAA:8 a=x84jUz1BQqZYlbjATmwA:9
 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22 a=Vxmtnl_E_bksehYqCbjh:22
Subject: Re: [Intel-gfx] [PATCH 06/44] drm/vboxvideo: drop DRM_MTRR_WC
 #define
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
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 03, 2020 at 03:57:50PM +0200, Daniel Vetter wrote:
> Doesn't apply to upstream kernels since a rather long time.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Hans de Goede <hdegoede@redhat.com>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  drivers/gpu/drm/vboxvideo/vbox_ttm.c | 12 ------------
>  1 file changed, 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/vboxvideo/vbox_ttm.c b/drivers/gpu/drm/vboxvideo/vbox_ttm.c
> index 976423d0c3cc..f5a06675da43 100644
> --- a/drivers/gpu/drm/vboxvideo/vbox_ttm.c
> +++ b/drivers/gpu/drm/vboxvideo/vbox_ttm.c
> @@ -24,25 +24,13 @@ int vbox_mm_init(struct vbox_private *vbox)
>  		return ret;
>  	}
>  
> -#ifdef DRM_MTRR_WC
> -	vbox->fb_mtrr = drm_mtrr_add(pci_resource_start(dev->pdev, 0),
> -				     pci_resource_len(dev->pdev, 0),
> -				     DRM_MTRR_WC);
> -#else
>  	vbox->fb_mtrr = arch_phys_wc_add(pci_resource_start(dev->pdev, 0),
>  					 pci_resource_len(dev->pdev, 0));
> -#endif
>  	return 0;
>  }
>  
>  void vbox_mm_fini(struct vbox_private *vbox)
>  {
> -#ifdef DRM_MTRR_WC
> -	drm_mtrr_del(vbox->fb_mtrr,
> -		     pci_resource_start(vbox->ddev.pdev, 0),
> -		     pci_resource_len(vbox->ddev.pdev, 0), DRM_MTRR_WC);
> -#else
>  	arch_phys_wc_del(vbox->fb_mtrr);
> -#endif
>  	drm_vram_helper_release_mm(&vbox->ddev);
>  }
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
