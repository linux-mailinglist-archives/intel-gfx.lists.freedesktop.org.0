Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 926B03B0B20
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 19:08:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCCC88929A;
	Tue, 22 Jun 2021 17:08:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 274A06E817;
 Tue, 22 Jun 2021 17:08:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1FFD1A882E;
 Tue, 22 Jun 2021 17:08:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 22 Jun 2021 17:08:25 -0000
Message-ID: <162438170512.30778.8525353108018555427@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_implicit_fencing/dma-resv_rules_for_shared_buffers?=
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

Series: implicit fencing/dma-resv rules for shared buffers
URL   : https://patchwork.freedesktop.org/series/91789/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fa13cbf232a0 dma-resv: Fix kerneldoc
-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 6edbd6abb783 ("dma-buf: rename and cleanup dma_resv_get_excl v3")'
#11: 
commit 6edbd6abb783d54f6ac4c3ed5cd9e50cff6c15e9

-:35: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 8 lines checked
d3ab5dc6443a dma-buf: Switch to inline kerneldoc
-:94: WARNING:TYPO_SPELLING: 'superseeded' may be misspelled - perhaps 'superseded'?
#94: FILE: include/linux/dma-buf.h:335:
+	 * vmap/unmap. Note that in many cases this is superseeded by
 	                                               ^^^^^^^^^^^

-:175: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 142 lines checked
0589bfb59341 dma-buf: Document dma-buf implicit fencing/resv fencing rules
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
https://dri.freedesktop.org/docs/drm/driver-api/dma-buf.html#reservation-objects

-:140: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 049aca4363d8 ("drm/amdgpu: fix using shared fence for exported BOs v2")'
#140: 
commit 049aca4363d8af87cab8d53de5401602db3b9999

-:155: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 9b495a588799 ("dma-buf: add poll support, v3")'
#155: 
	commit 9b495a5887994a6d74d5c261d012083a92b94738

-:183: WARNING:REPEATED_WORD: Possible repeated word: 'to'
#183: 
  writes, and a per-bo flag to to skip implicit fencing in the CS

-:200: WARNING:TYPO_SPELLING: 'wont' may be misspelled - perhaps 'won't'?
#200: 
  wont notice the perf impact. I think we can ignore LTS distros who
  ^^^^

-:233: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 8c505bdc9c8b ("drm/amdgpu: rework dma_resv handling v3")'
#233: 
commit 8c505bdc9c8b955223b054e34a0be9c3d841cd20 (drm-misc/drm-misc-next)

-:313: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 3 errors, 4 warnings, 0 checks, 45 lines checked
2662cbf1df91 drm/panfrost: Shrink sched_lock
-:41: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
804e59e3e0f4 drm/panfrost: Use xarray and helpers for depedency tracking
-:254: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 197 lines checked
370f17f25d5e drm/panfrost: Fix implicit sync
-:49: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 11 lines checked
d7729f8bfaf7 drm/atomic-helper: make drm_gem_plane_helper_prepare_fb the default
-:87: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 44 lines checked
c761bfef9a8f drm/<driver>: drm_gem_plane_helper_prepare_fb is now the default
-:231: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 104 lines checked
a8e5d51acf68 drm/armada: Remove prepare/cleanup_fb hooks
-:88: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 57 lines checked
829aa12253aa drm/vram-helpers: Create DRM_GEM_VRAM_PLANE_HELPER_FUNCS
-:84: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 45 lines checked
07b7f877328f drm/omap: Follow implicit fencing in prepare_fb
-:33: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
c2d4255f903b drm/simple-helper: drm_gem_simple_display_pipe_prepare_fb as default
-:78: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 37 lines checked
2ac97cd30e0f drm/tiny: drm_gem_simple_display_pipe_prepare_fb is the default
-:203: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 98 lines checked
15977ff8b76f drm/gem: Tiny kernel clarification for drm_gem_fence_array_add
-:34: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 9 lines checked
76d518e4d7e7 RFC: drm/amdgpu: Implement a proper implicit fencing uapi
-:25: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 177ae09b5d69 ("drm/amdgpu: introduce AMDGPU_GEM_CREATE_EXPLICIT_SYNC v2")'
#25: 
commit 177ae09b5d699a5ebd1cafcee78889db968abf54

-:62: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#62: 
  https://lore.kernel.org/dri-devel/20210520190007.534046-4-jason@jlekstrand.net/

-:82: WARNING:TYPO_SPELLING: 'unecessary' may be misspelled - perhaps 'unnecessary'?
#82: 
fencing and remove all unecessary stall points due to them.
                       ^^^^^^^^^^

-:203: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#203: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c:1765:
+	DRM_IOCTL_DEF_DRV(AMDGPU_SETPARAM, amdgpu_setparam_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
 	                                                                  ^

-:240: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#240: FILE: include/uapi/drm/amdgpu_drm.h:75:
+#define DRM_IOCTL_AMDGPU_SETPARAM	DRM_IOW(DRM_COMMAND_BASE + DRM_AMDGPU_SETPARAM, struct drm_amdgpu_setparam)

-:258: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 4 warnings, 1 checks, 104 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
