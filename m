Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1A7959F18
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 15:53:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0F7010E5CC;
	Wed, 21 Aug 2024 13:53:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5810810E592;
 Wed, 21 Aug 2024 13:53:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_Provide_clien?=
 =?utf-8?q?t_setup_helper_and_convert_drivers_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2024 13:53:16 -0000
Message-ID: <172424839635.721436.4222802157647092012@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240821130348.73038-1-tzimmermann@suse.de>
In-Reply-To: <20240821130348.73038-1-tzimmermann@suse.de>
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

Series: drm: Provide client setup helper and convert drivers (rev2)
URL   : https://patchwork.freedesktop.org/series/137389/
State : warning

== Summary ==

Error: dim checkpatch failed
26886442d272 drm/fbdev-helper: Move color-mode lookup into 4CC format helper
bb1c3385669b drm/fbdev-helper: Set and clear VGA switcheroo client from fb_info
983f61824c80 drm/fbdev: Add memory-agnostic fbdev client
-:97: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#97: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 245 lines checked
a8820f44be7a drm: Add client-agnostic setup helper
-:38: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#38: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 91 lines checked
97b97b85feec drm/fbdev-dma: Support struct drm_driver.fbdev_probe
407d53db0ccb drm/arcgpu: Run DRM default client setup
0b2b7d08a494 drm/arm/komeda: Run DRM default client setup
7873adef4794 drm/arm/hdlcd: Run DRM default client setup
1e20c3cd4587 drm/arm/malidp: Run DRM default client setup
877103a3aab8 drm/aspeed: Run DRM default client setup
96232e9a09bf drm/atmel-hdlcd: Run DRM default client setup
46c777b68972 drm/fsl-dcu: Run DRM default client setup
6e55303881ca drm/hisilicon/kirin: Run DRM default client setup
28ae3f1a0f49 drm/hx8357d: Run DRM default client setup
6b6496756c62 drm/ili9163: Run DRM default client setup
e22a1b67302a drm/ili9225: Run DRM default client setup
38baf2cc864e drm/ili9341: Run DRM default client setup
5e48918b8b34 drm/ili9486: Run DRM default client setup
ee8ef707c8c6 drm/imx/dcss: Run DRM default client setup
80f71721de7d drm/imx/ipuv3: Run DRM default client setup
6913841980c2 drm/imx/lcdc: Run DRM default client setup
99cdb8b31cd6 drm/ingenic: Run DRM default client setup
9c01d591bcd5 drm/kmb: Run DRM default client setup
b6952a76d999 drm/logicvc: Run DRM default client setup
39efea40f6f0 drm/mcde: Run DRM default client setup
10c3d7c78e12 drm/mediatek: Run DRM default client setup
6180feb347bd drm/meson: Run DRM default client setup
df8f1be74b1b drm/mi0283qt: Run DRM default client setup
a22410422b14 drm/mxsfb/lcdif: Run DRM default client setup
17a2acdf2a20 drm/msxfb: Run DRM default client setup
266bfacba7d3 drm/panel/ili9341: Run DRM default client setup
10d96e2ffb73 drm/panel-mipi-dbi: Run DRM default client setup
02180a779e26 drm/pl111: Run DRM default client setup
1c11adf39010 drm/renesas/rcar-du: Run DRM default client setup
a30b09e71ee6 drm/renesas/rz-du: Run DRM default client setup
b236b7301d8f drm/renesas/shmobile: Run DRM default client setup
4457d9c652c8 drm/repaper: Run DRM default client setup
cee119f3a9b2 drm/rockchip: Run DRM default client setup
bf4c67719e12 drm/sti: Run DRM default client setup
8c233e6a9382 drm/stm: Run DRM default client setup
b663e57d2b6c drm/sun4i: Run DRM default client setup
016dd0502e7e drm/tidss: Run DRM default client setup
a055c0325f52 drm/tilcdc: Run DRM default client setup
9c3558d188cc drm/st7586: Run DRM default client setup
42c133ae0b52 drm/st7735r: Run DRM default client setup
3cbd5d03bc87 drm/tve200: Run DRM default client setup
cd78aaa34c9d drm/vc4: Run DRM default client setup
c119ec96e88b drm/xlnx: Run DRM default client setup
1c6bc70bd047 drm/fbdev-dma: Remove obsolete setup function
0159c29f3e2e drm/fbdev-shmem: Support struct drm_driver.fbdev_probe
71d0bf4869f6 drm/ast: Run DRM default client setup
6f8605956b27 drm/cirrus: Run DRM default client setup
-:19: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:22: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

total: 0 errors, 2 warnings, 0 checks, 22 lines checked
0edd2ee90049 drm/gm12u320: Run DRM default client setup
c74df902dbbb drm/gud: Run DRM default client setup
f75cab4594cf drm/hyperv_drm: Run DRM default client setup
ec6efa5981b5 drm/mgag200: Run DRM default client setup
407e24c44ccd drm/ofdrm: Use DRM default client setup
dd02e66f6921 drm/simpledrm: Run DRM default client setup
0c0f5643b4b8 drm/solomon: Run DRM default client setup
a6f6fc93a966 drm/udl: Run DRM default client setup
a896071ff6ae drm/virtgpu: Run DRM default client setup
49769016f8ac drm/vkms: Run DRM default client setup
29b49cb2fadb drm/fbdev-shmem: Remove obsolete setup function
6d0b047e78de drm/fbdev-ttm: Support struct drm_driver.fbdev_probe
5d15a97378fa drm/amdgpu: Run DRM default client setup
77b4aebc3526 drm/bochs: Run DRM default client setup
1fe2082ab034 drm/hisilicon/hibmc: Run DRM default client setup
1f830e913333 drm/loongson: Run DRM default client setup
d8d0284fe4d0 drm/nouveau: Run DRM default client setup
41c576633505 drm/qxl: Run DRM default client setup
790a539fb5ca drm/vboxvideo: Run DRM default client setup
963ff534d1d5 drm/vmwgfx: Run DRM default client setup
958a48bf03d2 drm/fbdev-ttm: Remove obsolete setup function
d51a7568838b drm/armada: Run DRM default client setup
fda77b7c5918 drm/exynos-drm: Run DRM default client setup
065645b9c9db drm/gma500: Run DRM default client setup
af2aa2f6ce49 drm/msm: Run DRM default client setup
46c8220f8d79 drm/radeon: Run DRM default client setup
93713487a2ab drm/tegra: Run DRM default client setup
f819c1fa76de drm/i915: Remove struct drm_fb_helper from struct intel_fbdev
7d299e22ed3c drm/i915: Move custom restore code into separate callback
817bcc4e5d46 drm/i915: Move custom hotplug code into separate callback
e3d377bd26e5 drm/{i915,xe}: Run DRM default client setup
f01dc026c55a drm/omapdrm: Remove struct drm_fb_helper from struct omap_fbdev.
f1f7e9f9b43c drm/omapdrm: Run DRM default client setup
5ba0025430ef drm/fb-helper: Remove struct drm_fb_helper.fb_probe


