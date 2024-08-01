Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 613F0944745
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 11:01:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0161610E1E7;
	Thu,  1 Aug 2024 09:01:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="TJMVW3q+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FB7F10E1E7
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2024 09:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1722502865;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=VVy04qlicabYGwO9E78vZLpSrWOCtQ9jEqVfKoqcSf8=;
 b=TJMVW3q+DTu1phb2I+K7WltLcD/Eav1B8jx/ZPh3cRrscAzyDSEBixm8qljTaB3UavNY62
 7wsb3haQWie5obM3g6ypWQHe2dxsJM3qcW4kf0nx5uHALN9wogmYYEbzUeyuF8c3wPq86n
 KkgbsqWIU3nL/UA1h4+pBb3hNnt6dPQ=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-79-IV7KLzE3PamNjhpprMQCdw-1; Thu, 01 Aug 2024 05:01:02 -0400
X-MC-Unique: IV7KLzE3PamNjhpprMQCdw-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-428076fef5dso42029165e9.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 01 Aug 2024 02:01:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722502861; x=1723107661;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=VVy04qlicabYGwO9E78vZLpSrWOCtQ9jEqVfKoqcSf8=;
 b=aOP6bBa7lhSaDrXiQPrg99BIHChWfeQCaJUprvhso1jtEzTbNib0/thVTwMldcF7dk
 /QK9UxwHzQLxYokfHUFTx9EAwDyejKjTTlNYnoIeQPnoTB98RY8KzFyOVPVWWXN69AXo
 i6Y6mZEUVMij+qyeSJLQR9iHtf5w9zPjzTSG7yvoUfIMuLw+SHaU4Vw1XhFKBsxdt5M4
 GS169UOotFLlszEuKP9TkLwvMUOXgLnAUJo8lxtjkGo2EI1SfV3XN6nyB64iOjWejP43
 gKVm9lDObc6lfCUMjeLw8xmflfkW7CeClEfKBEhDpMyB98FoCs5c2Z2HWYNKxAR/JnXs
 ornA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWa0pSIZqiUjDpQN/DuFQxRDIKj0AT5IcNLkam0C4fKa6Zxzekl9I3NtcaZ8dXNUtgbujwDT83MUutUPJYmMbwDOIyVLHk60mXNBXqcRU1K
X-Gm-Message-State: AOJu0YwNKdr6B/BQ5OdIdSJK3gSaWhOEcoqCbADMo2YUub0MKU9oEinK
 GfXpf/G/5pqEDl5FjeC0va0Md+GTEXe2ALxKScbEP0UaWRf8HMU1UplBKH/15mJ9J7UWyshDOM5
 Ga1bVXi8OLeEsmv2varD+Hs3aZy9PrPngeFENldG+ynaz/0a/zyLQdqsvcawBVhzUOA==
X-Received: by 2002:a05:600c:4514:b0:428:1c91:bddd with SMTP id
 5b1f17b1804b1-428a9bdce8dmr10882215e9.12.1722502861298; 
 Thu, 01 Aug 2024 02:01:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOF+RQH/Yfx80fHFFG578G7SW7PC5bILIQjj9sqIa5NcOIdEEPqygjeh3rBRIU/UHPSL0POw==
X-Received: by 2002:a05:600c:4514:b0:428:1c91:bddd with SMTP id
 5b1f17b1804b1-428a9bdce8dmr10882035e9.12.1722502860699; 
 Thu, 01 Aug 2024 02:01:00 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4282baa9071sm49287965e9.13.2024.08.01.02.01.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Aug 2024 02:01:00 -0700 (PDT)
Date: Thu, 1 Aug 2024 11:00:59 +0200
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
Message-ID: <20240801-interesting-antique-bat-2fe4c0@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="4x23wimwhbqfwbel"
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


--4x23wimwhbqfwbel
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Dave, Daniel,

Here's this week drm-misc-fixes PR

Maxime

drm-misc-fixes-2024-08-01:
A couple drm_panic fixes, several v3d fixes to increase the new timestamp A=
PI
safety, several fixes for vmwgfx for various modesetting issues, PM fixes
for ast, async flips improvements and two fixes for nouveau to fix
resource refcounting and buffer placement.
The following changes since commit 8400291e289ee6b2bf9779ff1c83a291501f017b:

  Linux 6.11-rc1 (2024-07-28 14:19:55 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-20=
24-08-01

for you to fetch changes up to 9c685f61722d30a22d55bb8a48f7a48bb2e19bcc:

  nouveau: set placement to original placement on uvmm validate. (2024-08-0=
1 01:22:12 +0200)

----------------------------------------------------------------
A couple drm_panic fixes, several v3d fixes to increase the new timestamp A=
PI
safety, several fixes for vmwgfx for various modesetting issues, PM fixes
for ast, async flips improvements and two fixes for nouveau to fix
resource refcounting and buffer placement.

----------------------------------------------------------------
Andr=E9 Almeida (2):
      drm/atomic: Allow userspace to use explicit sync with atomic async fl=
ips
      drm/atomic: Allow userspace to use damage clips with async flips

Dan Carpenter (1):
      drm/client: Fix error code in drm_client_buffer_vmap_local()

Danilo Krummrich (2):
      drm/gpuvm: fix missing dependency to DRM_EXEC
      drm/nouveau: prime: fix refcount underflow

Dave Airlie (1):
      nouveau: set placement to original placement on uvmm validate.

Dmitry Osipenko (1):
      drm/virtio: Fix type of dma-fence context variable

Ian Forbes (2):
      drm/vmwgfx: Fix overlay when using Screen Targets
      drm/vmwgfx: Trigger a modeset when the screen moves

Jammy Huang (1):
      drm/ast: Fix black screen after resume

Maxime Ripard (2):
      Merge drm/drm-fixes into drm-misc-fixes
      Merge drm-misc/drm-misc-next-fixes into drm-misc-fixes

Philip Mueller (1):
      drm: panel-orientation-quirks: Add quirk for OrangePi Neo

Qiuxu Zhuo (1):
      drm/fb-helper: Don't schedule_work() to flush frame buffer during pan=
ic()

Thomas Zimmermann (1):
      drm/ast: astdp: Wake up during connector status detection

Tvrtko Ursulin (5):
      drm/v3d: Prevent out of bounds access in performance query extensions
      drm/v3d: Fix potential memory leak in the timestamp extension
      drm/v3d: Fix potential memory leak in the performance extension
      drm/v3d: Validate passed in drm syncobj handles in the timestamp exte=
nsion
      drm/v3d: Validate passed in drm syncobj handles in the performance ex=
tension

Zack Rusin (4):
      drm/vmwgfx: Fix a deadlock in dma buf fence polling
      drm/vmwgfx: Make sure the screen surface is ref counted
      drm/vmwgfx: Fix handling of dumb buffers
      drm/vmwgfx: Add basic support for external buffers

Zenghui Yu (1):
      kselftests: dmabuf-heaps: Ensure the driver name is null-terminated

 drivers/gpu/drm/Kconfig                            |   1 +
 drivers/gpu/drm/ast/ast_dp.c                       |   7 +
 drivers/gpu/drm/ast/ast_drv.c                      |   5 +
 drivers/gpu/drm/ast/ast_drv.h                      |   1 +
 drivers/gpu/drm/ast/ast_mode.c                     |  29 +-
 drivers/gpu/drm/drm_atomic_uapi.c                  |   5 +-
 drivers/gpu/drm/drm_client.c                       |   2 +-
 drivers/gpu/drm/drm_fb_helper.c                    |  11 +
 drivers/gpu/drm/drm_panel_orientation_quirks.c     |   6 +
 drivers/gpu/drm/nouveau/nouveau_prime.c            |   3 +-
 drivers/gpu/drm/nouveau/nouveau_uvmm.c             |   1 +
 drivers/gpu/drm/v3d/v3d_drv.h                      |   4 +
 drivers/gpu/drm/v3d/v3d_sched.c                    |  44 +-
 drivers/gpu/drm/v3d/v3d_submit.c                   | 121 +++--
 drivers/gpu/drm/virtio/virtgpu_submit.c            |   2 +-
 drivers/gpu/drm/vmwgfx/vmw_surface_cache.h         |  10 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_bo.c                 | 127 +++---
 drivers/gpu/drm/vmwgfx/vmwgfx_bo.h                 |  15 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.h                |  40 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_fence.c              |  17 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_gem.c                |  62 ++-
 drivers/gpu/drm/vmwgfx/vmwgfx_kms.c                | 504 +++++++++--------=
----
 drivers/gpu/drm/vmwgfx/vmwgfx_kms.h                |  17 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_ldu.c                |  14 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_overlay.c            |   2 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_prime.c              |  32 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_resource.c           |  27 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_scrn.c               |  33 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_stdu.c               | 174 ++++---
 drivers/gpu/drm/vmwgfx/vmwgfx_surface.c            | 280 +++++++++++-
 drivers/gpu/drm/vmwgfx/vmwgfx_vkms.c               |  40 +-
 tools/testing/selftests/dmabuf-heaps/dmabuf-heap.c |   4 +-
 32 files changed, 1051 insertions(+), 589 deletions(-)

--4x23wimwhbqfwbel
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZqtOywAKCRAnX84Zoj2+
dkHiAYCxDpXhwry8GZfYbZBBrEyTlauUpCxBdpk+tJUjtnvbxUFo4LHyqcInQKqA
jaT0Bq4BfRuplso65coad1/JlMMOyu5PKL2ekOdaNPr8Cjj3E1l6j0hw+krUk0w9
Rf1rlCbNAA==
=Z73m
-----END PGP SIGNATURE-----

--4x23wimwhbqfwbel--

