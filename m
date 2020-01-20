Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1842142841
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 11:33:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C44996E8AE;
	Mon, 20 Jan 2020 10:33:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 404F46E0DF;
 Mon, 20 Jan 2020 10:33:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35C4DA011C;
 Mon, 20 Jan 2020 10:33:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yannick FERTRE" <yannick.fertre@st.com>
Date: Mon, 20 Jan 2020 10:33:17 -0000
Message-ID: <157951639719.680.3953505236526941546@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200120082314.14756-1-tzimmermann@suse.de>
In-Reply-To: <20200120082314.14756-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Clean_up_VBLANK_callbacks_in_struct_drm=5Fdriver_=28?=
 =?utf-8?q?rev8=29?=
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

Series: drm: Clean up VBLANK callbacks in struct drm_driver (rev8)
URL   : https://patchwork.freedesktop.org/series/71873/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9ff81bf712fd drm: Remove internal setup of struct drm_device.vblank_disable_immediate
c83894778e46 drm: Add get_scanout_position() to struct drm_crtc_helper_funcs
-:83: WARNING:LONG_LINE: line over 100 characters
#83: FILE: drivers/gpu/drm/drm_vblank.c:616:
+								    crtc->helper_private->get_scanout_position,

-:84: WARNING:LONG_LINE: line over 100 characters
#84: FILE: drivers/gpu/drm/drm_vblank.c:617:
+								    dev->driver->get_scanout_position);

-:125: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#125: FILE: drivers/gpu/drm/drm_vblank.c:658:
+drm_crtc_vblank_helper_get_vblank_timestamp_internal(

-:299: WARNING:LONG_LINE: line over 100 characters
#299: FILE: include/drm/drm_vblank.h:260:
+						     drm_vblank_get_scanout_position_func get_scanout_position,

-:300: WARNING:LONG_LINE: line over 100 characters
#300: FILE: include/drm/drm_vblank.h:261:
+						     drm_vblank_get_scanout_position_legacy_func get_scanout_position_legacy);

total: 0 errors, 4 warnings, 1 checks, 241 lines checked
5be5473c0489 drm: Add get_vblank_timestamp() to struct drm_crtc_funcs
-:104: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#104: FILE: drivers/gpu/drm/drm_vblank.c:816:
+	return drm_crtc_vblank_helper_get_vblank_timestamp_internal(

total: 0 errors, 0 warnings, 1 checks, 242 lines checked
415b65185cc9 drm/amdgpu: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
-:23: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#23: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:929:
+bool amdgpu_crtc_get_scanout_position(struct drm_crtc *crtc,
+			bool in_vblank_irq, int *vpos,

-:71: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#71: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_mode.h:616:
+bool amdgpu_crtc_get_scanout_position(struct drm_crtc *crtc,
+			bool in_vblank_irq, int *vpos,

total: 0 errors, 0 warnings, 2 checks, 93 lines checked
62238b52f5ad drm/amdgpu: Convert to CRTC VBLANK callbacks
58dd8e07443b drm/gma500: Convert to CRTC VBLANK callbacks
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
09f7b2308ef5 drm/i915: Convert to CRTC VBLANK callbacks
-:136: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#136: FILE: drivers/gpu/drm/i915/i915_irq.c:887:
+	return drm_crtc_vblank_helper_get_vblank_timestamp_internal(

total: 0 errors, 0 warnings, 1 checks, 104 lines checked
42922e924da6 drm/nouveau: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
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
609bd5e15846 drm/nouveau: Convert to CRTC VBLANK callbacks
-:95: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct drm_crtc *' should also have an identifier name
#95: FILE: drivers/gpu/drm/nouveau/nouveau_display.h:64:
+int  nouveau_display_vblank_enable(struct drm_crtc *);

-:96: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct drm_crtc *' should also have an identifier name
#96: FILE: drivers/gpu/drm/nouveau/nouveau_display.h:65:
+void nouveau_display_vblank_disable(struct drm_crtc *);

total: 0 errors, 2 warnings, 0 checks, 77 lines checked
97ac4623f4db drm/radeon: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
-:97: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#97: FILE: drivers/gpu/drm/radeon/radeon_mode.h:884:
+extern bool radeon_get_crtc_scanout_position(struct drm_crtc *crtc,

total: 0 errors, 0 warnings, 1 checks, 67 lines checked
5126874a465c drm/radeon: Convert to CRTC VBLANK callbacks
-:21: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#21: FILE: drivers/gpu/drm/radeon/radeon_display.c:49:
+int radeon_enable_vblank_kms(struct drm_crtc *crtc);

-:22: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#22: FILE: drivers/gpu/drm/radeon/radeon_display.c:50:
+void radeon_disable_vblank_kms(struct drm_crtc *crtc);

total: 0 errors, 2 warnings, 0 checks, 133 lines checked
a2a551836901 drm/msm: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
-:43: CHECK:LINE_SPACING: Please don't use multiple blank lines
#43: FILE: drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c:430:
+
+

total: 0 errors, 0 warnings, 1 checks, 152 lines checked
582c54684002 drm/msm: Convert to CRTC VBLANK callbacks
a9016521a16d drm/stm: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
84b4fc193aa2 drm/stm: Convert to CRTC VBLANK callbacks
df86ce675e2a drm/sti: Convert to CRTC VBLANK callbacks
578cb860b55c drm/vc4: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
05e2648135b8 drm/vc4: Convert to CRTC VBLANK callbacks
8f7b89e2e7f0 drm/vkms: Convert to CRTC VBLANK callbacks
1d5b01bc601e drm/vmwgfx: Convert to CRTC VBLANK callbacks
637a859efe2f drm: Clean-up VBLANK-related callbacks in struct drm_driver
ea9e1d01e898 drm: Remove legacy version of get_scanout_position()
-:113: WARNING:LONG_LINE: line over 100 characters
#113: FILE: include/drm/drm_vblank.h:253:
+						     drm_vblank_get_scanout_position_func get_scanout_position);

total: 0 errors, 1 warnings, 0 checks, 86 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
