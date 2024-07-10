Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE8192D12A
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 13:59:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDEA910E766;
	Wed, 10 Jul 2024 11:59:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="fpLMKteY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB6BB10E766
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2024 11:59:00 +0000 (UTC)
Received: by mail-oi1-f171.google.com with SMTP id
 5614622812f47-3d9dd8bc70dso33169b6e.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2024 04:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1720612740; x=1721217540; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8YwSacl49HZikhh7TpAVL5zSZM2Ig9YohILbbUy5PtM=;
 b=fpLMKteY6RxZH1rFEl6KcgC2Kq0Im+bIrVsNtGsuMUkTVS4jkYkf49DdButUdKnsDu
 DPwXjZ6mCxOzT39/fR+CJ5FOZkmasASHKl6KAVwPjT8FVH+WnceRaUgHhilgDGP+LXIe
 +FpeQ7hVxibREY7XVrlTdmnHgMHAQFt5/2Lkw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720612740; x=1721217540;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8YwSacl49HZikhh7TpAVL5zSZM2Ig9YohILbbUy5PtM=;
 b=RTSFXOU4ldZ3ZTCuxBKuzd9Db0nkl2qxSqLVMyXXDf7/LntjZcXINGVoq4FpOERYfv
 0mIsI64op3UzIF3NB027XDzArgsLiVL6q/qgiyVSBrsHPabFxO0+8ZAh2sZZfFYnyXDN
 t0Up62Lmi8BKjmG2tnhyRmi7kJBU5zQTh18mFnaV7JNsjxNaHZw/cCmIHjVDDvaWU5rM
 B3NZ9p3qh0bhAHtCKbV9tf1bnWLmlFodc26Ijgocc6x2ywx3M1wRxfgWc5j+yK9+aLqz
 Dk5mf/x5W6qccIyWkhbnqJUWed5uiGmx5imuGh/d8dabHHDy3Fg90lUbmksdEr0Hz23s
 jGwQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWPOSeRlqGAkU2bUhaWDKZaGuuI5+FitDbGr5Hu1koWe/uUkApydR1ZkKKk4q/sRHCnNTFO0jApfChdQP+pRnFLO0eVRkWMvTXFasbCzU6R
X-Gm-Message-State: AOJu0YwELAxQ/7pPIZnPw+NFcqIYzh0Ocg4qdP4fMsy41YjhdJo1oq0j
 txjTseMRbWePKaHpnwlhLv0hX3OVnH3AppCkDCwZYDDMG9Y5/AzJKQk/1jMBk8T9B2TZFqoalhE
 caglzyBkxKeWShZxOwIWrv2C3e7lP7R1JNSRoEg==
X-Google-Smtp-Source: AGHT+IEDb4E4R4JLvPaGkcDd2e1PnOfOAi8hfE4Q9IQEkktLnUcIxOmoAJGlW/KgY1cJtU5AbP/Am5hiG+biuNY4XSw=
X-Received: by 2002:a05:6870:82a4:b0:25e:14d9:da27 with SMTP id
 586e51a60fabf-25eae2f200fmr5688757fac.0.1720612739640; Wed, 10 Jul 2024
 04:58:59 -0700 (PDT)
MIME-Version: 1.0
References: <20240710093120.732208-1-daniel.vetter@ffwll.ch>
 <03f7e2ad-fd5c-4da7-a14c-34c2c158c513@amd.com>
In-Reply-To: <03f7e2ad-fd5c-4da7-a14c-34c2c158c513@amd.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 10 Jul 2024 13:58:48 +0200
Message-ID: <CAKMK7uFvCr2qcHun06LC-ON3GBqj8=mCpPGHuAOh9BEyr60fiQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm: Add might_fault to drm_modeset_lock priming
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Cc: DRI Development <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, 
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Wed, 10 Jul 2024 at 13:39, Christian K=C3=B6nig <christian.koenig@amd.co=
m> wrote:
>
> Am 10.07.24 um 11:31 schrieb Daniel Vetter:
> > We already teach lockdep that dma_resv nests within drm_modeset_lock,
> > but there's a lot more: All drm kms ioctl rely on being able to
> > put/get_user while holding modeset locks, so we really need a
> > might_fault in there too to complete the picture. Add it.
>
> Mhm, lockdep should be able to deduce that when there might be faults
> under the dma_resv lock there might also be faults under the
> drm_modeset_lock.

You're not allowed to take a fault under dma_resv, because drivers
might need to take that lock to handle faults. So unfortunately in our
combined lockdep priming, there really seems to be no chain yet that
teaches about faults possibly happening while holding
drm_modeset_lock.
-Sima

>
> >
> > Motivated by a syzbot report that blew up on bcachefs doing an
> > unconditional console_lock way deep in the locking hierarchy, and
> > lockdep only noticing the depency loop in a drm ioctl instead of much
> > earlier. This annotation will make sure such issues have a much harder
> > time escaping.
> >
> > References: https://lore.kernel.org/dri-devel/00000000000073db8b061cd43=
496@google.com/
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Maxime Ripard <mripard@kernel.org>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: Sumit Semwal <sumit.semwal@linaro.org>
> > Cc: "Christian K=C3=B6nig" <christian.koenig@amd.com>
> > Cc: linux-media@vger.kernel.org
> > Cc: linaro-mm-sig@lists.linaro.org
>
> On the other hand pointing it out explicitly doesn't hurts us at all, so
> Reviewed-by: Christian K=C3=B6nig <christian.koenig@amd.com>.
>
> Regards,
> Christian.
>
> > ---
> >   drivers/gpu/drm/drm_mode_config.c | 2 ++
> >   1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mo=
de_config.c
> > index 568972258222..37d2e0a4ef4b 100644
> > --- a/drivers/gpu/drm/drm_mode_config.c
> > +++ b/drivers/gpu/drm/drm_mode_config.c
> > @@ -456,6 +456,8 @@ int drmm_mode_config_init(struct drm_device *dev)
> >               if (ret =3D=3D -EDEADLK)
> >                       ret =3D drm_modeset_backoff(&modeset_ctx);
> >
> > +             might_fault();
> > +
> >               ww_acquire_init(&resv_ctx, &reservation_ww_class);
> >               ret =3D dma_resv_lock(&resv, &resv_ctx);
> >               if (ret =3D=3D -EDEADLK)
>


--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
