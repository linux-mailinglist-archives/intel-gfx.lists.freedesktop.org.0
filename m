Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 968F4A5ED1C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 08:36:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50C5710E7FD;
	Thu, 13 Mar 2025 07:36:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="GDn0zR2b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CE0B10E7FE
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Mar 2025 07:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1741851394;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=uycxbi4TCRK/IaVbkaHC23MSCbbrir2qS6Cwo9hdLFk=;
 b=GDn0zR2bkztqWSAUP1rj7l3rndiDGCXVEn572aiky5DpPz0t1jecta6XA0GeNh3QG7T5N/
 EoG4iUPG96SbA8uv2h/khe3FKyHjvWeGN0a9KKG28FU/oKlfu2ecqqIN6hgNACTSwaQF8Z
 LEK8VJYWhIGyfS+0NnoeQjXe58gAmKQ=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-643-z2tEXyEjMJK8RuWmrZzvKg-1; Thu, 13 Mar 2025 03:36:32 -0400
X-MC-Unique: z2tEXyEjMJK8RuWmrZzvKg-1
X-Mimecast-MFC-AGG-ID: z2tEXyEjMJK8RuWmrZzvKg_1741851391
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-3912d5f6689so357796f8f.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Mar 2025 00:36:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741851391; x=1742456191;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=uycxbi4TCRK/IaVbkaHC23MSCbbrir2qS6Cwo9hdLFk=;
 b=t/pWaSRSvRyU9iQb9raehibBqOeNjvCmwO25Q60r4FiGRCqlLnEDM8pYY0gc9Kykqp
 zD6G0AuBT3Y0dN5c7PjNvFu9zqPP2ps/sbAj1b3JFlwzNtsTd4WXc9sGD8pEzJE5kI01
 CnKo17TBiJ7hI9r3FKkxGuim+rTEyw5SbML57rgrgCVmi7HZejUEMPM+v2Ntnfo9Rehj
 VqQDOO8uywNNwShwapBV5L1DzmDmu07uZ9amW903H+h80Vk24R/FPmbTTkA8iFobT8xq
 mZwMHAqs8M2JzA3o4+qNS5E8H8PlMj6r+cXPmUjyiL08VmwMPNE+AKl6EqsxGb/begAm
 TxyA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUPz+xE5hLPfbIna1CJRIamhpnTi8i47SXhsUGkL7IvU+citsaWAKhPMZTYPUnd5/grRGSgqxpanzo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyMvoOMkEEODC/ODEOeSt570CGRJYEPEC6qvo/lFUdwmnww5EaF
 ByHNQLemv+cvf8yRi+2QMotgPmn5RuTelu6gAdsYYDfRVM/ufaS0FHlK1lQu109l0kpkKvPwXTz
 Q2Zgx1ao4z+3frS94vMpPo5QC4F5NAA+ZDUiTq1SA7XY/bbHKI5j80itJpYsCHqjUJw==
X-Gm-Gg: ASbGnctHNpIG7oOUBBwcTignLkaBtesHstf8DITy9xw7PFR8wFcdvIl+sui7tG3m5j1
 ZoDR4uS4OALvedS7YQpyQXRJvMEHgX94Wjk4P0itsc0zhvhXoJtXSQupTSXxGi3emKxVCgqyMHv
 ZwvSB2HwZtZC/+2t9uTiaB7Ltne6HAa4U8+NQM6ZWBhYfauae02NaxxT2s+y/jWvDwrgK/ugEUe
 a4qBN3yjc/73eOiZPL6zSgCQPcXfL5UUygw3syhKWoN+KgxD0yxN5DDF0YwJmLe+Tw=
X-Received: by 2002:a5d:6c66:0:b0:391:4835:d8a8 with SMTP id
 ffacd0b85a97d-3914835d9e2mr11564608f8f.1.1741851390946; 
 Thu, 13 Mar 2025 00:36:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQBTHN7HToqEsIEVgOs3DY0TO0fyncqzeN+fnZxWcJCLq9jxb30i16kQMXPX6J8VqOTgFD3g==
X-Received: by 2002:a5d:6c66:0:b0:391:4835:d8a8 with SMTP id
 ffacd0b85a97d-3914835d9e2mr11564594f8f.1.1741851390504; 
 Thu, 13 Mar 2025 00:36:30 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-43d0a75b290sm44363505e9.23.2025.03.13.00.36.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Mar 2025 00:36:29 -0700 (PDT)
Date: Thu, 13 Mar 2025 08:36:29 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Simona Vetter <simona.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: [PULL] drm-misc-fixes
Message-ID: <20250313-holistic-clay-moose-fead28@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="yd3tboou6p7k4fgc"
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


--yd3tboou6p7k4fgc
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PULL] drm-misc-fixes
MIME-Version: 1.0

Hi,

Here's this week drm-misc-fixes PR

Maxime

drm-misc-fixes-2025-03-13:
A null pointer check for gma500, two clippy fixes for panic, a fix for
an interaction between DPMS and atomic leading to dropped frames, and
a locking fix  for dp_mst
The following changes since commit 80da96d735094ea22985ced98bc57fe3a4422921:

  drm/bochs: Fix DPMS regression (2025-03-06 08:54:42 +0100)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-20=
25-03-13

for you to fetch changes up to 12d8f318347b1d4feac48e8ac351d3786af39599:

  drm/dp_mst: Fix locking when skipping CSN before topology probing (2025-0=
3-11 11:29:18 +0200)

----------------------------------------------------------------
A null pointer check for gma500, two clippy fixes for panic, a fix for
an interaction between DPMS and atomic leading to dropped frames, and
a locking fix  for dp_mst

----------------------------------------------------------------
Imre Deak (1):
      drm/dp_mst: Fix locking when skipping CSN before topology probing

Ivan Abramov (1):
      drm/gma500: Add NULL check for pci_gfx_root in mid_get_vbt_data()

Miguel Ojeda (2):
      drm/panic: use `div_ceil` to clean Clippy warning
      drm/panic: fix overindented list items in documentation

Ville Syrj=E4l=E4 (1):
      drm/atomic: Filter out redundant DPMS calls

 drivers/gpu/drm/display/drm_dp_mst_topology.c | 40 ++++++++++++++++-------=
----
 drivers/gpu/drm/drm_atomic_uapi.c             |  4 +++
 drivers/gpu/drm/drm_connector.c               |  4 +++
 drivers/gpu/drm/drm_panic_qr.rs               | 16 +++++------
 drivers/gpu/drm/gma500/mid_bios.c             |  5 ++++
 5 files changed, 45 insertions(+), 24 deletions(-)

--yd3tboou6p7k4fgc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZ9KK/AAKCRDj7w1vZxhR
xc5sAP4zPHPxFCE/OasImZapRLUTIlhRPIVFkkyapO0g0idSCAD/eEihejwWeuN6
6Dv6A3dF9xf7nQGBAxdJRxcO6hD0kgw=
=dLWt
-----END PGP SIGNATURE-----

--yd3tboou6p7k4fgc--

