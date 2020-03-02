Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB19E1767DD
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 00:09:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D14136E092;
	Mon,  2 Mar 2020 23:08:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C0F466E092;
 Mon,  2 Mar 2020 23:08:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B988BA47E6;
 Mon,  2 Mar 2020 23:08:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Mon, 02 Mar 2020 23:08:58 -0000
Message-ID: <158319053873.30645.2463714038537054938@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=5Fdevice_managed_resources_=28rev2=29?=
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

Series: drm_device managed resources (rev2)
URL   : https://patchwork.freedesktop.org/series/73633/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7620b1305ad8 mm/sl[uo]b: export __kmalloc_track(_node)_caller
-:58: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
dcaf5118a71e drm/i915: Don't clear drvdata in ->release
-:20: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 0998d0631001 ("device-core: Ensure drvdata = NULL when no driver is bound")'
#20: 
commit 0998d0631001288a5974afc0b2a5f568bcdecb4d

-:45: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 1 errors, 1 warnings, 0 checks, 9 lines checked
16e1c6586e26 drm: add managed resources tied to drm_device
-:72: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Neil Armstrong <narmstrong@baylibre.com'
#72: 
Cc: Neil Armstrong <narmstrong@baylibre.com

-:136: WARNING:NEEDLESS_IF: kfree(NULL) is safe and this check is probably not required
#136: FILE: drivers/gpu/drm/drm_drv.c:844:
+	if (dev->managed.final_kfree)
+		kfree(dev->managed.final_kfree);

-:155: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#155: 
new file mode 100644

-:224: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#224: FILE: drivers/gpu/drm/drm_managed.c:65:
+static __always_inline struct drmres * alloc_dr(drmres_release_t release,

-:252: CHECK:SPACING: No space is necessary after a cast
#252: FILE: drivers/gpu/drm/drm_managed.c:93:
+		       dr, dr->node.name, (unsigned long) dr->node.size);

-:264: CHECK:SPACING: No space is necessary after a cast
#264: FILE: drivers/gpu/drm/drm_managed.c:105:
+		       dr, dr->node.name, (unsigned long) dr->node.size);

-:270: CHECK:SPACING: No space is necessary after a cast
#270: FILE: drivers/gpu/drm/drm_managed.c:111:
+	WARN_ON(dev < (struct drm_device *) parent);

-:271: CHECK:SPACING: No space is necessary after a cast
#271: FILE: drivers/gpu/drm/drm_managed.c:112:
+	WARN_ON(dev + 1 >= (struct drm_device *) (parent + ksize(parent)));

-:283: ERROR:POINTER_LOCATION: "(foo*)" should be "(foo *)"
#283: FILE: drivers/gpu/drm/drm_managed.c:124:
+	dr = alloc_dr(action, data ? sizeof(void*) : 0,

-:378: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'include/drm/drm_managed.h', please use '/*' instead
#378: FILE: include/drm/drm_managed.h:1:
+// SPDX-License-Identifier: GPL-2.0

-:378: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#378: FILE: include/drm/drm_managed.h:1:
+// SPDX-License-Identifier: GPL-2.0

-:431: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 3 errors, 5 warnings, 4 checks, 311 lines checked
891285ff2ae5 drm: Set final_kfree in drm_dev_alloc
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
eed3a3b8d7ea drm/mipi_dbi: Use drmm_add_final_kfree in all drivers
-:189: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 111 lines checked
a3055dd77a23 drm/udl: Use drmm_add_final_kfree
-:62: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 27 lines checked
7b882fa3ec4d drm/qxl: Use drmm_add_final_kfree
-:46: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
5c05d30a3743 drm/i915: Use drmm_add_final_kfree
-:207: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 136 lines checked
b33e6a1607d3 drm/cirrus: Use drmm_add_final_kfree
-:27: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:30: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:74: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 3 warnings, 0 checks, 40 lines checked
67deb073d634 drm/v3d: Use drmm_add_final_kfree
-:122: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
3ab166181a34 drm/tidss: Use drmm_add_final_kfree
-:41: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
b728dda4a7c4 drm/mcde: Use drmm_add_final_kfree
-:39: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 21 lines checked
a5a558d5eaf4 drm/vgem: Use drmm_add_final_kfree
-:66: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 38 lines checked
7135c72221bb drm/vkms: Use drmm_add_final_kfree
-:87: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 61 lines checked
41519ea24a3b drm/repaper: Use drmm_add_final_kfree
-:48: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 27 lines checked
ef1bda2bfa8d drm/ingenic: Use drmm_add_final_kfree
-:43: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 25 lines checked
32df587f2129 drm/gm12u320: Use drmm_add_final_kfree
-:39: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 21 lines checked
635a5f2aef57 drm/<drivers>: Use drmm_add_final_kfree
-:76: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 42 lines checked
64c058a60eeb drm: Cleanups after drmm_add_final_kfree rollout
-:48: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
3610ca3981a7 drm: Handle dev->unique with drmm_
-:71: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#71: FILE: include/drm/drm_managed.h:27:
 }
+char *drmm_kstrdup(struct drm_device *dev, const char *s, gfp_t gfp);

-:74: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 1 checks, 46 lines checked
25df60198485 drm: Use drmm_ for drm_dev_init cleanup
-:32: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#32: FILE: drivers/gpu/drm/drm_drv.c:591:
+	 * enabled. Slightly awkward, but can't really be helped. */

-:104: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 81 lines checked
df3a798e77be drm: manage drm_minor cleanup with drmm_
-:219: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 179 lines checked
624214a11b88 drm: Manage drm_gem_init with drmm_
-:105: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 75 lines checked
40c88d55104d drm: Manage drm_vblank_cleanup with drmm_
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
442520c06e95 drm: Garbage collect drm_dev_fini
-:13: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:16: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:272: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 3 warnings, 0 checks, 179 lines checked
97017c3d3b89 drm: Manage drm_mode_config_init with drmm_
-:221: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#221: FILE: include/drm/drm_mode_config.h:936:
+ * ^Iinitialization$

-:237: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 157 lines checked
4b0a472b4c70 drm/bochs: Remove leftover drm_atomic_helper_shutdown
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 81da8c3b8d3d ("drm/bochs: add drm_driver.release callback.")'
#8: 
commit 81da8c3b8d3df6f05b11300b7d17ccd1f3017fab

-:30: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 1 errors, 1 warnings, 0 checks, 6 lines checked
61d4b5e28677 drm/bochs: Drop explicit drm_mode_config_cleanup
-:11: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#11: 
This is made possible by a preceeding patch which added a drmm_

-:99: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 47 lines checked
c276d6303fc6 drm/cirrus: Drop explicit drm_mode_config_cleanup call
-:11: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#11: 
This is made possible by a preceeding patch which added a drmm_

-:29: WARNING:BAD_SIGN_OFF: Duplicate signature
#29: 
Cc: Sam Ravnborg <sam@ravnborg.org>

-:30: WARNING:BAD_SIGN_OFF: Duplicate signature
#30: 
Cc: Thomas Zimmermann <tzimmermann@suse.de>

-:33: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:36: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:99: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 6 warnings, 0 checks, 58 lines checked
f116ed0edc8a drm/cirrus: Fully embrace devm_
-:10: WARNING:TYPO_SPELLING: 'releated' may be misspelled - perhaps 'related'?
#10: 
anymore to use devm_ for everything hw releated. Do it, and in the

-:22: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:25: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:121: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 4 warnings, 0 checks, 93 lines checked
2879abe6bd06 drm/ingenic: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:59: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 29 lines checked
82a25112b68a drm/mcde: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:89: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 57 lines checked
6b64cde8d542 drm/mcde: More devm_drm_dev_init
-:61: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 37 lines checked
b52b8ed118f4 drm/meson: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:52: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 17 lines checked
f1f253097907 drm/pl111: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:71: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 38 lines checked
e3c1e62a1b2a drm/rcar-du: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:25: WARNING:BAD_SIGN_OFF: Duplicate signature
#25: 
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

-:55: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 3 warnings, 0 checks, 17 lines checked
f5d0537b280d drm/rockchip: Drop explicit drm_mode_config_cleanup call
-:12: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#12: 
This is made possible by a preceeding patch which added a drmm_

-:87: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 42 lines checked
968ab14c5fb0 drm/stm: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:75: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 34 lines checked
4fc9513bc1aa drm/shmob: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:25: WARNING:BAD_SIGN_OFF: Duplicate signature
#25: 
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

-:65: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 3 warnings, 0 checks, 26 lines checked
1d303f706791 drm/mtk: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:65: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 33 lines checked
733f1da62e1c drm/tidss: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:110: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 55 lines checked
f4b7f65317d6 drm/gm12u320: More drmm_
-:81: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 50 lines checked
a7ec4684c8d7 drm/gm12u320: Use devm_drm_dev_init
-:89: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 65 lines checked
231ede3a34ad drm/gm12u320: Use helpers for shutdown/suspend/resume
-:9: WARNING:TYPO_SPELLING: 'implemenation' may be misspelled - perhaps 'implementation'?
#9: 
Also there's a race in the disconnect implemenation. First shut

-:85: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 56 lines checked
417ecbb4a7fd drm/gm12u320: Simplify upload work
-:160: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#160: FILE: drivers/gpu/drm/tiny/gm12u320.c:360:
+		ret = usb_bulk_msg(gm12u320->udev,
+			usb_sndbulkpipe(gm12u320->udev, DATA_SND_EPT),

-:191: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#191: FILE: drivers/gpu/drm/tiny/gm12u320.c:378:
+	ret = usb_bulk_msg(gm12u320->udev,
+		usb_sndbulkpipe(gm12u320->udev, DATA_SND_EPT),

-:198: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#198: FILE: drivers/gpu/drm/tiny/gm12u320.c:385:
+	ret = usb_bulk_msg(gm12u320->udev,
+		usb_rcvbulkpipe(gm12u320->udev, DATA_RCV_EPT),

-:307: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 3 checks, 256 lines checked
c3e372063ec2 drm/repaper: Drop explicit drm_mode_config_cleanup call
-:11: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#11: 
This is made possible by a preceeding patch which added a drmm_

-:65: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 30 lines checked
5dd3048786b4 drm/mipi-dbi: Move drm_mode_config_init into mipi library
-:134: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 66 lines checked
8a9ebb524b11 drm/mipi-dbi: Drop explicit drm_mode_config_cleanup call
-:12: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
