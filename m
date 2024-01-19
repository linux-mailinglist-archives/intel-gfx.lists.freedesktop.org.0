Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E6A832968
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 13:13:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0310710E9EA;
	Fri, 19 Jan 2024 12:13:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C087310E9E8
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 12:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1705666419;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=dIO0rD6PS4UE9ckN+UAWPedn16BH9n7ueoi4cHbrUuo=;
 b=b2Alh0u81WtMjs6ZVPcvOlzErDs2/76C4E6gr7l2n6/Y4i+Q4thZGqlGuJDtxWNIqRpzGc
 MafSMUPH0Xh1g2oC75UpentHEptmXsIPaVUOrHoo5U8EGWNG7ZeCStoKiPgB2sSpKC8lfA
 k1LHDy+Q5di2piaA9Rf3Q7WWQt4VszY=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-37-TRwTMxByNiehTIfIm3gMsg-1; Fri, 19 Jan 2024 07:13:37 -0500
X-MC-Unique: TRwTMxByNiehTIfIm3gMsg-1
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-40e49906305so5302025e9.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 04:13:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705666417; x=1706271217;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=dIO0rD6PS4UE9ckN+UAWPedn16BH9n7ueoi4cHbrUuo=;
 b=h4XZjqSXAYPgoAMbR5DVMsDUnXY4Le/ZT3wOOphZ/HZeULQ7x3KqOYizAO9/6NDN5a
 dabHf+UkWCnUNc5wdkD73CWAoERUod/9iuqCNKSBa/0acJKjwyONgIwsa2s7B4d9yI2J
 mz+TKOHHA6KGrI8qOXBiO5g1jFMWkr1MkD3qXczmGZHlau8oxxqlA3mKHD5XGJa81Mcf
 Yns1UQRDEWEPGdPKixeoUpa3iIrs1bq7WNnMoP5kfOXGO5U6dpmUvNiT4R2NXePV4Hj2
 EOzl2hy1VYjX+8VTmDyXMvPhwP7dz2882TsK/qUnN53TCYw7YbIrl7nFIBY6Fu5cmkAK
 +yBg==
X-Gm-Message-State: AOJu0YwOsJN5LYPNjaOWwbzKRQN9Y9mqQqc4AzXgiu2zgoYL/GNwxd4O
 mEh3EqRngomgZ9ayF1zOw7JRXWR4f1/vKkZKEZAXxIZdH6exznNso/Rq0sW2sfjymQ8aQwiJkBx
 /VlR4uCY20VR716KXf/GOBA0Y0OK98Kh10Iu3x/WMTHzMNwt72cXewoxQgbVIgD1yHA==
X-Received: by 2002:a7b:c001:0:b0:40e:6963:e768 with SMTP id
 c1-20020a7bc001000000b0040e6963e768mr1409526wmb.9.1705666416805; 
 Fri, 19 Jan 2024 04:13:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHz/TODPOt9VSdW4tJ6SV/9THtNYVE5H3mIGGP1OmwL2nXNbniufXqMoC2W6mFTEjnyJ4JAUA==
X-Received: by 2002:a7b:c001:0:b0:40e:6963:e768 with SMTP id
 c1-20020a7bc001000000b0040e6963e768mr1409514wmb.9.1705666416438; 
 Fri, 19 Jan 2024 04:13:36 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 ay41-20020a05600c1e2900b0040e9e03160bsm1793776wmb.16.2024.01.19.04.13.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jan 2024 04:13:36 -0800 (PST)
Date: Fri, 19 Jan 2024 13:13:35 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: [PULL] drm-misc-next-fixes
Message-ID: <5zrphn2nhxnwillxlmo6ap3zh7qjt3jgydlm5sntuc4fzvwhpo@hznprx2bjyi7>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="xbj63rarri2vcask"
Content-Disposition: inline
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Oded Gabbay <ogabbay@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--xbj63rarri2vcask
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Here's this week (and last (maybe)) drm-misc-next-fixes PR.

Thanks!
Maxime

drm-misc-next-fixes-2024-01-19:
A null pointer dereference fix for v3d and a protection fault fix for
ttm.
The following changes since commit 89fe46019a62bc1d0cb49c9615cb3520096c4bc1:

  drm/v3d: Fix support for register debugging on the RPi 4 (2024-01-09 14:2=
1:47 -0300)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-next-fixes-2024-=
01-19

for you to fetch changes up to 1f1626ac0428820f998245478610f452650bcab5:

  drm/ttm: fix ttm pool initialization for no-dma-device drivers (2024-01-1=
5 13:56:08 +0100)

----------------------------------------------------------------
A null pointer dereference fix for v3d and a protection fault fix for
ttm.

----------------------------------------------------------------
Fedor Pchelkin (1):
      drm/ttm: fix ttm pool initialization for no-dma-device drivers

Ma=EDra Canal (1):
      drm/v3d: Free the job and assign it to NULL if initialization fails

 drivers/gpu/drm/ttm/ttm_device.c |  9 +++++++--
 drivers/gpu/drm/v3d/v3d_submit.c | 35 ++++++++++++++++++++++++++++-------
 2 files changed, 35 insertions(+), 9 deletions(-)

--xbj63rarri2vcask
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZapnbwAKCRDj7w1vZxhR
xTRKAP9vfdzVmMPUjnbqCGNewwNxSaybJKs4z+btMurzFwLcDQEAw6SLyMUdBvdL
nZUTVLuuCnHigwglZL7pDVEZdWvtiQo=
=Zeuz
-----END PGP SIGNATURE-----

--xbj63rarri2vcask--

