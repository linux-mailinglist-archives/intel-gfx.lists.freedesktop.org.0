Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 342F6965F13
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 12:27:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36CCF10EA68;
	Fri, 30 Aug 2024 10:27:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4631B10EA67;
 Fri, 30 Aug 2024 10:27:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm=3A_Provide_client_set?=
 =?utf-8?q?up_helper_and_convert_drivers_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2024 10:27:18 -0000
Message-ID: <172501363828.854207.14311352555928401429@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240830084456.77630-1-tzimmermann@suse.de>
In-Reply-To: <20240830084456.77630-1-tzimmermann@suse.de>
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

Series: drm: Provide client setup helper and convert drivers (rev3)
URL   : https://patchwork.freedesktop.org/series/137389/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/137389/revisions/3/mbox/ not applied
Applying: drm/fbdev-helper: Move color-mode lookup into 4CC format helper
Applying: drm/fbdev-helper: Set and clear VGA switcheroo client from fb_info
Applying: drm/fbdev: Add memory-agnostic fbdev client
Applying: drm: Add client-agnostic setup helper
Applying: drm/fbdev-dma: Support struct drm_driver.fbdev_probe
Applying: drm/arcgpu: Run DRM default client setup
Applying: drm/arm/komeda: Run DRM default client setup
Applying: drm/arm/hdlcd: Run DRM default client setup
Applying: drm/arm/malidp: Run DRM default client setup
Applying: drm/aspeed: Run DRM default client setup
Applying: drm/atmel-hdlcd: Run DRM default client setup
Applying: drm/fsl-dcu: Run DRM default client setup
Applying: drm/hisilicon/kirin: Run DRM default client setup
Applying: drm/hx8357d: Run DRM default client setup
Applying: drm/ili9163: Run DRM default client setup
Applying: drm/ili9225: Run DRM default client setup
Applying: drm/ili9341: Run DRM default client setup
Applying: drm/ili9486: Run DRM default client setup
Applying: drm/imx/dcss: Run DRM default client setup
Applying: drm/imx/ipuv3: Run DRM default client setup
Applying: drm/imx/lcdc: Run DRM default client setup
Applying: drm/ingenic: Run DRM default client setup
Applying: drm/kmb: Run DRM default client setup
Applying: drm/logicvc: Run DRM default client setup
Applying: drm/mcde: Run DRM default client setup
Applying: drm/mediatek: Run DRM default client setup
Applying: drm/meson: Run DRM default client setup
Applying: drm/mi0283qt: Run DRM default client setup
Applying: drm/mxsfb/lcdif: Run DRM default client setup
Applying: drm/mxsfb: Run DRM default client setup
Applying: drm/panel/ili9341: Run DRM default client setup
Applying: drm/panel-mipi-dbi: Run DRM default client setup
Applying: drm/pl111: Run DRM default client setup
Applying: drm/renesas/rcar-du: Run DRM default client setup
Applying: drm/renesas/rz-du: Run DRM default client setup
Applying: drm/renesas/shmobile: Run DRM default client setup
Applying: drm/repaper: Run DRM default client setup
Applying: drm/rockchip: Run DRM default client setup
Applying: drm/sti: Run DRM default client setup
Applying: drm/stm: Run DRM default client setup
Applying: drm/sun4i: Run DRM default client setup
Applying: drm/tidss: Run DRM default client setup
Applying: drm/tilcdc: Run DRM default client setup
Applying: drm/st7586: Run DRM default client setup
Applying: drm/st7735r: Run DRM default client setup
Applying: drm/tve200: Run DRM default client setup
Applying: drm/vc4: Run DRM default client setup
Applying: drm/xlnx: Run DRM default client setup
Applying: drm/fbdev-dma: Remove obsolete setup function
Applying: drm/fbdev-shmem: Support struct drm_driver.fbdev_probe
Applying: drm/ast: Run DRM default client setup
Applying: drm/cirrus: Run DRM default client setup
Applying: drm/gm12u320: Run DRM default client setup
Applying: drm/gud: Run DRM default client setup
Applying: drm/hyperv_drm: Run DRM default client setup
Applying: drm/mgag200: Run DRM default client setup
Applying: drm/ofdrm: Use DRM default client setup
Applying: drm/simpledrm: Run DRM default client setup
Applying: drm/solomon: Run DRM default client setup
Applying: drm/udl: Run DRM default client setup
Applying: drm/virtgpu: Run DRM default client setup
Applying: drm/vkms: Run DRM default client setup
Applying: drm/fbdev-shmem: Remove obsolete setup function
Applying: drm/fbdev-ttm: Support struct drm_driver.fbdev_probe
Applying: drm/amdgpu: Run DRM default client setup
Applying: drm/bochs: Run DRM default client setup
Applying: drm/hisilicon/hibmc: Run DRM default client setup
Applying: drm/loongson: Run DRM default client setup
Applying: drm/nouveau: Run DRM default client setup
Applying: drm/qxl: Run DRM default client setup
Applying: drm/vboxvideo: Run DRM default client setup
Applying: drm/vmwgfx: Run DRM default client setup
Applying: drm/fbdev-ttm: Remove obsolete setup function
Applying: drm/armada: Run DRM default client setup
Applying: drm/exynos-drm: Run DRM default client setup
Applying: drm/gma500: Run DRM default client setup
Applying: drm/msm: Run DRM default client setup
Applying: drm/radeon: Run DRM default client setup
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/radeon/radeon_drv.c
M	drivers/gpu/drm/radeon/radeon_fbdev.c
M	drivers/gpu/drm/radeon/radeon_mode.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/radeon/radeon_mode.h
Auto-merging drivers/gpu/drm/radeon/radeon_fbdev.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/radeon/radeon_fbdev.c
Auto-merging drivers/gpu/drm/radeon/radeon_drv.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/radeon/radeon_drv.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0078 drm/radeon: Run DRM default client setup
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


