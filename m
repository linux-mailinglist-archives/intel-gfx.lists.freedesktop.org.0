Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 467FD5B0983
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 18:01:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17C1510E3DC;
	Wed,  7 Sep 2022 16:01:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A22110E3DC
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 16:01:30 +0000 (UTC)
Received: by mail-lj1-x22a.google.com with SMTP id bn9so16519085ljb.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Sep 2022 09:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date;
 bh=AdPpYej6Da4SIlCso24w6yNGsjKE1lXRNFa/vukYNMs=;
 b=OcXiV5nrGHP2wnQr7VhTZDbV8vZzl7OnFBCPJlivEjmadbMY4OLVt3DDVMxlnLHl+c
 UhA92XEYClK8FUM6crH+mkutH2trFuCjjD3GdQ4IsnVVjkf4Fl7Kem57W/0telD1dAly
 unWKnxqU0B4dH3MOOjBG8mlGbXZ1cEkgLBxolxbm8kTpXlQh/lbHz2bKImbj+yZ0YyqJ
 IpgIFHZjDPKgvy5dxaRsFKsMS/KP4A+FZ8JERzpZMU+QOSOuSuk1MeH1d0kz44bgWfH0
 iY8gspP1k2R68YcQpywjju505tkD0xhRZhpUWbP/rofDmliqZesmoVDanN7Q004OD12Q
 xk/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date;
 bh=AdPpYej6Da4SIlCso24w6yNGsjKE1lXRNFa/vukYNMs=;
 b=YEpuy9tJfc4yT142wCdC42i/3QIklJlofqjnAHiwdfZM3MFrzaHX8e7z0OEtabsjAB
 0D/R3xC+W8o6C30KHwVGImk34L/4lc8Xa/ST3TWlO/zDgDGpeliEZZepwFgIobeVBncU
 w6PTaxBKj1ZZ0W4f6amG5D0REYfjG6dHars1P75Cz34kZp2GV4wKoQH471Ng8rEa5NoE
 3VIIpU7rXa5sxy3AxxZw+5Ncqxmarf7aQJ01VfSKqFaKtdXFDtMbY6a1yJKh/nInlQqZ
 zJjIcwjmZAweW+NmNIJwCMPKXrS/uEi2ZkyS9ARzv50voYtge24KGkrp6BppoNTNNfwl
 LPZQ==
X-Gm-Message-State: ACgBeo0JzaIp8ZRUM+KoVGQMkBZKVuQ5qrXQ+xg7XNhyLo5CuH+s7sDX
 Rgn+d5BdppxfxAKbkiz+s96YkWwie3QvA5V1/kLZQwrzcQE=
X-Google-Smtp-Source: AA6agR4Xlvjzbd9Vj9KRdry7abjROMFKwycnMjwyVMg9weEfQitIuVPEEc1axw6hX578w5F+nydA4blXPy+H9QcHkW8=
X-Received: by 2002:a2e:8415:0:b0:26a:7a15:d66b with SMTP id
 z21-20020a2e8415000000b0026a7a15d66bmr1275571ljg.379.1662566488290; Wed, 07
 Sep 2022 09:01:28 -0700 (PDT)
MIME-Version: 1.0
References: <20220907152331.572240-1-christian.koenig@amd.com>
In-Reply-To: <20220907152331.572240-1-christian.koenig@amd.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 7 Sep 2022 17:01:01 +0100
Message-ID: <CAM0jSHOBByHrW=BHhc06nUTdGJY7SkX7yuViLpRs8rztd-FE+g@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/ttm: cleanup the resource of ghost
 objects after locking them
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
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 7 Sept 2022 at 16:23, Christian K=C3=B6nig
<ckoenig.leichtzumerken@gmail.com> wrote:
>
> Otherwise lockdep will complain about cleaning up the bulk_move.
>
> Not even compile tested.
>
> Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>

CI looks better now. Thanks for the quick fix.

> ---
>  drivers/gpu/drm/ttm/ttm_bo_util.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/ttm_=
bo_util.c
> index 57a27847206f..911141d16e95 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
> @@ -236,6 +236,11 @@ static int ttm_buffer_object_transfer(struct ttm_buf=
fer_object *bo,
>         if (bo->type !=3D ttm_bo_type_sg)
>                 fbo->base.base.resv =3D &fbo->base.base._resv;
>
> +       dma_resv_init(&fbo->base.base._resv);
> +       fbo->base.base.dev =3D NULL;
> +       ret =3D dma_resv_trylock(&fbo->base.base._resv);
> +       WARN_ON(!ret);
> +
>         if (fbo->base.resource) {
>                 ttm_resource_set_bo(fbo->base.resource, &fbo->base);
>                 bo->resource =3D NULL;
> @@ -244,11 +249,6 @@ static int ttm_buffer_object_transfer(struct ttm_buf=
fer_object *bo,
>                 fbo->base.bulk_move =3D NULL;
>         }
>
> -       dma_resv_init(&fbo->base.base._resv);
> -       fbo->base.base.dev =3D NULL;
> -       ret =3D dma_resv_trylock(&fbo->base.base._resv);
> -       WARN_ON(!ret);
> -
>         ret =3D dma_resv_reserve_fences(&fbo->base.base._resv, 1);
>         if (ret) {
>                 kfree(fbo);
> --
> 2.25.1
>
