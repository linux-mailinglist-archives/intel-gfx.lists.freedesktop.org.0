Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B588738FD
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 15:26:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24BD511321E;
	Wed,  6 Mar 2024 14:26:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Dqm2iWsy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B38D113229
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 14:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1709735188;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=o4kkP5r2PBYf/fnYnhIrx+d5n31dlIZRsiDpDETazPk=;
 b=Dqm2iWsyWOqUqpN/+FXtBN9zGfvugkoiS0ANIRMu2AU3wwJeREXV2O3U01Hu4+AqitsIBv
 dwWvYFxk5M3sRGaGweBdC7lR5Tu4m8/a46uef6UWnlkM1V0BtdMw4aEIcfDJwyGja3/zYl
 cnnS31L7MbTwjW+zO+kvBfS75iIKd3I=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-520-70wPp8UjN1qPqeg_h5ScJg-1; Wed, 06 Mar 2024 09:26:26 -0500
X-MC-Unique: 70wPp8UjN1qPqeg_h5ScJg-1
Received: by mail-lj1-f198.google.com with SMTP id
 38308e7fff4ca-2d2fe83c377so51906451fa.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 Mar 2024 06:26:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709735185; x=1710339985;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=o4kkP5r2PBYf/fnYnhIrx+d5n31dlIZRsiDpDETazPk=;
 b=QI6q8JI/WQ1o2Vao0YC5aaLmSKVV/2DZmq1NAm2Gd4/5IC0kHNu1EPT+phPavqRETr
 4M8vrX06idWY5uoZkrO5OG749mSdOMbRUSAFpMs9V/4GBnAlNnutgcazoo9uX+6GClCd
 jaVNkd10lZofUEIQli9EJ9H15YxZJ4dpKP03/OsHpMuJ2W9Ve5r7TgBWXtcr7IWSl4kc
 hRZnx2MJPtrBC13U1j39oCYML/q5Rkt9bJaTRVnlQunZAnFVfujxvgQ/KuNVz1/EbsWl
 7ptp27uN+1SlZgW37gfjEZ47jXLw1XgdwRrD2sZeqbI/K3G/6nwOowmRtWPzk0IKp7iO
 ViaQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWgRLzVu2Vs9qSE+zGLXSwZgAcGiSW5cP6lsL8VWqotnODszQ0z6MKe6CHqiwx+yFJ421R5irkmdvn6n5UTDXE6XHbHDoZ+MQxMfIef4OGe
X-Gm-Message-State: AOJu0YwdGGmJ4GEN43Cgy8kY7FVi6JNba7A7K0HC26ojkmZRCideq1Is
 HDBdWoxBeWtB0wQXkjL7Fza03gHn+dHoe4r+9wshw/ep2MtlRv6TSb7xLlfcXmKr2soVmRYrdDk
 Q3xMYOGc6HWEdBCqi1MxLE6x4mZnHxaYctfpomZqC0g75s1Fm16/grJmqG/6m7FYF+g==
X-Received: by 2002:a2e:87c3:0:b0:2d3:4fc9:bc2 with SMTP id
 v3-20020a2e87c3000000b002d34fc90bc2mr3878879ljj.9.1709735184969; 
 Wed, 06 Mar 2024 06:26:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE/r/msA7cwcZyzuDyq2sK0O4GCaCIs8G28sxIPXHJn5aWGxMlOpR/z/B19FoDutA2t1Tr7zw==
X-Received: by 2002:a2e:87c3:0:b0:2d3:4fc9:bc2 with SMTP id
 v3-20020a2e87c3000000b002d34fc90bc2mr3878856ljj.9.1709735184305; 
 Wed, 06 Mar 2024 06:26:24 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 cl5-20020a5d5f05000000b0033ce727e728sm5288152wrb.94.2024.03.06.06.26.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Mar 2024 06:26:23 -0800 (PST)
Date: Wed, 6 Mar 2024 15:26:23 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Matthew Auld <matthew.auld@intel.com>
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
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: Re: [PULL] drm-misc-fixes
Message-ID: <20240306-daft-debonair-petrel-e7aa2e@houat>
References: <20240229-angelic-adorable-teal-fbfabb@houat>
 <455d1cf5-e885-42bf-9bda-4cf6d51b2de0@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="vwfckqr3gf2pxlqv"
Content-Disposition: inline
In-Reply-To: <455d1cf5-e885-42bf-9bda-4cf6d51b2de0@intel.com>
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


--vwfckqr3gf2pxlqv
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Feb 29, 2024 at 01:54:30PM +0000, Matthew Auld wrote:
> On 29/02/2024 13:37, Maxime Ripard wrote:
> > Hi,
> >=20
> > Here's this week drm-misc fixes PR.
> >=20
> > There's two commits for files unders drivers/soc/qcom that don't have a
> > maintainer Acked-by. Bjorn's Acked-by was provided on IRC, and Konrad
> > provided it by mail after the facts so we're covered.
> >=20
> > Maxime
> >=20
> > drm-misc-fixes-2024-02-29:
> > A reset fix for host1x, a resource leak fix and a probe fix for aux-hpd,
> > a use-after-free fix and a boot fix for a pmic_glink qcom driver in
> > drivers/soc, a fix for the simpledrm/tegra transition, a kunit fix for
> > the TTM tests, a font handling fix for fbcon, two allocation fixes and a
> > kunit test to cover them for drm/buddy
> > The following changes since commit 72fa02fdf83306c52bc1eede28359e3fa32a=
151a:
> >=20
> >    nouveau: add an ioctl to report vram usage (2024-02-23 10:20:07 +100=
0)
> >=20
> > are available in the Git repository at:
> >=20
> >    https://anongit.freedesktop.org/git/drm/drm-misc tags/drm-misc-fixes=
-2024-02-29
> >=20
> > for you to fetch changes up to c70703320e557ff30847915e6a7631a9abdda16b:
> >=20
> >    drm/tests/drm_buddy: add alloc_range_bias test (2024-02-28 08:03:29 =
+0100)
> >=20
> > ----------------------------------------------------------------
> > A reset fix for host1x, a resource leak fix and a probe fix for aux-hpd,
> > a use-after-free fix and a boot fix for a pmic_glink qcom driver in
> > drivers/soc, a fix for the simpledrm/tegra transition, a kunit fix for
> > the TTM tests, a font handling fix for fbcon, two allocation fixes and a
> > kunit test to cover them for drm/buddy
> >=20
> > ----------------------------------------------------------------
> > Christian K=F6nig (1):
> >        drm/ttm/tests: depend on UML || COMPILE_TEST
> >=20
> > Jiri Slaby (SUSE) (1):
> >        fbcon: always restore the old font data in fbcon_do_set_font()
> >=20
> > Johan Hovold (3):
> >        drm/bridge: aux-hpd: fix OF node leaks
> >        drm/bridge: aux-hpd: separate allocation and registration
> >        soc: qcom: pmic_glink_altmode: fix drm bridge use-after-free
> >=20
> > Matthew Auld (3):
> >        drm/buddy: fix range bias
> >        drm/buddy: check range allocation matches alignment
> >        drm/tests/drm_buddy: add alloc_range_bias test
>=20
> Note that there is a build fix needed for this one:
> https://patchwork.freedesktop.org/patch/580568/?series=3D130552&rev=3D1

It looks like that patch still hasn't been applied. What's going on?

Maxime

--vwfckqr3gf2pxlqv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZeh9DwAKCRDj7w1vZxhR
xfmkAQDkqYMseYdLfpLuIDxvKiyyMTatoeSLxErPyO7hUx/faQEA+nH2QJVOttri
UuHaoohMDorjUZVxPY8vbbOE5Ta4Bws=
=UEgE
-----END PGP SIGNATURE-----

--vwfckqr3gf2pxlqv--

