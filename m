Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE27D9D99FF
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2024 15:54:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F97C10E40C;
	Tue, 26 Nov 2024 14:54:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 463F110E40C;
 Tue, 26 Nov 2024 14:54:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Plane_Color_Pipeline?=
 =?utf-8?q?_support_for_Intel_platforms_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2024 14:54:11 -0000
Message-ID: <173263285125.3378674.8654345036041715715@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241126132730.1192571-1-uma.shankar@intel.com>
In-Reply-To: <20241126132730.1192571-1-uma.shankar@intel.com>
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

Series: Plane Color Pipeline support for Intel platforms (rev2)
URL   : https://patchwork.freedesktop.org/series/129811/
State : warning

== Summary ==

Error: dim checkpatch failed
0aab9cd08484 drm: color pipeline base work
-:46: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#46: 
new file mode 100644

-:51: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#51: FILE: Documentation/gpu/rfc/color_pipeline.rst:1:
+========================

-:643: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#643: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:757:
+	switch (tf)
+	{

-:655: WARNING:ONE_SEMICOLON: Statements terminations use 1 semicolon
#655: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:769:
+		return TRANSFER_FUNCTION_LINEAR;;

-:668: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#668: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1244:
+__set_colorop_in_tf_1d_curve(struct dc_plane_state *dc_plane_state,
+		       struct drm_colorop_state *colorop_state)

-:748: CHECK:SPACING: No space is necessary after a cast
#748: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1324:
+			ctm = blob ? (struct drm_color_ctm_3x4 *) blob->data : NULL;

-:752: CHECK:BRACES: Unbalanced braces around else statement
#752: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1328:
+		} else

-:802: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#802: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1378:
+	uint32_t shaper_size;

-:818: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#818: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1394:
+		tf->tf = default_tf = amdgpu_colorop_tf_to_dc_tf(colorop_state->curve_1d_type);

-:846: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "shaper_lut"
#846: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1422:
+		shaper_size = shaper_lut != NULL ? shaper_size : 0;

-:868: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#868: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1444:
+				uint32_t drm_lut3d_size,

-:893: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#893: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1469:
+
+}

-:909: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#909: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1485:
+	uint32_t lut3d_size, index;

-:929: CHECK:SPACING: No space is necessary after a cast
#929: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1505:
+		mode = (struct drm_mode_3dlut_mode *) colorop_state->lut_3d_modes->data;

-:932: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "lut3d"
#932: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1508:
+		lut3d_size = lut3d != NULL ? lut3d_size : 0;

-:961: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#961: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1537:
+	uint32_t blend_size;

-:978: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#978: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1554:
+		tf->tf = default_tf = amdgpu_colorop_tf_to_dc_tf(colorop_state->curve_1d_type);

-:1006: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "blend_lut"
#1006: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1582:
+		blend_size = blend_lut != NULL ? blend_size : 0;

-:1025: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1025: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1644:
+amdgpu_dm_plane_set_colorop_properties(struct drm_plane_state *plane_state,
+		       struct dc_plane_state *dc_plane_state)

-:1033: WARNING:BRACES: braces {} are not necessary for single statement blocks
#1033: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1652:
+	if (!colorop) {
+		return -EINVAL;
+	}

-:1199: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#1199: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:73:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1218: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#1218: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:92:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1229: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#1229: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:103:
+	drm_colorop_set_next_property(ops[i-1], ops[i]);
 	                                   ^

-:1234: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#1234: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:108:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1245: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#1245: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:119:
+	drm_colorop_set_next_property(ops[i-1], ops[i]);
 	                                   ^

-:1250: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#1250: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:124:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1263: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#1263: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:137:
+	drm_colorop_set_next_property(ops[i-1], ops[i]);
 	                                   ^

-:1268: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#1268: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:142:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1281: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#1281: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:155:
+	drm_colorop_set_next_property(ops[i-1], ops[i]);
 	                                   ^

-:1286: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#1286: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:160:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1293: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#1293: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:167:
+	ret = drm_colorop_3dlut_init(dev, ops[i], plane, lut3d_modes, ARRAY_SIZE(lut3d_modes), true);

-:1297: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#1297: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:171:
+	drm_colorop_set_next_property(ops[i-1], ops[i]);
 	                                   ^

-:1302: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#1302: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:176:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1315: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#1315: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:189:
+	drm_colorop_set_next_property(ops[i-1], ops[i]);
 	                                   ^

-:1320: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#1320: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:194:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1333: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#1333: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:207:
+	drm_colorop_set_next_property(ops[i-1], ops[i]);
 	                                   ^

-:1339: WARNING:NEEDLESS_IF: kfree(NULL) is safe and this check is probably not required
#1339: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:213:
+		if (ops[i])
+			kfree(ops[i]);

-:1342: WARNING:MISSING_EOF_NEWLINE: adding a line without newline at end of file
#1342: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:216:
+}

-:1350: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.h', please use '/*' instead
#1350: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.h:1:
+// SPDX-License-Identifier: MIT

-:1350: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#1350: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.h:1:
+// SPDX-License-Identifier: MIT

-:1385: WARNING:MISSING_EOF_NEWLINE: adding a line without newline at end of file
#1385: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.h:36:
+#endif /* __AMDGPU_DM_COLOROP_H__*/

-:1416: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around pipelines[len]
#1416: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_plane.c:1773:
+	ret = amdgpu_dm_initialize_default_pipeline(plane, &(pipelines[len]));

-:1418: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#1418: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_plane.c:1775:
+		DRM_ERROR("Failed to create color pipeline for plane %d: %d\n", plane->base.id, ret);

-:1501: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1501: FILE: drivers/gpu/drm/drm_atomic.c:591:
 
+

-:1558: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1558: FILE: drivers/gpu/drm/drm_atomic.c:780:
 
+

-:1561: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1561: FILE: drivers/gpu/drm/drm_atomic.c:783:
+static void drm_atomic_colorop_print_state(struct drm_printer *p,
+		const struct drm_colorop_state *state)

-:1580: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#1580: FILE: drivers/gpu/drm/drm_atomic.c:802:
+		drm_printf(p, "\tinterpolation=%s\n", drm_get_colorop_lut1d_interpolation_name(colorop->lut1d_interpolation));

-:1590: CHECK:SPACING: No space is necessary after a cast
#1590: FILE: drivers/gpu/drm/drm_atomic.c:812:
+		mode_3dlut = (struct drm_mode_3dlut_mode *) modes->data;

-:1596: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1596: FILE: drivers/gpu/drm/drm_atomic.c:818:
+			drm_printf(p, "\t  lut_strides=%d %d %d\n", mode_3dlut[i].lut_stride[0],
+								    mode_3dlut[i].lut_stride[1],

-:1599: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#1599: FILE: drivers/gpu/drm/drm_atomic.c:821:
+				   drm_get_colorop_lut3d_interpolation_name(mode_3dlut[i].interpolation));

-:1765: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1765: FILE: drivers/gpu/drm/drm_atomic_uapi.c:259:
 
+

-:1794: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1794: FILE: drivers/gpu/drm/drm_atomic_uapi.c:288:
+
+

-:1811: WARNING:LINE_SPACING: Missing a blank line after declarations
#1811: FILE: drivers/gpu/drm/drm_atomic_uapi.c:581:
+		struct drm_colorop *colorop = NULL;
+		colorop = drm_colorop_find(dev, file_priv, val);

-:1835: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1835: FILE: drivers/gpu/drm/drm_atomic_uapi.c:695:
+static int drm_atomic_color_set_data_property(struct drm_colorop *colorop,
+		struct drm_colorop_state *state,

-:1842: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#1842: FILE: drivers/gpu/drm/drm_atomic_uapi.c:702:
+	uint32_t index;

-:1856: CHECK:SPACING: No space is necessary after a cast
#1856: FILE: drivers/gpu/drm/drm_atomic_uapi.c:716:
+		modes = (struct drm_mode_3dlut_mode *) state->lut_3d_modes->data;

-:1857: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#1857: FILE: drivers/gpu/drm/drm_atomic_uapi.c:717:
+		size = modes[index].lut_stride[0] * modes[index].lut_stride[1] * modes[index].lut_stride[2] *

-:1874: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1874: FILE: drivers/gpu/drm/drm_atomic_uapi.c:734:
+static int drm_atomic_colorop_set_property(struct drm_colorop *colorop,
+		struct drm_colorop_state *state, struct drm_file *file_priv,

-:1901: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1901: FILE: drivers/gpu/drm/drm_atomic_uapi.c:761:
+drm_atomic_colorop_get_property(struct drm_colorop *colorop,
+		const struct drm_colorop_state *state,

-:1904: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#1904: FILE: drivers/gpu/drm/drm_atomic_uapi.c:764:
+	if (property == colorop->type_property) {
[...]
+	} else if (property == colorop->bypass_property) {
[...]
+	} else if (property == colorop->curve_1d_type_property) {
[...]
+	} else if (property == colorop->multiplier_property) {
[...]
+	} else if (property == colorop->lut_3d_modes_property) {
[...]
+	} else if (property == colorop->lut_3d_mode_index_property) {
[...]
+	} else if (property == colorop->size_property) {
[...]
+	} else if (property == colorop->data_property) {
[...]
+	} else {
[...]

-:1941: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1941: FILE: drivers/gpu/drm/drm_atomic_uapi.c:1060:
+		ret = drm_atomic_colorop_get_property(colorop,
+				colorop->state, property, val);

-:1971: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1971: FILE: drivers/gpu/drm/drm_atomic_uapi.c:1259:
+		ret = drm_atomic_colorop_set_property(colorop,
+				colorop_state, file_priv,

-:1990: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#1990: FILE: drivers/gpu/drm/drm_colorop.c:1:
+/*

-:2123: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2123: FILE: drivers/gpu/drm/drm_colorop.c:134:
+		drm_object_attach_property(&colorop->base,
+					colorop->bypass_property,

-:2194: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2194: FILE: drivers/gpu/drm/drm_colorop.c:205:
+
+

-:2217: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2217: FILE: drivers/gpu/drm/drm_colorop.c:228:
+	prop = drm_property_create(dev, DRM_MODE_PROP_ATOMIC | DRM_MODE_PROP_BLOB,
+					"DATA", 0);

-:2318: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2318: FILE: drivers/gpu/drm/drm_colorop.c:329:
+int drm_colorop_mult_init(struct drm_device *dev, struct drm_colorop *colorop,
+			      struct drm_plane *plane, bool allow_bypass)

-:2354: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#2354: FILE: drivers/gpu/drm/drm_colorop.c:365:
+	prop = drm_property_create(dev, DRM_MODE_PROP_BLOB | DRM_MODE_PROP_IMMUTABLE, "3DLUT_MODES", 0);

-:2360: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2360: FILE: drivers/gpu/drm/drm_colorop.c:371:
+
+

-:2366: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#2366: FILE: drivers/gpu/drm/drm_colorop.c:377:
+	drm_object_attach_property(&colorop->base, colorop->lut_3d_modes_property, blob ? blob->base.id : 0);

-:2414: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2414: FILE: drivers/gpu/drm/drm_colorop.c:425:
+
+

-:2439: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2439: FILE: drivers/gpu/drm/drm_colorop.c:450:
+		drm_object_property_get_default_value(&colorop->base,
+						colorop->curve_1d_type_property,

-:2712: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#2712: FILE: drivers/gpu/drm/tests/drm_fixp_test.c:17:
+	KUNIT_EXPECT_EQ(test, drm_int2fixp(-1), drm_sm2fixp((1ull << 63) | (1ull << DRM_FIXED_POINT)));

-:2715: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#2715: FILE: drivers/gpu/drm/tests/drm_fixp_test.c:20:
+	KUNIT_EXPECT_EQ(test, drm_fixp_from_fraction(1, 2), drm_sm2fixp(1ull << (DRM_FIXED_POINT - 1)));

-:2718: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2718: FILE: drivers/gpu/drm/tests/drm_fixp_test.c:23:
+	KUNIT_EXPECT_EQ(test, drm_fixp_from_fraction(-1, 2), drm_sm2fixp((1ull << 63) | (1ull << (DRM_FIXED_POINT - 1))));

-:2720: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#2720: FILE: drivers/gpu/drm/tests/drm_fixp_test.c:25:
+
+}

-:2748: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#2748: FILE: drivers/gpu/drm/tests/drm_fixp_test.c:53:
+
+}

-:2765: WARNING:MISSING_EOF_NEWLINE: adding a line without newline at end of file
#2765: FILE: drivers/gpu/drm/tests/drm_fixp_test.c:70:
+MODULE_DESCRIPTION("Unit tests for drm_fixed.h");

-:2831: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/vkms/tests/vkms_color_test.c', please use '//' instead
#2831: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:1:
+/* SPDX-License-Identifier: GPL-2.0+ */

-:2831: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#2831: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:1:
+/* SPDX-License-Identifier: GPL-2.0+ */

-:2874: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#2874: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:44:
+	KUNIT_EXPECT_EQ(test, drm_fixp2int(get_lut_index(&test_linear_lut, test_linear_array[0].red)), 0);

-:2877: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#2877: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:47:
+		KUNIT_EXPECT_EQ(test, drm_fixp2int_ceil(get_lut_index(&test_linear_lut, test_linear_array[i].red)), i);

-:2897: WARNING:LINE_SPACING: Missing a blank line after declarations
#2897: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:67:
+	s64 t = 0x80000000 - 1;
+	KUNIT_EXPECT_EQ(test, lerp_u16(0x0, 0x10, t), 0x8);

-:2911: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2911: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:81:
+
+

-:2960: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2960: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:130:
+
+

-:2993: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2993: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:163:
+
+

-:3003: WARNING:LINE_SPACING: Missing a blank line after declarations
#3003: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:173:
+		int linear = apply_lut_to_channel_value(&linear_eotf, i * 0x101, LUT_RED);
+		KUNIT_EXPECT_EQ(test, DIV_ROUND_CLOSEST(linear, 0x101), i);

-:3015: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#3015: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:185:
+		KUNIT_EXPECT_GE(test, final / 0x101, i-1);
 		                                      ^

-:3016: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#3016: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:186:
+		KUNIT_EXPECT_LE(test, final / 0x101, i+1);
 		                                      ^

-:3171: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3171: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:341:
+
+

-:3246: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3246: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:416:
+
+

-:3266: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#3266: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:436:
+
+}

-:3282: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#3282: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:452:
+};
+kunit_test_suite(vkms_color_test_suite);

-:3284: WARNING:MISSING_EOF_NEWLINE: adding a line without newline at end of file
#3284: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:454:
+MODULE_LICENSE("GPL");

-:3292: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/vkms/vkms_colorop.c', please use '//' instead
#3292: FILE: drivers/gpu/drm/vkms/vkms_colorop.c:1:
+/* SPDX-License-Identifier: GPL-2.0+ */

-:3292: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#3292: FILE: drivers/gpu/drm/vkms/vkms_colorop.c:1:
+/* SPDX-License-Identifier: GPL-2.0+ */

-:3318: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#3318: FILE: drivers/gpu/drm/vkms/vkms_colorop.c:27:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:3335: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#3335: FILE: drivers/gpu/drm/vkms/vkms_colorop.c:44:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:3346: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#3346: FILE: drivers/gpu/drm/vkms/vkms_colorop.c:55:
+	drm_colorop_set_next_property(ops[i-1], ops[i]);
 	                                   ^

-:3351: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#3351: FILE: drivers/gpu/drm/vkms/vkms_colorop.c:60:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:3362: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#3362: FILE: drivers/gpu/drm/vkms/vkms_colorop.c:71:
+	drm_colorop_set_next_property(ops[i-1], ops[i]);
 	                                   ^

-:3367: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#3367: FILE: drivers/gpu/drm/vkms/vkms_colorop.c:76:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:3378: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#3378: FILE: drivers/gpu/drm/vkms/vkms_colorop.c:87:
+	drm_colorop_set_next_property(ops[i-1], ops[i]);
 	                                   ^

-:3385: WARNING:NEEDLESS_IF: kfree(NULL) is safe and this check is probably not required
#3385: FILE: drivers/gpu/drm/vkms/vkms_colorop.c:94:
+		if (ops[i])
+			kfree(ops[i]);

-:3458: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3458: FILE: drivers/gpu/drm/vkms/vkms_composer.c:86:
+VISIBLE_IF_KUNIT u16 apply_lut_to_channel_value(const struct vkms_color_lut *lut, u16 channel_value,
 				      enum lut_channel channel)

-:3474: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#3474: FILE: drivers/gpu/drm/vkms/vkms_composer.c:131:
+VISIBLE_IF_KUNIT void apply_3x4_matrix(struct pixel_argb_s32 *pixel, const struct drm_color_ctm_3x4 *matrix)

-:3509: ERROR:SWITCH_CASE_INDENT_LEVEL: switch and case should be at the same indent
#3509: FILE: drivers/gpu/drm/vkms/vkms_composer.c:166:
+		switch (colorop_state->curve_1d_type) {
+			case DRM_COLOROP_1D_CURVE_SRGB_INV_EOTF:
[...]
+			case DRM_COLOROP_1D_CURVE_SRGB_EOTF:
[...]
+			default:

-:3511: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#3511: FILE: drivers/gpu/drm/vkms/vkms_composer.c:168:
+				pixel->r = apply_lut_to_channel_value(&srgb_inv_eotf, pixel->r, LUT_RED);

-:3512: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#3512: FILE: drivers/gpu/drm/vkms/vkms_composer.c:169:
+				pixel->g = apply_lut_to_channel_value(&srgb_inv_eotf, pixel->g, LUT_GREEN);

-:3513: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#3513: FILE: drivers/gpu/drm/vkms/vkms_composer.c:170:
+				pixel->b = apply_lut_to_channel_value(&srgb_inv_eotf, pixel->b, LUT_BLUE);

-:3516: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#3516: FILE: drivers/gpu/drm/vkms/vkms_composer.c:173:
+				pixel->r = apply_lut_to_channel_value(&srgb_eotf, pixel->r, LUT_RED);

-:3517: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#3517: FILE: drivers/gpu/drm/vkms/vkms_composer.c:174:
+				pixel->g = apply_lut_to_channel_value(&srgb_eotf, pixel->g, LUT_GREEN);

-:3518: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#3518: FILE: drivers/gpu/drm/vkms/vkms_composer.c:175:
+				pixel->b = apply_lut_to_channel_value(&srgb_eotf, pixel->b, LUT_BLUE);

-:3521: WARNING:TYPO_SPELLING: 'unkown' may be misspelled - perhaps 'unknown'?
#3521: FILE: drivers/gpu/drm/vkms/vkms_composer.c:178:
+				DRM_DEBUG_DRIVER("unkown colorop 1D curve type %d\n", colorop_state->curve_1d_type);
 				                  ^^^^^^

-:3521: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#3521: FILE: drivers/gpu/drm/vkms/vkms_composer.c:178:
+				DRM_DEBUG_DRIVER("unkown colorop 1D curve type %d\n", colorop_state->curve_1d_type);

-:3526: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#3526: FILE: drivers/gpu/drm/vkms/vkms_composer.c:183:
+			apply_3x4_matrix(pixel, (struct drm_color_ctm_3x4 *) colorop_state->data->data);

-:3526: CHECK:SPACING: No space is necessary after a cast
#3526: FILE: drivers/gpu/drm/vkms/vkms_composer.c:183:
+			apply_3x4_matrix(pixel, (struct drm_color_ctm_3x4 *) colorop_state->data->data);

-:3529: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#3529: FILE: drivers/gpu/drm/vkms/vkms_composer.c:186:
+
+}

-:3531: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#3531: FILE: drivers/gpu/drm/vkms/vkms_composer.c:188:
+static void pre_blend_color_transform(const struct vkms_plane_state *plane_state, struct line_buffer *output_buffer)

-:3641: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3641: FILE: drivers/gpu/drm/vkms/vkms_drv.h:287:
+
+

-:3649: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/vkms/vkms_luts.c', please use '//' instead
#3649: FILE: drivers/gpu/drm/vkms/vkms_luts.c:1:
+/* SPDX-License-Identifier: GPL-2.0+ */

-:3649: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#3649: FILE: drivers/gpu/drm/vkms/vkms_luts.c:1:
+/* SPDX-License-Identifier: GPL-2.0+ */

-:3921: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3921: FILE: drivers/gpu/drm/vkms/vkms_luts.c:273:
+
+

-:4468: WARNING:MISSING_EOF_NEWLINE: adding a line without newline at end of file
#4468: FILE: drivers/gpu/drm/vkms/vkms_luts.h:12:
+#endif /* _VKMS_LUTS_H_ */

-:4553: CHECK:LINE_SPACING: Please don't use multiple blank lines
#4553: FILE: include/drm/drm_atomic.h:716:
 
+

-:4567: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#4567: FILE: include/drm/drm_atomic.h:730:
+drm_atomic_get_existing_colorop_state(struct drm_atomic_state *state,
+				    struct drm_colorop *colorop)

-:4582: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#4582: FILE: include/drm/drm_atomic.h:745:
+drm_atomic_get_old_colorop_state(struct drm_atomic_state *state,
+			       struct drm_colorop *colorop)

-:4597: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#4597: FILE: include/drm/drm_atomic.h:760:
+drm_atomic_get_new_colorop_state(struct drm_atomic_state *state,
+			       struct drm_colorop *colorop)

-:4631: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#4631: FILE: include/drm/drm_atomic.h:1027:
+#define for_each_oldnew_colorop_in_state(__state, colorop, old_colorop_state, new_colorop_state, __i) \

-:4631: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#4631: FILE: include/drm/drm_atomic.h:1027:
+#define for_each_oldnew_colorop_in_state(__state, colorop, old_colorop_state, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;	\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (old_colorop_state) = (__state)->colorops[__i].old_state,\
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:4631: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__state' - possible side-effects?
#4631: FILE: include/drm/drm_atomic.h:1027:
+#define for_each_oldnew_colorop_in_state(__state, colorop, old_colorop_state, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;	\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (old_colorop_state) = (__state)->colorops[__i].old_state,\
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:4631: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'colorop' - possible side-effects?
#4631: FILE: include/drm/drm_atomic.h:1027:
+#define for_each_oldnew_colorop_in_state(__state, colorop, old_colorop_state, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;	\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (old_colorop_state) = (__state)->colorops[__i].old_state,\
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:4631: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#4631: FILE: include/drm/drm_atomic.h:1027:
+#define for_each_oldnew_colorop_in_state(__state, colorop, old_colorop_state, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;	\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (old_colorop_state) = (__state)->colorops[__i].old_state,\
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:4635: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#4635: FILE: include/drm/drm_atomic.h:1031:
+		for_each_if ((__state)->colorops[__i].ptr &&		\

-:4641: CHECK:LINE_SPACING: Please don't use multiple blank lines
#4641: FILE: include/drm/drm_atomic.h:1037:
+
+

-:4653: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#4653: FILE: include/drm/drm_atomic.h:1049:
+#define for_each_new_colorop_in_state(__state, colorop, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;	\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:4653: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__state' - possible side-effects?
#4653: FILE: include/drm/drm_atomic.h:1049:
+#define for_each_new_colorop_in_state(__state, colorop, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;	\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:4653: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'colorop' - possible side-effects?
#4653: FILE: include/drm/drm_atomic.h:1049:
+#define for_each_new_colorop_in_state(__state, colorop, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;	\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:4653: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#4653: FILE: include/drm/drm_atomic.h:1049:
+#define for_each_new_colorop_in_state(__state, colorop, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;	\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:4657: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#4657: FILE: include/drm/drm_atomic.h:1053:
+		for_each_if ((__state)->colorops[__i].ptr &&		\

-:4692: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#4692: FILE: include/drm/drm_colorop.h:1:
+/*

-:4724: CHECK:LINE_SPACING: Please don't use multiple blank lines
#4724: FILE: include/drm/drm_colorop.h:33:
+
+

-:4810: CHECK:LINE_SPACING: Please don't use multiple blank lines
#4810: FILE: include/drm/drm_colorop.h:119:
+
+

-:4832: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#4832: FILE: include/drm/drm_colorop.h:141:
+	uint64_t multiplier;

-:4839: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#4839: FILE: include/drm/drm_colorop.h:148:
+	uint32_t size;

-:4862: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u16' over 'uint16_t'
#4862: FILE: include/drm/drm_colorop.h:171:
+	uint16_t lut_3d_mode_index;

-:4899: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#4899: FILE: include/drm/drm_colorop.h:208:
+	unsigned index;

-:5042: CHECK:LINE_SPACING: Please don't use multiple blank lines
#5042: FILE: include/drm/drm_colorop.h:351:
+
+

-:5044: CHECK:LINE_SPACING: Please don't use multiple blank lines
#5044: FILE: include/drm/drm_colorop.h:353:
+
+

-:5056: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#5056: FILE: include/drm/drm_colorop.h:365:
+static inline struct drm_colorop *drm_colorop_find(struct drm_device *dev,
+		struct drm_file *file_priv,

-:5060: WARNING:LINE_SPACING: Missing a blank line after declarations
#5060: FILE: include/drm/drm_colorop.h:369:
+	struct drm_mode_object *mo;
+	mo = drm_mode_object_find(dev, file_priv, id, DRM_MODE_OBJECT_COLOROP);

-:5074: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#5074: FILE: include/drm/drm_colorop.h:383:
+int drm_colorop_mult_init(struct drm_device *dev, struct drm_colorop *colorop,
+			      struct drm_plane *plane, bool allow_bypass);

-:5106: CHECK:LINE_SPACING: Please don't use multiple blank lines
#5106: FILE: include/drm/drm_colorop.h:415:
+
+

-:5127: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#5127: FILE: include/drm/drm_colorop.h:436:
+const char *drm_get_colorop_lut1d_interpolation_name(enum drm_colorop_lut1d_interpolation_type type);

-:5128: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#5128: FILE: include/drm/drm_colorop.h:437:
+const char *drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_interpolation_type type);

-:5175: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#5175: FILE: include/drm/drm_fixed.h:97:
+
+}

-:5442: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#5442: FILE: include/uapi/drm/drm_mode.h:982:
+	 * @interpolation: interpolation algorithm for 3D LUT. See drm_colorop_lut3d_interpolation_type

-:5457: WARNING:LONG_LINE_COMMENT: line length of 102 exceeds 100 columns
#5457: FILE: include/uapi/drm/drm_mode.h:997:
+	 * Traversal order when parsing/writing the 3D LUT. See enum drm_colorop_lut3d_traversal_order

-:5459: WARNING:TABSTOP: Statements should start on a tabstop
#5459: FILE: include/uapi/drm/drm_mode.h:999:
+	 __u16 traversal_order;

-:5477: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 5 errors, 58 warnings, 97 checks, 5184 lines checked
574ca493df3b drm: Add support for 3x3 CTM
3500ac913df5 drm: Add Enhanced LUT precision structure
a2b97d5feb58 drm: Add Color lut range attributes
0fc8c21e9515 drm: Add Color ops capability property
cc904b1abef9 drm: Define helper to create color ops capability property
181b528b958a drm: Add 1D LUT multi-segmented color op
-:21: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#21: FILE: drivers/gpu/drm/drm_atomic.c:806:
+		drm_printf(p, "\thw cap blob id=%d\n", state->hw_caps ? state->hw_caps->base.id : 0);

total: 0 errors, 1 warnings, 0 checks, 33 lines checked
437f6b6ece24 drm: Define helper for adding capability property for 1D LUT MULTSEG
94df5d5a76e5 drm: Add helper to initialize segmented 1D LUT
decd548f69e6 drm/i915: Add identifiers for intel color blocks
f3dfb78a8677 drm/i915: Add intel_color_op
-:19: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#19: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1500:
+#define intel_fb_obj(x) ((x) ? to_intel_bo((x)->obj[0]) : NULL)

total: 0 errors, 0 warnings, 1 checks, 31 lines checked
8b4238f34eb2 drm/i915/color: Add helper to create intel colorop
622224b2303a drm/i915/color: Create a transfer function color pipeline
76c16373f9e2 drm/i915/color: Add and attach COLORPIPELINE plane property
9fd4e9a9ce61 drm/i915/color: Add framework to set colorop
5563fe0d68aa drm/i915/color: Add callbacks to set plane CTM
c8fa46d3872d drm/i915/color: Add new color callbacks for Xelpd
143b778af124 drm/i915/color: Add plane CTM callback for D13 and beyond
8888fb68a3cb drm/i915: Add register definitions for Plane Degamma
-:35: ERROR:CODE_INDENT: code indent should use tabs where possible
#35: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:302:
+                                               _PLANE_PRE_CSC_GAMC_INDEX_ENH_1_B)$

-:35: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#35: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:302:
+                                               _PLANE_PRE_CSC_GAMC_INDEX_ENH_1_B)$

-:37: ERROR:CODE_INDENT: code indent should use tabs where possible
#37: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:304:
+                                               _PLANE_PRE_CSC_GAMC_INDEX_ENH_2_B)$

-:37: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#37: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:304:
+                                               _PLANE_PRE_CSC_GAMC_INDEX_ENH_2_B)$

-:38: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#38: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:305:
+#define PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, i)   \
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_INDEX_ENH_1(pipe), \
+               _PLANE_PRE_CSC_GAMC_INDEX_ENH_2(pipe))

-:39: ERROR:CODE_INDENT: code indent should use tabs where possible
#39: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:306:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_INDEX_ENH_1(pipe), \$

-:39: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#39: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:306:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_INDEX_ENH_1(pipe), \$

-:40: ERROR:CODE_INDENT: code indent should use tabs where possible
#40: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:307:
+               _PLANE_PRE_CSC_GAMC_INDEX_ENH_2(pipe))$

-:40: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#40: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:307:
+               _PLANE_PRE_CSC_GAMC_INDEX_ENH_2(pipe))$

-:48: ERROR:CODE_INDENT: code indent should use tabs where possible
#48: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:315:
+                                               _PLANE_PRE_CSC_GAMC_DATA_ENH_1_B)$

-:48: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#48: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:315:
+                                               _PLANE_PRE_CSC_GAMC_DATA_ENH_1_B)$

-:50: ERROR:CODE_INDENT: code indent should use tabs where possible
#50: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:317:
+                                               _PLANE_PRE_CSC_GAMC_DATA_ENH_2_B)$

-:50: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#50: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:317:
+                                               _PLANE_PRE_CSC_GAMC_DATA_ENH_2_B)$

-:51: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#51: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:318:
+#define PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, i)    \
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_DATA_ENH_1(pipe), \
+               _PLANE_PRE_CSC_GAMC_DATA_ENH_2(pipe))

-:52: ERROR:CODE_INDENT: code indent should use tabs where possible
#52: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:319:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_DATA_ENH_1(pipe), \$

-:52: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#52: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:319:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_DATA_ENH_1(pipe), \$

-:53: ERROR:CODE_INDENT: code indent should use tabs where possible
#53: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:320:
+               _PLANE_PRE_CSC_GAMC_DATA_ENH_2(pipe))$

-:53: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#53: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:320:
+               _PLANE_PRE_CSC_GAMC_DATA_ENH_2(pipe))$

-:60: ERROR:CODE_INDENT: code indent should use tabs where possible
#60: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:327:
+                                               _PLANE_PRE_CSC_GAMC_INDEX_1_B)$

-:60: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#60: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:327:
+                                               _PLANE_PRE_CSC_GAMC_INDEX_1_B)$

-:62: ERROR:CODE_INDENT: code indent should use tabs where possible
#62: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:329:
+                                               _PLANE_PRE_CSC_GAMC_INDEX_2_B)$

-:62: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#62: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:329:
+                                               _PLANE_PRE_CSC_GAMC_INDEX_2_B)$

-:63: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#63: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:330:
+#define PLANE_PRE_CSC_GAMC_INDEX(pipe, plane, i)       \
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_INDEX_1(pipe), \
+               _PLANE_PRE_CSC_GAMC_INDEX_2(pipe))

-:64: ERROR:CODE_INDENT: code indent should use tabs where possible
#64: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:331:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_INDEX_1(pipe), \$

-:64: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#64: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:331:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_INDEX_1(pipe), \$

-:65: ERROR:CODE_INDENT: code indent should use tabs where possible
#65: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:332:
+               _PLANE_PRE_CSC_GAMC_INDEX_2(pipe))$

-:65: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#65: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:332:
+               _PLANE_PRE_CSC_GAMC_INDEX_2(pipe))$

-:72: ERROR:CODE_INDENT: code indent should use tabs where possible
#72: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:339:
+                                               _PLANE_PRE_CSC_GAMC_DATA_1_B)$

-:72: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#72: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:339:
+                                               _PLANE_PRE_CSC_GAMC_DATA_1_B)$

-:74: ERROR:CODE_INDENT: code indent should use tabs where possible
#74: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:341:
+                                               _PLANE_PRE_CSC_GAMC_DATA_2_B)$

-:74: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#74: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:341:
+                                               _PLANE_PRE_CSC_GAMC_DATA_2_B)$

-:75: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#75: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:342:
+#define PLANE_PRE_CSC_GAMC_DATA(pipe, plane, i)        \
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_DATA_1(pipe), \
+               _PLANE_PRE_CSC_GAMC_DATA_2(pipe))

-:76: ERROR:CODE_INDENT: code indent should use tabs where possible
#76: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:343:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_DATA_1(pipe), \$

-:76: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#76: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:343:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_DATA_1(pipe), \$

-:77: ERROR:CODE_INDENT: code indent should use tabs where possible
#77: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:344:
+               _PLANE_PRE_CSC_GAMC_DATA_2(pipe))$

-:77: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#77: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:344:
+               _PLANE_PRE_CSC_GAMC_DATA_2(pipe))$

total: 16 errors, 16 warnings, 4 checks, 65 lines checked
41c81b143efe drm/i915/color: Add framework to program PRE/POST CSC LUT
eed6c346069b drm/i915: Add register definitions for Plane Post CSC
-:24: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#24: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:301:
+#define _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1(pipe)    _PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1_A, \

-:25: ERROR:CODE_INDENT: code indent should use tabs where possible
#25: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:302:
+                                                       _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1_B)$

-:25: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#25: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:302:
+                                                       _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1_B)$

-:26: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#26: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:303:
+#define _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2(pipe)    _PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2_A, \

-:27: ERROR:CODE_INDENT: code indent should use tabs where possible
#27: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:304:
+                                                       _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2_B)$

-:27: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#27: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:304:
+                                                       _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2_B)$

-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#28: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:305:
+#define PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH(pipe, plane, i)     \
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1(pipe), \
+               _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2(pipe))

-:29: ERROR:CODE_INDENT: code indent should use tabs where possible
#29: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:306:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1(pipe), \$

-:29: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#29: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:306:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1(pipe), \$

-:30: ERROR:CODE_INDENT: code indent should use tabs where possible
#30: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:307:
+               _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2(pipe))$

-:30: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#30: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:307:
+               _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2(pipe))$

-:36: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#36: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:313:
+#define _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1(pipe)     _PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1_A, \

-:37: ERROR:CODE_INDENT: code indent should use tabs where possible
#37: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:314:
+                                                       _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1_B)$

-:37: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#37: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:314:
+                                                       _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1_B)$

-:38: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#38: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:315:
+#define _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2(pipe)     _PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2_A, \

-:39: ERROR:CODE_INDENT: code indent should use tabs where possible
#39: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:316:
+                                                       _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2_B)$

-:39: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#39: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:316:
+                                                       _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2_B)$

-:40: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#40: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:317:
+#define PLANE_POST_CSC_GAMC_SEG0_DATA_ENH(pipe, plane, i)      \
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1(pipe), \
+               _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2(pipe))

-:41: ERROR:CODE_INDENT: code indent should use tabs where possible
#41: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:318:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1(pipe), \$

-:41: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#41: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:318:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1(pipe), \$

-:42: ERROR:CODE_INDENT: code indent should use tabs where possible
#42: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:319:
+               _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2(pipe))$

-:42: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#42: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:319:
+               _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2(pipe))$

-:49: ERROR:CODE_INDENT: code indent should use tabs where possible
#49: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:326:
+                                               _PLANE_POST_CSC_GAMC_INDEX_ENH_1_B)$

-:49: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#49: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:326:
+                                               _PLANE_POST_CSC_GAMC_INDEX_ENH_1_B)$

-:51: ERROR:CODE_INDENT: code indent should use tabs where possible
#51: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:328:
+                                               _PLANE_POST_CSC_GAMC_INDEX_ENH_2_B)$

-:51: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#51: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:328:
+                                               _PLANE_POST_CSC_GAMC_INDEX_ENH_2_B)$

-:52: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#52: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:329:
+#define PLANE_POST_CSC_GAMC_INDEX_ENH(pipe, plane, i)  \
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_INDEX_ENH_1(pipe), \
+               _PLANE_POST_CSC_GAMC_INDEX_ENH_2(pipe))

-:53: ERROR:CODE_INDENT: code indent should use tabs where possible
#53: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:330:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_INDEX_ENH_1(pipe), \$

-:53: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#53: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:330:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_INDEX_ENH_1(pipe), \$

-:54: ERROR:CODE_INDENT: code indent should use tabs where possible
#54: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:331:
+               _PLANE_POST_CSC_GAMC_INDEX_ENH_2(pipe))$

-:54: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#54: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:331:
+               _PLANE_POST_CSC_GAMC_INDEX_ENH_2(pipe))$

-:61: ERROR:CODE_INDENT: code indent should use tabs where possible
#61: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:338:
+                                               _PLANE_POST_CSC_GAMC_DATA_ENH_1_B)$

-:61: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#61: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:338:
+                                               _PLANE_POST_CSC_GAMC_DATA_ENH_1_B)$

-:63: ERROR:CODE_INDENT: code indent should use tabs where possible
#63: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:340:
+                                               _PLANE_POST_CSC_GAMC_DATA_ENH_2_B)$

-:63: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#63: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:340:
+                                               _PLANE_POST_CSC_GAMC_DATA_ENH_2_B)$

-:64: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#64: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:341:
+#define PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, i)   \
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_DATA_ENH_1(pipe), \
+               _PLANE_POST_CSC_GAMC_DATA_ENH_2(pipe))

-:65: ERROR:CODE_INDENT: code indent should use tabs where possible
#65: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:342:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_DATA_ENH_1(pipe), \$

-:65: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#65: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:342:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_DATA_ENH_1(pipe), \$

-:66: ERROR:CODE_INDENT: code indent should use tabs where possible
#66: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:343:
+               _PLANE_POST_CSC_GAMC_DATA_ENH_2(pipe))$

-:66: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#66: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:343:
+               _PLANE_POST_CSC_GAMC_DATA_ENH_2(pipe))$

-:73: ERROR:CODE_INDENT: code indent should use tabs where possible
#73: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:350:
+                                               _PLANE_POST_CSC_GAMC_INDEX_1_B)$

-:73: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#73: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:350:
+                                               _PLANE_POST_CSC_GAMC_INDEX_1_B)$

-:75: ERROR:CODE_INDENT: code indent should use tabs where possible
#75: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:352:
+                                               _PLANE_POST_CSC_GAMC_INDEX_2_B)$

-:75: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#75: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:352:
+                                               _PLANE_POST_CSC_GAMC_INDEX_2_B)$

-:76: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#76: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:353:
+#define PLANE_POST_CSC_GAMC_INDEX(pipe, plane, i)      \
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_INDEX_1(pipe), \
+               _PLANE_POST_CSC_GAMC_INDEX_2(pipe))

-:77: ERROR:CODE_INDENT: code indent should use tabs where possible
#77: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:354:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_INDEX_1(pipe), \$

-:77: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#77: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:354:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_INDEX_1(pipe), \$

-:78: ERROR:CODE_INDENT: code indent should use tabs where possible
#78: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:355:
+               _PLANE_POST_CSC_GAMC_INDEX_2(pipe))$

-:78: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#78: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:355:
+               _PLANE_POST_CSC_GAMC_INDEX_2(pipe))$

-:85: ERROR:CODE_INDENT: code indent should use tabs where possible
#85: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:362:
+                                               _PLANE_POST_CSC_GAMC_DATA_1_B)$

-:85: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#85: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:362:
+                                               _PLANE_POST_CSC_GAMC_DATA_1_B)$

-:87: ERROR:CODE_INDENT: code indent should use tabs where possible
#87: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:364:
+                                               _PLANE_POST_CSC_GAMC_DATA_2_B)$

-:87: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#87: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:364:
+                                               _PLANE_POST_CSC_GAMC_DATA_2_B)$

-:88: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#88: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:365:
+#define PLANE_POST_CSC_GAMC_DATA(pipe, plane, i)       \
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_DATA_1(pipe), \
+               _PLANE_POST_CSC_GAMC_DATA_2(pipe))

-:89: ERROR:CODE_INDENT: code indent should use tabs where possible
#89: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:366:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_DATA_1(pipe), \$

-:89: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#89: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:366:
+               _MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_DATA_1(pipe), \$

-:90: ERROR:CODE_INDENT: code indent should use tabs where possible
#90: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:367:
+               _PLANE_POST_CSC_GAMC_DATA_2(pipe))$

-:90: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#90: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:367:
+               _PLANE_POST_CSC_GAMC_DATA_2(pipe))$

total: 24 errors, 28 warnings, 6 checks, 79 lines checked
fb3a7fc707f0 drm/i915/color: Program Pre-CSC registers
67eb9d18378b drm/i915/xelpd: Program Plane Post CSC Registers
c201eaf866b5 drm/i915/color: Enable Plane Color Pipelines
8c166e13943d drm/doc/rfc: Add documentation for multi-segmented 1D LUT


