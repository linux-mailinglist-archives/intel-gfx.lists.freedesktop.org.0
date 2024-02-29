Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E00486CA68
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 14:37:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6901C10E119;
	Thu, 29 Feb 2024 13:37:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Vw0jSUuq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0DDA10E165
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 13:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1709213849;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=vDUSEAJwQ4YGsrivsXMVw4pvN15mO+5wYFypQLio1vw=;
 b=Vw0jSUuqVDnmQrYYmI27o74ZM5Lnst8kN2Xcx+L2rHAljBDO0wFCRZs1RzIbPYYfHd8c7E
 +u4/PGLF3a9hHoPNWN7FRVuOD2v8DynVccpw8HF6AjsJvl2U7lZ+nyRzTLChbeg6u1QrjK
 9M63HNBmbrbedtkonw2TTGuGEYWktUY=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-643-JI5WAYLfOUyxkQZUjjNG1A-1; Thu, 29 Feb 2024 08:37:25 -0500
X-MC-Unique: JI5WAYLfOUyxkQZUjjNG1A-1
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-33d07c0825aso389633f8f.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 05:37:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709213844; x=1709818644;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=vDUSEAJwQ4YGsrivsXMVw4pvN15mO+5wYFypQLio1vw=;
 b=a5sFn03nwXuFNF9/wpd4ChvSXudJigWKmvcTEWa8wnrksPgegrR1RhDom9Scybr7qx
 zmOAODaOdZ6s3j1pzazLZ/sys7UDsklzWUcBRZFAuSDIEPXsyHeDXwXaNMmYjSjeEQYl
 AJEP3cigT1RVJIUunMJWhNXHObvoIVd847OZJkRv33oxWEQg2QS6GRbpoXNPTyXDBYxW
 sdnBTgiAKmHjdBfPTuGkeQM3c4lNV8cAre5FBX5fhnpIVjdvyn0EPzCGG/oNLQrRCwlN
 CJk5TQQTvcX3B5lhtil0zQDNqYeCPzcqikxwY5uY5iio+b3PQzWALXY6qrWseMVPx9TP
 Y1CQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXGZ43lzX7aN24vGtor1zQDzz8ygbRhcwIyaEOik2uVE+xrhtb3GX7P/hKHwNWJwRPt1TY6918RKAjt0NhJ1KY6Q8lAEEp0a6fdwfLdAQtt
X-Gm-Message-State: AOJu0Yz+HXPl/arcZfp3kixV+i2z9ALPKPt1RIHzSv3ebh1eT4UhciF2
 ze2vRhqEEuZi+tDUM4p4jAHgIY1CgdFA64egznd7PcOVQG1NoJSnfr1LB93AYvhYsUAn7XrWIsp
 iASOSXr5rr2lYqmk2R1/2GcAVRW65QeMGWR1roUIdgNv971uor08ee1ESQTDDK0IgOA==
X-Received: by 2002:adf:cd10:0:b0:33d:9d21:ea8f with SMTP id
 w16-20020adfcd10000000b0033d9d21ea8fmr1297597wrm.3.1709213844247; 
 Thu, 29 Feb 2024 05:37:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEbHkP82IIB7bdvKg7ovelrCBgb68WwrAqg7dUtfNpmvupJWrHzhm5EJTHcXysxLHIRKqnagg==
X-Received: by 2002:adf:cd10:0:b0:33d:9d21:ea8f with SMTP id
 w16-20020adfcd10000000b0033d9d21ea8fmr1297581wrm.3.1709213843797; 
 Thu, 29 Feb 2024 05:37:23 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 m19-20020a056000181300b0033d3b8820f8sm1781552wrh.109.2024.02.29.05.37.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Feb 2024 05:37:23 -0800 (PST)
Date: Thu, 29 Feb 2024 14:37:23 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: [PULL] drm-misc-fixes
Message-ID: <20240229-angelic-adorable-teal-fbfabb@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="ht65tpmkjawo5wje"
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--ht65tpmkjawo5wje
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Here's this week drm-misc fixes PR.

There's two commits for files unders drivers/soc/qcom that don't have a
maintainer Acked-by. Bjorn's Acked-by was provided on IRC, and Konrad
provided it by mail after the facts so we're covered.

Maxime

drm-misc-fixes-2024-02-29:
A reset fix for host1x, a resource leak fix and a probe fix for aux-hpd,
a use-after-free fix and a boot fix for a pmic_glink qcom driver in
drivers/soc, a fix for the simpledrm/tegra transition, a kunit fix for
the TTM tests, a font handling fix for fbcon, two allocation fixes and a
kunit test to cover them for drm/buddy
The following changes since commit 72fa02fdf83306c52bc1eede28359e3fa32a151a:

  nouveau: add an ioctl to report vram usage (2024-02-23 10:20:07 +1000)

are available in the Git repository at:

  https://anongit.freedesktop.org/git/drm/drm-misc tags/drm-misc-fixes-2024=
-02-29

for you to fetch changes up to c70703320e557ff30847915e6a7631a9abdda16b:

  drm/tests/drm_buddy: add alloc_range_bias test (2024-02-28 08:03:29 +0100)

----------------------------------------------------------------
A reset fix for host1x, a resource leak fix and a probe fix for aux-hpd,
a use-after-free fix and a boot fix for a pmic_glink qcom driver in
drivers/soc, a fix for the simpledrm/tegra transition, a kunit fix for
the TTM tests, a font handling fix for fbcon, two allocation fixes and a
kunit test to cover them for drm/buddy

----------------------------------------------------------------
Christian K=F6nig (1):
      drm/ttm/tests: depend on UML || COMPILE_TEST

Jiri Slaby (SUSE) (1):
      fbcon: always restore the old font data in fbcon_do_set_font()

Johan Hovold (3):
      drm/bridge: aux-hpd: fix OF node leaks
      drm/bridge: aux-hpd: separate allocation and registration
      soc: qcom: pmic_glink_altmode: fix drm bridge use-after-free

Matthew Auld (3):
      drm/buddy: fix range bias
      drm/buddy: check range allocation matches alignment
      drm/tests/drm_buddy: add alloc_range_bias test

Maxime Ripard (1):
      Merge drm/drm-fixes into drm-misc-fixes

Mikko Perttunen (1):
      gpu: host1x: Skip reset assert on Tegra186

Rob Clark (1):
      soc: qcom: pmic_glink: Fix boot when QRTR=3Dm

Thierry Reding (1):
      drm/tegra: Remove existing framebuffer only if we support display

 drivers/gpu/drm/Kconfig                 |   5 +-
 drivers/gpu/drm/bridge/aux-hpd-bridge.c |  70 +++++++---
 drivers/gpu/drm/drm_buddy.c             |  16 ++-
 drivers/gpu/drm/tegra/drm.c             |  23 +++-
 drivers/gpu/drm/tests/drm_buddy_test.c  | 218 ++++++++++++++++++++++++++++=
++++
 drivers/gpu/host1x/dev.c                |  15 ++-
 drivers/gpu/host1x/dev.h                |   6 +
 drivers/soc/qcom/pmic_glink.c           |  21 +--
 drivers/soc/qcom/pmic_glink_altmode.c   |  16 ++-
 drivers/video/fbdev/core/fbcon.c        |   8 +-
 include/drm/bridge/aux-bridge.h         |  15 +++
 11 files changed, 368 insertions(+), 45 deletions(-)

--ht65tpmkjawo5wje
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZeCIkgAKCRDj7w1vZxhR
xXBcAP4g73FPfLU2Ntqt4YBg2PBEajW7xQXJS64S3PbnsGdiyAD/Tf7iMZ4wzpLK
sK2PdMNxsuyskzI9/iGgLFnJLhuaAwI=
=AjLi
-----END PGP SIGNATURE-----

--ht65tpmkjawo5wje--

