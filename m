Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8891AB2F0B8
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 10:13:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE3BA10E8A3;
	Thu, 21 Aug 2025 08:13:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="bAXQvnzZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CCFC10E2F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 08:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755763981;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=Iu8q1LFgRVkrut1fK3PxESRCoYM2KRGJpTnUSdfNl9I=;
 b=bAXQvnzZ9CajO3cb9UepC84bevQTS2EN/LgxGDNBN0MTh2fpiAsrsO40LXYyqBgZapmLLp
 LQx9nkKCWyQjNthqoiFavw5Efb6MgNTPdFr7SGu+1EseqqW5/7f7f1VZj6qFcHzMkpi3BU
 eQo9bn4I1NPxoSXp9sJR4+y/OdEs/Rw=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-318-xBLnPjEfMrO79DgDOVF8Pw-1; Thu, 21 Aug 2025 04:12:58 -0400
X-MC-Unique: xBLnPjEfMrO79DgDOVF8Pw-1
X-Mimecast-MFC-AGG-ID: xBLnPjEfMrO79DgDOVF8Pw_1755763977
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-3c380aa1ac0so271927f8f.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 01:12:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755763977; x=1756368777;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Iu8q1LFgRVkrut1fK3PxESRCoYM2KRGJpTnUSdfNl9I=;
 b=iTCeUoMJWGVrOMZmz16arCcYXvmU45wBwmcNwfpD8ld8GJRrMvIQ9s34aJXN81LO6x
 Y27mLXgxXzOClLvrwmNgU6OYQbrO3+78Pw31Xbzptn474qLCfpWOvlcagh4ODnUMdP/u
 ioJQ9sLSDKvORp5cSs62CuFNdizMue5MCcBD1MG5jVPObQp27D5MJvANTIIBMtd+kOly
 0isgNvcEmS3BpMlSy3imXMQd50VR9l/WKBJmDoLMvS/IJaj4KBr4vwzviTuBZvfJre/J
 /MxVcXGWskze01t5H8HXqmgsWnP4i/b/MS50Cx2tk1ToqCQjSZMgBf4r0ydKGq8OA9KA
 6zZQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXhoiJNs5UdCmuXUxJhweFm+rBghJJuWh70MleidMIU00y4mtltI1/KsICXQuy23VufHqrxj8lxf14=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyEHmb6LtbqMCw3k/Qhdktox3S1qcRQiPiuiX5HA7dsjS1xe6/g
 uEBhw6OgftkbHltoaSo74a6RqdudFIMA7kbCdsf8dfLh2RHHD3P8yBYuqKKeWHLpvOA48WlZ5Na
 UMCtoDYHO89h/LJ0h+a1Aj9BN457OUm2o4v5O60M+QmezBBgD0ow8AR/E7kDBTMvSc7ODFg==
X-Gm-Gg: ASbGncuGktT0/ViD59WGjAPYsKI9ReFb6m25AaIfdBv3oXIqXlsa22wRriFf55fnPVm
 UO9y6ad5axz3B2t6JFgMKT5J6h3xg5YhnrIMJg/sfg1xVWFEBfRihGvUXLWHhxZlxF16QrsJZ/y
 4IuNRU27ZYUtZkIVaNuJtXYOOBCz8MG5HIWeKJ0zhPbQ18rXrLfF22aXsy4FqLxmdEbg3RV2bBL
 NZ2urOAkggDT5qucGJb/Vcip8kNosWtvUMMl5CjooyPNcx1DBAuGYrTKlanc8pwpm5w9gihyINs
 6svcXLjdKDVqhMs=
X-Received: by 2002:a5d:6381:0:b0:3b8:f8e6:867b with SMTP id
 ffacd0b85a97d-3c496f92c82mr966835f8f.31.1755763976956; 
 Thu, 21 Aug 2025 01:12:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IElHv2ckS6bYN4pTNyiBQ93FDKVMiUT6qg3iphXe/u2Ly6tfBIyA4Kb9p886iWiyNgkQlqzFw==
X-Received: by 2002:a5d:6381:0:b0:3b8:f8e6:867b with SMTP id
 ffacd0b85a97d-3c496f92c82mr966797f8f.31.1755763976430; 
 Thu, 21 Aug 2025 01:12:56 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3c4e6d4d439sm1143678f8f.6.2025.08.21.01.12.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Aug 2025 01:12:55 -0700 (PDT)
Date: Thu, 21 Aug 2025 10:12:55 +0200
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
Message-ID: <20250821-economic-dandelion-rooster-c57fa9@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="qaduzatttsqlmtga"
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


--qaduzatttsqlmtga
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PULL] drm-misc-fixes
MIME-Version: 1.0

Hi Dave, Sima,

Here's this week drm-misc-fixes PR.

Maxime

drm-misc-fixes-2025-08-21:
A bunch of fixes for 6.17:
  - analogix_dp: devm_drm_bridge_alloc() error handling fix
  - gaudi: Memory deallocation fix
  - gpuvm: Documentation warning fix
  - hibmc: Various misc fixes
  - nouveau: Memory leak fixes, typos
  - panic: u64 division handling on 32 bits architecture fix
  - rockchip: Kconfig fix, register caching fix
  - rust: memory layout and safety fixes
  - tests: Endianness fixes
The following changes since commit c17b750b3ad9f45f2b6f7e6f7f4679844244f0b9:

  Linux 6.17-rc2 (2025-08-17 15:22:10 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-20=
25-08-21

for you to fetch changes up to 1a2cf179e2973f6801c67397ecc987391b084bcf:

  Merge drm/drm-fixes into drm-misc-fixes (2025-08-20 16:08:49 +0200)

----------------------------------------------------------------
A bunch of fixes for 6.17:
  - analogix_dp: devm_drm_bridge_alloc() error handling fix
  - gaudi: Memory deallocation fix
  - gpuvm: Documentation warning fix
  - hibmc: Various misc fixes
  - nouveau: Memory leak fixes, typos
  - panic: u64 division handling on 32 bits architecture fix
  - rockchip: Kconfig fix, register caching fix
  - rust: memory layout and safety fixes
  - tests: Endianness fixes

----------------------------------------------------------------
Avizrat, Yaron (1):
      MAINTAINERS: Change habanalabs maintainers

Baihan Li (5):
      drm/hisilicon/hibmc: fix the i2c device resource leak when vdac init =
failed
      drm/hisilicon/hibmc: fix irq_request()'s irq name variable is local
      drm/hisilicon/hibmc: fix the hibmc loaded failed bug
      drm/hisilicon/hibmc: fix rare monitors cannot display problem
      drm/hisilicon/hibmc: fix dp and vga cannot show together

Danilo Krummrich (5):
      MAINTAINERS: entry for DRM GPUVM
      rust: alloc: replace aligned_size() with Kmalloc::aligned_layout()
      rust: drm: ensure kmalloc() compatible Layout
      rust: drm: remove pin annotations from drm::Device
      rust: drm: don't pass the address of drm::Device to drm_dev_put()

Fanhua Li (1):
      drm/nouveau/nvif: Fix potential memory leak in nvif_vmm_ctor().

Javier Garcia (1):
      drm: Add directive to format code in comment

Jocelyn Falempe (1):
      drm/panic: Add a u64 divide by 10 for arm32

Jos=E9 Exp=F3sito (2):
      drm/tests: Fix endian warning
      drm/tests: Fix drm_test_fb_xrgb8888_to_xrgb2101010() on big-endian

Liu Ying (1):
      drm/bridge: analogix_dp: Fix bailout for devm_drm_bridge_alloc()

Madhur Kumar (1):
      drm/nouveau: fix typos in comments

Maxime Ripard (1):
      Merge drm/drm-fixes into drm-misc-fixes

Miguel Ojeda (2):
      drm: nova-drm: fix 32-bit arm build
      rust: alloc: fix `rusttest` by providing `Cmalloc::aligned_layout` too

Nitin Gote (1):
      iosys-map: Fix undefined behavior in iosys_map_clear()

Piotr Zalewski (1):
      drm/rockchip: vop2: make vp registers nonvolatile

Qianfeng Rong (1):
      drm/nouveau/gsp: fix mismatched alloc/free for kvmalloc()

Rudi Heitbaum (1):
      drm/rockchip: cdn-dp: select bridge for cdp-dp

Thomas Zimmermann (2):
      Merge drm/drm-fixes into drm-misc-fixes
      Revert "drm/amdgpu: Use dma_buf from GEM object instance"

Thorsten Blum (1):
      accel/habanalabs/gaudi2: Use kvfree() for memory allocated with kvcal=
loc()

 MAINTAINERS                                        | 14 +++++++++-
 drivers/accel/habanalabs/gaudi2/gaudi2.c           |  2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c        |  2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c            |  3 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c             |  2 +-
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |  4 +--
 drivers/gpu/drm/drm_gpuvm.c                        |  2 ++
 drivers/gpu/drm/drm_panic_qr.rs                    | 22 ++++++++++++++-
 drivers/gpu/drm/hisilicon/hibmc/dp/dp_link.c       | 14 ++++++++--
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c    | 22 +++++++++------
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.h    |  1 +
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_i2c.c    |  5 ++++
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_vdac.c   | 11 ++++++--
 drivers/gpu/drm/nouveau/nouveau_exec.c             |  6 ++--
 drivers/gpu/drm/nouveau/nvif/vmm.c                 |  3 +-
 .../gpu/drm/nouveau/nvkm/subdev/gsp/rm/r535/rpc.c  |  4 +--
 drivers/gpu/drm/nova/file.rs                       |  3 +-
 drivers/gpu/drm/rockchip/Kconfig                   |  1 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c       |  9 +++---
 drivers/gpu/drm/tests/drm_format_helper_test.c     |  3 +-
 include/linux/iosys-map.h                          |  7 +----
 rust/kernel/alloc/allocator.rs                     | 30 ++++++++++++------=
--
 rust/kernel/alloc/allocator_test.rs                | 11 ++++++++
 rust/kernel/drm/device.rs                          | 32 +++++++++++++++++-=
----
 24 files changed, 154 insertions(+), 59 deletions(-)

--qaduzatttsqlmtga
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaKbVBwAKCRAnX84Zoj2+
dnYBAYDAQbhzmNTAbWI5BZX/lR4QgO9ENVREPE0P0i2Q/mPV8KVhc7BPjM5kdcZh
fqAeQdUBgKbrYCoVdcCf6nFAj5xza/8GeMT5uWpbJSxBsrmoF6hzjO5symoIEhYy
pzDqGAthPg==
=pl7U
-----END PGP SIGNATURE-----

--qaduzatttsqlmtga--

