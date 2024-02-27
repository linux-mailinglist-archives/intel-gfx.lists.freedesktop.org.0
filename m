Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0F9868C05
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 10:18:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CB0610F2D4;
	Tue, 27 Feb 2024 09:18:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="AOZQ8fmO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3608310F2D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 09:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1709025486;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Qek61wspXs8l98Avlozl6PXBKp/6fSu28LmXK11Qxvg=;
 b=AOZQ8fmOKYCwOLl6UXNT4yLgzQnGUtSEn+qNaf14V2wFpWBQOUankzeuYCOu1q3MXiG0yc
 PrPbyc9o/JtWC/pQEcHAebD/SDbqYcnTU4VTMe9qCG4dTCxNPrm51RRJYLYaTT7Y0eOshV
 ImXws4Sh749+AAPHMF4OhTqeZ1ObEkU=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-637-qFP8U_qqN0am9kFQt5RnRw-1; Tue, 27 Feb 2024 04:18:04 -0500
X-MC-Unique: qFP8U_qqN0am9kFQt5RnRw-1
Received: by mail-lf1-f69.google.com with SMTP id
 2adb3069b0e04-51313b50f1bso83648e87.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 01:18:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709025482; x=1709630282;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Qek61wspXs8l98Avlozl6PXBKp/6fSu28LmXK11Qxvg=;
 b=Fn2RO/CGTMBD1A0X5FHAqBc0PPpiLuYjlaXdMxLGBAjS4eAIgkGBZ9mz3ES2snmqXS
 Uv6b/Mx8zHi2fl3CbHkWLBNNfnsK99fFh9LSTB+AYTp0UJ6He8es8lY4R6pa9uTTuKze
 PyJhbYhXtu/ExMdxqBHf9LepsVQB9io5MRXlYlDZYRLLqw4BOBLB1Am5aasVhp31k3gM
 DRqCjbyoS5jkds//VgAC+g6k3fAGQlk9s+CDk4qYKgm48kDV+8RemIyE9/PjJKRSCynW
 Ek1t3sfuGTMVZOQky0sXmobYWu9l87XvAplmE9+9m+sUYYQHwWkQDrIx7HeFYaF2ueRR
 sKBA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW7qmWBTtlNBMTVQWszWhd8ByWLqRWWeK0q+U8j7V4l9Umw84mEGnb4UhLdwPFegRf3wuANC7zlvTwscrfHdnsWRiiq7o+rxKKgrCrQB2NO
X-Gm-Message-State: AOJu0Ywzrmc6koIQ0fuVrbV1YP8l+qhuNKmpx6Eoug+beTbh3BL31wVd
 jMJiwb4t3OYNLnbIDWWlOKgWRYZ5t+MrCsJheMau04vFazpkS3cKgc0xlofanlDz3MQifNbb0C8
 3tIRrlyId7Ok8Utfuz2lOTwd7pcK6WGhbNWm87qNhS4KxQ+J3IZ4VyaDM0A0pg7yyRA==
X-Received: by 2002:a05:6512:4005:b0:512:bce9:11af with SMTP id
 br5-20020a056512400500b00512bce911afmr8002134lfb.3.1709025482485; 
 Tue, 27 Feb 2024 01:18:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG1azD3zw8/fVU6eiSFgd1n31c4ICayrJMk2lsjefwyIXZ5XohcUpf+O55ZoCeo30CKzgBAuw==
X-Received: by 2002:a05:6512:4005:b0:512:bce9:11af with SMTP id
 br5-20020a056512400500b00512bce911afmr8002112lfb.3.1709025482088; 
 Tue, 27 Feb 2024 01:18:02 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 bt21-20020a056000081500b0033b48190e5esm11059341wrb.67.2024.02.27.01.18.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Feb 2024 01:18:01 -0800 (PST)
Date: Tue, 27 Feb 2024 10:18:01 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: dri-devel@lists.freedesktop.org, 
 Daniel Vetter <daniel.vetter@ffwll.ch>, David Airlie <airlied@gmail.com>, 
 Daniel Stone <daniels@collabora.com>, dim-tools@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Subject: Re: DRM Migration to Gitlab
Message-ID: <q4imcbwr5act2iy3pswsvhojj6r5spjbo4w3wejn2mi2a34irl@c2gin24mbiwr>
References: <k555c7lj3mcj2skzrmc2ywxzz5ndtdgfpitw7fftdlyjjpmfou@7maudk3vdxuf>
 <87edcyl38y.fsf@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="lbjy76afh27ceari"
Content-Disposition: inline
In-Reply-To: <87edcyl38y.fsf@intel.com>
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


--lbjy76afh27ceari
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jani,

On Tue, Feb 27, 2024 at 10:29:01AM +0200, Jani Nikula wrote:
> On Tue, 27 Feb 2024, Maxime Ripard <mripard@redhat.com> wrote:
> > Hi,
> >
> > Sima, after becoming aware of the drm-misc transition to Gitlab in the
> > next couple of weeks, to do the same for DRM today.
> >
> > This is now done and all the various bits (nightly.conf, MAINTAINERS,
> > doc, etc.) should be there.
> >
> > If all goes well, the only thing you'll notice is that dim will complain
> > about the drm remote not having the right URLs.
> >
> > Any dim user should update the URL with either one of the two following
> > commands:
> >
> > git remote set-url drm ssh://git@gitlab.freedesktop.org/drm/kernel.git
> > git remote set-url drm https://gitlab.freedesktop.org/drm/kernel.git
> >
> > And the rest should be transparent.
>=20
> Except it isn't. If you do that before updating to new nightly.conf,
> it'll complain that the URL it sees in the old config isn't available,
> and prompts.
>=20
> If you first do 'dim ub', and then do 'dim ub' again, before changing
> the URL, it'll also prompt, but it's unable to override the existing drm
> remote.

Urgh, you're right... It's also partly due to drm-tip being the last
repo to be updated. I've overlooked that aspect since I had the local
changes to nightly.conf.

> I think dim should be updated to handle all of this without user
> manually doing anything other than answering a yes/no prompt.

I've started to work on that, but it's probably going to take a bit of
time to figure it out, bash isn't really my strong suit.

If anyone is stuck with this, you can get unstuck manually by doing:

cd $DIM_PREFIX/drm-rerere
git checkout rerere-cache
git pull

cd $DIM_PREFIX/kernel
git remote set-url drm ...

There's been reports in private that some didn't get their branch
updated for some time and will have to add the drm/xe repo too:

git remote add drm-xe ssh://git@gitlab.freedesktop.org/drm/xe/kernel.git

Maxime

--lbjy76afh27ceari
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZd2oyAAKCRDj7w1vZxhR
xVwWAQDZZFN7/cUljlyPFonrZwjI0TQob/XdnMm2nSpu98MlrQD/UvzdI8gOW8Xs
ejc1C2Kj2PpOqQK7Yi2/4zBu8Ep+BAw=
=DvPh
-----END PGP SIGNATURE-----

--lbjy76afh27ceari--

