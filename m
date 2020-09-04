Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F0125DCD8
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 17:08:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 045A26EC5A;
	Fri,  4 Sep 2020 15:08:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA94E6EC5A;
 Fri,  4 Sep 2020 15:08:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D908BA47E2;
 Fri,  4 Sep 2020 15:08:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 04 Sep 2020 15:08:25 -0000
Message-ID: <159923210585.8517.13527663905376816607@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=5Fmanaged=2C_leftovers?=
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

Series: drm_managed, leftovers
URL   : https://patchwork.freedesktop.org/series/81371/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7e79337308df drm/armada: Use devm_drm_dev_alloc
-:68: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 45 lines checked
26f00c197367 drm/armada: Don't use drm_device->dev_private
-:165: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 112 lines checked
987c9338ca7b drm/aspeed: Use managed drmm_mode_config_cleanup
-:64: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 40 lines checked
86684c96f0be drm/vgem: Use devm_drm_dev_alloc
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
This also somewhat untangles the load code, since the drm and platform device

total: 0 errors, 1 warnings, 0 checks, 88 lines checked
07047c4d2081 drm/vkms: Use devm_drm_dev_alloc
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
This also somewhat untangles the load code, since the drm and platform device

-:136: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 104 lines checked
d837a22748b5 drm/xlnx: Use devm_drm_dev_alloc
-:63: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 39 lines checked
796ee493a8a3 drm/i915/selftest: Create mock_destroy_device
-:184: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 106 lines checked
124bff980d17 drm/i915/selftests: align more to real device lifetimes
-:92: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 66 lines checked
9fa6eafa5dc7 drm/dev: Remove drm_dev_init
c15b464eaef1 drm/arc: Switch to devm_drm_dev_alloc
-:103: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 75 lines checked
746009dbe330 drm/arc: Stop using drm_device->dev_private
-:69: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 40 lines checked
fe06aeaae2bd drm/arc: Delete arcpgu_priv->fb
be543cb2845f drm/arc: Embedded a drm_simple_display_pipe
-:135: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 93 lines checked
a17149e448e8 drm/arc: Embedd a drm_connector for sim case
-:64: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 39 lines checked
ba16b70d40cc drm/arc: Drop surplus connector registration
5c8bfba805ad drm/arc: Use drmm_mode_config_cleanup
-:122: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 83 lines checked
d11e78dcb76b drm/arc: Align with simple pipe helpers
-:60: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 35 lines checked
2431d7d612ac drm/arc: Convert to drm_simple_kms_pipe_helper
-:294: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 242 lines checked
5bb83c222569 drm/arc: Drop crtc check in arc_pgu_update
-:28: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
5e3a85368a5d drm/arc: Inline arcpgu_crtc.c
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
8b0c4a52a621 drm/arc: Inline arcpgu_drm_hdmi_init
-:58: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#58: 
deleted file mode 100644

-:89: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 29 lines checked
a561f0af936b drm/arc: Inline remaining files
-:26: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#26: 
deleted file mode 100644

-:171: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#171: FILE: drivers/gpu/drm/arc/arcpgu_drv.c:111:
+	ret = drm_connector_init(drm, connector, &arcpgu_drm_connector_funcs,
+			DRM_MODE_CONNECTOR_VIRTUAL);

-:304: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 1 checks, 117 lines checked
e22fc3f4bb1b drm/arc: Initialize sim connector before display pipe
-:111: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 87 lines checked
686a533fcde6 drm/arc: Move to drm/tiny
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
