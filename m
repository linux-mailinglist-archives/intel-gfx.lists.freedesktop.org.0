Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDE2A5D7A9
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 08:56:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 663F110E730;
	Wed, 12 Mar 2025 07:56:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A31B10E73C;
 Wed, 12 Mar 2025 07:56:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Plane_Color_Pipeline?=
 =?utf-8?q?_support_for_Intel_platforms_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Mar 2025 07:56:34 -0000
Message-ID: <174176619442.23599.10798363240948727319@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <20250312072425.3099205-1-uma.shankar@intel.com>
In-Reply-To: <20250312072425.3099205-1-uma.shankar@intel.com>
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

Series: Plane Color Pipeline support for Intel platforms (rev4)
URL   : https://patchwork.freedesktop.org/series/129811/
State : warning

== Summary ==

Error: dim checkpatch failed
143840575449 drm: color pipeline base work
-:46: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#46: 
new file mode 100644

-:669: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#669: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1243:
+__set_colorop_in_tf_1d_curve(struct dc_plane_state *dc_plane_state,
+		       struct drm_colorop_state *colorop_state)

-:749: CHECK:SPACING: No space is necessary after a cast
#749: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1323:
+			ctm = blob ? (struct drm_color_ctm_3x4 *) blob->data : NULL;

-:753: CHECK:BRACES: Unbalanced braces around else statement
#753: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1327:
+		} else

-:803: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#803: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1377:
+	uint32_t shaper_size;

-:819: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#819: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1393:
+		tf->tf = default_tf = amdgpu_colorop_tf_to_dc_tf(colorop_state->curve_1d_type);

-:847: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "shaper_lut"
#847: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1421:
+		shaper_size = shaper_lut != NULL ? shaper_size : 0;

-:868: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#868: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1442:
+				uint32_t drm_lut3d_size,

-:884: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#884: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1458:
+
+}

-:899: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#899: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1473:
+	uint32_t lut3d_size;

-:920: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "lut3d"
#920: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1494:
+		lut3d_size = lut3d != NULL ? lut3d_size : 0;

-:949: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#949: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1523:
+	uint32_t blend_size;

-:966: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#966: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1540:
+		tf->tf = default_tf = amdgpu_colorop_tf_to_dc_tf(colorop_state->curve_1d_type);

-:994: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "blend_lut"
#994: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1568:
+		blend_size = blend_lut != NULL ? blend_size : 0;

-:1013: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1013: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c:1630:
+amdgpu_dm_plane_set_colorop_properties(struct drm_plane_state *plane_state,
+		       struct dc_plane_state *dc_plane_state)

-:1177: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#1177: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:64:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1196: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#1196: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:83:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1207: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#1207: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:94:
+	drm_colorop_set_next_property(ops[i-1], ops[i]);
 	                                   ^

-:1212: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#1212: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:99:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1223: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#1223: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:110:
+	drm_colorop_set_next_property(ops[i-1], ops[i]);
 	                                   ^

-:1228: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#1228: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:115:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1241: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#1241: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:128:
+	drm_colorop_set_next_property(ops[i-1], ops[i]);
 	                                   ^

-:1246: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#1246: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:133:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1259: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#1259: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:146:
+	drm_colorop_set_next_property(ops[i-1], ops[i]);
 	                                   ^

-:1264: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#1264: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:151:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1276: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#1276: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:163:
+	drm_colorop_set_next_property(ops[i-1], ops[i]);
 	                                   ^

-:1281: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#1281: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:168:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1294: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#1294: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:181:
+	drm_colorop_set_next_property(ops[i-1], ops[i]);
 	                                   ^

-:1299: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops[i])...) over kzalloc(sizeof(struct drm_colorop)...)
#1299: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:186:
+	ops[i] = kzalloc(sizeof(struct drm_colorop), GFP_KERNEL);

-:1312: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#1312: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c:199:
+	drm_colorop_set_next_property(ops[i-1], ops[i]);
 	                                   ^

-:1391: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around pipelines[len]
#1391: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_plane.c:1801:
+	ret = amdgpu_dm_initialize_default_pipeline(plane, &(pipelines[len]));

-:1393: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#1393: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_plane.c:1803:
+		DRM_ERROR("Failed to create color pipeline for plane %d: %d\n", plane->base.id, ret);

-:1476: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1476: FILE: drivers/gpu/drm/drm_atomic.c:591:
 
+

-:1533: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1533: FILE: drivers/gpu/drm/drm_atomic.c:780:
 
+

-:1536: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1536: FILE: drivers/gpu/drm/drm_atomic.c:783:
+static void drm_atomic_colorop_print_state(struct drm_printer *p,
+		const struct drm_colorop_state *state)

-:1726: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1726: FILE: drivers/gpu/drm/drm_atomic_uapi.c:260:
 
+

-:1755: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1755: FILE: drivers/gpu/drm/drm_atomic_uapi.c:289:
+
+

-:1797: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1797: FILE: drivers/gpu/drm/drm_atomic_uapi.c:697:
+static int drm_atomic_color_set_data_property(struct drm_colorop *colorop,
+		struct drm_colorop_state *state,

-:1829: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1829: FILE: drivers/gpu/drm/drm_atomic_uapi.c:729:
+static int drm_atomic_colorop_set_property(struct drm_colorop *colorop,
+		struct drm_colorop_state *state, struct drm_file *file_priv,

-:1854: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1854: FILE: drivers/gpu/drm/drm_atomic_uapi.c:754:
+drm_atomic_colorop_get_property(struct drm_colorop *colorop,
+		const struct drm_colorop_state *state,

-:1857: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#1857: FILE: drivers/gpu/drm/drm_atomic_uapi.c:757:
+	if (property == colorop->type_property) {
[...]
+	} else if (property == colorop->bypass_property) {
[...]
+	} else if (property == colorop->curve_1d_type_property) {
[...]
+	} else if (property == colorop->multiplier_property) {
[...]
+	} else if (property == colorop->lut_size_property) {
[...]
+	} else if (property == colorop->lut3d_interpolation_property) {
[...]
+	} else if (property == colorop->data_property) {
[...]
+	} else {
[...]

-:1892: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1892: FILE: drivers/gpu/drm/drm_atomic_uapi.c:1051:
+		ret = drm_atomic_colorop_get_property(colorop,
+				colorop->state, property, val);

-:1922: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1922: FILE: drivers/gpu/drm/drm_atomic_uapi.c:1270:
+		ret = drm_atomic_colorop_set_property(colorop,
+				colorop_state, file_priv,

-:2026: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2026: FILE: drivers/gpu/drm/drm_colorop.c:86:
+
+

-:2080: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2080: FILE: drivers/gpu/drm/drm_colorop.c:140:
+		drm_object_attach_property(&colorop->base,
+					colorop->bypass_property,

-:2192: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2192: FILE: drivers/gpu/drm/drm_colorop.c:252:
+
+

-:2215: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2215: FILE: drivers/gpu/drm/drm_colorop.c:275:
+	prop = drm_property_create(dev, DRM_MODE_PROP_ATOMIC | DRM_MODE_PROP_BLOB,
+					"DATA", 0);

-:2316: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2316: FILE: drivers/gpu/drm/drm_colorop.c:376:
+int drm_colorop_mult_init(struct drm_device *dev, struct drm_colorop *colorop,
+			      struct drm_plane *plane, bool allow_bypass)

-:2341: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#2341: FILE: drivers/gpu/drm/drm_colorop.c:401:
+			   uint32_t lut_size,

-:2410: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2410: FILE: drivers/gpu/drm/drm_colorop.c:470:
+
+

-:2435: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2435: FILE: drivers/gpu/drm/drm_colorop.c:495:
+		drm_object_property_get_default_value(&colorop->base,
+						colorop->curve_1d_type_property,

-:3127: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3127: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:344:
+
+

-:3202: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3202: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:419:
+
+

-:3222: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#3222: FILE: drivers/gpu/drm/vkms/tests/vkms_color_test.c:439:
+
+}

-:3467: ERROR:SWITCH_CASE_INDENT_LEVEL: switch and case should be at the same indent
#3467: FILE: drivers/gpu/drm/vkms/vkms_composer.c:167:
+		switch (colorop_state->curve_1d_type) {
+			case DRM_COLOROP_1D_CURVE_SRGB_INV_EOTF:
[...]
+			case DRM_COLOROP_1D_CURVE_SRGB_EOTF:
[...]
+			default:

-:3469: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#3469: FILE: drivers/gpu/drm/vkms/vkms_composer.c:169:
+				pixel->r = apply_lut_to_channel_value(&srgb_inv_eotf, pixel->r, LUT_RED);

-:3470: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#3470: FILE: drivers/gpu/drm/vkms/vkms_composer.c:170:
+				pixel->g = apply_lut_to_channel_value(&srgb_inv_eotf, pixel->g, LUT_GREEN);

-:3471: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#3471: FILE: drivers/gpu/drm/vkms/vkms_composer.c:171:
+				pixel->b = apply_lut_to_channel_value(&srgb_inv_eotf, pixel->b, LUT_BLUE);

-:3474: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#3474: FILE: drivers/gpu/drm/vkms/vkms_composer.c:174:
+				pixel->r = apply_lut_to_channel_value(&srgb_eotf, pixel->r, LUT_RED);

-:3475: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#3475: FILE: drivers/gpu/drm/vkms/vkms_composer.c:175:
+				pixel->g = apply_lut_to_channel_value(&srgb_eotf, pixel->g, LUT_GREEN);

-:3476: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#3476: FILE: drivers/gpu/drm/vkms/vkms_composer.c:176:
+				pixel->b = apply_lut_to_channel_value(&srgb_eotf, pixel->b, LUT_BLUE);

-:3480: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3480: FILE: drivers/gpu/drm/vkms/vkms_composer.c:180:
+				DRM_WARN_ONCE("unknown colorop 1D curve type %d\n",
+						colorop_state->curve_1d_type);

-:3486: CHECK:SPACING: No space is necessary after a cast
#3486: FILE: drivers/gpu/drm/vkms/vkms_composer.c:186:
+					 (struct drm_color_ctm_3x4 *) colorop_state->data->data);

-:3491: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3491: FILE: drivers/gpu/drm/vkms/vkms_composer.c:191:
+static void pre_blend_color_transform(const struct vkms_plane_state *plane_state,
+		struct line_buffer *output_buffer)

-:4510: CHECK:LINE_SPACING: Please don't use multiple blank lines
#4510: FILE: include/drm/drm_atomic.h:766:
 
+

-:4524: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#4524: FILE: include/drm/drm_atomic.h:780:
+drm_atomic_get_existing_colorop_state(struct drm_atomic_state *state,
+				    struct drm_colorop *colorop)

-:4539: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#4539: FILE: include/drm/drm_atomic.h:795:
+drm_atomic_get_old_colorop_state(struct drm_atomic_state *state,
+			       struct drm_colorop *colorop)

-:4554: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#4554: FILE: include/drm/drm_atomic.h:810:
+drm_atomic_get_new_colorop_state(struct drm_atomic_state *state,
+			       struct drm_colorop *colorop)

-:4588: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#4588: FILE: include/drm/drm_atomic.h:1077:
+#define for_each_oldnew_colorop_in_state(__state, colorop, old_colorop_state, new_colorop_state, __i) \

-:4588: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#4588: FILE: include/drm/drm_atomic.h:1077:
+#define for_each_oldnew_colorop_in_state(__state, colorop, old_colorop_state, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;		\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (old_colorop_state) = (__state)->colorops[__i].old_state,\
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:4588: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__state' - possible side-effects?
#4588: FILE: include/drm/drm_atomic.h:1077:
+#define for_each_oldnew_colorop_in_state(__state, colorop, old_colorop_state, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;		\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (old_colorop_state) = (__state)->colorops[__i].old_state,\
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:4588: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'colorop' - possible side-effects?
#4588: FILE: include/drm/drm_atomic.h:1077:
+#define for_each_oldnew_colorop_in_state(__state, colorop, old_colorop_state, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;		\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (old_colorop_state) = (__state)->colorops[__i].old_state,\
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:4588: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#4588: FILE: include/drm/drm_atomic.h:1077:
+#define for_each_oldnew_colorop_in_state(__state, colorop, old_colorop_state, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;		\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (old_colorop_state) = (__state)->colorops[__i].old_state,\
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:4592: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#4592: FILE: include/drm/drm_atomic.h:1081:
+		for_each_if ((__state)->colorops[__i].ptr &&		\

-:4598: CHECK:LINE_SPACING: Please don't use multiple blank lines
#4598: FILE: include/drm/drm_atomic.h:1087:
+
+

-:4610: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#4610: FILE: include/drm/drm_atomic.h:1099:
+#define for_each_new_colorop_in_state(__state, colorop, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;	\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:4610: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__state' - possible side-effects?
#4610: FILE: include/drm/drm_atomic.h:1099:
+#define for_each_new_colorop_in_state(__state, colorop, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;	\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:4610: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'colorop' - possible side-effects?
#4610: FILE: include/drm/drm_atomic.h:1099:
+#define for_each_new_colorop_in_state(__state, colorop, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;	\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:4610: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#4610: FILE: include/drm/drm_atomic.h:1099:
+#define for_each_new_colorop_in_state(__state, colorop, new_colorop_state, __i) \
+	for ((__i) = 0;							\
+	     (__i) < (__state)->dev->mode_config.num_colorop;	\
+	     (__i)++)							\
+		for_each_if ((__state)->colorops[__i].ptr &&		\
+			     ((colorop) = (__state)->colorops[__i].ptr,	\
+			      (void)(colorop) /* Only to avoid unused-but-set-variable warning */, \
+			      (new_colorop_state) = (__state)->colorops[__i].new_state, 1))

-:4614: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#4614: FILE: include/drm/drm_atomic.h:1103:
+		for_each_if ((__state)->colorops[__i].ptr &&		\

-:4682: CHECK:LINE_SPACING: Please don't use multiple blank lines
#4682: FILE: include/drm/drm_colorop.h:34:
+
+

-:4768: CHECK:LINE_SPACING: Please don't use multiple blank lines
#4768: FILE: include/drm/drm_colorop.h:120:
+
+

-:4790: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#4790: FILE: include/drm/drm_colorop.h:142:
+	uint64_t multiplier;

-:4920: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#4920: FILE: include/drm/drm_colorop.h:272:
+	uint32_t lut_size;

-:4995: CHECK:LINE_SPACING: Please don't use multiple blank lines
#4995: FILE: include/drm/drm_colorop.h:347:
+
+

-:4997: CHECK:LINE_SPACING: Please don't use multiple blank lines
#4997: FILE: include/drm/drm_colorop.h:349:
+
+

-:5009: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#5009: FILE: include/drm/drm_colorop.h:361:
+static inline struct drm_colorop *drm_colorop_find(struct drm_device *dev,
+		struct drm_file *file_priv,

-:5030: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#5030: FILE: include/drm/drm_colorop.h:382:
+int drm_colorop_mult_init(struct drm_device *dev, struct drm_colorop *colorop,
+			      struct drm_plane *plane, bool allow_bypass);

-:5033: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#5033: FILE: include/drm/drm_colorop.h:385:
+			   uint32_t lut_size,

-:5064: CHECK:LINE_SPACING: Please don't use multiple blank lines
#5064: FILE: include/drm/drm_colorop.h:416:
+
+

-:5085: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#5085: FILE: include/drm/drm_colorop.h:437:
+const char *drm_get_colorop_lut1d_interpolation_name(enum drm_colorop_lut1d_interpolation_type type);

-:5086: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#5086: FILE: include/drm/drm_colorop.h:438:
+const char *drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_interpolation_type type);

-:5133: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#5133: FILE: include/drm/drm_fixed.h:97:
+
+}

-:5372: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 4 errors, 14 warnings, 76 checks, 5101 lines checked
b80900e1285f drm: Add support for 3x3 CTM
b062719c032c drm: Add Enhanced LUT precision structure
c8420a7899f0 drm: Add Color lut range attributes
2426a3959abb drm: Add Color ops capability property
427cafe7b20c drm: Add 1D LUT multi-segmented color op
-:23: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#23: FILE: drivers/gpu/drm/drm_atomic.c:804:
+		drm_printf(p, "\thw cap blob id=%d\n", state->hw_caps ? state->hw_caps->base.id : 0);

total: 0 errors, 1 warnings, 0 checks, 35 lines checked
d10fa0f1b486 drm: Define helper to initialize segmented 1D LUT
fd8dce2f2807 drm/i915: Add identifiers for intel color blocks
3e9e93c72c25 drm/i915: Add intel_color_op
-:19: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#19: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1530:
+#define intel_fb_obj(x) ((x) ? to_intel_bo((x)->obj[0]) : NULL)

total: 0 errors, 0 warnings, 1 checks, 31 lines checked
695c45cfbb48 drm/i915/color: Add helper to create intel colorop
22a2f0684a93 drm/i915/color: Create a transfer function color pipeline
5b4a3318c16c drm/i915/color: Add and attach COLORPIPELINE plane property
943b8dee9574 drm/i915/color: Add framework to set colorop
5eff15398692 drm/i915/color: Add callbacks to set plane CTM
28dfdb9b3650 drm/i915/color: Add new color callbacks for Xelpd
aa0afea34da2 drm/i915/color: Add plane CTM callback for D13 and beyond
65176f77e4fa drm/i915: Add register definitions for Plane Degamma
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
bd6f18ba5d50 drm/i915/color: Add framework to program PRE/POST CSC LUT
f2a1e8d0a761 drm/i915: Add register definitions for Plane Post CSC
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
56b161846bcb drm/i915/color: Program Pre-CSC registers
dd143ec63827 drm/i915/xelpd: Program Plane Post CSC Registers
36b342af12b4 drm/i915/color: Enable Plane Color Pipelines
0938c1ff3e6f drm/doc/rfc: Add documentation for multi-segmented 1D LUT


