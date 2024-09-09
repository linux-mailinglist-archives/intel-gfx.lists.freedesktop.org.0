Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FCD971E55
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 17:43:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D30CE10E5BC;
	Mon,  9 Sep 2024 15:43:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E3D910E5BA;
 Mon,  9 Sep 2024 15:43:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_Provide_clien?=
 =?utf-8?q?t_setup_helper_and_convert_drivers_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Sep 2024 15:43:32 -0000
Message-ID: <172589661257.977151.4427547050805223564@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240909113633.595465-1-tzimmermann@suse.de>
In-Reply-To: <20240909113633.595465-1-tzimmermann@suse.de>
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
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm: Provide client setup helper and convert drivers (rev4)
URL   : https://patchwork.freedesktop.org/series/137389/
State : warning

== Summary ==

Error: dim checkpatch failed
a6ce88d36cd7 drm/fbdev-helper: Move color-mode lookup into 4CC format helper
9b3a1f39e55b drm/fbdev-helper: Set and clear VGA switcheroo client from fb_info
37cbade643f3 drm/fbdev: Add memory-agnostic fbdev client
-:98: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#98: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 245 lines checked
7a3f9f83e6c8 drm: Add client-agnostic setup helper
-:42: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#42: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 88 lines checked
2882b98074a0 drm/fbdev-dma: Support struct drm_driver.fbdev_probe
75cf6e7a1e6b drm/arcgpu: Run DRM default client setup
3b538113c50e drm/arm/komeda: Run DRM default client setup
1a1729b6a93b drm/arm/hdlcd: Run DRM default client setup
971fb6b6d62c drm/arm/malidp: Run DRM default client setup
ad555058e678 drm/aspeed: Run DRM default client setup
02cb287c93cd drm/atmel-hdlcd: Run DRM default client setup
b1895f683e5c drm/fsl-dcu: Run DRM default client setup
f79b0194975c drm/hisilicon/kirin: Run DRM default client setup
3455a3eadca4 drm/hx8357d: Run DRM default client setup
80b74b009074 drm/ili9163: Run DRM default client setup
c1063f9d1b0c drm/ili9225: Run DRM default client setup
1b2f76afe220 drm/ili9341: Run DRM default client setup
b55fb45ed53e drm/ili9486: Run DRM default client setup
1153d9d222b1 drm/imx/dcss: Run DRM default client setup
d3035c73eb13 drm/imx/ipuv3: Run DRM default client setup
ee9b993beea4 drm/imx/lcdc: Run DRM default client setup
5da738d8227c drm/ingenic: Run DRM default client setup
bb2ed4735b2e drm/kmb: Run DRM default client setup
394c0f087e4e drm/logicvc: Run DRM default client setup
2cc37e9ceb61 drm/mcde: Run DRM default client setup
3ee2a07e1ee8 drm/mediatek: Run DRM default client setup
92d0aa27f242 drm/meson: Run DRM default client setup
ad75a83bdb66 drm/mi0283qt: Run DRM default client setup
2e707f9c0ac3 drm/mxsfb/lcdif: Run DRM default client setup
26325dca1815 drm/mxsfb: Run DRM default client setup
353fb8d58c50 drm/panel-mipi-dbi: Run DRM default client setup
092e724e364a drm/pl111: Run DRM default client setup
4d4d08866c03 drm/renesas/rcar-du: Run DRM default client setup
b94be322872e drm/renesas/rz-du: Run DRM default client setup
332bc581be7d drm/renesas/shmobile: Run DRM default client setup
53a76c09b718 drm/repaper: Run DRM default client setup
dd3ba994b39c drm/rockchip: Run DRM default client setup
e7765fb40370 drm/sti: Run DRM default client setup
e2292ec1de6f drm/stm: Run DRM default client setup
6a3add055d8c drm/sun4i: Run DRM default client setup
b768cd382720 drm/tidss: Run DRM default client setup
b1e9b2925e29 drm/tilcdc: Run DRM default client setup
f1c6bb58387e drm/st7586: Run DRM default client setup
850a30958810 drm/st7735r: Run DRM default client setup
a61c32fec087 drm/tve200: Run DRM default client setup
716d6fcaa6e9 drm/vc4: Run DRM default client setup
b9903d1a441b drm/xlnx: Run DRM default client setup
2a138334a0f4 drm/fbdev-dma: Remove obsolete setup function
7cbb0afa2c3e drm/fbdev-shmem: Support struct drm_driver.fbdev_probe
9c4061f64d62 drm/ast: Run DRM default client setup
c34331f09075 drm/bochs: Run DRM default client setup
2f8d6f8a03a0 drm/cirrus: Run DRM default client setup
-:20: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:23: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

total: 0 errors, 2 warnings, 0 checks, 22 lines checked
10908eef0ff3 drm/gm12u320: Run DRM default client setup
5653f3c1a141 drm/gud: Run DRM default client setup
93c3fab22f76 drm/hyperv_drm: Run DRM default client setup
9a946278297c drm/mgag200: Run DRM default client setup
f91818645173 drm/ofdrm: Use DRM default client setup
ab7d4797987b drm/simpledrm: Run DRM default client setup
7b641676fda9 drm/solomon: Run DRM default client setup
a387432c19d5 drm/udl: Run DRM default client setup
90ea11599441 drm/virtgpu: Run DRM default client setup
b8108fe56d34 drm/vkms: Run DRM default client setup
590df4dabb76 drm/fbdev-shmem: Remove obsolete setup function
110100c4d688 drm/fbdev-ttm: Support struct drm_driver.fbdev_probe
fc0303fb9498 drm/amdgpu: Run DRM default client setup
6ee08126757e drm/hisilicon/hibmc: Run DRM default client setup
37da58754432 drm/loongson: Run DRM default client setup
02f9f59d5fa7 drm/nouveau: Run DRM default client setup
b9d44fc974ef drm/qxl: Run DRM default client setup
9b482b388665 drm/vboxvideo: Run DRM default client setup
e6434182e068 drm/vmwgfx: Run DRM default client setup
8c926adccc8c drm/fbdev-ttm: Remove obsolete setup function
16d5e6dbd562 drm/armada: Run DRM default client setup
4f6b5788cea6 drm/exynos-drm: Run DRM default client setup
528e2e08807c drm/gma500: Run DRM default client setup
a7b5ed262723 drm/msm: Run DRM default client setup
a628873c00f3 drm/radeon: Run DRM default client setup
c200e26d453d drm/tegra: Run DRM default client setup
8d7215f34968 drm/omapdrm: Remove struct drm_fb_helper from struct omap_fbdev.
60fef22393bf drm/omapdrm: Run DRM default client setup


