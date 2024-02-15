Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFDC8568F6
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 17:09:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FD1710E98B;
	Thu, 15 Feb 2024 16:09:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="SwmCVufK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E49510E9A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 16:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1708013349;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=o0+lVlGNc1nCbb8NE1A6FPz4UO79PJjHMJaHoCBIr4s=;
 b=SwmCVufKKw850Fb/LOhKGM4dR+qj3DhxdgKAOIA1UFE8hZyCaVvNlDhRBanLsT+1tTrpHD
 qIcPSLpjAeOQY5Z7+EcowtRGORujvSzdQIPUhwdpeegsGFkIlyXEOV0W1qZGMUz+fYJiP8
 bRHdNbptrm77Znm9DDah/v5x3wruBBY=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-461-tvAA9tUtOIyvRSFiJLfDnw-1; Thu, 15 Feb 2024 11:09:07 -0500
X-MC-Unique: tvAA9tUtOIyvRSFiJLfDnw-1
Received: by mail-qv1-f72.google.com with SMTP id
 6a1803df08f44-68c4e69e121so12165676d6.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 08:09:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708013347; x=1708618147;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=o0+lVlGNc1nCbb8NE1A6FPz4UO79PJjHMJaHoCBIr4s=;
 b=DFgUxyd3fKUVbNlBX5P6VUw0uU9Tpp9Uuu81R7iB6KcX950/ROMfXgkN6iAVZErUt9
 xLVclvaqi36s5VM9i8WzOuLPUVf8eu/qWwP9+xl0ZhwywT04gNk6Oi0M8GdfztTtfFLz
 DPh29UTuhrecVTIUqnmzxUNHAxPkXnKFNT3GQPbqTnnXQW9NvbgGDhtme8znNLVsxz50
 JCR5P8uhdT5lnyz8mSfWHTA4U8qgxUBkrh2Rvk5AkaNEDFuEHkgzL1saHZ45ZpiAKTgG
 /qVA2BZ8YdkYVnxoSKp4V18nBOytXmi8N8dinTsx8aBWWc/oKRVedluZ37pOXGOJIxOo
 AC9Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVWr2Is/9HwKz3ekclpnIb6Nw1aGT5uHbTQEUzuf4jJvju1ASqzeih92pLcasWUl7QqUoEYfzPs8atZMdRpNxCscOMoWXPWrVyeyoM7VVI7
X-Gm-Message-State: AOJu0YwhnMq71+fkT+83Ems3whHFq5TcB48fMDKjjnMs4clM9JSLjRDp
 JTwimVyAJu16x0oLnf+C6ZHxspb3GAs8nOyVzVz8EdZeGeZ1GOvxbIXu1eANHPKetfMH9pvGw4f
 SnDOXF9frlD3tCk2YUgyDj9NrrzZs0Dut2d8kTjEekww17zplILqoVI/Jg+Ye0poI6g==
X-Received: by 2002:a0c:e24b:0:b0:68c:5027:4cf9 with SMTP id
 x11-20020a0ce24b000000b0068c50274cf9mr1906294qvl.62.1708013347091; 
 Thu, 15 Feb 2024 08:09:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEJbeLSvTOw7HO1jqv/RVMYLOHMddOSJnxunvGlTbOowpn7fNoSZSkiuzSG2tOvq/y/T1LsTA==
X-Received: by 2002:a0c:e24b:0:b0:68c:5027:4cf9 with SMTP id
 x11-20020a0ce24b000000b0068c50274cf9mr1906259qvl.62.1708013346696; 
 Thu, 15 Feb 2024 08:09:06 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 on9-20020a056214448900b0068d14adaab2sm392043qvb.11.2024.02.15.08.09.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Feb 2024 08:09:06 -0800 (PST)
Date: Thu, 15 Feb 2024 17:09:04 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, 
 dim-tools@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Subject: Re: Re: [PULL] drm-misc-fixes
Message-ID: <ff7yoxjo64ykf5x3rvjiwvqyalddronfgzlz3kzs4f7r2nlxjd@lua6wp6wcp3p>
References: <b4ffqzigtfh6cgzdpwuk6jlrv3dnk4hu6etiizgvibysqgtl2p@42n2gdfdd5eu>
 <723b78e0-5462-23f-a7d4-c8b9b614c0@linux-m68k.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="g6s36nbzfpeejzye"
Content-Disposition: inline
In-Reply-To: <723b78e0-5462-23f-a7d4-c8b9b614c0@linux-m68k.org>
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


--g6s36nbzfpeejzye
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Feb 15, 2024 at 01:41:24PM +0100, Geert Uytterhoeven wrote:
> 	Hi Maxime,
>=20
> On Thu, 15 Feb 2024, Maxime Ripard wrote:
> > Here's this week drm-misc-fixes PR
> >=20
> > Maxime
> >=20
> > drm-misc-fixes-2024-02-15:
> > A suspend/resume error fix for ivpu, a couple of scheduler fixes for
> > nouveau, a patch to support large page arrays in prime, a uninitialized
> > variable fix in crtc, a locking fix in rockchip/vop2 and a buddy
> > allocator error reporting fix.
> > The following changes since commit 5f8408aca66772d3aa9b4831577b2ac5ec41=
bcd9:
> >=20
> >  accel/ivpu: Add job status for jobs aborted by the driver (2024-02-06 =
13:37:34 +0100)
> >=20
> > are available in the Git repository at:
> >=20
> >  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2024-02=
-15
> >=20
> > for you to fetch changes up to a64056bb5a3215bd31c8ce17d609ba0f4d5c55ea:
> >=20
> >  drm/tests/drm_buddy: add alloc_contiguous test (2024-02-14 15:22:21 +0=
100)
> >=20
> > ----------------------------------------------------------------
> > A suspend/resume error fix for ivpu, a couple of scheduler fixes for
> > nouveau, a patch to support large page arrays in prime, a uninitialized
> > variable fix in crtc, a locking fix in rockchip/vop2 and a buddy
> > allocator error reporting fix.
>=20
> > Matthew Auld (1):
> >      drm/tests/drm_buddy: add alloc_contiguous test
>=20
> Please drop this one.
>=20
> noreply@ellerman.id.au reported a build failure on m68k (and presumably
> other 32-bit platforms) in next-20240215:
>=20
> ERROR: modpost: "__umoddi3" [drivers/gpu/drm/tests/drm_buddy_test.ko] und=
efined!
> ERROR: modpost: "__moddi3" [drivers/gpu/drm/tests/drm_buddy_test.ko] unde=
fined!
>=20
> Reverting commit a64056bb5a3215bd ("drm/tests/drm_buddy: add
> alloc_contiguous test") fixes the issue.

=46rom a quick cross-compile test with arm(32), it seems to work there
interestingly:

=2E/tools/testing/kunit/kunit.py run \
	--kunitconfig=3Ddrivers/gpu/drm//tests \
	--cross_compile arm-linux-gnu- --arch arm

But I agree, with should wait for a fix or a revert before merging this.

Maxime

--g6s36nbzfpeejzye
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZc43IAAKCRDj7w1vZxhR
xcGIAQDyixmCMU0lYsDTjCDrkKWlSVPb8IfTGnUWkxevQyax8QEA0tX4XsyGAApQ
EW2Nq9e042OFWcf80BBVHWDLmD7Z9g8=
=XKL/
-----END PGP SIGNATURE-----

--g6s36nbzfpeejzye--

