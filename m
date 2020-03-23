Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3199718F733
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:50:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 911556E126;
	Mon, 23 Mar 2020 14:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C89E6E116
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:49:59 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id m3so15130833wmi.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DkWvrBg//gWODAg6b1SCj6aTeUf9aurB+8u2/GHlLnw=;
 b=O1nJoqTqhdml5LcVpFBLczMzQIOVMwhXM/CvAvoZtGhdZ3H4EMt5KWqs+8u0gZAZTd
 e31MbpEL72sYY+qlp4DRmwXgvAdTob5wBXQmGe4CyIUkrPvwd2qWlc8Dd0BzGD2klGoN
 l1AcSH1cKkrLoA58RIfnHBtyDgtSTguKB7jlo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DkWvrBg//gWODAg6b1SCj6aTeUf9aurB+8u2/GHlLnw=;
 b=S4tPLi3YHEWh41gEIKDV6Du0DAtTxL9nyxUSpdtmidYgYt1aDyH4WgVYyD3DXX7GsM
 k4sbI1KXpROup04JOnDuSNiCgtQ20YVl/icO9wnRePv2o2VsIS4jL7TosYxsSe/b/w4U
 ShyjFzGhR14Pa0hQ1zDOvNpzVNibRFpzJxP5YBDOMHehMHbycNgaqkwGh1k4OrywzKts
 y32ruWNM16+jtVESS1zH6vXxTiHbWjU/OFnXTuO0vpknJMWe2FRbDODUVVcFutqr2qmi
 sr5xKb62s0VMgFr/Lkk3l/NfgfoemOo3RfDkcC+1ELMgFMfA7dmPFF+ElLnZSren5QKq
 57SA==
X-Gm-Message-State: ANhLgQ2nGmnS02nYhknHGVp+0mg6CGLucUYq5p7tzUnIiC0L4WPDAGA7
 6li+jx3DeTE7gzKudcq5G43pdqdGrpkW9A==
X-Google-Smtp-Source: ADFU+vsTHemXN2UxVzQSuSPuoh35XSJW9UXGfn2oWL7pZvnjlLxuz868T3SQHRMpKAYRnZ6FXR+Tag==
X-Received: by 2002:a1c:ab04:: with SMTP id u4mr27535424wme.88.1584974997073; 
 Mon, 23 Mar 2020 07:49:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.49.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:49:56 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:48:59 +0100
Message-Id: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/51] drm_device managed resources, v5
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

Another round, another set of polish all over. intel-gfx-ci was happy last
time around (after I fixed a fumble), so really just review and comments
needed now. There's still a few patches at the beginning holding the
entire thing up and preventing merging of the driver patches which have
acks/r-b already.

Thanks, Daniel

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
  drm/ingenic: Use drmm_add_final_kfree
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
 Documentation/gpu/drm-kms.rst                 |   2 +-
 drivers/gpu/drm/Makefile                      |   3 +-
 .../gpu/drm/arm/display/komeda/komeda_kms.c   |   2 +
 drivers/gpu/drm/armada/armada_drv.c           |   2 +
 drivers/gpu/drm/bochs/bochs.h                 |   1 -
 drivers/gpu/drm/bochs/bochs_drv.c             |   6 +-
 drivers/gpu/drm/bochs/bochs_kms.c             |  15 +-
 drivers/gpu/drm/cirrus/cirrus.c               |  74 ++---
 drivers/gpu/drm/drm_drv.c                     | 215 ++++++--------
 drivers/gpu/drm/drm_gem.c                     |  21 +-
 drivers/gpu/drm/drm_internal.h                |   5 +-
 drivers/gpu/drm/drm_managed.c                 | 276 ++++++++++++++++++
 drivers/gpu/drm/drm_mipi_dbi.c                |  24 +-
 drivers/gpu/drm/drm_mode_config.c             |  23 +-
 drivers/gpu/drm/drm_vblank.c                  |  31 +-
 drivers/gpu/drm/i915/i915_drv.c               |  22 +-
 drivers/gpu/drm/i915/i915_drv.h               |   3 +
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  32 +-
 drivers/gpu/drm/ingenic/ingenic-drm.c         |  17 +-
 drivers/gpu/drm/mcde/mcde_drv.c               |  35 +--
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |   9 +-
 drivers/gpu/drm/meson/meson_drv.c             |   5 +-
 drivers/gpu/drm/pl111/pl111_drv.c             |  12 +-
 drivers/gpu/drm/qxl/qxl_drv.c                 |   2 -
 drivers/gpu/drm/qxl/qxl_kms.c                 |   2 +
 drivers/gpu/drm/rcar-du/rcar_du_drv.c         |   1 -
 drivers/gpu/drm/rcar-du/rcar_du_kms.c         |   4 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |  14 +-
 drivers/gpu/drm/shmobile/shmob_drm_drv.c      |   2 -
 drivers/gpu/drm/shmobile/shmob_drm_kms.c      |   6 +-
 drivers/gpu/drm/stm/drv.c                     |  10 +-
 drivers/gpu/drm/tidss/tidss_drv.c             |  10 +-
 drivers/gpu/drm/tidss/tidss_kms.c             |  19 +-
 drivers/gpu/drm/tidss/tidss_kms.h             |   1 -
 drivers/gpu/drm/tiny/gm12u320.c               | 226 ++++++--------
 drivers/gpu/drm/tiny/hx8357d.c                |   5 +-
 drivers/gpu/drm/tiny/ili9225.c                |   5 +-
 drivers/gpu/drm/tiny/ili9341.c                |   5 +-
 drivers/gpu/drm/tiny/ili9486.c                |   5 +-
 drivers/gpu/drm/tiny/mi0283qt.c               |   5 +-
 drivers/gpu/drm/tiny/repaper.c                |  18 +-
 drivers/gpu/drm/tiny/st7586.c                 |   5 +-
 drivers/gpu/drm/tiny/st7735r.c                |   5 +-
 drivers/gpu/drm/udl/udl_drv.c                 |  16 +-
 drivers/gpu/drm/udl/udl_drv.h                 |   2 -
 drivers/gpu/drm/udl/udl_main.c                |  10 -
 drivers/gpu/drm/udl/udl_modeset.c             |  21 +-
 drivers/gpu/drm/v3d/v3d_drv.c                 |  38 +--
 drivers/gpu/drm/vboxvideo/vbox_drv.c          |   2 +
 drivers/gpu/drm/vgem/vgem_drv.c               |  15 +-
 drivers/gpu/drm/vkms/vkms_drv.c               |  19 +-
 drivers/gpu/drm/xen/xen_drm_front.c           |   4 +-
 include/drm/drm_device.h                      |  15 +
 include/drm/drm_drv.h                         |   9 +-
 include/drm/drm_managed.h                     | 109 +++++++
 include/drm/drm_mipi_dbi.h                    |   1 -
 include/drm/drm_mode_config.h                 |  18 +-
 include/drm/drm_print.h                       |   6 +
 mm/slob.c                                     |   2 +
 mm/slub.c                                     |   2 +
 61 files changed, 872 insertions(+), 614 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_managed.c
 create mode 100644 include/drm/drm_managed.h

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
