Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DFB1A9577
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 10:04:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E9A76E8FB;
	Wed, 15 Apr 2020 08:04:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DD0E56E8FB;
 Wed, 15 Apr 2020 08:04:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B23B2A0138;
 Wed, 15 Apr 2020 08:04:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 15 Apr 2020 08:04:00 -0000
Message-ID: <158693784072.21016.13219791356757544620@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_devm=5Fdrm=5Fdev=5Falloc=2C_v2?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: devm_drm_dev_alloc, v2
URL   : https://patchwork.freedesktop.org/series/75956/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fd3a020f5d57 drm: Add devm_drm_dev_alloc macro
-:106: CHECK:SPACING: No space is necessary after a cast
#106: FILE: include/drm/drm_drv.h:656:
+	((type *) __devm_drm_dev_alloc(parent, driver, sizeof(type), \

-:111: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 1 checks, 68 lines checked
af384be87720 drm/vboxvideo: drop DRM_MTRR_WC #define
-:41: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 25 lines checked
ce363797615d drm/vboxvideo: Use devm_drm_dev_alloc
-:62: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 45 lines checked
e45a792091aa drm/vboxvideo: Stop using drm_device->dev_private
-:99: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 62 lines checked
6d12b395c7e7 drm/vboxvidoe: use managed pci functions
-:84: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 52 lines checked
69867766512b drm/vboxvideo: Use devm_gen_pool_create
-:76: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 57 lines checked
7b30b404310a drm/v3d: Don't set drm_device->dev_private
-:37: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
d756210a5cc5 drm/v3d: Use devm_drm_dev_alloc
-:104: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 84 lines checked
dfc0b2d39bc5 drm/v3d: Delete v3d_dev->dev
-:348: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 271 lines checked
a6e0a1a5655e drm/v3d: Delete v3d_dev->pdev
-:99: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 56 lines checked
45112a7418df drm/udl: Use devm_drm_dev_alloc
-:91: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 58 lines checked
a365a06b3054 drm/udl: don't set drm_device->dev_private
-:93: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 47 lines checked
02f85c25a833 drm/st7735r: Use devm_drm_dev_alloc
-:45: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 25 lines checked
3e61c483b099 drm/st7586: Use devm_drm_dev_alloc
-:39: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
d213eca2bf88 drm/repaper: Use devm_drm_dev_alloc
-:43: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 23 lines checked
1f6a7e1e8955 drm/mi0283qt: Use devm_drm_dev_alloc
-:42: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
e3ca7bc5481b drm/ili9486: Use devm_drm_dev_alloc
-:42: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
af4d8bdcb3a4 drm/ili9341: Use devm_drm_dev_alloc
-:46: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
3c13fd8a4e69 drm/ili9225: Use devm_drm_dev_alloc
-:39: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
e20dddecfd5b drm/hx8357d: Use devm_drm_dev_alloc
-:38: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 21 lines checked
bfc68a9fc2e2 drm/gm12u320: Use devm_drm_dev_alloc
-:42: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 26 lines checked
63ff767c2c59 drm/gm12u320: Don't use drm_device->dev_private
-:69: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 47 lines checked
33f567e43a49 drm/tidss: Use devm_drm_dev_alloc
-:42: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
9bf56784ead7 drm/tidss: Don't use drm_device->dev_private
-:218: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 160 lines checked
1014cec142a5 drm/tidss: Delete tidss->saved_state
-:26: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
b2fbca315892 drm/qxl: Use devm_drm_dev_alloc
-:123: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 89 lines checked
0411f1a69999 drm/qxl: Don't use drm_device->dev_private
-:414: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 312 lines checked
35f8852356ee drm/mcde: Use devm_drm_dev_alloc
-:41: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 23 lines checked
bdb467714cbb drm/mcde: Don't use drm_device->dev_private
-:126: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 85 lines checked
31bf3d7b111c drm/ingenic: Use devm_drm_dev_alloc
-:43: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 26 lines checked
8e70e1e615f0 drm/ingenic: Don't set drm_device->dev_private
-:23: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
02237e74a9a8 drm/komeda: use devm_drm_dev_alloc
-:73: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 37 lines checked
83f5dd60daf3 drm/armada: Use devm_drm_dev_alloc
-:68: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 45 lines checked
5355459380ce drm/armada: Don't use drm_device->dev_private
-:165: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 112 lines checked
8ed39ba52c56 drm/cirrus: Use devm_drm_dev_alloc
-:50: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
802aadc99e55 drm/cirrus: Don't use drm_device->dev_private
-:71: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 39 lines checked
2b17747b4b28 drm/cirrus: Move to drm/tiny
-:53: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#53: 
deleted file mode 100644

-:125: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:128: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 3 warnings, 0 checks, 53 lines checked
7d245271e60f drm/i915: Use devm_drm_dev_alloc
-:60: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 38 lines checked
39f1c0136f6e drm/arcpgu: Switch to devm_drm_dev_alloc
-:101: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 75 lines checked
e70ff1199986 drm/arcpgu: Stop using drm_device->dev_private
-:68: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 40 lines checked
fd487d20d96f drm/arcpgu: Delete arcpgu_priv->fb
92d815db6627 drm/arc: Embedded a drm_simple_display_pipe
-:133: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 93 lines checked
81aa508f4aac drm/arc: Embedd a drm_connector for sim case
-:62: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 39 lines checked
e44e078a706c drm/arc: Drop surplus connector registration
53609c098023 drm/arc: Use drmm_mode_config_cleanup
-:120: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 83 lines checked
3bf4add3b139 drm/arc: Align with simple pipe helpers
-:58: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 35 lines checked
9bafee34adc8 drm/arc: Convert to drm_simple_kms_pipe_helper
-:248: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 209 lines checked
eb0ac9ba6f3a drm/arc: Drop fb/crtc check in arc_pgu_update
-:27: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 9 lines checked
e52c65463632 drm/arc: Inline arcpgu_crtc.c
-:32: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#32: 
deleted file mode 100644

-:230: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#230: FILE: drivers/gpu/drm/arc/arcpgu_drv.c:39:
+	uint32_t pixel_format = fb->format->format;

-:268: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rate > 0'
#268: FILE: drivers/gpu/drm/arc/arcpgu_drv.c:77:
+	if ((max(rate, clk_rate) - min(rate, clk_rate) < diff) && (rate > 0))

-:335: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#335: FILE: drivers/gpu/drm/arc/arcpgu_drv.c:144:
+	arc_pgu_write(arcpgu, ARCPGU_REG_CTRL,
+			      arc_pgu_read(arcpgu, ARCPGU_REG_CTRL) &

-:404: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 3 checks, 200 lines checked
7343df9f4b2a drm/arc: Inline arcpgu_drm_hdmi_init
-:56: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#56: 
deleted file mode 100644

-:87: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 29 lines checked
4fa14bd8ec30 drm/arc: Inline remaining files
-:23: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#23: 
deleted file mode 100644

-:168: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#168: FILE: drivers/gpu/drm/arc/arcpgu_drv.c:111:
+	ret = drm_connector_init(drm, connector, &arcpgu_drm_connector_funcs,
+			DRM_MODE_CONNECTOR_VIRTUAL);

-:301: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 1 checks, 117 lines checked
e8d0970f7144 drm/arc: Initialize sim connector before display pipe
-:106: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 86 lines checked
7c2ba0190489 drm/arc: Move to drm/tiny
-:50: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#50: 
deleted file mode 100644

-:81: WARNING:CONFIG_DESCRIPTION: please write a paragraph that describes the config symbol fully
#81: FILE: drivers/gpu/drm/tiny/Kconfig:3:
+config DRM_ARCPGU

-:108: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 3 warnings, 0 checks, 44 lines checked
a56dd08b28f5 drm/aspeed: Drop aspeed_gfx->fbdev
-:25: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
b523f58b0844 drm/aspeed: Use devm_drm_dev_alloc
-:33: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#33: FILE: drivers/gpu/drm/aspeed/aspeed_gfx.h:17:
 };
+#define to_aspeed_gfx(x) container_of(x, struct aspeed_gfx, drm)

-:146: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 1 checks, 105 lines checked
61684dca07fb drm/aspeed: Use managed drmm_mode_config_cleanup
-:56: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 35 lines checked
212b8f6dd792 drm/ast: Use managed pci functions
-:66: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 34 lines checked
5952709c16e7 drm/ast: Drop explicit connector register/unregister
-:38: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
6b267f98398f drm/bochs: Remove explicit drm_connector_register
-:25: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 7 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
