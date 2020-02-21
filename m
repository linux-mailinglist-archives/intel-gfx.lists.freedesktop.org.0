Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D215A16887F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:03:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B81136F510;
	Fri, 21 Feb 2020 21:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D0906F510
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:03:26 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id c84so3307667wme.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:03:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yQ847dbuGk//IYhoIGlTqqpS57T3U5f59EsRW/VcUWc=;
 b=WfpL7qnn9d+/NnveOKcEgQ41Sew5cDCTyl0aHBsh6f0Cxf6/hN1+4ozONUA8KKDRrk
 2yYqHdjBKH1ZoWPSzFXd9zOSFrPsknnU3gm3vPaKx/TO9X81ofLYE1EXMZV1EsczheIT
 qR3GvJPLMY3nDnfqpWbfoQwAM67D2AAwmQqfk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yQ847dbuGk//IYhoIGlTqqpS57T3U5f59EsRW/VcUWc=;
 b=nm8ZK3bd0B3nBHbS2rcFd0lCUmFrfNCQx9J/QmujPgD+fHqRqJ51q3uoTHl+IGPT8M
 U8v62w7fbOTiP7FxyUFRSFWCb32k6U8l4KX0AROyWCezW+M2/y7QkGR/uVSOE1xEwaAw
 iwtDk1Hy+Aaji1GsIyTZq9xptPI3vPQYTFB3OJXNTfwFqNXmXzKiYibyXgiEJf8eSiCh
 C+c1W/YbRdbtU+y0fS4wiS4ffKZl4WAHuEykrogyDtPMTkUQbbfl85f00uUy2G/waaCk
 Gy1MBn3Uvin0Icwa10qEUlvgLHreB09/cJ4oI0CGSR22XtzYhXBckZ0afBBVvyv+b9n8
 mpmw==
X-Gm-Message-State: APjAAAXaM/0GaMv05NtjXRepv6fySVEqnL8/7QHzlALp9MrcQgtbOgov
 g7A9iA3vKsey0JwZ1aUGgOeLRGADof4=
X-Google-Smtp-Source: APXvYqyy4SrRrZtEajgHGEGzMZCweYFJgAZ0KFe1kM3hC5O3tb3na8126VjepkOaiwRpiojFJmZolQ==
X-Received: by 2002:a1c:b0c3:: with SMTP id z186mr5532977wme.36.1582319005160; 
 Fri, 21 Feb 2020 13:03:25 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.03.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:03:24 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Feb 2020 22:02:28 +0100
Message-Id: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/51] drm managed resources, v2
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

Reading instructions still the same, first the doc patch at the end, then
the other stuff.

_Lots_ of small changes all over, a few fixes, mostly polish. I think this
should fix the "oops we've broken debugfs" issue that CI spotted on i915.
I think that was due to the totally busted pointer math breaking drm_minor
cleanup and hence debugfs cleanup somewhat. At least with this updated
series here now I can't repro the issue anymore.

Up to patch 27 there's pretty strict dependencies, so that stuff needs to
land first and in order. If you got review time, most appreciated for
those patches (plus the doc patch at the end ofc).

Once those are in I can start with the devm_drm_dev_alloc macro that I
promised to hide the somewhat unsightly drmm_add_final_kfree.

Testing, review, all very much welcome as usual!

Cheers, Daniel

Daniel Vetter (51):
  mm/sl[uo]b: export __kmalloc_track(_node)_caller
  drm/i915: Don't clear drvdata in ->release
  drm: add managed resources tied to drm_device
  drm: Set final_kfree in drm_dev_alloc
  drm/mipi_dbi: Use drmm_add_final_kfree in all drivers
  drm/udl: Use drmm_add_final_kfree
  drm/qxl: Use drmm_add_final_kfree
  drm/i915: Use drmm_add_final_kfree
  drm/cirrus: Use drmm_add_final_kfree
  drm/v3d: Use drmm_add_final_kfree
  drm/tidss: Use drmm_add_final_kfree
  drm/mcde: Use drmm_add_final_kfree
  drm/vgem: Use drmm_add_final_kfree
  drm/vkms: Use drmm_add_final_kfree
  drm/repaper: Use drmm_add_final_kfree
  drm/inigenic: Use drmm_add_final_kfree
  drm/gm12u320: Use drmm_add_final_kfree
  drm/<drivers>: Use drmm_add_final_kfree
  drm: Cleanups after drmm_add_final_kfree rollout
  drm: Handle dev->unique with drmm_
  drm: Use drmm_ for drm_dev_init cleanup
  drm: manage drm_minor cleanup with drmm_
  drm: Manage drm_gem_init with drmm_
  drm: Manage drm_vblank_cleanup with drmm_
  drm: Garbage collect drm_dev_fini
  drm: Manage drm_mode_config_init with drmm_
  drm/bochs: Remove leftover drm_atomic_helper_shutdown
  drm/bochs: Drop explicit drm_mode_config_cleanup
  drm/cirrus: Drop explicit drm_mode_config_cleanup call
  drm/cirrus: Fully embrace devm_
  drm/ingenic: Drop explicit drm_mode_config_cleanup call
  drm/mcde: Drop explicit drm_mode_config_cleanup call
  drm/mcde: More devm_drm_dev_init
  drm/meson: Drop explicit drm_mode_config_cleanup call
  drm/pl111: Drop explicit drm_mode_config_cleanup call
  drm/rcar-du: Drop explicit drm_mode_config_cleanup call
  drm/rockchip: Drop explicit drm_mode_config_cleanup call
  drm/stm: Drop explicit drm_mode_config_cleanup call
  drm/shmob: Drop explicit drm_mode_config_cleanup call
  drm/mtk: Drop explicit drm_mode_config_cleanup call
  drm/tidss: Drop explicit drm_mode_config_cleanup call
  drm/gm12u320: More drmm_
  drm/gm12u320: Use devm_drm_dev_init
  drm/gm12u320: Use helpers for shutdown/suspend/resume
  drm/gm12u320: Simplify upload work
  drm/repaper: Drop explicit drm_mode_config_cleanup call
  drm/mipi-dbi: Move drm_mode_config_init into mipi library
  drm/mipi-dbi: Drop explicit drm_mode_config_cleanup call
  drm/udl: Drop explicit drm_mode_config_cleanup call
  drm/udl: drop drm_driver.release hook
  drm: Add docs for managed resources

 Documentation/gpu/drm-internals.rst           |  12 +
 drivers/gpu/drm/Makefile                      |   3 +-
 .../gpu/drm/arm/display/komeda/komeda_kms.c   |   2 +
 drivers/gpu/drm/armada/armada_drv.c           |   2 +
 drivers/gpu/drm/bochs/bochs.h                 |   1 -
 drivers/gpu/drm/bochs/bochs_drv.c             |   6 +-
 drivers/gpu/drm/bochs/bochs_kms.c             |  15 +-
 drivers/gpu/drm/cirrus/cirrus.c               |  74 ++---
 drivers/gpu/drm/drm_drv.c                     | 219 ++++++-------
 drivers/gpu/drm/drm_gem.c                     |  21 +-
 drivers/gpu/drm/drm_internal.h                |   5 +-
 drivers/gpu/drm/drm_managed.c                 | 294 ++++++++++++++++++
 drivers/gpu/drm/drm_mipi_dbi.c                |  24 +-
 drivers/gpu/drm/drm_mode_config.c             |  13 +-
 drivers/gpu/drm/drm_vblank.c                  |  31 +-
 drivers/gpu/drm/i915/i915_drv.c               |  21 +-
 drivers/gpu/drm/i915/i915_drv.h               |   3 +
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  20 +-
 drivers/gpu/drm/ingenic/ingenic-drm.c         |  17 +-
 drivers/gpu/drm/mcde/mcde_drv.c               |  35 +--
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |   9 +-
 drivers/gpu/drm/meson/meson_drv.c             |   5 +-
 drivers/gpu/drm/pl111/pl111_drv.c             |  12 +-
 drivers/gpu/drm/qxl/qxl_drv.c                 |   2 -
 drivers/gpu/drm/qxl/qxl_kms.c                 |   2 +
 drivers/gpu/drm/rcar-du/rcar_du_drv.c         |   1 -
 drivers/gpu/drm/rcar-du/rcar_du_kms.c         |   4 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |  10 +-
 drivers/gpu/drm/shmobile/shmob_drm_drv.c      |   2 -
 drivers/gpu/drm/shmobile/shmob_drm_kms.c      |   6 +-
 drivers/gpu/drm/stm/drv.c                     |  10 +-
 drivers/gpu/drm/tidss/tidss_drv.c             |  10 +-
 drivers/gpu/drm/tidss/tidss_kms.c             |  19 +-
 drivers/gpu/drm/tidss/tidss_kms.h             |   1 -
 drivers/gpu/drm/tiny/gm12u320.c               | 225 +++++---------
 drivers/gpu/drm/tiny/hx8357d.c                |   5 +-
 drivers/gpu/drm/tiny/ili9225.c                |   5 +-
 drivers/gpu/drm/tiny/ili9341.c                |   5 +-
 drivers/gpu/drm/tiny/ili9486.c                |   5 +-
 drivers/gpu/drm/tiny/mi0283qt.c               |   5 +-
 drivers/gpu/drm/tiny/repaper.c                |  14 +-
 drivers/gpu/drm/tiny/st7586.c                 |   5 +-
 drivers/gpu/drm/tiny/st7735r.c                |   5 +-
 drivers/gpu/drm/udl/udl_drv.c                 |  14 +-
 drivers/gpu/drm/udl/udl_drv.h                 |   2 -
 drivers/gpu/drm/udl/udl_main.c                |  10 -
 drivers/gpu/drm/udl/udl_modeset.c             |  21 +-
 drivers/gpu/drm/v3d/v3d_drv.c                 |  38 +--
 drivers/gpu/drm/vboxvideo/vbox_drv.c          |   2 +
 drivers/gpu/drm/vgem/vgem_drv.c               |  15 +-
 drivers/gpu/drm/vkms/vkms_drv.c               |  19 +-
 drivers/gpu/drm/xen/xen_drm_front.c           |   4 +-
 include/drm/drm_device.h                      |  12 +
 include/drm/drm_drv.h                         |   9 +-
 include/drm/drm_managed.h                     | 116 +++++++
 include/drm/drm_mipi_dbi.h                    |   1 -
 include/drm/drm_mode_config.h                 |   2 +-
 include/drm/drm_print.h                       |   6 +
 mm/slob.c                                     |   2 +
 mm/slub.c                                     |   2 +
 60 files changed, 858 insertions(+), 602 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_managed.c
 create mode 100644 include/drm/drm_managed.h

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
