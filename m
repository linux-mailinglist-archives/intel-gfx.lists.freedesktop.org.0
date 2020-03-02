Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 231C4177E45
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 19:10:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D838B6E938;
	Tue,  3 Mar 2020 18:10:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 479 seconds by postgrey-1.36 at gabe;
 Mon, 02 Mar 2020 20:20:57 UTC
Received: from crapouillou.net (outils.crapouillou.net [89.234.176.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B57F883A9
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 20:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1583179977; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8mcvwXysboc6lUOt6zTKT2nv7+SBichgLaPRTC6LfW8=;
 b=htEffhcNlkFPzgSf0sWu1yxp7HbzfJo3+3witOMCzD/FBIUbMaU55HTwnkwVHvfe6eBUCI
 0zCnsCm5h+HJ7GLyrgY86QF2GPcCIdbsTO6fYevwQWgDfxf0ZK6GH/QQndGA9hEFiGghNI
 79i05C2EwId3bTXB0BxWf2VqOwYZo8A=
Date: Mon, 02 Mar 2020 17:12:40 -0300
From: Paul Cercueil <paul@crapouillou.net>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-Id: <1583179960.3.7@crapouillou.net>
In-Reply-To: <20200227181522.2711142-17-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
 <20200227181522.2711142-17-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 03 Mar 2020 18:10:33 +0000
Subject: Re: [Intel-gfx] [PATCH 16/51] drm/inigenic: Use drmm_add_final_kfree
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 m.felsch@pengutronix.de, DRI Development <dri-devel@lists.freedesktop.org>,
 l.stach@pengutronix.de
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Daniel,


Le jeu., f=E9vr. 27, 2020 at 19:14, Daniel Vetter =

<daniel.vetter@ffwll.ch> a =E9crit :
> With this we can drop the final kfree from the release function.
> =

> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Paul Cercueil <paul@crapouillou.net>

Reviewed-by: Paul Cercueil <paul@crapouillou.net>

Cheers,
-Paul

> ---
>  drivers/gpu/drm/ingenic/ingenic-drm.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/ingenic/ingenic-drm.c =

> b/drivers/gpu/drm/ingenic/ingenic-drm.c
> index 9dfe7cb530e1..e2c832eb4e9a 100644
> --- a/drivers/gpu/drm/ingenic/ingenic-drm.c
> +++ b/drivers/gpu/drm/ingenic/ingenic-drm.c
> @@ -23,6 +23,7 @@
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_gem_framebuffer_helper.h>
>  #include <drm/drm_irq.h>
> +#include <drm/drm_managed.h>
>  #include <drm/drm_of.h>
>  #include <drm/drm_panel.h>
>  #include <drm/drm_plane.h>
> @@ -490,11 +491,8 @@ static irqreturn_t ingenic_drm_irq_handler(int =

> irq, void *arg)
> =

>  static void ingenic_drm_release(struct drm_device *drm)
>  {
> -	struct ingenic_drm *priv =3D drm_device_get_priv(drm);
> -
>  	drm_mode_config_cleanup(drm);
>  	drm_dev_fini(drm);
> -	kfree(priv);
>  }
> =

>  static int ingenic_drm_enable_vblank(struct drm_crtc *crtc)
> @@ -639,6 +637,7 @@ static int ingenic_drm_probe(struct =

> platform_device *pdev)
>  		kfree(priv);
>  		return ret;
>  	}
> +	drmm_add_final_kfree(drm, priv);
> =

>  	drm_mode_config_init(drm);
>  	drm->mode_config.min_width =3D 0;
> --
> 2.24.1
> =



_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
