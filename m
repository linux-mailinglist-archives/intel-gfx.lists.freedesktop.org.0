Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E51E413C195
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 13:48:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A5896E9BD;
	Wed, 15 Jan 2020 12:48:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D368F6E9B9;
 Wed, 15 Jan 2020 12:48:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C86D5A011A;
 Wed, 15 Jan 2020 12:48:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yannick FERTRE" <yannick.fertre@st.com>
Date: Wed, 15 Jan 2020 12:48:45 -0000
Message-ID: <157909252579.2007.6647545675225166482@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115121652.7050-1-tzimmermann@suse.de>
In-Reply-To: <20200115121652.7050-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Clean_up_VBLANK_callbacks_in_struct_drm=5Fdriver_=28?=
 =?utf-8?q?rev7=29?=
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

Series: drm: Clean up VBLANK callbacks in struct drm_driver (rev7)
URL   : https://patchwork.freedesktop.org/series/71873/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b5db489929e6 drm: Add get_scanout_position() to struct drm_crtc_helper_funcs
-:65: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#65: FILE: drivers/gpu/drm/drm_vblank.c:671:
+				crtc->helper_private->get_scanout_position(

-:70: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#70: FILE: drivers/gpu/drm/drm_vblank.c:676:
+				dev->driver->get_scanout_position(

total: 0 errors, 0 warnings, 2 checks, 114 lines checked
f69356546e68 drm: Evaluate struct drm_device.vblank_disable_immediate on each use
f092246f0d79 drm: Add get_vblank_timestamp() to struct drm_crtc_funcs
-:73: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'max_error > 0'
#73: FILE: drivers/gpu/drm/drm_vblank.c:755:
+	if (crtc->funcs->get_vblank_timestamp && (max_error > 0)) {

-:176: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#176: FILE: drivers/gpu/drm/drm_vblank.c:2084:
+drm_crtc_vblank_helper_get_vblank_timestamp_internal(

-:180: ERROR:CODE_INDENT: code indent should use tabs where possible
#180: FILE: drivers/gpu/drm/drm_vblank.c:2088:
+                                     bool in_vblank_irq, int *vpos, int *hpos,$

-:180: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#180: FILE: drivers/gpu/drm/drm_vblank.c:2088:
+	bool (*get_scanout_position)(struct drm_crtc *crtc,
+                                     bool in_vblank_irq, int *vpos, int *hpos,

-:180: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#180: FILE: drivers/gpu/drm/drm_vblank.c:2088:
+                                     bool in_vblank_irq, int *vpos, int *hpos,$

-:181: ERROR:CODE_INDENT: code indent should use tabs where possible
#181: FILE: drivers/gpu/drm/drm_vblank.c:2089:
+                                     ktime_t *stime, ktime_t *etime,$

-:181: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#181: FILE: drivers/gpu/drm/drm_vblank.c:2089:
+                                     ktime_t *stime, ktime_t *etime,$

-:182: ERROR:CODE_INDENT: code indent should use tabs where possible
#182: FILE: drivers/gpu/drm/drm_vblank.c:2090:
+                                     const struct drm_display_mode *mode))$

-:182: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#182: FILE: drivers/gpu/drm/drm_vblank.c:2090:
+                                     const struct drm_display_mode *mode))$

-:252: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#252: FILE: drivers/gpu/drm/drm_vblank.c:2160:
+			  pipe, duration_ns/1000, *max_error/1000, i);
 			                   ^

-:252: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#252: FILE: drivers/gpu/drm/drm_vblank.c:2160:
+			  pipe, duration_ns/1000, *max_error/1000, i);
 			                                    ^

-:322: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#322: FILE: drivers/gpu/drm/drm_vblank.c:2230:
+	return drm_crtc_vblank_helper_get_vblank_timestamp_internal(

-:450: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#450: FILE: include/drm/drm_vblank.h:247:
+drm_crtc_vblank_helper_get_vblank_timestamp_internal(

-:454: ERROR:CODE_INDENT: code indent should use tabs where possible
#454: FILE: include/drm/drm_vblank.h:251:
+                                     bool in_vblank_irq, int *vpos, int *hpos,$

-:454: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#454: FILE: include/drm/drm_vblank.h:251:
+	bool (*get_scanout_position)(struct drm_crtc *crtc,
+                                     bool in_vblank_irq, int *vpos, int *hpos,

-:454: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#454: FILE: include/drm/drm_vblank.h:251:
+                                     bool in_vblank_irq, int *vpos, int *hpos,$

-:455: ERROR:CODE_INDENT: code indent should use tabs where possible
#455: FILE: include/drm/drm_vblank.h:252:
+                                     ktime_t *stime, ktime_t *etime,$

-:455: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#455: FILE: include/drm/drm_vblank.h:252:
+                                     ktime_t *stime, ktime_t *etime,$

-:456: ERROR:CODE_INDENT: code indent should use tabs where possible
#456: FILE: include/drm/drm_vblank.h:253:
+                                     const struct drm_display_mode *mode));$

-:456: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#456: FILE: include/drm/drm_vblank.h:253:
+                                     const struct drm_display_mode *mode));$

total: 6 errors, 6 warnings, 8 checks, 412 lines checked
fa076645f81a drm/amdgpu: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
-:23: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#23: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:919:
+bool amdgpu_crtc_get_scanout_position(struct drm_crtc *crtc,
+			bool in_vblank_irq, int *vpos,

-:71: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#71: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_mode.h:616:
+bool amdgpu_crtc_get_scanout_position(struct drm_crtc *crtc,
+			bool in_vblank_irq, int *vpos,

total: 0 errors, 0 warnings, 2 checks, 93 lines checked
cd78a84d2d2a drm/amdgpu: Convert to CRTC VBLANK callbacks
93037221d20f drm/gma500: Convert to CRTC VBLANK callbacks
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
6973748c37f8 drm/i915: Convert to CRTC VBLANK callbacks
-:128: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#128: FILE: drivers/gpu/drm/i915/i915_irq.c:887:
+	return drm_crtc_vblank_helper_get_vblank_timestamp_internal(

total: 0 errors, 0 warnings, 1 checks, 104 lines checked
e07dbc1495a4 drm/nouveau: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
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
a6ce542fd47d drm/nouveau: Convert to CRTC VBLANK callbacks
-:95: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct drm_crtc *' should also have an identifier name
#95: FILE: drivers/gpu/drm/nouveau/nouveau_display.h:64:
+int  nouveau_display_vblank_enable(struct drm_crtc *);

-:96: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct drm_crtc *' should also have an identifier name
#96: FILE: drivers/gpu/drm/nouveau/nouveau_display.h:65:
+void nouveau_display_vblank_disable(struct drm_crtc *);

total: 0 errors, 2 warnings, 0 checks, 77 lines checked
1f6db288e0fa drm/radeon: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
-:97: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#97: FILE: drivers/gpu/drm/radeon/radeon_mode.h:884:
+extern bool radeon_get_crtc_scanout_position(struct drm_crtc *crtc,

total: 0 errors, 0 warnings, 1 checks, 67 lines checked
72b4efee8c65 drm/radeon: Convert to CRTC VBLANK callbacks
-:21: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#21: FILE: drivers/gpu/drm/radeon/radeon_display.c:49:
+int radeon_enable_vblank_kms(struct drm_crtc *crtc);

-:22: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#22: FILE: drivers/gpu/drm/radeon/radeon_display.c:50:
+void radeon_disable_vblank_kms(struct drm_crtc *crtc);

total: 0 errors, 2 warnings, 0 checks, 133 lines checked
966e9c656ca6 drm/msm: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
-:43: CHECK:LINE_SPACING: Please don't use multiple blank lines
#43: FILE: drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c:430:
+
+

total: 0 errors, 0 warnings, 1 checks, 152 lines checked
173cf84c27e3 drm/msm: Convert to CRTC VBLANK callbacks
30e9f7f1f87b drm/stm: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
d6dc7e620f0d drm/stm: Convert to CRTC VBLANK callbacks
704e97144a39 drm/sti: Convert to CRTC VBLANK callbacks
bdb33d490006 drm/vc4: Convert to struct drm_crtc_helper_funcs.get_scanout_position()
e952fa736e1b drm/vc4: Convert to CRTC VBLANK callbacks
b29321882b4f drm/vkms: Convert to CRTC VBLANK callbacks
61527d1c7a93 drm/vmwgfx: Convert to CRTC VBLANK callbacks
c52556e30792 drm: Clean-up VBLANK-related callbacks in struct drm_driver
-:296: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "crtc->funcs->get_vblank_timestamp"
#296: FILE: drivers/gpu/drm/drm_vblank.c:1624:
+			       crtc->funcs->get_vblank_timestamp != NULL);

total: 0 errors, 0 warnings, 1 checks, 429 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
