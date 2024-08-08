Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A5594B82E
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 09:48:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95E0B10E67C;
	Thu,  8 Aug 2024 07:48:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="JVsmxAbv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 449D110E67B
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2024 07:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1723103322;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=1/mxFxMd80/sQ8NPhDNvpUs06idNABoVBpkyN8ZX/Cc=;
 b=JVsmxAbvvFSI73LK0sAGVg1zip1NEH1Te+JO6ySUPTrmlweCJ+j4z6OI9yjBMun4flHRsV
 ImpNs5c5cnomcZtnoSoALHE8xsgfKNhbMwwREUK8ZJUsTa6RvTqBCNvj3gKA34vk3n6l2I
 0e8u4TA99zUSFISa/mIVAOizSqfBXC4=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-60-abphO1AWOhSL13b4XUDFyw-1; Thu, 08 Aug 2024 03:48:40 -0400
X-MC-Unique: abphO1AWOhSL13b4XUDFyw-1
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-36b356a73fcso401241f8f.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Aug 2024 00:48:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723103319; x=1723708119;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1/mxFxMd80/sQ8NPhDNvpUs06idNABoVBpkyN8ZX/Cc=;
 b=bHG7yhXg3k/8orXYlfWWqcIblJg0I3WrXdx+zRRz1SK2NgyHxvZzEZOSj7pXSywKI3
 WNbtTI43wNIE2qC6e5sGFP8jYa1ZQxxLOxwuRXMHaj23D4MnbYOSX2EV/emQgGiJkD/7
 QKuUJOGdbjiaABUsya8ElMlRQhSNyLU67QqenZYGrVRxHZBHbO3V9Y2p6tFB0O2fxANt
 mkTss+4XV5XyKBqXsbLCoBHW8at1NuNwD49Wi3iuSeXsziyHJTF/Uu7y6apw9zh40NLV
 ENGN/Ei5+PootchIDg56ZtP2+BHlC9LofBqiH+7qpmqheK7Wl2MggKG06vxV+OyVVmq0
 FWZQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUR55XkbIk5DUT5lpCZQotT7N8RhV06b1P1b0zHiYylP9TD1efmnn1T7nf1paUDrc6P6BCHzfbM5yNcpegZU3UU48c+nvRif1aaElgKX648
X-Gm-Message-State: AOJu0YzNQXMy1RjGVwhn02jvcl8W4I2FTkyimPb87/NC+skrS4M1sPtp
 ac1ZIV9hPvs9h3iQmv4iGArHxJ7QoV0xDZsK+ojqOfaZtAZKGiUJgnIBSALLWvchtLQLN32X+GF
 VEn0K30Jgfwv3Demdl56a/6ndRe3t/sSIUdkBy1TJrwEux6jBZR8Y3bvnp0P3q19BdA==
X-Received: by 2002:a05:6000:e4b:b0:368:68d3:32b5 with SMTP id
 ffacd0b85a97d-36d273cfef9mr771585f8f.13.1723103319138; 
 Thu, 08 Aug 2024 00:48:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE2HPaXaG5wW7kZsB+rDvqqCIdeynFkM95W7Myr807Fl35JdF57w/4MCegwuj7+A1xD1AEVog==
X-Received: by 2002:a05:6000:e4b:b0:368:68d3:32b5 with SMTP id
 ffacd0b85a97d-36d273cfef9mr771561f8f.13.1723103318539; 
 Thu, 08 Aug 2024 00:48:38 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-36d27229116sm1000905f8f.98.2024.08.08.00.48.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Aug 2024 00:48:38 -0700 (PDT)
Date: Thu, 8 Aug 2024 09:48:37 +0200
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>
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
Message-ID: <20240808-debonair-smoky-mustang-8b6b3f@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="ppxfsvitnxaptq4g"
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


--ppxfsvitnxaptq4g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Here's this week drm-misc-fixes PR

Maxime

drm-misc-fixes-2024-08-08:
A fix for drm/client to prevent a null pointer dereference, a fix for a
double-free in drm/bridge-connector, a fix for a gem shmem test, and a
fix for async flips updates.
The following changes since commit 9c685f61722d30a22d55bb8a48f7a48bb2e19bcc:

  nouveau: set placement to original placement on uvmm validate. (2024-08-01 01:22:12 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2024-08-08

for you to fetch changes up to 929725bd7eb4eea1f75197d9847f3f1ea5afdad1:

  drm/atomic: allow no-op FB_ID updates for async flips (2024-08-06 20:16:31 +0200)

----------------------------------------------------------------
A fix for drm/client to prevent a null pointer dereference, a fix for a
double-free in drm/bridge-connector, a fix for a gem shmem test, and a
fix for async flips updates.

----------------------------------------------------------------
Arnd Bergmann (1):
      drm/omap: add CONFIG_MMU dependency

Cristian Ciocaltea (1):
      drm/bridge-connector: Fix double free in error handling paths

Dave Airlie (1):
      drm/test: fix the gem shmem test to map the sg table.

Ma Ke (1):
      drm/client: fix null pointer dereference in drm_client_modeset_probe

Rob Clark (1):
      dt-bindings: display: panel: samsung,atna45dc02: Document ATNA45DC02

Simon Ser (1):
      drm/atomic: allow no-op FB_ID updates for async flips

 .../bindings/display/panel/samsung,atna33xc20.yaml        |  9 ++++++---
 drivers/gpu/drm/drm_atomic_uapi.c                         | 15 ++++-----------
 drivers/gpu/drm/drm_bridge_connector.c                    |  8 ++------
 drivers/gpu/drm/drm_client_modeset.c                      |  5 +++++
 drivers/gpu/drm/omapdrm/Kconfig                           |  1 +
 drivers/gpu/drm/tests/drm_gem_shmem_test.c                | 11 +++++++++++
 6 files changed, 29 insertions(+), 20 deletions(-)

--ppxfsvitnxaptq4g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZrR4VQAKCRDj7w1vZxhR
xVemAQCnUuNAzoMJhskbmhGYTFKnExg7HyCqRBG5QuYF31PTXAD/e0KezrDZg8aw
BWuFf0D9iu2WlV5Qm6sphURp84guyQw=
=62bK
-----END PGP SIGNATURE-----

--ppxfsvitnxaptq4g--

