Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 930F0852A91
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 09:10:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF16E10E30E;
	Tue, 13 Feb 2024 08:10:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B196610E1DB;
 Tue, 13 Feb 2024 08:09:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Plane_Color_Pipeline?=
 =?utf-8?q?_support_for_Intel_platforms?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Feb 2024 08:09:59 -0000
Message-ID: <170781179972.1202360.6126488415449051389@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240213064835.139464-1-uma.shankar@intel.com>
In-Reply-To: <20240213064835.139464-1-uma.shankar@intel.com>
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

Series: Plane Color Pipeline support for Intel platforms
URL   : https://patchwork.freedesktop.org/series/129811/
State : warning

== Summary ==

Error: dim checkpatch failed
8c131441495a drm: color pipeline base work
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:24: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#24: 
new file mode 100644

-:29: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#29: FILE: Documentation/gpu/rfc/color_pipeline.rst:1:
+========================

-:450: CHECK:LINE_SPACING: Please don't use multiple blank lines
#450: FILE: drivers/gpu/drm/drm_atomic.c:594:
 
+

-:507: CHECK:LINE_SPACING: Please don't use multiple blank lines
#507: FILE: drivers/gpu/drm/drm_atomic.c:786:
 
+

-:510: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#510: FILE: drivers/gpu/drm/drm_atomic.c:789:
+static void drm_atomic_colorop_print_state(struct drm_printer *p,
+		const struct drm_colorop_state *state)

-:517: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#517: FILE: drivers/gpu/drm/drm_atomic.c:796:
+	drm_printf(p, "\tcurve_1d_type=%s\n", drm_get_colorop_curve_1d_type_name(state->curve_1d_type));

-:528: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#528: FILE: drivers/gpu/drm/drm_atomic.c:821:
+#if 0

-:529: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#529: FILE: drivers/gpu/drm/drm_atomic.c:822:
+       drm_printf(p, "\tcolor-pipeline=%s\n",$

-:530: ERROR:CODE_INDENT: code indent should use tabs where possible
#530: FILE: drivers/gpu/drm/drm_atomic.c:823:
+                  drm_get_color_pipeline_name(state->color_pipeline));$

-:530: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#530: FILE: drivers/gpu/drm/drm_atomic.c:823:
+                  drm_get_color_pipeline_name(state->color_pipeline));$

-:532: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#532: FILE: drivers/gpu/drm/drm_atomic.c:825:
+       drm_printf(p, "\tcolor-pipeline=%d\n",$

-:533: ERROR:CODE_INDENT: code indent should use tabs where possible
#533: FILE: drivers/gpu/drm/drm_atomic.c:826:
+                  state->color_pipeline ? state->color_pipeline->base.id : 0);$

-:533: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#533: FILE: drivers/gpu/drm/drm_atomic.c:826:
+                  state->color_pipeline ? state->color_pipeline->base.id : 0);$

-:677: CHECK:LINE_SPACING: Please don't use multiple blank lines
#677: FILE: drivers/gpu/drm/drm_atomic_uapi.c:259:
 
+

-:708: CHECK:LINE_SPACING: Please don't use multiple blank lines
#708: FILE: drivers/gpu/drm/drm_atomic_uapi.c:290:
+
+

-:738: WARNING:LINE_SPACING: Missing a blank line after declarations
#738: FILE: drivers/gpu/drm/drm_atomic_uapi.c:593:
+		struct drm_colorop *colorop = NULL;
+		colorop = drm_colorop_find(dev, file_priv, val);

-:762: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#762: FILE: drivers/gpu/drm/drm_atomic_uapi.c:707:
+static int drm_atomic_color_set_data_property(struct drm_colorop *colorop,
+		struct drm_colorop_state *state,

-:769: CHECK:LINE_SPACING: Please don't use multiple blank lines
#769: FILE: drivers/gpu/drm/drm_atomic_uapi.c:714:
+
+

-:788: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#788: FILE: drivers/gpu/drm/drm_atomic_uapi.c:733:
+static int drm_atomic_colorop_set_property(struct drm_colorop *colorop,
+		struct drm_colorop_state *state, struct drm_file *file_priv,

-:811: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#811: FILE: drivers/gpu/drm/drm_atomic_uapi.c:756:
+drm_atomic_colorop_get_property(struct drm_colorop *colorop,
+		const struct drm_colorop_state *state,

-:814: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#814: FILE: drivers/gpu/drm/drm_atomic_uapi.c:759:
+	if (property == colorop->type_property) {
[...]
+	} else if (property == colorop->bypass_property) {
[...]
+	} else if (property == colorop->curve_1d_type_property) {
[...]
+	} else if (property == colorop->data_property) {
[...]
+	} else {
[...]

-:843: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#843: FILE: drivers/gpu/drm/drm_atomic_uapi.c:1043:
+		ret = drm_atomic_colorop_get_property(colorop,
+				colorop->state, property, val);

-:873: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#873: FILE: drivers/gpu/drm/drm_atomic_uapi.c:1246:
+		ret = drm_atomic_colorop_set_property(colorop,
+				colorop_state, file_priv,

-:884: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#884: FILE: drivers/gpu/drm/drm_colorop.c:1:
+/*

-:954: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#954: FILE: drivers/gpu/drm/drm_colorop.c:71:
+	prop = drm_property_create_range(dev,
+					DRM_MODE_PROP_IMMUTABLE,

-:1007: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1007: FILE: drivers/gpu/drm/drm_colorop.c:124:
+	prop = drm_property_create_object(dev, DRM_MODE_PROP_IMMUTABLE | DRM_MODE_PROP_ATOMIC,
+			"NEXT", DRM_MODE_OBJECT_COLOROP);

-:1042: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1042: FILE: drivers/gpu/drm/drm_colorop.c:159:
+
+

-:1117: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1117: FILE: drivers/gpu/drm/drm_colorop.c:234:
+
+

-:1274: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1274: FILE: drivers/gpu/drm/tests/drm_fixp_test.c:17:
+	KUNIT_EXPECT_EQ(test, drm_int2fixp(-1), drm_sm2fixp((1ull << 63) | (1ull << DRM_FIXED_POINT)));

-:1277: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#1277: FILE: drivers/gpu/drm/tests/drm_fixp_test.c:20:
+	KUNIT_EXPECT_EQ(test, drm_fixp_from_fraction(1, 2), drm_sm2fixp(1ull << (DRM_FIXED_POINT - 1)));

-:1280: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#1280: FILE: drivers/gpu/drm/tests/drm_fixp_test.c:23:
+	KUNIT_EXPECT_EQ(test, drm_fixp_from_fraction(-1, 2), drm_sm2fixp((1ull << 63) | (1ull << (DRM_FIXED_POINT - 1))));

-:1282: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1282: FILE: drivers/gpu/drm/tests/drm_fixp_test.c:25:
+
+}

-:1310: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1310: FILE: drivers/gpu/drm/tests/drm_fixp_test.c:53:
+
+}

-:1326: WARNING:MISSING_EOF_NEWLINE: adding a line without newline at end of file
#1326: FILE: drivers/gpu/drm/tests/drm_fixp_test.c:69:
+MODULE_LICENSE("GPL and additional rights");

-:1337: WARNING:CONFIG_DESCRIPTION: please write a help paragraph that fully describes the config symbol
#1337: FILE: drivers/gpu/drm/vkms/Kconfig:17:
+config DRM_VKMS_KUNIT_TESTS
+	tristate "Tests for VKMS" if !KUNIT_ALL_TESTS
+	depends on DRM_VKMS && KUNIT
+	default KUNIT_ALL_TESTS

-:1371: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/vkms/tests/vkms_color_tests.c', please use '//' instead
#1371: FILE: drivers/gpu/drm/vkms/tests/vkms_color_tests.c:1:
+/* SPDX-License-Identifier: GPL-2.0+ */

-:1371: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#1371: FILE: drivers/gpu/drm/vkms/tests/vkms_color_tests.c:1:
+/* SPDX-License-Identifier: GPL-2.0+ */

-:1409: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#1409: FILE: drivers/gpu/drm/vkms/tests/vkms_color_tests.c:39:
+	KUNIT_EXPECT_EQ(test, drm_fixp2int(get_lut_index(&test_linear_lut, test_linear_array[0].red)), 0);

-:1412: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#1412: FILE: drivers/gpu/drm/vkms/tests/vkms_color_tests.c:42:
+		KUNIT_EXPECT_EQ(test, drm_fixp2int_ceil(get_lut_index(&test_linear_lut, test_linear_array[i].red)), i);

-:1437: WARNING:LINE_SPACING: Missing a blank line after declarations
#1437: FILE: drivers/gpu/drm/vkms/tests/vkms_color_tests.c:67:
+		int linear = apply_lut_to_channel_value(&linear_eotf, i * 0x101, LUT_RED);
+		KUNIT_EXPECT_EQ(test, DIV_ROUND_CLOSEST(linear, 0x101), i);

-:1449: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#1449: FILE: drivers/gpu/drm/vkms/tests/vkms_color_tests.c:79:
+		KUNIT_EXPECT_GE(test, final / 0x101, i-1);
 		                                      ^

-:1450: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#1450: FILE: drivers/gpu/drm/vkms/tests/vkms_color_tests.c:80:
+		KUNIT_EXPECT_LE(test, final / 0x101, i+1);
 		                                      ^

-:1612: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1612: FILE: drivers/gpu/drm/vkms/tests/vkms_color_tests.c:242:
+
+

-:1687: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1687: FILE: drivers/gpu/drm/vkms/tests/vkms_color_tests.c:317:
+
+

-:1707: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1707: FILE: drivers/gpu/drm/vkms/tests/vkms_color_tests.c:337:
+
+}

-:1723: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#1723: FILE: drivers/gpu/drm/vkms/tests/vkms_color_tests.c:353:
+};
+kunit_test_suite(vkms_color_test_suite);

-:1725: WARNING:MISSING_EOF_NEWLINE: adding a line without newline at end of file
#1725: FILE: drivers/gpu/drm/vkms/tests/vkms_color_tests.c:355:
+MODULE_LICENSE("GPL");

-:1733: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/vkms/vkms_colorop.c', please use '//' instead
#1733: FILE: drivers/gpu/drm/vkms/vkms_colorop.c:1:
+/* SPDX-License-Identifier: GPL-2.0+ */

-:1733: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#1733: FILE: drivers/gpu/drm/vkms/vkms_colorop.c:1:
+/* SPDX-License-Identifier: GPL-2.0+ */

-:1745: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#1745: FILE: drivers/gpu/drm/vkms/vkms_colorop.c:13:
+{
+

-:1751: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*op)...) over kzalloc(sizeof(struct drm_colorop)...)
#1751: FILE: drivers/gpu/drm/vkms/vkms_colorop.c:19:
+	op = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1767: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*op)...) over kzalloc(sizeof(struct drm_colorop)...)
#1767: FILE: drivers/gpu/drm/vkms/vkms_colorop.c:35:
+	op = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1782: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*op)...) over kzalloc(sizeof(struct drm_colorop)...)
#1782: FILE: drivers/gpu/drm/vkms/vkms_colorop.c:50:
+	op = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1797: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*op)...) over kzalloc(sizeof(struct drm_colorop)...)
#1797: FILE: drivers/gpu/drm/vkms/vkms_colorop.c:65:
+	op = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1826: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around pipelines[len]
#1826: FILE: drivers/gpu/drm/vkms/vkms_colorop.c:94:
+	ret = vkms_initialize_tf_pipeline(plane, &(pipelines[len]));

-:1912: ERROR:SWITCH_CASE_INDENT_LEVEL: switch and case should be at the same indent
#1912: FILE: drivers/gpu/drm/vkms/vkms_composer.c:197:
+		switch (colorop_state->curve_1d_type) {
+			case DRM_COLOROP_1D_CURVE_SRGB_INV_EOTF:
[...]
+			case DRM_COLOROP_1D_CURVE_SRGB_EOTF:
[...]
+			default:

-:1914: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#1914: FILE: drivers/gpu/drm/vkms/vkms_composer.c:199:
+				pixel->r = apply_lut_to_channel_value(&srgb_inv_eotf, pixel->r, LUT_RED);

-:1915: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#1915: FILE: drivers/gpu/drm/vkms/vkms_composer.c:200:
+				pixel->g = apply_lut_to_channel_value(&srgb_inv_eotf, pixel->g, LUT_GREEN);

-:1916: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#1916: FILE: drivers/gpu/drm/vkms/vkms_composer.c:201:
+				pixel->b = apply_lut_to_channel_value(&srgb_inv_eotf, pixel->b, LUT_BLUE);

-:1919: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#1919: FILE: drivers/gpu/drm/vkms/vkms_composer.c:204:
+				pixel->r = apply_lut_to_channel_value(&srgb_eotf, pixel->r, LUT_RED);

-:1920: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1920: FILE: drivers/gpu/drm/vkms/vkms_composer.c:205:
+				pixel->g = apply_lut_to_channel_value(&srgb_eotf, pixel->g, LUT_GREEN);

-:1921: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1921: FILE: drivers/gpu/drm/vkms/vkms_composer.c:206:
+				pixel->b = apply_lut_to_channel_value(&srgb_eotf, pixel->b, LUT_BLUE);

-:1924: WARNING:TYPO_SPELLING: 'unkown' may be misspelled - perhaps 'unknown'?
#1924: FILE: drivers/gpu/drm/vkms/vkms_composer.c:209:
+				DRM_DEBUG_DRIVER("unkown colorop 1D curve type %d\n", colorop_state->curve_1d_type);
 				                  ^^^^^^

-:1924: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#1924: FILE: drivers/gpu/drm/vkms/vkms_composer.c:209:
+				DRM_DEBUG_DRIVER("unkown colorop 1D curve type %d\n", colorop_state->curve_1d_type);

-:1929: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#1929: FILE: drivers/gpu/drm/vkms/vkms_composer.c:214:
+			apply_3x4_matrix(pixel, (struct drm_color_ctm_3x4 *) colorop_state->data->data);

-:1929: CHECK:SPACING: No space is necessary after a cast
#1929: FILE: drivers/gpu/drm/vkms/vkms_composer.c:214:
+			apply_3x4_matrix(pixel, (struct drm_color_ctm_3x4 *) colorop_state->data->data);

-:1932: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1932: FILE: drivers/gpu/drm/vkms/vkms_composer.c:217:
+
+}

-:1934: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#1934: FILE: drivers/gpu/drm/vkms/vkms_composer.c:219:
+static void pre_blend_color_transform(const struct vkms_plane_state *plane_state, struct line_buffer *output_buffer)

-:1940: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#1940: FILE: drivers/gpu/drm/vkms/vkms_composer.c:225:
+	for (size_t x = 0; x < output_buffer->n_pixels; x++) {
+

-:2030: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2030: FILE: drivers/gpu/drm/vkms/vkms_drv.h:180:
+
+

-:2038: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/vkms/vkms_luts.c', please use '//' instead
#2038: FILE: drivers/gpu/drm/vkms/vkms_luts.c:1:
+/* SPDX-License-Identifier: GPL-2.0+ */

-:2038: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#2038: FILE: drivers/gpu/drm/vkms/vkms_luts.c:1:
+/* SPDX-License-Identifier: GPL-2.0+ */

-:2310: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2310: FILE: drivers/gpu/drm/vkms/vkms_luts.c:273:
+
+

-:2857: WARNING:MISSING_EOF_NEWLINE: adding a line without newline at end of file
#2857: FILE: drivers/gpu/drm/vkms/vkms_luts.h:12:
+#endif /* _VKMS_LUTS_H_ */

-:2919: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2919: FILE: include/drm/drm_atomic.h:693:
 
+

-:2933: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2933: FILE: include/drm/drm_atomic.h:707:
+drm_atomic_get_existing_colorop_state(struct drm_atomic_state *state,
+				    struct drm_colorop *colorop)

-:2948: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2948: FILE: include/drm/drm_atomic.h:722:
+drm_atomic_get_old_colorop_state(struct drm_atomic_state *state,
+			       struct drm_colorop *colorop)

-:2963: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2963: FILE: include/drm/drm_atomic.h:737:
+drm_atomic_get_new_colorop_state(struct drm_atomic_state *state,
+			       struct drm_colorop *colorop)

-:2987: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#2987: FILE: include/drm/drm_atomic.h:1001:
+#define for_each_oldnew_colorop_in_state(__state, colorop, old_colorop_state, new_colorop_state, __i) \

-:2987: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2987: FILE: include/drm/drm_atomic.h:1001:
+#define for_each_oldnew_colorop_in_state(__state, colorop, old_colorop_state, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;	\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (old_colorop_state) = (__state)->colorops[__i].old_state,\
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:2987: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__state' - possible side-effects?
#2987: FILE: include/drm/drm_atomic.h:1001:
+#define for_each_oldnew_colorop_in_state(__state, colorop, old_colorop_state, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;	\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (old_colorop_state) = (__state)->colorops[__i].old_state,\
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:2987: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'colorop' - possible side-effects?
#2987: FILE: include/drm/drm_atomic.h:1001:
+#define for_each_oldnew_colorop_in_state(__state, colorop, old_colorop_state, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;	\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (old_colorop_state) = (__state)->colorops[__i].old_state,\
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:2987: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#2987: FILE: include/drm/drm_atomic.h:1001:
+#define for_each_oldnew_colorop_in_state(__state, colorop, old_colorop_state, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;	\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (old_colorop_state) = (__state)->colorops[__i].old_state,\
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:2991: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#2991: FILE: include/drm/drm_atomic.h:1005:
+		for_each_if ((__state)->colorops[__i].ptr &&		\

-:2997: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2997: FILE: include/drm/drm_atomic.h:1011:
+
+

-:3028: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#3028: FILE: include/drm/drm_colorop.h:1:
+/*

-:3124: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#3124: FILE: include/drm/drm_colorop.h:97:
+	unsigned index;

-:3226: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3226: FILE: include/drm/drm_colorop.h:199:
+
+

-:3228: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3228: FILE: include/drm/drm_colorop.h:201:
+
+

-:3240: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3240: FILE: include/drm/drm_colorop.h:213:
+static inline struct drm_colorop *drm_colorop_find(struct drm_device *dev,
+		struct drm_file *file_priv,

-:3244: WARNING:LINE_SPACING: Missing a blank line after declarations
#3244: FILE: include/drm/drm_colorop.h:217:
+	struct drm_mode_object *mo;
+	mo = drm_mode_object_find(dev, file_priv, id, DRM_MODE_OBJECT_COLOROP);

-:3271: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3271: FILE: include/drm/drm_colorop.h:244:
+
+

-:3284: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3284: FILE: include/drm/drm_colorop.h:257:
+
+

-:3328: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#3328: FILE: include/drm/drm_fixed.h:97:
+
+}

total: 4 errors, 42 warnings, 48 checks, 3230 lines checked
ecbcbbcf5594 drm: Add missing function declarations
07461ab41921 drm: handle NULL next colorop in drm_colorop_set_next_property
e6791343a988 drm: Fix error logging in set Color Pipeline
48e84823e698 drm: Add support for 3x3 CTM
661b9e551542 drm: Add Enhanced LUT precision structure
0991aee6f774 drm: Add 1D LUT color op
f26cd3353ff6 drm: Add Color lut range attributes
123349a6093b drm: Add Color ops capability property
dd0d7aceca23 drm: Define helper to create color ops capability property
eef35f80c4ef drm: Define helper for adding capability property for 1D LUT
3cef6fb4f715 drm/i915: Add identifiers for intel color blocks
38e4dc2117d0 drm/i915: Add intel_color_op
b9ef4da15192 drm/i915/color: Add helper to allocate intel colorop
d1b973de6844 drm/i915/color: Add helper to create intel colorop
930f2ac88eb7 drm/i915/color: Create a transfer function color pipeline
227471ff2a5c drm/i915: Define segmented Lut and add capabilities to colorop
328e84d3792e drm/i915/color: Add and attach COLORPIPELINE plane property
302d5bb7593a drm/i915/color: Add framework to set colorop
574662acdf50 drm/i915/color: Add callbacks to set plane CTM
988152760490 drm/i915/color: Add plane CTM callback for TGL and beyond
c28fd208f633 drm/i915: Add register definitions for Plane Degamma
-:36: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#36: FILE: drivers/gpu/drm/i915/i915_reg.h:6256:
+#define PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_INDEX_ENH_1(pipe), \
+		_PLANE_PRE_CSC_GAMC_INDEX_ENH_2(pipe))

-:49: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#49: FILE: drivers/gpu/drm/i915/i915_reg.h:6269:
+#define PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_DATA_ENH_1(pipe), \
+		_PLANE_PRE_CSC_GAMC_DATA_ENH_2(pipe))

-:61: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#61: FILE: drivers/gpu/drm/i915/i915_reg.h:6281:
+#define PLANE_PRE_CSC_GAMC_INDEX(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_INDEX_1(pipe), \
+		_PLANE_PRE_CSC_GAMC_INDEX_2(pipe))

-:73: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#73: FILE: drivers/gpu/drm/i915/i915_reg.h:6293:
+#define PLANE_PRE_CSC_GAMC_DATA(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_PRE_CSC_GAMC_DATA_1(pipe), \
+		_PLANE_PRE_CSC_GAMC_DATA_2(pipe))

total: 0 errors, 0 warnings, 4 checks, 63 lines checked
a3ec1abc0036 drm/i915/color: Add framework to program PRE/POST CSC LUT
4bc8e7fa9b0d drm/i915: Add register definitions for Plane Post CSC
-:24: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#24: FILE: drivers/gpu/drm/i915/i915_reg.h:6252:
+#define _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1(pipe)	_PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1_A, \

-:26: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#26: FILE: drivers/gpu/drm/i915/i915_reg.h:6254:
+#define _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2(pipe)	_PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2_A, \

-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#28: FILE: drivers/gpu/drm/i915/i915_reg.h:6256:
+#define PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_1(pipe), \
+		_PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH_2(pipe))

-:36: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#36: FILE: drivers/gpu/drm/i915/i915_reg.h:6264:
+#define _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1(pipe)	_PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1_A, \

-:38: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#38: FILE: drivers/gpu/drm/i915/i915_reg.h:6266:
+#define _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2(pipe)	_PIPE(pipe, _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2_A, \

-:40: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#40: FILE: drivers/gpu/drm/i915/i915_reg.h:6268:
+#define PLANE_POST_CSC_GAMC_SEG0_DATA_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_1(pipe), \
+		_PLANE_POST_CSC_GAMC_SEG0_DATA_ENH_2(pipe))

-:52: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#52: FILE: drivers/gpu/drm/i915/i915_reg.h:6280:
+#define PLANE_POST_CSC_GAMC_INDEX_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_INDEX_ENH_1(pipe), \
+		_PLANE_POST_CSC_GAMC_INDEX_ENH_2(pipe))

-:64: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#64: FILE: drivers/gpu/drm/i915/i915_reg.h:6292:
+#define PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_DATA_ENH_1(pipe), \
+		_PLANE_POST_CSC_GAMC_DATA_ENH_2(pipe))

-:76: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#76: FILE: drivers/gpu/drm/i915/i915_reg.h:6304:
+#define PLANE_POST_CSC_GAMC_INDEX(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_INDEX_1(pipe), \
+		_PLANE_POST_CSC_GAMC_INDEX_2(pipe))

-:88: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#88: FILE: drivers/gpu/drm/i915/i915_reg.h:6316:
+#define PLANE_POST_CSC_GAMC_DATA(pipe, plane, i)	\
+		_MMIO_PLANE_GAMC(plane, i, _PLANE_POST_CSC_GAMC_DATA_1(pipe), \
+		_PLANE_POST_CSC_GAMC_DATA_2(pipe))

total: 0 errors, 4 warnings, 6 checks, 79 lines checked
bbc7184dc987 drm/i915/color: Program Pre-CSC registers
5fa8a6b271d9 drm/i915/xelpd: Program Plane Post CSC Registers
06e2f7349885 FIXME: force disable legacy plane color properties for TGL and beyond
cbc4a0915bd3 drm/i915/color: Enable Plane Color Pipelines


