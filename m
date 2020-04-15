Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 171C11A964E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 10:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA7916E91D;
	Wed, 15 Apr 2020 08:26:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E979689BA3;
 Wed, 15 Apr 2020 08:26:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3334A00E6;
 Wed, 15 Apr 2020 08:26:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 15 Apr 2020 08:26:21 -0000
Message-ID: <158693918189.21013.16491895500108655216@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZGV2?=
 =?utf-8?q?m=5Fdrm=5Fdev=5Falloc=2C_v2?=
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
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8298 -> Patchwork_17304
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/index.html

Known issues
------------

  Here are the changes found in Patchwork_17304 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-cml-s:           [PASS][1] -> [DMESG-FAIL][2] ([i915#1314])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-cml-s/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/fi-cml-s/igt@i915_selftest@live@execlists.html

  
  [i915#1314]: https://gitlab.freedesktop.org/drm/intel/issues/1314


Participating hosts (48 -> 44)
------------------------------

  Missing    (4): fi-byt-clapper fi-byt-squawks fi-bsw-cyan fi-hsw-4200u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8298 -> Patchwork_17304

  CI-20190529: 20190529
  CI_DRM_8298: 17f82f0c2857d0b442adbdb62eb44b61d0f5b775 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5589: 31962324ac86f029e2841e56e97c42cf9d572956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17304: 6b267f98398f217419dc7403a953f518eec588bb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6b267f98398f drm/bochs: Remove explicit drm_connector_register
5952709c16e7 drm/ast: Drop explicit connector register/unregister
212b8f6dd792 drm/ast: Use managed pci functions
61684dca07fb drm/aspeed: Use managed drmm_mode_config_cleanup
b523f58b0844 drm/aspeed: Use devm_drm_dev_alloc
a56dd08b28f5 drm/aspeed: Drop aspeed_gfx->fbdev
7c2ba0190489 drm/arc: Move to drm/tiny
e8d0970f7144 drm/arc: Initialize sim connector before display pipe
4fa14bd8ec30 drm/arc: Inline remaining files
7343df9f4b2a drm/arc: Inline arcpgu_drm_hdmi_init
e52c65463632 drm/arc: Inline arcpgu_crtc.c
eb0ac9ba6f3a drm/arc: Drop fb/crtc check in arc_pgu_update
9bafee34adc8 drm/arc: Convert to drm_simple_kms_pipe_helper
3bf4add3b139 drm/arc: Align with simple pipe helpers
53609c098023 drm/arc: Use drmm_mode_config_cleanup
e44e078a706c drm/arc: Drop surplus connector registration
81aa508f4aac drm/arc: Embedd a drm_connector for sim case
92d815db6627 drm/arc: Embedded a drm_simple_display_pipe
fd487d20d96f drm/arcpgu: Delete arcpgu_priv->fb
e70ff1199986 drm/arcpgu: Stop using drm_device->dev_private
39f1c0136f6e drm/arcpgu: Switch to devm_drm_dev_alloc
7d245271e60f drm/i915: Use devm_drm_dev_alloc
2b17747b4b28 drm/cirrus: Move to drm/tiny
802aadc99e55 drm/cirrus: Don't use drm_device->dev_private
8ed39ba52c56 drm/cirrus: Use devm_drm_dev_alloc
5355459380ce drm/armada: Don't use drm_device->dev_private
83f5dd60daf3 drm/armada: Use devm_drm_dev_alloc
02237e74a9a8 drm/komeda: use devm_drm_dev_alloc
8e70e1e615f0 drm/ingenic: Don't set drm_device->dev_private
31bf3d7b111c drm/ingenic: Use devm_drm_dev_alloc
bdb467714cbb drm/mcde: Don't use drm_device->dev_private
35f8852356ee drm/mcde: Use devm_drm_dev_alloc
0411f1a69999 drm/qxl: Don't use drm_device->dev_private
b2fbca315892 drm/qxl: Use devm_drm_dev_alloc
1014cec142a5 drm/tidss: Delete tidss->saved_state
9bf56784ead7 drm/tidss: Don't use drm_device->dev_private
33f567e43a49 drm/tidss: Use devm_drm_dev_alloc
63ff767c2c59 drm/gm12u320: Don't use drm_device->dev_private
bfc68a9fc2e2 drm/gm12u320: Use devm_drm_dev_alloc
e20dddecfd5b drm/hx8357d: Use devm_drm_dev_alloc
3c13fd8a4e69 drm/ili9225: Use devm_drm_dev_alloc
af4d8bdcb3a4 drm/ili9341: Use devm_drm_dev_alloc
e3ca7bc5481b drm/ili9486: Use devm_drm_dev_alloc
1f6a7e1e8955 drm/mi0283qt: Use devm_drm_dev_alloc
d213eca2bf88 drm/repaper: Use devm_drm_dev_alloc
3e61c483b099 drm/st7586: Use devm_drm_dev_alloc
02f85c25a833 drm/st7735r: Use devm_drm_dev_alloc
a365a06b3054 drm/udl: don't set drm_device->dev_private
45112a7418df drm/udl: Use devm_drm_dev_alloc
a6e0a1a5655e drm/v3d: Delete v3d_dev->pdev
dfc0b2d39bc5 drm/v3d: Delete v3d_dev->dev
d756210a5cc5 drm/v3d: Use devm_drm_dev_alloc
7b30b404310a drm/v3d: Don't set drm_device->dev_private
69867766512b drm/vboxvideo: Use devm_gen_pool_create
6d12b395c7e7 drm/vboxvidoe: use managed pci functions
e45a792091aa drm/vboxvideo: Stop using drm_device->dev_private
ce363797615d drm/vboxvideo: Use devm_drm_dev_alloc
af384be87720 drm/vboxvideo: drop DRM_MTRR_WC #define
fd3a020f5d57 drm: Add devm_drm_dev_alloc macro

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17304/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
