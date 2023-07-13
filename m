Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 248B8751B61
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 10:18:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ED8B10E171;
	Thu, 13 Jul 2023 08:18:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B15210E171
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 08:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1689236278;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=rl/uagV4whhYbT4iZd2vwBuRZ5VqINPxAE7CInS7aQE=;
 b=UDRy4EBjrk0UN6MGuFw3kV+49CqGBnnARjyyZgYSuAbX+hNkz68XA99xl86UOSU6Zv3oE+
 hEnLNNeYMPLwRfaIH0zXXl8S+MvM6PCJQe4+TPfDk0l52gjPgbg8DojzIDuUN1h/8TXNtf
 MGjgzYq2J9kxJBzkDh5a96LNN9Jumbs=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-595-sp6kfAVrPl6AK4iBNTGfrg-1; Thu, 13 Jul 2023 04:17:54 -0400
X-MC-Unique: sp6kfAVrPl6AK4iBNTGfrg-1
Received: by mail-qv1-f72.google.com with SMTP id
 6a1803df08f44-621257e86daso5173776d6.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 01:17:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689236274; x=1691828274;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rl/uagV4whhYbT4iZd2vwBuRZ5VqINPxAE7CInS7aQE=;
 b=ci3MhKqTYZq/PdRZYKNo0aagttCtFKPwAsQuIOCVMNxxLv2PhF0qc8ebUFOCnU7hNV
 BLQtMJzlzlDJ4k6jXLczTLn26R578aPHuxqwnI46WmFAxI3aERwCxq2EFVmg42s9ZAhM
 9936yEFczAQcMsDUIr1ilesdwZ2fCWxSuPY4BDANbf9DGcUct/aNn/Sv2CAYE2lxEQUa
 B/KTKnPAZIOrw59HxAHbT7PdYSBPvzEFUeYR2PuJVnaqO3zesn7dTYf0YyuPG9Wcv6J9
 Cy5bUtUlSCprI8BuV85bPwbZX0OXhQ7wYwP6cSU7cFCanWx55OFOOATfOqZ07gKxAzRk
 P4tQ==
X-Gm-Message-State: ABy/qLbhg4ZKYeiPsb5Lce3DYt6bHfdgb5IHNZ+FOzNRp0KBmOpp26AD
 /V03MSoi6cykMkWGRQTd6E83/H+hRuVFpk/yivT9LWUCd/kHCjPxW0FVlZIvrVG8QfFteMCFOs5
 Dzi9ZviSPvk143hhAW844pGLviW/W
X-Received: by 2002:a0c:f501:0:b0:635:dd30:8181 with SMTP id
 j1-20020a0cf501000000b00635dd308181mr952472qvm.56.1689236274403; 
 Thu, 13 Jul 2023 01:17:54 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHH2p39j0wFtvsSB9zi2aRUzFSFtVm1NLwrpq73ze+7mX70VxxYNo1zLHGV+vQsUoopgNz6UQ==
X-Received: by 2002:a0c:f501:0:b0:635:dd30:8181 with SMTP id
 j1-20020a0cf501000000b00635dd308181mr952459qvm.56.1689236274140; 
 Thu, 13 Jul 2023 01:17:54 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 g16-20020a0ce4d0000000b00636064e3d2bsm2834609qvm.106.2023.07.13.01.17.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Jul 2023 01:17:53 -0700 (PDT)
Date: Thu, 13 Jul 2023 10:17:52 +0200
From: Maxime Ripard <mripard@redhat.com>
To: Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Message-ID: <nq3ke75juephbex5acfyi5t6bxv22nhmfcpfhru55haj2nv3us@gehrlmjbqgjk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="bnp3giwzvbzynl3k"
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
Cc: dim-tools@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--bnp3giwzvbzynl3k
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Sending again because I had to send it by hand and forgot to add all the
recipients in Cc.

Here's this week drm-misc-fixes PR, plus last week as well that got
dropped for some reason.

Thanks!
Maxime

The following changes since commit 06c2afb862f9da8dc5efa4b6076a0e48c3fbaaa5:

  Linux 6.5-rc1 (2023-07-09 13:53:13 -0700)

are available in the Git repository at:

  ssh://git.freedesktop.org/git/drm/drm-misc tags/drm-misc-fixes-2023-07-13

for you to fetch changes up to 835a65f51790e1f72b1ab106ec89db9ac15b47d6:

  drm/nouveau: bring back blit subchannel for pre nv50 GPUs (2023-07-12 22:=
38:41 +0200)

----------------------------------------------------------------
A couple of nouveau patches addressing improving HDMI support and
firmware handling, a fix for TTM to skip pinned BO when evicting, and a
fix for the fbdev documentation.

----------------------------------------------------------------
Adri=E1n Larumbe (1):
      drm: bridge: dw_hdmi: fix connector access for scdc

Boris Brezillon (2):
      drm/sched: Make sure we wait for all dependencies in kill_jobs_cb()
      drm/sched: Call drm_sched_fence_set_parent() from drm_sched_fence_sch=
eduled()

Christian K=F6nig (3):
      drm/ttm: fix warning that we shouldn't mix && and ||
      dma-buf: keep the signaling time of merged fences v3
      drm/ttm: never consider pinned BOs for eviction&swap

Dan Carpenter (1):
      dma-buf: fix an error pointer vs NULL bug

Douglas Anderson (1):
      drm/bridge: ti-sn65dsi86: Fix auxiliary bus lifetime

Fabio Estevam (1):
      drm/panel: simple: Add connector_type for innolux_at043tn24

Geert Uytterhoeven (1):
      drm/fbdev-dma: Fix documented default preferred_bpp value

Karol Herbst (4):
      drm/nouveau/disp: fix HDMI on gt215+
      drm/nouveau/disp/g94: enable HDMI
      drm/nouveau/acr: Abort loading ACR if no firmware was found
      drm/nouveau: bring back blit subchannel for pre nv50 GPUs

Karol Wachowski (2):
      accel/ivpu: Fix VPU register access in irq disable
      accel/ivpu: Clear specific interrupt status bits on C0

Lyude Paul (1):
      drm/nouveau/kms/nv50-: Fix drm_dp_remove_payload() invocation

Marek Vasut (1):
      drm/panel: simple: Add Powertip PH800480T013 drm_display_mode flags

Maxime Ripard (1):
      Merge v6.5-rc1 into drm-misc-fixes

Thomas Hellstr=F6m (2):
      drm/ttm: Don't leak a resource on eviction error
      drm/ttm: Don't leak a resource on swapout move error

Thomas Zimmermann (1):
      drm/client: Send hotplug event after registering a client

Yunxiang Li (1):
      drm/ttm: fix bulk_move corruption when adding a entry

 drivers/accel/ivpu/ivpu_drv.h                    |  1 +
 drivers/accel/ivpu/ivpu_hw_mtl.c                 | 20 ++++++++----
 drivers/dma-buf/dma-fence-unwrap.c               | 26 ++++++++++++---
 drivers/dma-buf/dma-fence.c                      |  7 ++--
 drivers/gpu/drm/armada/armada_fbdev.c            |  4 ---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c        |  9 +++---
 drivers/gpu/drm/bridge/ti-sn65dsi86.c            | 35 ++++++++++++--------
 drivers/gpu/drm/drm_client.c                     | 21 ++++++++++++
 drivers/gpu/drm/drm_fbdev_dma.c                  |  6 +---
 drivers/gpu/drm/drm_fbdev_generic.c              |  4 ---
 drivers/gpu/drm/drm_syncobj.c                    |  6 ++--
 drivers/gpu/drm/exynos/exynos_drm_fbdev.c        |  4 ---
 drivers/gpu/drm/gma500/fbdev.c                   |  4 ---
 drivers/gpu/drm/msm/msm_fbdev.c                  |  4 ---
 drivers/gpu/drm/nouveau/dispnv50/disp.c          |  8 +++--
 drivers/gpu/drm/nouveau/nouveau_chan.c           |  1 +
 drivers/gpu/drm/nouveau/nouveau_chan.h           |  1 +
 drivers/gpu/drm/nouveau/nouveau_drm.c            | 20 ++++++++++--
 drivers/gpu/drm/nouveau/nvkm/engine/disp/g94.c   |  1 +
 drivers/gpu/drm/nouveau/nvkm/engine/disp/gt215.c |  2 +-
 drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c   |  2 +-
 drivers/gpu/drm/omapdrm/omap_fbdev.c             |  4 ---
 drivers/gpu/drm/panel/panel-simple.c             |  2 ++
 drivers/gpu/drm/radeon/radeon_fbdev.c            |  4 ---
 drivers/gpu/drm/scheduler/sched_entity.c         | 41 +++++++++++++++++++-=
----
 drivers/gpu/drm/scheduler/sched_fence.c          | 40 ++++++++++++++------=
---
 drivers/gpu/drm/scheduler/sched_main.c           |  3 +-
 drivers/gpu/drm/tegra/fbdev.c                    |  4 ---
 drivers/gpu/drm/ttm/ttm_bo.c                     | 29 ++++++++++-------
 drivers/gpu/drm/ttm/ttm_resource.c               |  5 ++-
 include/drm/gpu_scheduler.h                      |  5 ++-
 include/linux/dma-fence.h                        |  2 +-
 32 files changed, 206 insertions(+), 119 deletions(-)

--bnp3giwzvbzynl3k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZK+zMAAKCRDj7w1vZxhR
xZ9jAP4pvnS+rNN58KkJ7QTkarg753rDDKt3O8mxCuzzfRC+dgD8CZjs7xrv2Wbv
JyThW4ytIiFYrbBcB66ALRrwEdax3wo=
=2xZQ
-----END PGP SIGNATURE-----

--bnp3giwzvbzynl3k--

