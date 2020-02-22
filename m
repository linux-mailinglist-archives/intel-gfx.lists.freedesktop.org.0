Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96815168BF9
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 03:09:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D73A66F5B2;
	Sat, 22 Feb 2020 02:09:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D1F5F6F5B0;
 Sat, 22 Feb 2020 02:09:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA781A47E8;
 Sat, 22 Feb 2020 02:09:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Sat, 22 Feb 2020 02:09:06 -0000
Message-ID: <158233734682.32578.9654174128559985416@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm_managed_resources=2C_v2?=
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

Series: drm managed resources, v2
URL   : https://patchwork.freedesktop.org/series/73794/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d65ee94cba2c mm/sl[uo]b: export __kmalloc_track(_node)_caller
-:58: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
9c62343778a5 drm/i915: Don't clear drvdata in ->release
-:35: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 9 lines checked
851da457d716 drm: add managed resources tied to drm_device
-:62: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Neil Armstrong <narmstrong@baylibre.com'
#62: 
Cc: Neil Armstrong <narmstrong@baylibre.com

-:126: WARNING:NEEDLESS_IF: kfree(NULL) is safe and this check is probably not required
#126: FILE: drivers/gpu/drm/drm_drv.c:843:
+	if (dev->managed.final_kfree)
+		kfree(dev->managed.final_kfree);

-:145: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#145: 
new file mode 100644

-:210: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#210: FILE: drivers/gpu/drm/drm_managed.c:61:
+static __always_inline struct drmres * alloc_dr(drmres_release_t release,

-:238: CHECK:SPACING: No space is necessary after a cast
#238: FILE: drivers/gpu/drm/drm_managed.c:89:
+		       dr, dr->node.name, (unsigned long) dr->node.size);

-:250: CHECK:SPACING: No space is necessary after a cast
#250: FILE: drivers/gpu/drm/drm_managed.c:101:
+		       dr, dr->node.name, (unsigned long) dr->node.size);

-:256: CHECK:SPACING: No space is necessary after a cast
#256: FILE: drivers/gpu/drm/drm_managed.c:107:
+	WARN_ON(dev < (struct drm_device *) parent);

-:257: CHECK:SPACING: No space is necessary after a cast
#257: FILE: drivers/gpu/drm/drm_managed.c:108:
+	WARN_ON(dev + 1 >= (struct drm_device *) (parent + ksize(parent)));

-:269: ERROR:POINTER_LOCATION: "(foo*)" should be "(foo *)"
#269: FILE: drivers/gpu/drm/drm_managed.c:120:
+	dr = alloc_dr(action, data ? sizeof(void*) : 0,

-:342: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#342: FILE: include/drm/drm_device.h:79:
+		spinlock_t lock;

-:354: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'include/drm/drm_managed.h', please use '/*' instead
#354: FILE: include/drm/drm_managed.h:1:
+// SPDX-License-Identifier: GPL-2.0

-:354: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#354: FILE: include/drm/drm_managed.h:1:
+// SPDX-License-Identifier: GPL-2.0

-:407: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 3 errors, 5 warnings, 5 checks, 297 lines checked
8133da7d60b2 drm: Set final_kfree in drm_dev_alloc
-:15: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 0a6659bdc5e8 ("drm/bochs: new driver")'
#15: 
commit 0a6659bdc5e8221da99eebb176fd9591435e38de

-:25: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit b1df3a2b24a9 ("drm/virtio: add drm_driver.release callback.")'
#25: 
commit b1df3a2b24a917f8853d43fe9683c0e360d2c33a

-:42: WARNING:BAD_SIGN_OFF: Duplicate signature
#42: 
Cc: Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>

-:43: WARNING:BAD_SIGN_OFF: Duplicate signature
#43: 
Cc: xen-devel@lists.xenproject.org

-:85: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 2 errors, 3 warnings, 0 checks, 29 lines checked
3af3d1539d90 drm/mipi_dbi: Use drmm_add_final_kfree in all drivers
-:188: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 111 lines checked
2fd445daeab3 drm/udl: Use drmm_add_final_kfree
-:61: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 27 lines checked
671ab4640c01 drm/qxl: Use drmm_add_final_kfree
-:46: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
9c162f0327b0 drm/i915: Use drmm_add_final_kfree
-:177: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 114 lines checked
dcaf642df1d3 drm/cirrus: Use drmm_add_final_kfree
-:26: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:29: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:73: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 3 warnings, 0 checks, 40 lines checked
2e6a7e985729 drm/v3d: Use drmm_add_final_kfree
-:122: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
2daae35ed335 drm/tidss: Use drmm_add_final_kfree
-:40: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
887913ef4151 drm/mcde: Use drmm_add_final_kfree
-:39: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 21 lines checked
353f5cf59776 drm/vgem: Use drmm_add_final_kfree
-:65: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 38 lines checked
8508d5adeee0 drm/vkms: Use drmm_add_final_kfree
-:85: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 61 lines checked
dd9ccae0565b drm/repaper: Use drmm_add_final_kfree
-:48: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 27 lines checked
25caa45d4c4c drm/inigenic: Use drmm_add_final_kfree
-:42: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 25 lines checked
cfc56a78d310 drm/gm12u320: Use drmm_add_final_kfree
-:38: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 21 lines checked
4bc52733c13a drm/<drivers>: Use drmm_add_final_kfree
-:75: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 42 lines checked
7fa6b963d49f drm: Cleanups after drmm_add_final_kfree rollout
-:59: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 38 lines checked
3a402074a90d drm: Handle dev->unique with drmm_
-:71: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#71: FILE: include/drm/drm_managed.h:27:
 }
+char *drmm_kstrdup(struct drm_device *dev, const char *s, gfp_t gfp);

-:74: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 1 checks, 46 lines checked
e252681c9175 drm: Use drmm_ for drm_dev_init cleanup
-:32: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#32: FILE: drivers/gpu/drm/drm_drv.c:591:
+	 * enabled. Slightly awkward, but can't really be helped. */

-:104: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 81 lines checked
f1608ba5ee0e drm: manage drm_minor cleanup with drmm_
-:219: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 179 lines checked
acf4f6b0c061 drm: Manage drm_gem_init with drmm_
-:105: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 75 lines checked
7434c3a76c39 drm: Manage drm_vblank_cleanup with drmm_
-:144: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#144: FILE: include/drm/drm_managed.h:32:
 }
+static inline void *drmm_kmalloc_array(struct drm_device *dev,

-:154: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#154: FILE: include/drm/drm_managed.h:42:
+}
+static inline void *drmm_kcalloc(struct drm_device *dev,

-:161: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 2 checks, 119 lines checked
23a0d713e3a4 drm: Garbage collect drm_dev_fini
-:11: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:14: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:270: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 3 warnings, 0 checks, 179 lines checked
f05dfeb9ddf2 drm: Manage drm_mode_config_init with drmm_
-:210: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 140 lines checked
0b5c94e68094 drm/bochs: Remove leftover drm_atomic_helper_shutdown
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 81da8c3b8d3d ("drm/bochs: add drm_driver.release callback.")'
#8: 
commit 81da8c3b8d3df6f05b11300b7d17ccd1f3017fab

-:30: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 1 errors, 1 warnings, 0 checks, 6 lines checked
05c6c3200bb6 drm/bochs: Drop explicit drm_mode_config_cleanup
-:11: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#11: 
This is made possible by a preceeding patch which added a drmm_

-:95: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 47 lines checked
0ba9a621bbb2 drm/cirrus: Drop explicit drm_mode_config_cleanup call
-:11: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#11: 
This is made possible by a preceeding patch which added a drmm_

-:28: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:31: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:94: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 4 warnings, 0 checks, 58 lines checked
51e2a1925360 drm/cirrus: Fully embrace devm_
-:10: WARNING:TYPO_SPELLING: 'releated' may be misspelled - perhaps 'related'?
#10: 
anymore to use devm_ for everything hw releated. Do it, and in the

-:22: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:25: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:121: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 4 warnings, 0 checks, 93 lines checked
985fd2c905b2 drm/ingenic: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:54: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 29 lines checked
2c0b4754f10c drm/mcde: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:85: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 57 lines checked
1fb9a70e55cb drm/mcde: More devm_drm_dev_init
-:61: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 37 lines checked
5a86e92f9254 drm/meson: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:48: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 17 lines checked
40b7d0e47f14 drm/pl111: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:67: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 38 lines checked
184140a92131 drm/rcar-du: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:21: WARNING:BAD_SIGN_OFF: Duplicate signature
#21: 
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

-:51: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 3 warnings, 0 checks, 17 lines checked
78f50a8cea30 drm/rockchip: Drop explicit drm_mode_config_cleanup call
-:12: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#12: 
This is made possible by a preceeding patch which added a drmm_

-:67: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 32 lines checked
2da0997dffac drm/stm: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:71: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 34 lines checked
5d142f79fe80 drm/shmob: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:21: WARNING:BAD_SIGN_OFF: Duplicate signature
#21: 
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

-:61: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 3 warnings, 0 checks, 26 lines checked
461984093aec drm/mtk: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:61: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 33 lines checked
05d198a35c44 drm/tidss: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:105: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 55 lines checked
eec1c7d28989 drm/gm12u320: More drmm_
-:76: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 50 lines checked
ea3a456a7564 drm/gm12u320: Use devm_drm_dev_init
-:88: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 65 lines checked
a4990e78f019 drm/gm12u320: Use helpers for shutdown/suspend/resume
-:9: WARNING:TYPO_SPELLING: 'implemenation' may be misspelled - perhaps 'implementation'?
#9: 
Also there's a race in the disconnect implemenation. First shut

-:84: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 56 lines checked
cf47297b1c84 drm/gm12u320: Simplify upload work
-:150: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#150: FILE: drivers/gpu/drm/tiny/gm12u320.c:360:
+		ret = usb_bulk_msg(gm12u320->udev,
+			usb_sndbulkpipe(gm12u320->udev, DATA_SND_EPT),

-:181: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#181: FILE: drivers/gpu/drm/tiny/gm12u320.c:378:
+	ret = usb_bulk_msg(gm12u320->udev,
+		usb_sndbulkpipe(gm12u320->udev, DATA_SND_EPT),

-:188: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#188: FILE: drivers/gpu/drm/tiny/gm12u320.c:385:
+	ret = usb_bulk_msg(gm12u320->udev,
+		usb_rcvbulkpipe(gm12u320->udev, DATA_RCV_EPT),

-:296: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 3 checks, 255 lines checked
109c66428291 drm/repaper: Drop explicit drm_mode_config_cleanup call
-:11: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#11: 
This is made possible by a preceeding patch which added a drmm_

-:48: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 20 lines checked
24f5bcedc765 drm/mipi-dbi: Move drm_mode_config_init into mipi library
-:133: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 66 lines checked
b2871f43d34d drm/mipi-dbi: Drop explicit drm_mode_config_cleanup call
-:12: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#12: 
This is made possible by a preceeding patch which added a drmm_

-:156: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 78 lines checked
6cdacea9fe6a drm/udl: Drop explicit drm_mode_config_cleanup call
-:14: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#14: 
This is m

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
