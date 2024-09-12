Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CD69764D4
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 10:49:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F73910EB2A;
	Thu, 12 Sep 2024 08:49:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="SegrLumj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE71910EB36
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 08:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1726130971;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=Rn+r2sIwqBy2AmjyGIdoT/4prz9KocAo+fqHyKeYSgU=;
 b=SegrLumj4owrCAg3mX/BuKaFaEnAA3FYXjKJC7oICetl3NRKuT2q8x4D7I37bmJZQdfHGp
 TPWgytUFW8Q5XSqZk2vsokU7Fe29gDvqYlx7RQ8YjKCwTKtL41FR9W9rQFsyztNZ2PXt4x
 NB2f7U4179suGaBji7zTVna1vRD5kOw=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-614-h-cMBtbzO1umBqmxTFLGTw-1; Thu, 12 Sep 2024 04:49:30 -0400
X-MC-Unique: h-cMBtbzO1umBqmxTFLGTw-1
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-42cb857fc7dso5344625e9.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 01:49:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726130969; x=1726735769;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Rn+r2sIwqBy2AmjyGIdoT/4prz9KocAo+fqHyKeYSgU=;
 b=l3A+7RrjqVQ3OOsFCSBahiqDdFDIIvNMczrHrLoWA+8Y7K3/yABwFWrYvoSN3SAGe2
 L1Ya/rwnb/al3lYa5MSFPy9Pv08rfuvhVYN2DNW/TX+bAP5GoTWMvjxoVT1r2uf9hWGR
 vEm9gFbxRzrW5H45zmeGCyjTpR6WJqpoxmcFMLt7dfGbIp8c/S1EltFnniaMpfyZJxYJ
 jkxiL9WSGEh6aNcLoAkOd/S2Sp6sk1sC0DcFgamlgjBRyT+JTOKhFkNSilozhwv6sz4X
 NnenK8Ebp2oegiL1whOd87/+pfeNKwIFHwl45s1Q6tK4uEUcam90XnzGJDC7aqrFCZsM
 ZmOg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVqrMjpBz0VpnP18IvBDuyxybouLFDwsrfnrU7deV1AhWRGN25rcs9wjEZUh+UEJSQa2mkP0P0JTZs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwxYOddLhA/saFsAvzqhWj4DLQtlsIvjbn2gU6MNxVKx9m6y2bk
 f+H68+KXGC2PYJ4ZsAuj6Vhz9NqA4byWiiQWSX6knlobLyPi8uWaFPuG4wkkOTDBRcwarDd4PWZ
 LGHhcFE+NledCKJ/7bdLlIxHBwQh0cdmsyuK9LRBhgAjbUOL8UPMTbsCyer4KI94tug==
X-Received: by 2002:a05:600c:21d9:b0:42c:b1a4:c3ef with SMTP id
 5b1f17b1804b1-42cdfb15de5mr6909205e9.33.1726130969049; 
 Thu, 12 Sep 2024 01:49:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFvPrEMPX7BX2I0Ut0bhG8vE1gjyKoSPx0Jzq627zj6SyO0Rc2bUvi9GFKpp4L/h2e+s+2ATA==
X-Received: by 2002:a05:600c:21d9:b0:42c:b1a4:c3ef with SMTP id
 5b1f17b1804b1-42cdfb15de5mr6908855e9.33.1726130968447; 
 Thu, 12 Sep 2024 01:49:28 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42caf436998sm163664415e9.29.2024.09.12.01.49.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Sep 2024 01:49:28 -0700 (PDT)
Date: Thu, 12 Sep 2024 10:49:27 +0200
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
Message-ID: <20240912-phenomenal-upbeat-grouse-a26781@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="oby2p3uttw4dxroi"
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


--oby2p3uttw4dxroi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Here's this week drm-misc-fixes PR

Maxime

drm-misc-fixes-2024-09-12:
An off-by-one fix for the CMA DMA-buf heap, An init fix for nouveau, a
config dependency fix for stm, a syncobj leak fix, and two iommu fixes
for tegra and rockchip.
The following changes since commit 5a498d4d06d6d9bad76d8a50a7f8fe01670ad46f:

  drm/fbdev-dma: Only install deferred I/O if necessary (2024-09-05 11:05:10 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2024-09-12

for you to fetch changes up to 45c690aea8ee5b7d012cd593bd288540a4bfdbf0:

  drm/tegra: Use iommu_paging_domain_alloc() (2024-09-10 15:40:27 -0400)

----------------------------------------------------------------
An off-by-one fix for the CMA DMA-buf heap, An init fix for nouveau, a
config dependency fix for stm, a syncobj leak fix, and two iommu fixes
for tegra and rockchip.

----------------------------------------------------------------
Arnd Bergmann (1):
      drm/stm: add COMMON_CLK dependency

Ben Skeggs (1):
      drm/nouveau/fb: restore init() for ramgp102

Lu Baolu (2):
      drm/rockchip: Use iommu_paging_domain_alloc()
      drm/tegra: Use iommu_paging_domain_alloc()

T.J. Mercier (2):
      dma-buf: heaps: Fix off-by-one in CMA heap fault handler
      drm/syncobj: Fix syncobj leak in drm_syncobj_eventfd_ioctl

 drivers/dma-buf/heaps/cma_heap.c                  |  2 +-
 drivers/gpu/drm/drm_syncobj.c                     | 17 +++++++++++++----
 drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.h      |  2 ++
 drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgp100.c |  2 +-
 drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgp102.c |  1 +
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c       | 10 +++++++---
 drivers/gpu/drm/stm/Kconfig                       |  1 +
 drivers/gpu/drm/tegra/drm.c                       |  5 +++--
 8 files changed, 29 insertions(+), 11 deletions(-)

--oby2p3uttw4dxroi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZuKrFwAKCRAnX84Zoj2+
dmTsAX4hsPzuvlt8ZKqxlNCSAPeJMRudMslZ70aGRcjD8mQXt69eb7PEMJwM38hn
bZdv/1EBgIP0LZTBFxRjJi5YnhHtNsnGB8It2dXEzuUi2k+nS0BqdbV/GX6MQQYq
HTkgc+CGcg==
=i1WZ
-----END PGP SIGNATURE-----

--oby2p3uttw4dxroi--

