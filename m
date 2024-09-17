Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B8097B32E
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:56:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F74610E4C8;
	Tue, 17 Sep 2024 16:56:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DC8710E4C9;
 Tue, 17 Sep 2024 16:56:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915_=26_drm/xe?=
 =?utf-8?q?=3A_kill_off_-Ddrm=5Fi915=5Fgem=5Fobject=3Dxe=5Fbo?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2024 16:56:52 -0000
Message-ID: <172659221224.1022843.1605295989897785660@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1726589119.git.jani.nikula@intel.com>
In-Reply-To: <cover.1726589119.git.jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915 & drm/xe: kill off -Ddrm_i915_gem_object=xe_bo
URL   : https://patchwork.freedesktop.org/series/138774/
State : warning

== Summary ==

Error: dim checkpatch failed
63c8a90376b6 drm/i915/display: start a buffer object abstraction layer
-:57: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#57: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 92 lines checked
a1d3cbc653c7 drm/i915/display: convert intel_atomic_plane.c to struct drm_gem_object
0f5ce38f170c drm/i915/fb: convert parts of intel_fb.c to struct drm_gem_object
4dde4e3f7cf9 drm/i915/fbdev: convert intel_fbdev.c to struct drm_gem_object
3573196bf801 drm/i915/display: convert skl_universal_plane.c to struct drm_gem_object
a54dfb5ffac3 drm/i915/fb: convert intel_framebuffer_init() to struct drm_gem_object
68d292da78b1 drm/i915/fb: convert intel_fb_bo_lookup_valid_bo() to struct drm_gem_object
e5cfc9b4875e drm/i915/fb: convert intel_fb_bo_framebuffer_init() to struct drm_i915_gem_object
044809a703b2 drm/i915/fb: convert intel_fb_bo_framebuffer_fini() to struct drm_i915_gem_object
-:85: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#85: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 48 lines checked
2940f25b19d2 drm/xe/display: use correct bo type in intel_fbdev_fb_alloc()
4950c3816b4a drm/i915/fb: convert intel_framebuffer_create() to struct drm_gem_object
84291a6dde3c drm/xe/display: stop using intel_fb_obj() in xe_fb_pin.c
ebb7af216257 drm/i915/display: add intel_bo_read_from_page() and use it
822935682320 drm/i915/display: add intel_bo_get/set_frontbuffer() and use them
69ea9741ddbc drm/i915/frontbuffer: convert intel_frontbuffer_get() to struct drm_gem_object
ccf7613fd7ea drm/i915/frontbuffer: convert frontbuffer->obj to struct drm_gem_object
ce57e8e326c7 drm/i915/display: add intel_bo_describe() and use it
-:87: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#87: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 63 lines checked
9aad571eeed7 drm/i915/fb: remove intel_fb_obj()
5a6a0060ffc7 drm/i915/display: clean up some gem/ includes
48dc500ade97 drm/xe/compat: remove a bunch of compat gem headers
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 0 lines checked
5555716418a2 drm/xe: remove a number of superfluous compat macros
f9199ae069e0 drm/xe: eradicate -Ddrm_i915_gem_object=xe_bo


