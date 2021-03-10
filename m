Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59289336822
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 00:53:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D1076E3BB;
	Wed, 10 Mar 2021 23:53:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 05EA46E3BB;
 Wed, 10 Mar 2021 23:53:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F2AAAA73C9;
 Wed, 10 Mar 2021 23:53:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 10 Mar 2021 23:53:26 -0000
Message-ID: <161542040696.2307.10537849734203146477@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210310221736.2963264-1-imre.deak@intel.com>
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_support_for_FBs_requiring_a_POT_stride_padd?=
 =?utf-8?q?ing?=
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

Series: drm/i915: Add support for FBs requiring a POT stride padding
URL   : https://patchwork.freedesktop.org/series/87859/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5ddacca7a473 drm/i915: Fix rotation setup during plane HW readout
40363381f9ec drm/i915/selftest: Fix error handling in igt_vma_remapped_gtt()
fed9a9cbe28d drm/i915/selftest: Fix debug message in igt_vma_remapped_gtt()
af24925ca495 drm/i915: Make sure i915_ggtt_view is inited when creating an FB
94b05922b150 drm/i915/selftest: Make sure to init i915_ggtt_view in igt_vma_rotate_remap()
f7eb68e1408a drm/i915: Remove duplicate intel_surf_alignment() declaration
ecd1e2ca8d81 drm/i915/intel_fb: Pull FB plane functions from intel_display_types.h
-:72: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#72: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
0a66f2a34ef0 drm/i915/intel_fb: Pull FB plane functions from skl_universal_plane.c
5f87fb70bbe6 drm/i915/intel_fb: Pull is_surface_linear() from intel_display.c/skl_universal_plane.c
2ccb0484ceae drm/i915/intel_fb: Pull FB plane functions from intel_sprite.c
ad92868131cf drm/i915/intel_fb: Pull FB plane functions from intel_display.c
-:1342: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1342: FILE: drivers/gpu/drm/i915/display/intel_fb.c:435:
+		drm_dbg_kms(&i915->drm,
+			      "Bad CCS x/y (main %d,%d ccs %d,%d) full (main %d,%d ccs %d,%d)\n",

total: 0 errors, 0 warnings, 1 checks, 1786 lines checked
43c989a7f696 drm/i915/intel_fb: Unexport intel_fb_check_stride()
1cbb58c4f9e2 drm/i915/intel_fb: s/dev_priv/i915/
2c84adf69613 drm/i915/intel_fb: Factor out convert_plane_offset_to_xy()
8e313191a2fc drm/i915/intel_fb: Factor out calc_plane_aligned_offset()
-:21: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#21: FILE: drivers/gpu/drm/i915/display/intel_fb.c:562:
+static u32 calc_plane_aligned_offset(const struct intel_framebuffer *fb, int color_plane, int *x, int *y)

total: 0 errors, 1 warnings, 0 checks, 44 lines checked
807bfafc794c drm/i915/intel_fb: Factor out calc_plane_normal_size()
83f72c175fb3 drm/i915/intel_fb: Factor out plane_calc_remap_info()
-:50: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#50: FILE: drivers/gpu/drm/i915/display/intel_fb.c:12:
+#define check_array_bounds(i915, a, i) drm_WARN_ON(&i915->drm, i >= ARRAY_SIZE(a))

-:50: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i' may be better as '(i)' to avoid precedence issues
#50: FILE: drivers/gpu/drm/i915/display/intel_fb.c:12:
+#define check_array_bounds(i915, a, i) drm_WARN_ON(&i915->drm, i >= ARRAY_SIZE(a))

-:168: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#168: FILE: drivers/gpu/drm/i915/display/intel_fb.c:652:
+		plane_remap_info->pitch = pitch_tiles * tile_width * drm_fb->format->cpp[color_plane];

-:216: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#216: FILE: drivers/gpu/drm/i915/display/intel_fb.c:747:
+								    offset, gtt_offset_rotated, x, y,

total: 0 errors, 2 warnings, 2 checks, 287 lines checked
96ddf283b6a1 drm/i915: Shrink the size of intel_remapped_plane_info struct
79b5bf7c9b6a drm/i915/selftest: Unify use of intel_remapped_plane_info in igt_vma_rotate_remap()
-:53: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#53: FILE: drivers/gpu/drm/i915/selftests/i915_vma.c:549:
+					expected_pages = rotated_size(&plane_info[0], &plane_info[1]);

total: 0 errors, 1 warnings, 0 checks, 122 lines checked
b13f65945d4f drm/i915: s/stride/src_stride/ in the intel_remapped_plane_info struct
bfe3127a1805 drm/i915: Add support for FBs requiring a POT stride alignment
-:201: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#201: FILE: drivers/gpu/drm/i915/display/intel_fb.c:810:
+								     offset, gtt_offset_remapped, x, y,

total: 0 errors, 1 warnings, 0 checks, 375 lines checked
b16c3104a159 drm/i915/selftest: Add remap/rotate vma subtests when dst_stride!=width/height
-:108: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#108: FILE: drivers/gpu/drm/i915/selftests/i915_vma.c:536:
 {
+

-:133: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#133: FILE: drivers/gpu/drm/i915/selftests/i915_vma.c:630:
+					expected_pages = remapped_size(view.type, &plane_info[0], &plane_info[1]);

-:174: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#174: FILE: drivers/gpu/drm/i915/selftests/i915_vma.c:1012:
+						offset = (x * plane_info[0].dst_stride + y) * PAGE_SIZE;

-:177: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#177: FILE: drivers/gpu/drm/i915/selftests/i915_vma.c:1014:
+						offset = (y * plane_info[0].dst_stride + x) * PAGE_SIZE;

total: 0 errors, 3 warnings, 1 checks, 157 lines checked
6e8b518f0150 drm/i915: For-CI: Force remapping the FB with a POT aligned stride


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
