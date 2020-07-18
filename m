Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A676224D1B
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jul 2020 18:37:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 588CA6E1A8;
	Sat, 18 Jul 2020 16:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from asavdk3.altibox.net (asavdk3.altibox.net [109.247.116.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93FB16E124;
 Sat, 18 Jul 2020 16:37:05 +0000 (UTC)
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 64E2620024;
 Sat, 18 Jul 2020 18:37:03 +0200 (CEST)
Date: Sat, 18 Jul 2020 18:37:01 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
Message-ID: <20200718163701.GA3010985@ravnborg.org>
References: <1595020551-30768-1-git-send-email-anitha.chrisanthus@intel.com>
 <1595020551-30768-2-git-send-email-anitha.chrisanthus@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1595020551-30768-2-git-send-email-anitha.chrisanthus@intel.com>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=f+hm+t6M c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=8nJEP1OIZ-IA:10 a=KHs3S8JdNAQvkEa9sOgA:9 a=wPNLvfGTeEIA:10
Subject: Re: [Intel-gfx] [PATCH v3] drm/kmb: Add support for KeemBay Display
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
Cc: intel-gfx@lists.freedesktop.org, edmund.j.dea@intel.com,
 dri-devel@lists.freedesktop.org, daniel.vetter@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Anitha.

A few extra details.

> diff --git a/drivers/gpu/drm/kmb/kmb_crtc.c b/drivers/gpu/drm/kmb/kmb_crt=
c.c
> new file mode 100644
> index 0000000..570d46e
> --- /dev/null
> +++ b/drivers/gpu/drm/kmb/kmb_crtc.c
> @@ -0,0 +1,219 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright =A9 2018-2020 Intel Corporation
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/of_graph.h>
Not used, can be dropped. Gos for all includes except the one in
kmb_drv.c

> +#include <linux/platform_data/simplefb.h>
Not used, can be dropped. Goes for all include of this file.


> +	/* disable vertical interrupt */
> +	kmb_clr_bitmask_lcd(dev_p, LCD_INT_ENABLE,
> +			LCD_INT_VERT_COMP);
> +}
> +
> +static const struct drm_crtc_funcs kmb_crtc_funcs =3D {
> +	.destroy =3D kmb_crtc_cleanup,
> +	.set_config =3D drm_atomic_helper_set_config,
From the description of set_config:

    * Drivers implementing atomic modeset should use
    * drm_atomic_helper_set_config() to implement this hook.


	Sam
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
