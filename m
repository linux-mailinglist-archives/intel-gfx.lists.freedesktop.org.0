Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FB34242B2
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 18:30:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41F506EDBE;
	Wed,  6 Oct 2021 16:30:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18E106EDBC
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 16:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1633537823;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ljugr8xYdJo7W0S7wZ1H4kpTYrrrY7cxZ+QUOs2N9UQ=;
 b=PgE5eKoPP3a3BVlqnmSL4PtQ8x21TuE3MdBT/lXF0KrT0mIsfbOaJzmrUYLhg0UM+BB8sL
 a6Fe3Xe3f9OLL/4xVCEVEFMDCjb3+VrAausXkf+okteh2tCW9H5t3/DFl22Xe/FMn3B9Cc
 TLDSzSXcdOmaI4SIf9/cQRebW6dJqXU=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-184-5XGHrXvTOUOaTH5_idmjcw-1; Wed, 06 Oct 2021 12:30:20 -0400
X-MC-Unique: 5XGHrXvTOUOaTH5_idmjcw-1
Received: by mail-wr1-f72.google.com with SMTP id
 r16-20020adfbb10000000b00160958ed8acso2502599wrg.16
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 Oct 2021 09:30:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ljugr8xYdJo7W0S7wZ1H4kpTYrrrY7cxZ+QUOs2N9UQ=;
 b=eI+ZSJf0KQgTKespx48dgebC7eXG/8dzbDCrgYauyviD4NZEVx0PqMZ2J8dRCp/DSM
 unyFgz+1sQKk0nGanZA4P8tzMoLfaCnQZkRHAkl4BJIHhcBJKpINcRDaNfz9U2EdDXf6
 qa9iWNxaJ3SphvFfRNwssvyehOj1b0MHuLuzvJwxGRRRrCc9mD+BPVehOw27GL+6mjUb
 iezIvNPa2EvNNnWa/9sl2bblzT5LOcVfU1XbaZUa9YNfYvdjt4+R/Y5nr6f9cMsfDKv5
 o4Bbfnq2PLCCzbHxvyH+vj1RqAB5mAk+9hO1/A2i48VFumWo/QBtOsRYBSb6gYvH74Ub
 4Sxw==
X-Gm-Message-State: AOAM5335btJ+r0hvpkxX8tSRhPkiBTzgOG7tIcTGN+eye4aWgyRJUASL
 u8/r3aiDZ380PL7T6xw7a9IYHDLx0zHL8WIY5Hee9JpeSVkHzNWZAxC3qOt5xMDGAO9JbIU5b/5
 AgfOR1dZNBeuqtZSphCPnluBm0VlehZr2QKtU6VvUvofB
X-Received: by 2002:adf:a48e:: with SMTP id g14mr26148176wrb.11.1633537818943; 
 Wed, 06 Oct 2021 09:30:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwaown5rjXY7mQV5Hye51uwbkDUn6obL2IN464EW1FNLtOpErXXEji0g/kFgw0COlTE8icr8YVIyFdXOgO8M+U=
X-Received: by 2002:adf:a48e:: with SMTP id g14mr26148135wrb.11.1633537818634; 
 Wed, 06 Oct 2021 09:30:18 -0700 (PDT)
MIME-Version: 1.0
References: <20211006024018.320394-1-lyude@redhat.com>
 <20211006024018.320394-3-lyude@redhat.com>
In-Reply-To: <20211006024018.320394-3-lyude@redhat.com>
From: Karol Herbst <kherbst@redhat.com>
Date: Wed, 6 Oct 2021 18:30:07 +0200
Message-ID: <CACO55tuMWVgsd44s1sAvgrKDHFZT2Z3F+CSqAh34_XaekYWuHA@mail.gmail.com>
To: Lyude Paul <lyude@redhat.com>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>,
 nouveau <nouveau@lists.freedesktop.org>, 
 Ben Skeggs <bskeggs@redhat.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, open list <linux-kernel@vger.kernel.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kherbst@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [Nouveau] [PATCH v3 2/5] drm/nouveau/kms/nv50-:
 Explicitly check DPCD backlights for aux enable/brightness
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 6, 2021 at 4:41 AM Lyude Paul <lyude@redhat.com> wrote:
>
> Since we don't support hybrid AUX/PWM backlights in nouveau right now,
> let's add some explicit checks so that we don't break nouveau once we
> enable support for these backlights in other drivers.
>
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> ---
>  drivers/gpu/drm/nouveau/nouveau_backlight.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/nouveau/nouveau_backlight.c b/drivers/gpu/drm/nouveau/nouveau_backlight.c
> index 1cbd71abc80a..ae2f2abc8f5a 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_backlight.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_backlight.c
> @@ -308,7 +308,10 @@ nv50_backlight_init(struct nouveau_backlight *bl,
>                 if (ret < 0)
>                         return ret;
>
> -               if (drm_edp_backlight_supported(edp_dpcd)) {
> +               /* TODO: Add support for hybrid PWM/DPCD panels */
> +               if (drm_edp_backlight_supported(edp_dpcd) &&
> +                   (edp_dpcd[1] & DP_EDP_BACKLIGHT_AUX_ENABLE_CAP) &&

where does the DP_EDP_BACKLIGHT_AUX_ENABLE_CAP come from? afaik
drm_edp_backlight_supported checks for
DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP and
DP_EDP_TCON_BACKLIGHT_ADJUSTMENT_CAP so wondering if this was
intentional or a typo

> +                   (edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP)) {
>                         NV_DEBUG(drm, "DPCD backlight controls supported on %s\n",
>                                  nv_conn->base.name);
>
> --
> 2.31.1
>

