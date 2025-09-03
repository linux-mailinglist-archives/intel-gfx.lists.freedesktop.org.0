Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC64B41763
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 09:57:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32C5010E11A;
	Wed,  3 Sep 2025 07:57:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Ec39o659";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29B5810E455
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Sep 2025 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1756886252;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=pxmJ9mW6/AAQDmhE+DOEU0ITZ+7e5wSW3ZLGRWuHu2Y=;
 b=Ec39o659FJ93T4y03oPqkEVaMvsNolMtSiquTwLApmH/3gs/0aQhFkJ928xEwtezcLUFhb
 C735AtbGR1cpeGJdVW17iiiTL/7RuAFBEIwwP03S3C2Tj2PtmY/CzWWSmeKZyXIOjuNRK8
 MxWFQRwfttk6XplLYuNopy752QY6+gM=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-245-3sydvxauOs6pMDEfq05UbA-1; Wed, 03 Sep 2025 03:57:30 -0400
X-MC-Unique: 3sydvxauOs6pMDEfq05UbA-1
X-Mimecast-MFC-AGG-ID: 3sydvxauOs6pMDEfq05UbA_1756886249
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-3dabec38299so1040020f8f.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Sep 2025 00:57:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756886249; x=1757491049;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=pxmJ9mW6/AAQDmhE+DOEU0ITZ+7e5wSW3ZLGRWuHu2Y=;
 b=TDKFIXo7v/dLL7bbFeYph5CuvDWypWpN2DSWXDllQt5kRpOzpfRtl6V1L4jo5LwHBq
 wVcJGiINekK4wUj1Sv3etTDvnhcXNW11FqeN7Um9jnRO3sS9bPOfP7QaDDv1rzVW2cii
 JGF0V3u5dLUfZyABOAFM7QBe3x54VDdR8FnO8yhaVhjOD8t9bnlTami9GHHbRghMIa33
 0e9d+0ko/D0YkFgX0BlZtVTdHkGzWU4i0ynB2mPNEJ2+fMHqjmYaTUPUNpwI1Cy7Uury
 hOullWWGTmgxdyvpWJgEPCyv097X83IBRTXmtcCdV9wEbGvZB1qZib+cALZAVQd7pOnK
 N2Jw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXj8oyLtyDb/PK/jRnOGOKQon9ScP4PQz9LeGSwcRtPdhEnTHbGRNEr3OvLuezGhwS9lk65lwaHado=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxbNKTB1/dUluA4GzMXxZvyxUYmHtrosnU8kV1avSpxheuMdQXy
 ZsyrpoM1zcMRiUtmFGa6+tllVsV4TkJka9zP6RNsI7JVj7E3dJD4ZY0ckrLverRsocTvVXDI63w
 JZnaHx8P5ZANYjzwytUdzGq7/7C+J7nk9LI1UA/HdDgiGQL4WRGhhL4YJ86/wyhubFku4ew==
X-Gm-Gg: ASbGncuBBHph9KJbO2SPlXQTo8vURACNbUTS4Zci6pztpn2MqRp5wlaBDW6BUK/L09+
 oqfY7abobIsOF6hKWaAoJxBwzC8wOrOEkhYWwnh7GMGm2XdCDlP/CxhUAc/1UuR54tTmKQctBj4
 Skk+MTW8V1inuXNzteKF3yLNtMJccpchMyc0TSL54ybG8zFk5FvYMLsoZDYgXD0bQw/j+SQ5Hlg
 YNM3DCjOjFtiyG64rnE6I0m35dx+I2CBPKb1j6eiLTj1TwuHsqcYm0+8np7A8HVZcQapE31Of7A
 JSW5gLL9V5ADa8x5j3pNtZJsl2eiALGgZ0WplQ==
X-Received: by 2002:a05:6000:2112:b0:3d2:6129:5505 with SMTP id
 ffacd0b85a97d-3d261295a85mr9870358f8f.36.1756886249102; 
 Wed, 03 Sep 2025 00:57:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXFVHs+NfQ8zsIlRzT7m9qf+NhBJc7qDWYnsCG8KRh/QLvklDGDONiK8xsddrg2vN1KKxLZg==
X-Received: by 2002:a05:6000:2112:b0:3d2:6129:5505 with SMTP id
 ffacd0b85a97d-3d261295a85mr9870328f8f.36.1756886248691; 
 Wed, 03 Sep 2025 00:57:28 -0700 (PDT)
Received: from localhost ([2a01:cb14:397:1200:8b6a:6e9e:8012:87b1])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3d95df59e50sm7278813f8f.23.2025.09.03.00.57.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Sep 2025 00:57:28 -0700 (PDT)
Date: Wed, 3 Sep 2025 09:57:27 +0200
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
Message-ID: <qc2rd7bskgufjtyspbjflyjpswcnhyja6s7nm2yb67j7hezyey@yfn2w6n5trff>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="yh7n7iga4ntnvd6p"
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


--yh7n7iga4ntnvd6p
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: [PULL] drm-misc-fixes
MIME-Version: 1.0

Hi Dave, Sima,

Here's this week drm-misc-fixes PR

Maxime

drm-misc-fixes-2025-09-03:
Two nouveau interrupt handling fixes, one race fix for ivpu, a race fix
for drm_sched, and a clock fix for ti-sn65dsi86.
The following changes since commit 16fdb3cc6af8460f23a706512c6f5e7dfdd4f338:

  Revert "drm/tegra: Use dma_buf from GEM object instance" (2025-08-26 10:41:27 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2025-09-03

for you to fetch changes up to bdd5a14e660062114bdebaef9ad52adf04970a89:

  drm/bridge: ti-sn65dsi86: fix REFCLK setting (2025-09-02 09:56:05 -0700)

----------------------------------------------------------------
Two nouveau interrupt handling fixes, one race fix for ivpu, a race fix
for drm_sched, and a clock fix for ti-sn65dsi86.

----------------------------------------------------------------
Dave Airlie (1):
      nouveau: fix disabling the nonstall irq due to storm code

Faith Ekstrand (1):
      nouveau: Membar before between semaphore writes and the interrupt

James Jones (1):
      MAINTAINERS: Update git entry for nouveau

Karol Wachowski (1):
      accel/ivpu: Prevent recovery work from being queued during device removal

Michael Walle (1):
      drm/bridge: ti-sn65dsi86: fix REFCLK setting

Pierre-Eric Pelloux-Prayer (1):
      drm/sched: Fix racy access to drm_sched_entity.dependency

 MAINTAINERS                                        |  2 +-
 drivers/accel/ivpu/ivpu_drv.c                      |  2 +-
 drivers/accel/ivpu/ivpu_pm.c                       |  4 +-
 drivers/accel/ivpu/ivpu_pm.h                       |  2 +-
 drivers/gpu/drm/bridge/ti-sn65dsi86.c              | 11 +++
 drivers/gpu/drm/nouveau/gv100_fence.c              |  7 +-
 .../gpu/drm/nouveau/include/nvhw/class/clc36f.h    | 85 ++++++++++++++++++++++
 drivers/gpu/drm/nouveau/nvkm/engine/fifo/base.c    |  2 +
 drivers/gpu/drm/nouveau/nvkm/engine/fifo/ga100.c   | 23 ++++--
 drivers/gpu/drm/nouveau/nvkm/engine/fifo/ga102.c   |  1 +
 drivers/gpu/drm/nouveau/nvkm/engine/fifo/priv.h    |  2 +
 .../gpu/drm/nouveau/nvkm/subdev/gsp/rm/r535/fifo.c |  1 +
 drivers/gpu/drm/scheduler/sched_entity.c           | 11 ++-
 13 files changed, 135 insertions(+), 18 deletions(-)

--yh7n7iga4ntnvd6p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaLf05wAKCRAnX84Zoj2+
dgvhAX0VcwqHgG77EScgOQhJkkBr9pM4FhaiInx7fW9cLwy2LKsUhYkB25IJEkWT
/vgiFegBgOwttfMce5O5G8b0LcffLbi47luRJDFgAyfGDLVIB/dPXLpgwN1wqKSN
seKNnKVY8Q==
=k4uL
-----END PGP SIGNATURE-----

--yh7n7iga4ntnvd6p--

