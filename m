Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE222970C5
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 15:40:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DBD26F888;
	Fri, 23 Oct 2020 13:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 90C586F888;
 Fri, 23 Oct 2020 13:39:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8592FA47EA;
 Fri, 23 Oct 2020 13:39:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 23 Oct 2020 13:39:59 -0000
Message-ID: <160346039951.1406.11541356593709798889@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201023122811.2374118-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20201023122811.2374118-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/5=5D_drm/radeon=3A_Stop_changing_?=
 =?utf-8?q?the_drm=5Fdriver_struct?=
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

Series: series starting with [1/5] drm/radeon: Stop changing the drm_driver struct
URL   : https://patchwork.freedesktop.org/series/82993/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
56ad54cc20b8 drm/radeon: Stop changing the drm_driver struct
-:60: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#60: FILE: drivers/gpu/drm/radeon/radeon_drv.c:587:
+	DRM_IOCTL_DEF_DRV(RADEON_CP_INIT, drm_invalid_op, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	                                                          ^

-:60: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#60: FILE: drivers/gpu/drm/radeon/radeon_drv.c:587:
+	DRM_IOCTL_DEF_DRV(RADEON_CP_INIT, drm_invalid_op, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	                                                                     ^

-:61: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#61: FILE: drivers/gpu/drm/radeon/radeon_drv.c:588:
+	DRM_IOCTL_DEF_DRV(RADEON_CP_START, drm_invalid_op, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	                                                           ^

-:61: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#61: FILE: drivers/gpu/drm/radeon/radeon_drv.c:588:
+	DRM_IOCTL_DEF_DRV(RADEON_CP_START, drm_invalid_op, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	                                                                      ^

-:62: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#62: FILE: drivers/gpu/drm/radeon/radeon_drv.c:589:
+	DRM_IOCTL_DEF_DRV(RADEON_CP_STOP, drm_invalid_op, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	                                                          ^

-:62: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#62: FILE: drivers/gpu/drm/radeon/radeon_drv.c:589:
+	DRM_IOCTL_DEF_DRV(RADEON_CP_STOP, drm_invalid_op, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	                                                                     ^

-:63: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#63: FILE: drivers/gpu/drm/radeon/radeon_drv.c:590:
+	DRM_IOCTL_DEF_DRV(RADEON_CP_RESET, drm_invalid_op, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	                                                           ^

-:63: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#63: FILE: drivers/gpu/drm/radeon/radeon_drv.c:590:
+	DRM_IOCTL_DEF_DRV(RADEON_CP_RESET, drm_invalid_op, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	                                                                      ^

-:74: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#74: FILE: drivers/gpu/drm/radeon/radeon_drv.c:601:
+	DRM_IOCTL_DEF_DRV(RADEON_INDIRECT, drm_invalid_op, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	                                                           ^

-:74: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#74: FILE: drivers/gpu/drm/radeon/radeon_drv.c:601:
+	DRM_IOCTL_DEF_DRV(RADEON_INDIRECT, drm_invalid_op, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	                                                                      ^

-:81: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#81: FILE: drivers/gpu/drm/radeon/radeon_drv.c:608:
+	DRM_IOCTL_DEF_DRV(RADEON_INIT_HEAP, drm_invalid_op, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	                                                            ^

-:81: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#81: FILE: drivers/gpu/drm/radeon/radeon_drv.c:608:
+	DRM_IOCTL_DEF_DRV(RADEON_INIT_HEAP, drm_invalid_op, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	                                                                       ^

-:88: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#88: FILE: drivers/gpu/drm/radeon/radeon_drv.c:615:
+	DRM_IOCTL_DEF_DRV(RADEON_GEM_INFO, radeon_gem_info_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
 	                                                                  ^

-:89: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#89: FILE: drivers/gpu/drm/radeon/radeon_drv.c:616:
+	DRM_IOCTL_DEF_DRV(RADEON_GEM_CREATE, radeon_gem_create_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
 	                                                                      ^

-:90: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#90: FILE: drivers/gpu/drm/radeon/radeon_drv.c:617:
+	DRM_IOCTL_DEF_DRV(RADEON_GEM_MMAP, radeon_gem_mmap_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
 	                                                                  ^

-:91: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#91: FILE: drivers/gpu/drm/radeon/radeon_drv.c:618:
+	DRM_IOCTL_DEF_DRV(RADEON_GEM_SET_DOMAIN, radeon_gem_set_domain_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),

-:91: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#91: FILE: drivers/gpu/drm/radeon/radeon_drv.c:618:
+	DRM_IOCTL_DEF_DRV(RADEON_GEM_SET_DOMAIN, radeon_gem_set_domain_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
 	                                                                              ^

-:94: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#94: FILE: drivers/gpu/drm/radeon/radeon_drv.c:621:
+	DRM_IOCTL_DEF_DRV(RADEON_GEM_WAIT_IDLE, radeon_gem_wait_idle_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),

-:94: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#94: FILE: drivers/gpu/drm/radeon/radeon_drv.c:621:
+	DRM_IOCTL_DEF_DRV(RADEON_GEM_WAIT_IDLE, radeon_gem_wait_idle_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
 	                                                                            ^

-:95: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#95: FILE: drivers/gpu/drm/radeon/radeon_drv.c:622:
+	DRM_IOCTL_DEF_DRV(RADEON_CS, radeon_cs_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
 	                                                      ^

-:96: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#96: FILE: drivers/gpu/drm/radeon/radeon_drv.c:623:
+	DRM_IOCTL_DEF_DRV(RADEON_INFO, radeon_info_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
 	                                                          ^

-:97: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#97: FILE: drivers/gpu/drm/radeon/radeon_drv.c:624:
+	DRM_IOCTL_DEF_DRV(RADEON_GEM_SET_TILING, radeon_gem_set_tiling_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),

-:97: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#97: FILE: drivers/gpu/drm/radeon/radeon_drv.c:624:
+	DRM_IOCTL_DEF_DRV(RADEON_GEM_SET_TILING, radeon_gem_set_tiling_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
 	                                                                              ^

-:98: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#98: FILE: drivers/gpu/drm/radeon/radeon_drv.c:625:
+	DRM_IOCTL_DEF_DRV(RADEON_GEM_GET_TILING, radeon_gem_get_tiling_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),

-:98: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#98: FILE: drivers/gpu/drm/radeon/radeon_drv.c:625:
+	DRM_IOCTL_DEF_DRV(RADEON_GEM_GET_TILING, radeon_gem_get_tiling_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
 	                                                                              ^

-:99: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#99: FILE: drivers/gpu/drm/radeon/radeon_drv.c:626:
+	DRM_IOCTL_DEF_DRV(RADEON_GEM_BUSY, radeon_gem_busy_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
 	                                                                  ^

-:100: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#100: FILE: drivers/gpu/drm/radeon/radeon_drv.c:627:
+	DRM_IOCTL_DEF_DRV(RADEON_GEM_VA, radeon_gem_va_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
 	                                                              ^

-:101: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#101: FILE: drivers/gpu/drm/radeon/radeon_drv.c:628:
+	DRM_IOCTL_DEF_DRV(RADEON_GEM_OP, radeon_gem_op_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
 	                                                              ^

-:102: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#102: FILE: drivers/gpu/drm/radeon/radeon_drv.c:629:
+	DRM_IOCTL_DEF_DRV(RADEON_GEM_USERPTR, radeon_gem_userptr_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
 	                                                                        ^

total: 0 errors, 4 warnings, 25 checks, 157 lines checked
4d5fcb372a4a drm: Compile out legacy chunks from struct drm_device
-:49: WARNING:BRACES: braces {} are not necessary for single statement blocks
#49: FILE: drivers/gpu/drm/drm_vblank.c:214:
+	else if (dev->driver->get_vblank_counter) {
 		return dev->driver->get_vblank_counter(dev, pipe);
 	}

-:63: WARNING:BRACES: braces {} are not necessary for single statement blocks
#63: FILE: drivers/gpu/drm/drm_vblank.c:437:
+	else {
 		dev->driver->disable_vblank(dev, pipe);
 	}

-:63: CHECK:BRACES: Unbalanced braces around else statement
#63: FILE: drivers/gpu/drm/drm_vblank.c:437:
+	else {

-:77: WARNING:BRACES: braces {} are not necessary for single statement blocks
#77: FILE: drivers/gpu/drm/drm_vblank.c:1107:
+	else if (dev->driver->enable_vblank) {
 		return dev->driver->enable_vblank(dev, pipe);
 	}

total: 0 errors, 3 warnings, 1 checks, 64 lines checked
e83b0c263080 drm/amdgpu: Paper over the drm_driver mangling for virt
6049eee13ae9 drm: Allow const struct drm_driver
-:37: CHECK:SPACING: No space is necessary after a cast
#37: FILE: drivers/gpu/drm/drm_drv.c:593:
+	dev->driver = (struct drm_driver *) driver;

total: 0 errors, 0 warnings, 1 checks, 80 lines checked
81dc6fc9de5a drm/<drivers>: Constify struct drm_driver
-:694: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:697: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

total: 0 errors, 2 warnings, 0 checks, 619 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
