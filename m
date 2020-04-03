Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D7F19E13C
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 01:01:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 553776ECC3;
	Fri,  3 Apr 2020 23:01:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5C66A6ECC1;
 Fri,  3 Apr 2020 23:01:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 557C6A66C7;
 Fri,  3 Apr 2020 23:01:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 03 Apr 2020 23:01:17 -0000
Message-ID: <158595487732.13350.17173274498538648068@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_devm=5Fdrm=5Fdev=5Falloc=2C_no_more_drmm=5Fadd=5Ffinal=5Fkf?=
 =?utf-8?q?ree_=28rev3=29?=
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

Series: devm_drm_dev_alloc, no more drmm_add_final_kfree (rev3)
URL   : https://patchwork.freedesktop.org/series/75463/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e72346e75771 drivers/base: Always release devres on device_del
-:78: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
e239d39afecc drm: Add devm_drm_dev_alloc macro
-:26: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#26: FILE: drivers/gpu/drm/drm_drv.c:742:
+void* __devm_drm_dev_alloc(struct device *parent, struct drm_driver *driver,

-:60: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#60: FILE: include/drm/drm_drv.h:626:
+void* __devm_drm_dev_alloc(struct device *parent, struct drm_driver *driver,

-:90: CHECK:SPACING: No space is necessary after a cast
#90: FILE: include/drm/drm_drv.h:656:
+	((type *) __devm_drm_dev_alloc(parent, driver, sizeof(type), \

-:95: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 2 errors, 1 warnings, 1 checks, 68 lines checked
ed01ac38e04a drm/device: Deprecate dev_private harder
-:30: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
a78829a54af6 drm/vgem: Use devm_drm_dev_alloc
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
This also somewhat untangles the load code, since the drm and platform device

total: 0 errors, 1 warnings, 0 checks, 79 lines checked
5920030f62ea drm/vkms: Use devm_drm_dev_alloc
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
This also somewhat untangles the load code, since the drm and platform device

-:118: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 90 lines checked
aae694a8a5d2 drm/vboxvideo: drop DRM_MTRR_WC #define
-:40: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 25 lines checked
098edba18627 drm/vboxvideo: Use devm_drm_dev_alloc
-:62: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 45 lines checked
76793ba02626 drm/vboxvideo: Stop using drm_device->dev_private
-:97: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 62 lines checked
9ba07a46cef1 drm/vboxvidoe: use managed pci functions
-:76: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 52 lines checked
6e4b89850b36 drm/vboxvideo: Use devm_gen_pool_create
-:75: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 57 lines checked
ec196f9e0be0 drm/v3d: Don't set drm_device->dev_private
-:37: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
d25b70710de9 drm/v3d: Use devm_drm_dev_alloc
-:104: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 84 lines checked
f48e47f68a86 drm/v3d: Delete v3d_dev->dev
-:347: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 271 lines checked
66c944512b95 drm/v3d: Delete v3d_dev->pdev
-:60: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'v3d' may be better as '(v3d)' to avoid precedence issues
#60: FILE: drivers/gpu/drm/v3d/v3d_drv.h:130:
+#define v3d_to_pdev(v3d) to_platform_device(v3d->drm.dev)

-:97: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 1 checks, 56 lines checked
ec9cf4556e61 drm/udl: Use demv_drm_dev_alloc
-:93: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 68 lines checked
4cb201d3bd97 drm/udl: don't set drm_device->dev_private
-:91: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 47 lines checked
3dc0b3b337f2 drm/st7735r: Use devm_drm_dev_alloc
-:44: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 25 lines checked
09e5644e82b8 drm/st7586: Use devm_drm_dev_alloc
-:38: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
d5de90a7063e drm/repaper: Use devm_drm_dev_alloc
-:41: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 23 lines checked
6d7d1f235e30 drm/mi0283qt: Use devm_drm_dev_alloc
-:40: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
a8b3f3a2dfb2 drm/ili9486: Use devm_drm_dev_alloc
-:37: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
25c9c3f9e447 drm/ili9341: Use devm_drm_dev_alloc
-:45: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
4b8b9048fa61 drm/ili9225: Use devm_drm_dev_alloc
-:38: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
7d059380b7de drm/hx8357d: Use devm_drm_dev_alloc
-:37: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 21 lines checked
3333eb394269 drm/gm12u320: Use devm_drm_dev_alloc
-:41: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 26 lines checked
3376d9019b4c drm/gm12u320: Don't use drm_device->dev_private
-:68: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 47 lines checked
02af73e35a85 drm/tidss: Use devm_drm_dev_alloc
-:40: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
877109556b31 drm/tidss: Don't use drm_device->dev_private
-:216: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 160 lines checked
74d72be056ef drm/tidss: Delete tidss->saved_state
-:24: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
05389abcb0c1 drm/qxl: Use devm_drm_dev_alloc
-:122: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 89 lines checked
d88455e402f4 drm/qxl: Don't use drm_device->dev_private
-:413: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 312 lines checked
3ac62531c793 drm/mcde: Use devm_drm_dev_alloc
-:43: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
84a9b2b7c79f drm/mcde: Don't use drm_device->dev_private
-:116: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 79 lines checked
ec4f2c0b4634 drm/ingenic: Use devm_drm_dev_alloc
-:42: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 26 lines checked
30d321d9c183 drm/ingenic: Don't set drm_device->dev_private
-:22: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
c689c28c7c33 drm/komeda: use devm_drm_dev_alloc
-:72: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 37 lines checked
c7f35d34191f drm/armada: Use devm_drm_dev_alloc
-:68: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 45 lines checked
db39d7083700 drm/armada: Don't use drm_device->dev_private
-:165: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 112 lines checked
6249fdd96afa drm/cirrus: Use devm_drm_dev_alloc
-:22: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:25: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:48: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 3 warnings, 0 checks, 22 lines checked
98784a0227c1 drm/cirrus: Don't use drm_device->dev_private
-:23: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:26: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:70: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 3 warnings, 0 checks, 39 lines checked
4a439cfa5fcf drm/i915: Use devm_drm_dev_alloc
-:60: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 38 lines checked
6393e4b92e1c drm/i915/selftest: Create mock_destroy_device
-:184: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 106 lines checked
3987454b5211 drm/i915/selftests: align more to real device lifetimes
-:78: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 57 lines checked
7b4b396a9651 drm/managed: Cleanup of unused functions and polishing docs
-:54: WARNING:TYPO_SPELLING: 'intial' may be misspelled - perhaps 'initial'?
#54: FILE: drivers/gpu/drm/drm_drv.c:246:
+ * management, vblank handling, modesetting support and intial output

-:325: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 263 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
