Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBF52A02D9
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 11:29:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A8B56E11F;
	Fri, 30 Oct 2020 10:29:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9814D6E11F;
 Fri, 30 Oct 2020 10:29:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 90ADBA8832;
 Fri, 30 Oct 2020 10:29:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 30 Oct 2020 10:29:27 -0000
Message-ID: <160405376758.23388.5960255698061810786@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201030101104.2503-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20201030101104.2503-1-daniel.vetter@ffwll.ch>
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
URL   : https://patchwork.freedesktop.org/series/83262/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
db362a15426f drm/radeon: Stop changing the drm_driver struct
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
6b2c552fa04e drm: Compile out legacy chunks from struct drm_device
-:16: WARNING:BAD_SIGN_OFF: Non-standard signature: Review-by:
#16: 
Review-by: Thomas Zimmermann <tzimmermann@suse.de>

-:53: WARNING:BRACES: braces {} are not necessary for single statement blocks
#53: FILE: drivers/gpu/drm/drm_vblank.c:214:
+	else if (dev->driver->get_vblank_counter) {
 		return dev->driver->get_vblank_counter(dev, pipe);
 	}

-:67: WARNING:BRACES: braces {} are not necessary for single statement blocks
#67: FILE: drivers/gpu/drm/drm_vblank.c:437:
+	else {
 		dev->driver->disable_vblank(dev, pipe);
 	}

-:67: CHECK:BRACES: Unbalanced braces around else statement
#67: FILE: drivers/gpu/drm/drm_vblank.c:437:
+	else {

-:81: WARNING:BRACES: braces {} are not necessary for single statement blocks
#81: FILE: drivers/gpu/drm/drm_vblank.c:1107:
+	else if (dev->driver->enable_vblank) {
 		return dev->driver->enable_vblank(dev, pipe);
 	}

total: 0 errors, 4 warnings, 1 checks, 64 lines checked
a6a6d4e681a7 drm/amdgpu: Paper over the drm_driver mangling for virt
bad424c02616 drm: Allow const struct drm_driver
ef249d5af7ed drm/<drivers>: Constify struct drm_driver
-:706: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:709: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

total: 0 errors, 2 warnings, 0 checks, 619 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
