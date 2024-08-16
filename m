Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E19BF954C39
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2024 16:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB43510E7CC;
	Fri, 16 Aug 2024 14:19:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15FE410E7CD;
 Fri, 16 Aug 2024 14:19:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_Provide_clien?=
 =?utf-8?q?t_setup_helper_and_convert_drivers?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2024 14:19:42 -0000
Message-ID: <172381798208.653293.11884341131471085656@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240816125408.310253-1-tzimmermann@suse.de>
In-Reply-To: <20240816125408.310253-1-tzimmermann@suse.de>
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

Series: drm: Provide client setup helper and convert drivers
URL   : https://patchwork.freedesktop.org/series/137389/
State : warning

== Summary ==

Error: dim checkpatch failed
4856d817532d drm/fbdev-helper: Move color-mode lookup into 4CC format helper
7e7d23b5bd07 drm/fbdev-helper: Set and clear VGA switcheroo client from fb_info
d7f10ed4fdd8 drm/fbdev: Add memory-agnostic fbdev client
-:91: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#91: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 236 lines checked
2356f33d6aec drm: Add client-agnostic setup helper
-:33: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#33: 
new file mode 100644

-:88: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#88: FILE: drivers/gpu/drm/drm_client_setup.c:51:
+	uint32_t fmt = drm_driver_color_mode_format(dev, color_mode);

total: 0 errors, 1 warnings, 1 checks, 74 lines checked
3a32bb0a05af drm/fbdev-dma: Support struct drm_driver.fbdev_probe
8afd6e1eb174 drm/arcgpu: Run DRM default client setup
00a8bfd477cb drm/arm/komeda: Run DRM default client setup
52ef3a72f78a drm/arm/hdlcd: Run DRM default client setup
105b911b70ad drm/arm/malidp: Run DRM default client setup
dc097452ae3f drm/aspeed: Run DRM default client setup
1770ec7f10d8 drm/atmel-hdlcd: Run DRM default client setup
f377a3e1b4b4 drm/fsl-dcu: Run DRM default client setup
f9dcd06114bb drm/hisilicon/kirin: Run DRM default client setup
5442f74f45d4 drm/hx8357d: Run DRM default client setup
547aae7a6fe0 drm/ili9163: Run DRM default client setup
c0aa3bb45781 drm/ili9225: Run DRM default client setup
f55558eb4015 drm/ili9341: Run DRM default client setup
d34f9f1df93c drm/ili9486: Run DRM default client setup
8f3711766ff9 drm/imx/dcss: Run DRM default client setup
63fc5f517795 drm/imx/ipuv3: Run DRM default client setup
47b7c80c0c36 drm/imx/lcdc: Run DRM default client setup
9afeef37153e drm/ingenic: Run DRM default client setup
93600646dafc drm/kmb: Run DRM default client setup
36e9443d85a1 drm/logicvc: Run DRM default client setup
8921a5ffd81b drm/mcde: Run DRM default client setup
095ac92874bf drm/mediatek: Run DRM default client setup
2c7c52591c3a drm/meson: Run DRM default client setup
584fc4e588f4 drm/mi0283qt: Run DRM default client setup
75b24a9c6c72 drm/mxsfb/lcdif: Run DRM default client setup
c1a93dfb7939 drm/msxfb: Run DRM default client setup
79166905ec16 drm/panel/ili9341: Run DRM default client setup
1ed3fb64146d drm/panel-mipi-dbi: Run DRM default client setup
d689a5123a56 drm/pl111: Run DRM default client setup
ef0788fa6c2f drm/renesas/rcar-du: Run DRM default client setup
7eb9ab5c0793 drm/renesas/rz-du: Run DRM default client setup
fba14adb503e drm/renesas/shmobile: Run DRM default client setup
ad57b88fdd73 drm/repaper: Run DRM default client setup
2576d2818bd2 drm/rockchip: Run DRM default client setup
bb0c24dd1c7f drm/sti: Run DRM default client setup
5ed428b15a27 drm/stm: Run DRM default client setup
fcbd6170a394 drm/sun4i: Run DRM default client setup
99e58bfd7820 drm/tidss: Run DRM default client setup
87055fe59c32 drm/tilcdc: Run DRM default client setup
6e1da125fbae drm/st7586: Run DRM default client setup
ed9f48c37278 drm/st7735r: Run DRM default client setup
dece69809b98 drm/tve200: Run DRM default client setup
1f9242fd12af drm/vc4: Run DRM default client setup
052493581b22 drm/xlnx: Run DRM default client setup
0309671c67a7 drm/fbdev-dma: Remove obsolete setup function
c10bb6b74d14 drm/fbdev-shmem: Support struct drm_driver.fbdev_probe
12e042023fdb drm/ast: Run DRM default client setup
46066be89257 drm/cirrus: Run DRM default client setup
-:14: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:17: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

total: 0 errors, 2 warnings, 0 checks, 22 lines checked
018170088437 drm/gm12u320: Run DRM default client setup
4629300d0be5 drm/gud: Run DRM default client setup
e91054168a3c drm/hyperv_drm: Run DRM default client setup
24e5ceea78ad drm/mgag200: Run DRM default client setup
-:11: WARNING:BAD_SIGN_OFF: Unexpected content after email: 'Dave Airlie <airlied@redhat.com>i', should be: 'Dave Airlie <airlied@redhat.com> (i)'
#11: 
Cc: Dave Airlie <airlied@redhat.com>i

total: 0 errors, 1 warnings, 0 checks, 26 lines checked
87415426460a drm/ofdrm: Use DRM default client setup
1001bfce5bd2 drm/simpledrm: Run DRM default client setup
469e945ff3cc drm/solomon: Run DRM default client setup
62ba02871d37 drm/udl: Run DRM default client setup
87adca83eb61 drm/virtgpu: Run DRM default client setup
f376210008b7 drm/vkms: Run DRM default client setup
21287a856e7e drm/fbdev-shmem: Remove obsolete setup function
3687f7bfa6ec drm/fbdev-ttm: Support struct drm_driver.fbdev_probe
e364533fbeaa drm/amdgpu: Run DRM default client setup
a9283347043b drm/bochs: Run DRM default client setup
dbe7d4063d17 drm/hisilicon/hibmc: Run DRM default client setup
bf36e85a510b drm/loongson: Run DRM default client setup
9bc39514e1c2 drm/nouveau: Run DRM default client setup
9aa78adee4fa drm/qxl: Run DRM default client setup
ac519f6dc1ef drm/vboxvideo: Run DRM default client setup
61fa033192ac drm/vmwgfx: Run DRM default client setup
12eeba1179b0 drm/fbdev-ttm: Remove obsolete setup function
cd196b5e0006 drm/armada: Run DRM default client setup
dcd60c0e01a7 drm/exynos-drm: Run DRM default client setup
00200b44aa6d drm/gma500: Run DRM default client setup
41111cd085d6 drm/msm: Run DRM default client setup
cadf336cb460 drm/radeon: Run DRM default client setup
28a03dedd296 drm/tegra: Run DRM default client setup
9fe83eabfb41 drm/i915: Remove struct drm_fb_helper from struct intel_fbdev
446f33eaf6e8 drm/i915: Move custom restore code into separate callback
f744530fc056 drm/i915: Move custom hotplug code into separate callback
067493dc3942 drm/{i915,xe}: Run DRM default client setup
30236ccdb5f5 drm/omapdrm: Remove struct drm_fb_helper from struct omap_fbdev.
2cbd3e8f9d94 drm/omapdrm: Run DRM default client setup
c4d9dfa1b6f1 drm/fb-helper: Remove struct drm_fb_helper.fb_probe


