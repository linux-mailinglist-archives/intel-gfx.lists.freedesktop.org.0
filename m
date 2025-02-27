Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A5AA48092
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 15:10:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFD7110EAF6;
	Thu, 27 Feb 2025 14:10:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="NoA2qocB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12EDD10EAF6
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2025 14:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1740665408;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=9VIuQIUD2G9HmHUMYzEJUEoqvlwDhuWKeNCxaXLu2E8=;
 b=NoA2qocBla1vCvpbOaxzSWJDYdhUDdcBbz2zm4GJKA/gq38e59paBohZA3AQWwiFJhCu4J
 N/IfPmZLJIZg6FKIzCeoTVAnkp7Mz4TB1iSeIW+UFJr8AEWwYZxWsZeT639Uzy3VTTxqki
 rrCYoMCP4GFCJKSDMToIJJqWUZWG12c=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-552-243RLGJSNcydMstA22yaAw-1; Thu, 27 Feb 2025 09:10:03 -0500
X-MC-Unique: 243RLGJSNcydMstA22yaAw-1
X-Mimecast-MFC-AGG-ID: 243RLGJSNcydMstA22yaAw_1740665402
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-4399c32efb4so9071845e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2025 06:10:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740665402; x=1741270202;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9VIuQIUD2G9HmHUMYzEJUEoqvlwDhuWKeNCxaXLu2E8=;
 b=GU7ClWS4GsLww9+UMwxsoO6I8nmhxtMYpTqEhRbuFr4L7RoyG2zZOt4zEswKykC1cK
 X9MB0aDyA3vay0GW3BN6JnElzmQH3hjyC0Yaql9k3l3NPDRPe8B68MvGJPX5pNQtPsPq
 bKpjawIIdzF+UAa2/JsArhh2T7t8zCCz03m7kdphnuu1Ah3c0YxsJrJVqw5+dsemtBzY
 eZpEgs0lREUXbulSrFGHJwn9b623tUqiiWvAgtE6uC0zCOEQAHB14lLwPbZ/dFpBRQzs
 GY7KKl2Ga/e5/Ut8W3skx/Us6mKkDLJSCJJ6xgm0ZCjPIvW+oFEm1fGH1ga2L3k98X/j
 4icg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUMeSGhrSCiqeD+lwGTvYWQLKySEwtlpblRgDy1pp35ib1O2KEia4j+xeSI08Fq0GmPwOflMuH3U1U=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxSypthFys+rdNCAbZSOgF9wQLKWISCNQnGco8iJaSkW6Xgtj+S
 s2YoRnEc4Xn0CTrHOO9jf4OBDI5W8R8b/rp3jO9vVGBsxdp8ZOdvppQa6mQHJ7aDWzimbE1RHMl
 BStLeBIXlW5HKOgPe/Vz2LUVTg2E4fUtvVAc8m89tUKWp3xaOCsjofmRmN+2pUKO1hw==
X-Gm-Gg: ASbGncvtVbS18nLY8GbJ1n30APlFIb/MmN3AYI0a35vRzo9CTxGX0jpoo47+qbZBKzx
 AHqo40jfuA5pHdIgMzUPlHZNA6nzMAmYLht1EKBw5/P4jDmTr5vgF2Tnd8mg/G4Ic7LOYJiuDBL
 0eOo1mE/6hQdA5bp23KBrTDdpFQNeIZVQ9lvOfuyK405c70bGlvwph5bThq2tAoLF7Dfa1CwMfH
 VtMOojQiofttc9Kd72aVTuPWZXqGtegz2dVlYk3g0fzhZ7leNi9Yd/BW8lQbjQAGb8=
X-Received: by 2002:a05:600c:4f51:b0:43b:4829:8067 with SMTP id
 5b1f17b1804b1-43b4829817amr22148275e9.6.1740665401618; 
 Thu, 27 Feb 2025 06:10:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEifNsznLyokR5GKTVl0D+NUMfkGyQdP0bwlykOiIadUJSZ50u1EKnGJVxmAoCSEpoxyBBIDw==
X-Received: by 2002:a05:600c:4f51:b0:43b:4829:8067 with SMTP id
 5b1f17b1804b1-43b4829817amr22147685e9.6.1740665401111; 
 Thu, 27 Feb 2025 06:10:01 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-43b73718e2asm25044075e9.21.2025.02.27.06.10.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2025 06:10:00 -0800 (PST)
Date: Thu, 27 Feb 2025 15:10:00 +0100
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
Message-ID: <20250227-antique-robust-earthworm-09dfd1@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="nbfo27jsootlcyjj"
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


--nbfo27jsootlcyjj
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: [PULL] drm-misc-fixes
MIME-Version: 1.0

Hi,

Here's this week drm-misc-fixes PR

Maxime

drm-misc-fixes-2025-02-27:
Fix a rounding error in vkms, a header fix for img, a connector status
fix for nouveau, and a NULL pointer dereference fix for deferred IO
drivers.
The following changes since commit 838c17fd077e611b12c78feb0feee1b30ed09b63:

  accel/amdxdna: Add missing include linux/slab.h (2025-02-19 09:42:17 -0800)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2025-02-27

for you to fetch changes up to 3603996432997f7c88da37a97062a46cda01ac9d:

  drm/fbdev-dma: Add shadow buffering for deferred I/O (2025-02-27 09:37:55 +0100)

----------------------------------------------------------------
Fix a rounding error in vkms, a header fix for img, a connector status
fix for nouveau, and a NULL pointer dereference fix for deferred IO
drivers.

----------------------------------------------------------------
Harry Wentland (1):
      drm/vkms: Round fixp2int conversion in lerp_u16

Maarten Lankhorst (1):
      MAINTAINERS: Add entry for DMEM cgroup controller

Masahiro Yamada (1):
      drm/imagination: remove unnecessary header include path

Thomas Zimmermann (2):
      drm/nouveau: Do not override forced connector status
      drm/fbdev-dma: Add shadow buffering for deferred I/O

 .mailmap                                    |   1 +
 MAINTAINERS                                 |  11 ++
 drivers/gpu/drm/drm_fbdev_dma.c             | 217 ++++++++++++++++++++--------
 drivers/gpu/drm/imagination/Makefile        |   2 -
 drivers/gpu/drm/nouveau/nouveau_connector.c |   1 -
 drivers/gpu/drm/vkms/vkms_composer.c        |   2 +-
 6 files changed, 168 insertions(+), 66 deletions(-)

--nbfo27jsootlcyjj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ8ByNwAKCRAnX84Zoj2+
dh30AX9cPkDzSECkxLqFCPUqLKQPGY1xantooz1/dk13BE+MQEF238u/PfZ49qLG
d8TOpQ8BgLMqrS6Cmucrtx8WVJS61QoMjxU6nBLwStysFIlPwu6LDuLB/Ap+1KMC
jCruuBzYEg==
=3kPG
-----END PGP SIGNATURE-----

--nbfo27jsootlcyjj--

