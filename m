Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD19C349EB6
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 02:31:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96DFE6EE9E;
	Fri, 26 Mar 2021 01:31:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 959C16EE9D;
 Fri, 26 Mar 2021 01:31:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8DF44A8830;
 Fri, 26 Mar 2021 01:31:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 26 Mar 2021 01:31:33 -0000
Message-ID: <161672229355.10685.5337883728603118104@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210325214808.2071517-1-imre.deak@intel.com>
In-Reply-To: <20210325214808.2071517-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_support_for_FBs_requiring_a_POT_stride_padd?=
 =?utf-8?q?ing_=28rev2=29?=
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

Series: drm/i915: Add support for FBs requiring a POT stride padding (rev2)
URL   : https://patchwork.freedesktop.org/series/87859/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b96999775f53 drm/i915: Fix rotation setup during plane HW readout
839db6023edd drm/i915/selftest: Fix error handling in igt_vma_remapped_gtt()
882e8bffda0a drm/i915/selftest: Fix debug message in igt_vma_remapped_gtt()
216d1439b4d6 drm/i915: Make sure i915_ggtt_view is inited when creating an FB
fc86089318ab drm/i915/selftest: Make sure to init i915_ggtt_view in igt_vma_rotate_remap()
375f0a62f577 drm/i915/intel_fb: Pull FB plane functions from intel_display_types.h
-:78: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#78: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
07af54575ea2 drm/i915/intel_fb: Pull FB plane functions from skl_universal_plane.c
0bb703ff29fe drm/i915/intel_fb: Pull is_surface_linear() from intel_display.c/skl_universal_plane.c
577959d8fc0b drm/i915/intel_fb: Pull FB plane functions from intel_sprite.c
75c769f06db9 drm/i915/intel_fb: Pull FB plane functions from intel_display.c
-:1341: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1341: FILE: drivers/gpu/drm/i915/display/intel_fb.c:435:
+		drm_dbg_kms(&i915->drm,
+			      "Bad CCS x/y (main %d,%d ccs %d,%d) full (main %d,%d ccs %d,%d)\n",

total: 0 errors, 0 warnings, 1 checks, 1780 lines checked
805971e3be7a drm/i915/intel_fb: Unexport intel_fb_check_stride()
17ff50f84603 drm/i915/intel_fb: s/dev_priv/i915/
4d810e6cea9d drm/i915/intel_fb: Factor out convert_plane_offset_to_xy()
-:67: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#67: FILE: drivers/gpu/drm/i915/display/intel_fb.c:551:
+	    (*x + plane_width) * fb->base.format->cpp[color_plane] > fb->base.pitches[color_plane]) {

total: 0 errors, 1 warnings, 0 checks, 92 lines checked
d2627b052235 drm/i915/intel_fb: Factor out calc_plane_aligned_offset()
-:25: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#25: FILE: drivers/gpu/drm/i915/display/intel_fb.c:561:
+static u32 calc_plane_aligned_offset(const struct intel_framebuffer *fb, int color_plane, int *x, int *y)

total: 0 errors, 1 warnings, 0 checks, 43 lines checked
69a2c13f45f1 drm/i915/intel_fb: Factor out calc_plane_normal_size()
-:22: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#22: 
- Add back the +1 tile adjustment for x!=0 in calc_plane_normal_size(). (Ville)

total: 0 errors, 1 warnings, 0 checks, 132 lines checked
6bdf1a98f034 drm/i915: Unify the FB and plane state view information into one struct
9d7a5bf9a603 drm/i915: Store the normal view FB pitch in FB's intel_fb_view
-:11: WARNING:TYPO_SPELLING: 'retrive' may be misspelled - perhaps 'retrieve'?
#11: 
it during FB creation to the FB normal view struct and retrive it from
                                                       ^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
8f2daa82f5c6 drm/i915: Simplify copying the FB view state to the plane state
-:65: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#65: FILE: drivers/gpu/drm/i915/display/intel_fb.c:487:
+static int intel_fb_pitch(const struct intel_framebuffer *fb, int color_plane, unsigned int rotation)

total: 0 errors, 1 warnings, 0 checks, 182 lines checked
87513f08b16f drm/i915/intel_fb: Factor out calc_plane_remap_info()
-:198: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#198: FILE: drivers/gpu/drm/i915/display/intel_fb.c:769:
+								    offset, gtt_offset_rotated, x, y,

total: 0 errors, 1 warnings, 0 checks, 256 lines checked
f512c0321559 drm/i915: Shrink the size of intel_remapped_plane_info struct
-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'var' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/display/intel_fb.c:616:
+#define assign_chk_ovf(i915, var, val) ({ \
+	drm_WARN_ON(&(i915)->drm, overflows_type(val, var)); \
+	var = val; \
+})

-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/display/intel_fb.c:616:
+#define assign_chk_ovf(i915, var, val) ({ \
+	drm_WARN_ON(&(i915)->drm, overflows_type(val, var)); \
+	var = val; \
+})

total: 0 errors, 0 warnings, 2 checks, 62 lines checked
1246ab4e7f34 drm/i915/selftest: Unify use of intel_remapped_plane_info in igt_vma_rotate_remap()
-:61: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#61: FILE: drivers/gpu/drm/i915/selftests/i915_vma.c:549:
+					expected_pages = rotated_size(&plane_info[0], &plane_info[1]);

total: 0 errors, 1 warnings, 0 checks, 124 lines checked
1b14a1eea28c drm/i915: s/stride/src_stride/ in the intel_remapped_plane_info struct
-:37: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/display/intel_fb.c:636:
+	assign_chk_ovf(i915, remap_info->src_stride, plane_view_src_stride_tiles(fb, color_plane, dims));

total: 0 errors, 1 warnings, 0 checks, 181 lines checked
6c0b22fa513b drm/i915: Add support for FBs requiring a POT stride alignment
-:194: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#194: FILE: drivers/gpu/drm/i915/display/intel_fb.c:807:
+								     offset, gtt_offset_remapped, x, y,

total: 0 errors, 1 warnings, 0 checks, 333 lines checked
6cc2ddf9efdd drm/i915/selftest: Add remap/rotate vma subtests when dst_stride!=width/height
-:112: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#112: FILE: drivers/gpu/drm/i915/selftests/i915_vma.c:536:
 {
+

-:137: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#137: FILE: drivers/gpu/drm/i915/selftests/i915_vma.c:630:
+					expected_pages = remapped_size(view.type, &plane_info[0], &plane_info[1]);

-:178: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#178: FILE: drivers/gpu/drm/i915/selftests/i915_vma.c:1018:
+						offset = (x * plane_info[0].dst_stride + y) * PAGE_SIZE;

-:181: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#181: FILE: drivers/gpu/drm/i915/selftests/i915_vma.c:1020:
+						offset = (y * plane_info[0].dst_stride + x) * PAGE_SIZE;

total: 0 errors, 3 warnings, 1 checks, 157 lines checked
976ec37918b8 drm/i915: For-CI: Force remapping the FB with a POT aligned stride


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
