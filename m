Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B75C325F632
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Sep 2020 11:19:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17D716E400;
	Mon,  7 Sep 2020 09:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6BA8F6E400;
 Mon,  7 Sep 2020 09:19:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6598DA363D;
 Mon,  7 Sep 2020 09:19:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Mon, 07 Sep 2020 09:19:01 -0000
Message-ID: <159947034138.31225.17042739231900009411@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=5Fmanaged=2C_leftovers_=28rev2=29?=
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

Series: drm_managed, leftovers (rev2)
URL   : https://patchwork.freedesktop.org/series/81371/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
037e65c0f1f3 drm/armada: Use devm_drm_dev_alloc
-:68: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 45 lines checked
265ec2e83f8f drm/armada: Don't use drm_device->dev_private
-:165: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 112 lines checked
1b0df8f33668 drm/aspeed: Use managed drmm_mode_config_cleanup
-:64: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 40 lines checked
abfb3ddb90b4 drm/vgem: Use devm_drm_dev_alloc
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
This also somewhat untangles the load code, since the drm and platform device

total: 0 errors, 1 warnings, 0 checks, 88 lines checked
8c6b8e70ad75 drm/vkms: Use devm_drm_dev_alloc
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
This also somewhat untangles the load code, since the drm and platform device

-:136: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 104 lines checked
348bd08c843f drm/xlnx: Use devm_drm_dev_alloc
-:95: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 63 lines checked
2f1c7c930d40 drm/i915/selftest: Create mock_destroy_device
-:184: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 106 lines checked
917cc2505e28 drm/i915/selftests: align more to real device lifetimes
-:92: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 66 lines checked
d2cc41a049c7 drm/dev: Remove drm_dev_init
3ca75c4f0cea drm/arc: Switch to devm_drm_dev_alloc
-:103: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 75 lines checked
9e3da00af95d drm/arc: Stop using drm_device->dev_private
-:70: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 40 lines checked
bba19ca61004 drm/arc: Delete arcpgu_priv->fb
139a5b432e0a drm/arc: Embedded a drm_simple_display_pipe
-:135: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 93 lines checked
08aaf00589df drm/arc: Embedd a drm_connector for sim case
-:64: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 39 lines checked
663e20b69504 drm/arc: Drop surplus connector registration
93de53f0e5da drm/arc: Use drmm_mode_config_cleanup
-:122: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 83 lines checked
07d22108ec22 drm/arc: Align with simple pipe helpers
-:60: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 35 lines checked
4f9fa6772896 drm/arc: Convert to drm_simple_kms_pipe_helper
-:294: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 242 lines checked
daae0c0decde drm/arc: Drop crtc check in arc_pgu_update
-:28: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
f7a77a9f741f drm/arc: Inline arcpgu_crtc.c
-:43: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#43: 
deleted file mode 100644

-:235: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#235: FILE: drivers/gpu/drm/arc/arcpgu_drv.c:39:
+	uint32_t pixel_format = fb->format->format;

-:264: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rate > 0'
#264: FILE: drivers/gpu/drm/arc/arcpgu_drv.c:68:
+	if ((max(rate, clk_rate) - min(rate, clk_rate) < diff) && (rate > 0))

-:331: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#331: FILE: drivers/gpu/drm/arc/arcpgu_drv.c:135:
+	arc_pgu_write(arcpgu, ARCPGU_REG_CTRL,
+			      arc_pgu_read(arcpgu, ARCPGU_REG_CTRL) &

-:373: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 3 checks, 170 lines checked
3f18b8f6de04 drm/arc: Inline arcpgu_drm_hdmi_init
-:58: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#58: 
deleted file mode 100644

-:89: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 29 lines checked
b33a75612d55 drm/arc: Inline remaining files
-:26: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#26: 
deleted file mode 100644

-:171: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#171: FILE: drivers/gpu/drm/arc/arcpgu_drv.c:111:
+	ret = drm_connector_init(drm, connector, &arcpgu_drm_connector_funcs,
+			DRM_MODE_CONNECTOR_VIRTUAL);

-:304: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 1 checks, 117 lines checked
efa2c01cc15e drm/arc: Initialize sim connector before display pipe
-:111: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 87 lines checked
e80527863ad7 drm/arc: Move to drm/tiny
-:53: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#53: 
deleted file mode 100644

-:84: WARNING:CONFIG_DESCRIPTION: please write a paragraph that describes the config symbol fully
#84: FILE: drivers/gpu/drm/tiny/Kconfig:3:
+config DRM_ARCPGU

-:111: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 3 warnings, 0 checks, 44 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
