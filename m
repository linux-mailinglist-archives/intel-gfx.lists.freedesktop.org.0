Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 977B89276FE
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2024 15:17:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CACB10EAEB;
	Thu,  4 Jul 2024 13:17:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="DciM+SkC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B3FE10EAE7
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2024 13:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1720099036;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=v2asHracYj/ImZ+OTqgN08Or55nsS5Qo7iBUXEZRik0=;
 b=DciM+SkCr+936w1veVK0kolSHtk1/EKy24K6dmWJu2ZHnysTYTsRNLmBY2jfPNa/blSbvQ
 BHs6gZ6erZX54A5QdCqgsUpz6fkOdA8eIBii3e/IaeacyC/ZbPESVH/1WyMOxBHcMutsdT
 m+uzfS9cctTLuS69vAP6A7BNsxUoeyA=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-392-5i3oJjaGNDK6Bgo7a2XHkA-1; Thu, 04 Jul 2024 09:17:13 -0400
X-MC-Unique: 5i3oJjaGNDK6Bgo7a2XHkA-1
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-4256718144dso6365355e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jul 2024 06:17:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720099032; x=1720703832;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=v2asHracYj/ImZ+OTqgN08Or55nsS5Qo7iBUXEZRik0=;
 b=pgxJpIOBrYK8Wv57hs1DmVwZ7rT287gLJbUCrVjJW3QotCE9L19wxXzNlRqBDeqG0A
 B+XeNINixQMGT68czDm8SIgThxSqQYbVgTtLxPrLN6sUSuilm11+vWwO9xFpg2tAHt/b
 nVX1yLAqSxpCLMz9l73O8Lvf/9E5eDg1NycDpcYaANRMD7pkitcoXixq1C4pgZ8TvqXv
 OyOKvTpqY8YEcmbusg4snS5LVWDBPQXGbvZ6fKynQ8p6CLccGkY+m63yJDBPO2hRUw88
 XnQ2m5I6xzzwZrQTVgfLeNTUxADA5Xtx1tutDD+caa+vfntaV6Sg0c8jEjWSij49XR6q
 a3WA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUCgn7SQ8QnY/QF47ovha5Xt0Lv1q/Br/TIbDn1goscwX8/9UiSGPTBqTRlCOBQx+23MrCrNUGTEDLaG0mh/5KI/g1vaP07j+tGdanxH+zZ
X-Gm-Message-State: AOJu0Yy9jV3FHJFiDiAIXpgGadRpoGAnKgm0gfFmTCQUsctfaD+86rOK
 QBBUvxsXGo+Z0szwzIRk/3LkYcKkN8Ps+T6ZRd7cWCXzEV2ZVP/H/UzZzQylfG+TPJFqySIUFrh
 iALME2GwPrqwTn1jAeKKyG8O5Wb6tIrE0qZciWapKxBggIZy9izJ2uorix8OcIJC5vg==
X-Received: by 2002:a05:600c:4a9a:b0:424:ad83:ffb3 with SMTP id
 5b1f17b1804b1-4264a3bc287mr17072555e9.4.1720099032079; 
 Thu, 04 Jul 2024 06:17:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGguh4BWI4tGOBZaJqW9WKFIoUgP2iUdGisZnAIwNI4aquoqwnKueVhb00X1x7MJ70yShKFBg==
X-Received: by 2002:a05:600c:4a9a:b0:424:ad83:ffb3 with SMTP id
 5b1f17b1804b1-4264a3bc287mr17072275e9.4.1720099031657; 
 Thu, 04 Jul 2024 06:17:11 -0700 (PDT)
Received: from localhost ([193.32.126.213]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4264a1dd952sm23873305e9.13.2024.07.04.06.17.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jul 2024 06:17:11 -0700 (PDT)
Date: Thu, 4 Jul 2024 15:17:09 +0200
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
Subject: [PULL] drm-misc-next
Message-ID: <20240704-curvy-outstanding-lizard-bcea78@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="6gq2io3j4zkiceka"
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


--6gq2io3j4zkiceka
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Here's this week drm-misc-next PR, and the last PR for the 6.11 release cycle.

Thanks!
Maxime

drm-misc-next-2024-07-04:
drm-misc-next for $kernel-version:

UAPI Changes:

Cross-subsystem Changes:

Core Changes:
  - dp/mst: Fix daisy-chaining at resume
  - dsc: Add helper to dump the DSC configuration
  - tests: Add tests for the new monochrome TV mode variant

Driver Changes:
  - ast: Refactor the mode setting code
  - panfrost: Fix devfreq job reporting
  - stm: Add LDVS support, DSI PHY updates
  - panels:
    - New panel: AUO G104STN01, K&d kd101ne3-40ti,
The following changes since commit 61bfcd190820d1dce846e58a4c9ddca8db4751ed:

  drm/bridge: analogix_dp: handle AUX transfer timeouts (2024-06-27 11:52:19 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-2024-07-04

for you to fetch changes up to 896868eded124059023be0af92d68cdaf9b4de70:

  drm/panthor: Record devfreq busy as soon as a job is started (2024-07-04 09:29:55 +0100)

----------------------------------------------------------------
drm-misc-next for $kernel-version:

UAPI Changes:

Cross-subsystem Changes:

Core Changes:
  - dp/mst: Fix daisy-chaining at resume
  - dsc: Add helper to dump the DSC configuration
  - tests: Add tests for the new monochrome TV mode variant

Driver Changes:
  - ast: Refactor the mode setting code
  - panfrost: Fix devfreq job reporting
  - stm: Add LDVS support, DSI PHY updates
  - panels:
    - New panel: AUO G104STN01, K&d kd101ne3-40ti,

----------------------------------------------------------------
Dave Stevenson (1):
      drm/tests: Add tests for the new Monochrome value of tv_mode

Dragan Simic (2):
      drm/lima: Mark simple_ondemand governor as softdep
      drm/panfrost: Mark simple_ondemand governor as softdep

Imre Deak (2):
      drm: Add helpers for q4 fixed point values
      drm/display/dsc: Add a helper to dump the DSC configuration

Paul Gerber (2):
      dt-bindings: display: simple: Add AUO G104STN01 panel
      drm/panel: simple: Add AUO G104STN01 panel entry

Raphael Gallais-Pou (4):
      dt-bindings: display: add STM32 LVDS device
      drm/stm: lvds: add new STM32 LVDS Display Interface Transmitter driver
      drm/stm: dsi: use new SYSTEM_SLEEP_PM_OPS() macro
      drm/stm: dsi: expose DSI PHY internal clock

Steven Price (1):
      drm/panthor: Record devfreq busy as soon as a job is started

Thomas Zimmermann (9):
      drm/ast: Implement atomic enable/disable for encoders
      drm/ast: Program mode for AST DP in atomic_mode_set
      drm/ast: Move mode-setting code into mode_set_nofb CRTC helper
      drm/ast: Handle primary-plane format setup in atomic_update
      drm/ast: Remove gamma LUT updates from DPMS code
      drm/ast: Only set VGA SCREEN_DISABLE bit in CRTC code
      drm/ast: Inline ast_crtc_dpms() into callers
      drm/ast: Use drm_atomic_helper_commit_tail() helper
      drm/mgag200: Rename constant MGAREG_Status to MGAREG_STATUS

Thorsten Blum (1):
      drm/managed: Simplify if condition

Wayne Lin (2):
      drm/dp_mst: Fix all mstb marked as not probed after suspend/resume
      drm/dp_mst: Skip CSN if topology probing is not done yet

Yannick Fertre (1):
      drm/stm: dsi: add pm runtime ops

Zhaoxiong Lv (5):
      drm/panel: jd9365da: Modify the method of sending commands
      dt-bindings: display: panel: Add compatible for kingdisplay-kd101ne3
      drm/panel: panel-jadard-jd9365da-h3: use wrapped MIPI DCS functions
      drm/panel: jd9365da: Support for kd101ne3-40ti MIPI-DSI panel
      drm/panel: jd9365da: Add the function of adjusting orientation

 .../bindings/display/panel/jadard,jd9365da-h3.yaml |    1 +
 .../bindings/display/panel/panel-simple.yaml       |    2 +
 .../bindings/display/st,stm32mp25-lvds.yaml        |  119 ++
 MAINTAINERS                                        |    1 +
 drivers/gpu/drm/ast/ast_mode.c                     |  204 ++--
 drivers/gpu/drm/ast/ast_reg.h                      |   10 +-
 drivers/gpu/drm/display/drm_dp_helper.c            |    5 +-
 drivers/gpu/drm/display/drm_dp_mst_topology.c      |   15 +-
 drivers/gpu/drm/display/drm_dsc_helper.c           |   91 ++
 drivers/gpu/drm/drm_managed.c                      |    2 +-
 drivers/gpu/drm/lima/lima_drv.c                    |    1 +
 drivers/gpu/drm/mgag200/mgag200_mode.c             |    6 +-
 drivers/gpu/drm/mgag200/mgag200_reg.h              |    2 +-
 drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c   | 1090 ++++++++++-------
 drivers/gpu/drm/panel/panel-simple.c               |   27 +
 drivers/gpu/drm/panfrost/panfrost_drv.c            |    1 +
 drivers/gpu/drm/panthor/panthor_sched.c            |    1 +
 drivers/gpu/drm/stm/Kconfig                        |   11 +
 drivers/gpu/drm/stm/Makefile                       |    2 +
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c              |  279 ++++-
 drivers/gpu/drm/stm/lvds.c                         | 1226 ++++++++++++++++++++
 drivers/gpu/drm/tests/drm_cmdline_parser_test.c    |   11 +
 drivers/gpu/drm/tests/drm_connector_test.c         |    1 +
 drivers/gpu/drm/tests/drm_modes_test.c             |   31 +
 include/drm/display/drm_dsc_helper.h               |    3 +
 include/drm/drm_fixed.h                            |   23 +
 26 files changed, 2605 insertions(+), 560 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/st,stm32mp25-lvds.yaml
 create mode 100644 drivers/gpu/drm/stm/lvds.c

--6gq2io3j4zkiceka
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZoag1AAKCRDj7w1vZxhR
xfcFAQCjciqeuY75a6Ef/9gmvph7nyJqMPOGIVhaQl31IlOF/wD/YncQiUYtKQRg
emWi6z+dp1v7by+D2zAkmI53aqglRwk=
=4GVn
-----END PGP SIGNATURE-----

--6gq2io3j4zkiceka--

