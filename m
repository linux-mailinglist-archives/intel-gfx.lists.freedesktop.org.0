Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB307770B8
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 08:52:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 193A210E4C5;
	Thu, 10 Aug 2023 06:52:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E110710E4BF
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 06:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1691650350;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=b+0U8wVrRTPkkjwUKlBvvDOuEk4aihjX5ZgOEV2VKxg=;
 b=Y+2ya9RVk53+ECJkVmBGQ9mdcolihCMJxm9jNW2xrT1t+v57tfgaIFnA2Y+G6oWAM8vdfg
 fTGZ1+SMojGCyeOu6l8bZbbMx8WS6q9OhraQnDayrEvrvqCaGcYAwfVtAVml4PpRL1trmB
 NLUgIG2Ju8bGbqx0du+2cSmu6F901Qo=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-295-z_VnCwRPMCqyeyTGk9EFpA-1; Thu, 10 Aug 2023 02:52:27 -0400
X-MC-Unique: z_VnCwRPMCqyeyTGk9EFpA-1
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-30e3ee8a42eso359729f8f.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Aug 2023 23:52:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691650346; x=1692255146;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=b+0U8wVrRTPkkjwUKlBvvDOuEk4aihjX5ZgOEV2VKxg=;
 b=adEtsRHc/EmBTKpdUquWjGHwT2+omP2wHWqCeL0fM/INswcIUe/BzGF/zq2wrYcELa
 Xy/lDnWNpNuBtlsuE2j4SdOlJXSSZBM+vuaUoUgXYraY66QCMfB5j9u2nC7tyNDWAGMT
 kVfq8gCgGRiTWDScQgrgCJT7Xbbsom/P/ncCixlZqtH50Fwr1N1+zxobMZBETCSn5OB7
 c6uaVnaSqggZZ8Os2brX4i4tMcP6KllO07lhGPZHpSBtQlvQVVF8dCZ6bUioPdxr5crJ
 UyyDaPu9wui2LRyZ5+kLNg7RrLx6YHEOFYX6/VvvQfLaCcAiF/xdQJw77H6PQL4t7aJk
 G1Gg==
X-Gm-Message-State: AOJu0YxNav9H4OKAC5+OVhLyIHOBoMrP+LUw/+/PvCDHcB7rkN8wxUxY
 1cgvbU4p3NGEjDYMD7HM9Pqo5wKxXGvMhme3CfGSZ5VdwE4g4Z1DrKIGvohecbYLs/W5NX26Nfd
 oR1xxnDtW9bSDvUaZNkThdI8gnE2Z
X-Received: by 2002:a5d:49c5:0:b0:317:5d3d:d387 with SMTP id
 t5-20020a5d49c5000000b003175d3dd387mr1193284wrs.25.1691650346703; 
 Wed, 09 Aug 2023 23:52:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQ9pejwZ5uHeojQgE78jsGWVGR7gpYcT5nGe0P6g72X1R+8zhXADpixV++ICBb/qTfgA4DLw==
X-Received: by 2002:a5d:49c5:0:b0:317:5d3d:d387 with SMTP id
 t5-20020a5d49c5000000b003175d3dd387mr1193267wrs.25.1691650346353; 
 Wed, 09 Aug 2023 23:52:26 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::56b])
 by smtp.gmail.com with ESMTPSA id
 e3-20020a5d4e83000000b003176053506fsm1058564wru.99.2023.08.09.23.52.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Aug 2023 23:52:25 -0700 (PDT)
Date: Thu, 10 Aug 2023 08:52:25 +0200
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <fwed6gzdtkse5ocrgd37elhyw7qirfptsvfp5mqqverdzifhxj@4da3vesxcqp2>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="ejbjo6zdfcs43abf"
Content-Disposition: inline
Subject: [Intel-gfx] [PULL] drm-misc-fixes
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--ejbjo6zdfcs43abf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Here's this week drm-misc-fixes PR

Maxime

drm-misc-fixes-2023-08-10:
Multiple fixes for nouveau around memory safety and DisplayPort, one fix
to reduce the log level of rockchip, a power state fix for the it6505
bridge, a timing fix for the lt9611 bridge, a cache maintenance fix for
ivpu and one to reset vma->vm_ops on mmap for shmem-helper.
The following changes since commit c71b7aa8619a0c9700132d0733e33999fb614339:

  drm/panel: samsung-s6d7aa0: Add MODULE_DEVICE_TABLE (2023-08-02 10:56:50 +0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2023-08-10

for you to fetch changes up to 07dd476f6116966cb2006e25fdcf48f0715115ff:

  drm/shmem-helper: Reset vma->vm_ops before calling dma_buf_mmap() (2023-08-10 08:29:14 +0200)

----------------------------------------------------------------
Multiple fixes for nouveau around memory safety and DisplayPort, one fix
to reduce the log level of rockchip, a power state fix for the it6505
bridge, a timing fix for the lt9611 bridge, a cache maintenance fix for
ivpu and one to reset vma->vm_ops on mmap for shmem-helper.

----------------------------------------------------------------
Arnd Bergmann (1):
      drm/nouveau: remove unused tu102_gr_load() function

Boris Brezillon (1):
      drm/shmem-helper: Reset vma->vm_ops before calling dma_buf_mmap()

Daniel Stone (1):
      drm/rockchip: Don't spam logs in atomic check

Karol Herbst (2):
      drm/nouveau/gr: enable memory loads on helper invocation on all channels
      drm/nouveau/disp: Revert a NULL check inside nouveau_connector_get_modes

Karol Wachowski (1):
      accel/ivpu: Add set_pages_array_wc/uc for internal buffers

Lyude Paul (1):
      drm/nouveau/nvkm/dp: Add workaround to fix DP 1.3+ DPCD issues

Neil Armstrong (1):
      Revert "drm/bridge: lt9611: Do not generate HFP/HBP/HSA and EOT packet"

Pin-yen Lin (1):
      drm/bridge: it6505: Check power state with it6505->powered in IRQ handler

 drivers/accel/ivpu/ivpu_gem.c                      |  8 ++++
 drivers/gpu/drm/bridge/ite-it6505.c                |  4 +-
 drivers/gpu/drm/bridge/lontium-lt9611.c            |  4 +-
 drivers/gpu/drm/drm_gem_shmem_helper.c             |  6 +++
 drivers/gpu/drm/nouveau/nouveau_connector.c        |  2 +-
 drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c      | 48 +++++++++++++++++++++-
 drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.h  |  1 +
 drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgk104.c  |  4 +-
 drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgk110.c  | 10 +++++
 drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgk110b.c |  1 +
 drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgk208.c  |  1 +
 drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c  |  1 +
 drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c     | 13 ------
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c        | 17 ++++----
 14 files changed, 92 insertions(+), 28 deletions(-)

--ejbjo6zdfcs43abf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZNSJKQAKCRDj7w1vZxhR
xc2sAP9GYrh9OMNYPjfnbwyIyTMaGzGzm4S4m1l6obKogFOj/AEA+tQRHhHLq8QE
trDBRp1YbsK9Wz/H9XuNh3yaSXJGUgU=
=rz6K
-----END PGP SIGNATURE-----

--ejbjo6zdfcs43abf--

