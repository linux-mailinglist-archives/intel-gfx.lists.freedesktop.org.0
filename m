Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A6819224F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 09:15:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92BC56E58A;
	Wed, 25 Mar 2020 08:15:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 819206E57E;
 Wed, 25 Mar 2020 08:15:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70ACFA010F;
 Wed, 25 Mar 2020 08:15:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 25 Mar 2020 08:15:06 -0000
Message-ID: <158512410645.29633.10405698895643620215@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=5Fdevice_managed_resources_=28rev8=29?=
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

Series: drm_device managed resources (rev8)
URL   : https://patchwork.freedesktop.org/series/73633/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5c1fd37276a0 mm/sl[uo]b: export __kmalloc_track(_node)_caller
-:58: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
0db382972a08 drm/i915: Don't clear drvdata in ->release
-:20: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 0998d0631001 ("device-core: Ensure drvdata = NULL when no driver is bound")'
#20: 
commit 0998d0631001288a5974afc0b2a5f568bcdecb4d

-:45: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 1 errors, 1 warnings, 0 checks, 9 lines checked
c5829952b42a drm: add managed resources tied to drm_device
-:72: WARNING:TYPO_SPELLING: 'unecessary' may be misspelled - perhaps 'unnecessary'?
#72: 
v8: Remove unecessary {} around if else

-:74: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#74: 
v9: Use kstrdup_const, which requires kfree_const and introducing a free_dr()

-:85: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Neil Armstrong <narmstrong@baylibre.com'
#85: 
Cc: Neil Armstrong <narmstrong@baylibre.com

-:148: CHECK:BRACES: braces {} should be used on all arms of this statement
#148: FILE: drivers/gpu/drm/drm_drv.c:837:
+	if (!dev->driver->release && !dev->managed.final_kfree) {
[...]
-	}
[...]

-:153: WARNING:NEEDLESS_IF: kfree(NULL) is safe and this check is probably not required
#153: FILE: drivers/gpu/drm/drm_drv.c:841:
+	} else if (dev->managed.final_kfree)
+		kfree(dev->managed.final_kfree);

-:172: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#172: 
new file mode 100644

-:247: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#247: FILE: drivers/gpu/drm/drm_managed.c:71:
+static __always_inline struct drmres * alloc_dr(drmres_release_t release,

-:275: CHECK:SPACING: No space is necessary after a cast
#275: FILE: drivers/gpu/drm/drm_managed.c:99:
+		       dr, dr->node.name, (unsigned long) dr->node.size);

-:287: CHECK:SPACING: No space is necessary after a cast
#287: FILE: drivers/gpu/drm/drm_managed.c:111:
+		       dr, dr->node.name, (unsigned long) dr->node.size);

-:293: CHECK:SPACING: No space is necessary after a cast
#293: FILE: drivers/gpu/drm/drm_managed.c:117:
+	WARN_ON(dev < (struct drm_device *) container);

-:295: CHECK:SPACING: No space is necessary after a cast
#295: FILE: drivers/gpu/drm/drm_managed.c:119:
+		(struct drm_device *) (container + ksize(container)));

-:307: ERROR:POINTER_LOCATION: "(foo*)" should be "(foo *)"
#307: FILE: drivers/gpu/drm/drm_managed.c:131:
+	dr = alloc_dr(action, data ? sizeof(void*) : 0,

-:402: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'include/drm/drm_managed.h', please use '/*' instead
#402: FILE: include/drm/drm_managed.h:1:
+// SPDX-License-Identifier: GPL-2.0

-:402: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#402: FILE: include/drm/drm_managed.h:1:
+// SPDX-License-Identifier: GPL-2.0

-:455: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 3 errors, 7 warnings, 5 checks, 322 lines checked
e2a9e90fb1c7 drm: Set final_kfree in drm_dev_alloc
-:15: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 0a6659bdc5e8 ("drm/bochs: new driver")'
#15: 
commit 0a6659bdc5e8221da99eebb176fd9591435e38de

-:25: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit b1df3a2b24a9 ("drm/virtio: add drm_driver.release callback.")'
#25: 
commit b1df3a2b24a917f8853d43fe9683c0e360d2c33a

-:44: WARNING:BAD_SIGN_OFF: Duplicate signature
#44: 
Cc: Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>

-:45: WARNING:BAD_SIGN_OFF: Duplicate signature
#45: 
Cc: xen-devel@lists.xenproject.org

-:87: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 2 errors, 3 warnings, 0 checks, 29 lines checked
533466d6d0ad drm/mipi_dbi: Use drmm_add_final_kfree in all drivers
-:189: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 111 lines checked
1a69dd93ff0a drm/udl: Use drmm_add_final_kfree
-:63: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 27 lines checked
3c1e123eb046 drm/qxl: Use drmm_add_final_kfree
-:47: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
169c2c69d925 drm/i915: Use drmm_add_final_kfree
-:207: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 136 lines checked
fe66408e5fd3 drm/cirrus: Use drmm_add_final_kfree
-:28: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:31: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:75: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 3 warnings, 0 checks, 40 lines checked
ac75b8adf4be drm/v3d: Use drmm_add_final_kfree
-:122: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
985789a21bf7 drm/tidss: Use drmm_add_final_kfree
-:41: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
dd7421f43362 drm/mcde: Use drmm_add_final_kfree
-:39: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 21 lines checked
faca8d3cc32f drm/vgem: Use drmm_add_final_kfree
-:66: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 38 lines checked
9d3bf8891313 drm/vkms: Use drmm_add_final_kfree
-:87: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 61 lines checked
d41231272cba drm/repaper: Use drmm_add_final_kfree
-:49: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 27 lines checked
6c5bc69f860a drm/ingenic: Use drmm_add_final_kfree
-:44: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 25 lines checked
195eacb42788 drm/gm12u320: Use drmm_add_final_kfree
-:40: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 21 lines checked
5d7cf79a8549 drm/<drivers>: Use drmm_add_final_kfree
-:77: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 42 lines checked
09c19285280f drm: Cleanups after drmm_add_final_kfree rollout
-:67: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 39 lines checked
430dc60ad84d drm: Handle dev->unique with drmm_
-:73: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#73: FILE: include/drm/drm_managed.h:27:
 }
+char *drmm_kstrdup(struct drm_device *dev, const char *s, gfp_t gfp);

-:76: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 1 checks, 46 lines checked
5f3415797801 drm: Use drmm_ for drm_dev_init cleanup
-:33: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#33: FILE: drivers/gpu/drm/drm_drv.c:591:
+	 * enabled. Slightly awkward, but can't really be helped. */

-:105: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 81 lines checked
4968ba2846b2 drm: manage drm_minor cleanup with drmm_
-:207: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 160 lines checked
20465db66178 drm: Manage drm_gem_init with drmm_
-:106: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 75 lines checked
d0a27fe712ed drm: Manage drm_vblank_cleanup with drmm_
-:150: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#150: FILE: include/drm/drm_managed.h:35:
 }
+static inline void *drmm_kmalloc_array(struct drm_device *dev,

-:160: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#160: FILE: include/drm/drm_managed.h:45:
+}
+static inline void *drmm_kcalloc(struct drm_device *dev,

-:167: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 2 checks, 119 lines checked
4858cc4ba0e3 drm: Garbage collect drm_dev_fini
-:16: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:19: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:271: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 3 warnings, 0 checks, 175 lines checked
dff759c5a339 drm: Manage drm_mode_config_init with drmm_
-:164: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#164: FILE: drivers/gpu/drm/drm_mode_config.c:384:
+ * ^Iinitialization$

-:233: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 149 lines checked
2a1a6da02338 drm/bochs: Remove leftover drm_atomic_helper_shutdown
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 81da8c3b8d3d ("drm/bochs: add drm_driver.release callback.")'
#8: 
commit 81da8c3b8d3df6f05b11300b7d17ccd1f3017fab

-:31: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 1 errors, 1 warnings, 0 checks, 6 lines checked
1156334fc354 drm/bochs: Drop explicit drm_mode_config_cleanup
-:11: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#11: 
This is made possible by a preceeding patch which added a drmm_

-:101: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 47 lines checked
6511b2aa6617 drm/cirrus: Drop explicit drm_mode_config_cleanup call
-:11: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#11: 
This is made possible by a preceeding patch which added a drmm_

-:30: WARNING:BAD_SIGN_OFF: Duplicate signature
#30: 
Cc: Sam Ravnborg <sam@ravnborg.org>

-:31: WARNING:BAD_SIGN_OFF: Duplicate signature
#31: 
Cc: Thomas Zimmermann <tzimmermann@suse.de>

-:34: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:37: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:100: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 6 warnings, 0 checks, 58 lines checked
23dc60bf1d01 drm/cirrus: Fully embrace devm_
-:10: WARNING:TYPO_SPELLING: 'releated' may be misspelled - perhaps 'related'?
#10: 
anymore to use devm_ for everything hw releated. Do it, and in the

-:23: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:26: WARNING:OBSOLETE: drivers/gpu/drm/cirrus/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:122: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 4 warnings, 0 checks, 93 lines checked
e661300e8e74 drm/ingenic: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:60: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 29 lines checked
b284276ec6be drm/mcde: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:90: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 57 lines checked
90cc1dbe6df1 drm/mcde: More devm_drm_dev_init
-:61: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 37 lines checked
9d6ffea3634c drm/meson: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:52: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 17 lines checked
3031a702f3a4 drm/pl111: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:72: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 38 lines checked
5cb1ab78d0a3 drm/rcar-du: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:25: WARNING:BAD_SIGN_OFF: Duplicate signature
#25: 
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

-:55: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 3 warnings, 0 checks, 17 lines checked
ae8a792f81f0 drm/rockchip: Drop explicit drm_mode_config_cleanup call
-:12: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#12: 
This is made possible by a preceeding patch which added a drmm_

-:88: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 42 lines checked
81c677e3c2de drm/stm: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:76: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 34 lines checked
ef6c48afeaad drm/shmob: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:25: WARNING:BAD_SIGN_OFF: Duplicate signature
#25: 
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

-:65: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 3 warnings, 0 checks, 26 lines checked
2a6636367e37 drm/mtk: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:67: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 33 lines checked
c8348cd6090b drm/tidss: Drop explicit drm_mode_config_cleanup call
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
This is made possible by a preceeding patch which added a drmm_

-:110: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 55 lines checked
2a991f3e5988 drm/gm12u320: More drmm_
-:81: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 50 lines checked
5d8729b98c80 drm/gm12u320: Use devm_drm_dev_init
-:89: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 65 lines checked
3dcc6ec7d1d2 drm/gm12u320: Use helpers for shutdown/suspend/resume
-:9: WARNING:TYPO_SPELLING: 'implemenation' may be misspelled - perhaps 'implementation'?
#9: 
Also there's a race in the disconnect implemenation. First shut

-:85: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 56 lines checked
b7f4c804fea1 drm/gm12u320: Simplify upload work
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
5f5b2edee63a drm/repaper: Drop explicit drm_mode_config_cleanup call
-:11: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#11: 
This is made possible by a preceeding patch which added a drmm_

-:65: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 30 lines checked
a83a298090f6 drm/mipi-dbi: Move drm_mode_config_init into mipi library
-:134: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 66 lines checked
34437aa99da1 drm/mipi-dbi: Drop explicit drm_mode_config_cleanup call
-:12: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#12: 
This is made possible by a preceeding patch which added a drmm_

-:30: WARNING:BAD_SIGN_OFF: Duplicate signature
#30: 
Cc: Thomas Zimmermann <tzimmermann@suse.de>

-:37: WARNING:BAD_SIGN_OFF: Duplicate signature
#37: 
Cc: Sam Ravnborg <sam@ravnborg.org>

-:170: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 4 warnings, 0 checks, 86 lines checked
ef6c6b9d2e19 drm/udl: Drop explicit drm_mode_config_cleanup call
-:14: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#14: 
This is made possible by a preceeding patch which added a drmm_

-:31: WARNING:BAD_SIGN_OFF: Duplicate signature
#31: 
Cc: Thomas Zimmermann <tzimmermann@suse.de>

-:36: WARNING:BAD_SIGN_OFF: Duplicate signature
#36: 
Cc: Sam Ravnborg <sam@ravnborg.org>

-:110: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 4 warnings, 0 checks, 55 lines checked
a8d9478f18b2 drm/udl: drop drm_driver.release hook
-:94: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 32 lines checked
baa4dcb0aee2 drm: Add docs for managed resources
-:337: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 230 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
