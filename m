Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFB2136A13
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 10:40:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08BE989DFD;
	Fri, 10 Jan 2020 09:40:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CBB1F894FF;
 Fri, 10 Jan 2020 09:40:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AEF83A00FD;
 Fri, 10 Jan 2020 09:40:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Fri, 10 Jan 2020 09:40:04 -0000
Message-ID: <157864920468.30836.5641220054377274942@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200110092127.27847-1-tzimmermann@suse.de>
In-Reply-To: <20200110092127.27847-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Clean_up_VBLANK_callbacks_in_struct_drm=5Fdriver?=
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

Series: drm: Clean up VBLANK callbacks in struct drm_driver
URL   : https://patchwork.freedesktop.org/series/71873/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
30f2cd6c8fad drm: Add get_scanout_position() to struct drm_crtc_helper_funcs
-:58: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#58: FILE: drivers/gpu/drm/drm_vblank.c:671:
+				crtc->helper_private->get_scanout_position(

-:63: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#63: FILE: drivers/gpu/drm/drm_vblank.c:676:
+				dev->driver->get_scanout_position(

total: 0 errors, 0 warnings, 2 checks, 114 lines checked
62a0fc25c2ed drm/amdgpu: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
-:23: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#23: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:919:
+bool amdgpu_crtc_get_scanout_position(struct drm_crtc *crtc,
+			bool in_vblank_irq, int *vpos,

-:71: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#71: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_mode.h:616:
+bool amdgpu_crtc_get_scanout_position(struct drm_crtc *crtc,
+			bool in_vblank_irq, int *vpos,

total: 0 errors, 0 warnings, 2 checks, 93 lines checked
daf9deab4b37 drm/i915: Don't use struct drm_driver.get_scanout_position()
-:135: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#135: FILE: drivers/gpu/drm/i915/i915_irq.c:958:
+			  pipe, duration_ns/1000, *max_error/1000, i);
 			                   ^

-:135: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#135: FILE: drivers/gpu/drm/i915/i915_irq.c:958:
+			  pipe, duration_ns/1000, *max_error/1000, i);
 			                                    ^

total: 0 errors, 0 warnings, 2 checks, 159 lines checked
cc4157b82402 drm/nouveau: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
-:75: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct drm_crtc *' should also have an identifier name
#75: FILE: drivers/gpu/drm/nouveau/nouveau_display.h:66:
+bool  nouveau_display_scanoutpos(struct drm_crtc *,

-:75: WARNING:FUNCTION_ARGUMENTS: function definition argument 'bool' should also have an identifier name
#75: FILE: drivers/gpu/drm/nouveau/nouveau_display.h:66:
+bool  nouveau_display_scanoutpos(struct drm_crtc *,

-:75: WARNING:FUNCTION_ARGUMENTS: function definition argument 'int *' should also have an identifier name
#75: FILE: drivers/gpu/drm/nouveau/nouveau_display.h:66:
+bool  nouveau_display_scanoutpos(struct drm_crtc *,

-:75: WARNING:FUNCTION_ARGUMENTS: function definition argument 'int *' should also have an identifier name
#75: FILE: drivers/gpu/drm/nouveau/nouveau_display.h:66:
+bool  nouveau_display_scanoutpos(struct drm_crtc *,

-:75: WARNING:FUNCTION_ARGUMENTS: function definition argument 'ktime_t *' should also have an identifier name
#75: FILE: drivers/gpu/drm/nouveau/nouveau_display.h:66:
+bool  nouveau_display_scanoutpos(struct drm_crtc *,

-:75: WARNING:FUNCTION_ARGUMENTS: function definition argument 'ktime_t *' should also have an identifier name
#75: FILE: drivers/gpu/drm/nouveau/nouveau_display.h:66:
+bool  nouveau_display_scanoutpos(struct drm_crtc *,

-:75: WARNING:FUNCTION_ARGUMENTS: function definition argument 'const struct drm_display_mode *' should also have an identifier name
#75: FILE: drivers/gpu/drm/nouveau/nouveau_display.h:66:
+bool  nouveau_display_scanoutpos(struct drm_crtc *,

total: 0 errors, 7 warnings, 0 checks, 53 lines checked
78fac3c06e60 drm/radeon: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
-:97: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#97: FILE: drivers/gpu/drm/radeon/radeon_mode.h:884:
+extern bool radeon_get_crtc_scanout_position(struct drm_crtc *crtc,

total: 0 errors, 0 warnings, 1 checks, 67 lines checked
7aa032e1e5eb drm/msm: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
-:43: CHECK:LINE_SPACING: Please don't use multiple blank lines
#43: FILE: drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c:430:
+
+

total: 0 errors, 0 warnings, 1 checks, 152 lines checked
450559e9416c drm/vc4: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
47676fe9e9da drm/stm: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
4fb79c555089 drm: Remove struct drm_driver.get_scanout_position()
-:33: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#33: FILE: drivers/gpu/drm/drm_vblank.c:668:
+		vbl_status = crtc->helper_private->get_scanout_position(

total: 0 errors, 0 warnings, 1 checks, 85 lines checked
cbfbe29f84f9 drm: Evaluate struct drm_device.vblank_disable_immediate on each use
115af48b3a62 drm: Add get_vblank_timestamp() to struct drm_crtc_funcs
-:105: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'max_error > 0'
#105: FILE: drivers/gpu/drm/drm_vblank.c:789:
+	if (crtc->funcs->get_vblank_timestamp && (max_error > 0)) {

total: 0 errors, 0 warnings, 1 checks, 203 lines checked
585dc3993334 drm/amdgpu: Convert to CRTC VBLANK callbacks
dbf1b08fc990 drm/gma500: Convert to CRTC VBLANK callbacks
-:57: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#57: FILE: drivers/gpu/drm/gma500/psb_drv.h:684:
+extern int psb_enable_vblank(struct drm_crtc *crtc);

-:58: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#58: FILE: drivers/gpu/drm/gma500/psb_drv.h:685:
+extern void psb_disable_vblank(struct drm_crtc *crtc);

-:66: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#66: FILE: drivers/gpu/drm/gma500/psb_drv.h:692:
+extern u32 psb_get_vblank_counter(struct drm_crtc *crtc);

total: 0 errors, 0 warnings, 3 checks, 104 lines checked
c7747dd915c1 drm/i915: Convert to CRTC VBLANK callbacks
9f3580b11e21 drm/msm: Convert to CRTC VBLANK callbacks
172a0bc8d942 drm/nouveau: Convert to CRTC VBLANK callbacks
-:95: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct drm_crtc *' should also have an identifier name
#95: FILE: drivers/gpu/drm/nouveau/nouveau_display.h:64:
+int  nouveau_display_vblank_enable(struct drm_crtc *);

-:96: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct drm_crtc *' should also have an identifier name
#96: FILE: drivers/gpu/drm/nouveau/nouveau_display.h:65:
+void nouveau_display_vblank_disable(struct drm_crtc *);

total: 0 errors, 2 warnings, 0 checks, 77 lines checked
a88d8ab0a3a3 drm/radeon: Convert to CRTC VBLANK callbacks
-:20: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#20: FILE: drivers/gpu/drm/radeon/radeon_display.c:49:
+int radeon_enable_vblank_kms(struct drm_crtc *crtc);

-:21: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#21: FILE: drivers/gpu/drm/radeon/radeon_display.c:50:
+void radeon_disable_vblank_kms(struct drm_crtc *crtc);

total: 0 errors, 2 warnings, 0 checks, 133 lines checked
086db47a9d9b drm/sti: Convert to CRTC VBLANK callbacks
525588523ac7 drm/stm: Convert to CRTC VBLANK callbacks
3cfb12b0e696 drm/vc4: Convert to CRTC VBLANK callbacks
903a2a016c51 drm/vkms: Convert to CRTC VBLANK callbacks
84acced102ba drm/vmwgfx: Convert to CRTC VBLANK callbacks
dadf262439d8 drm: Cleanup VBLANK callbacks in struct drm_driver
-:118: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "crtc->funcs->get_vblank_timestamp"
#118: FILE: drivers/gpu/drm/drm_vblank.c:1813:
+			       crtc->funcs->get_vblank_timestamp != NULL);

total: 0 errors, 0 warnings, 1 checks, 206 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
