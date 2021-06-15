Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C37EA3A8326
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 16:46:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AC7E6E30D;
	Tue, 15 Jun 2021 14:46:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5E59E89FBC;
 Tue, 15 Jun 2021 14:46:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 55958A0BCB;
 Tue, 15 Jun 2021 14:46:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Werner Sembach" <wse@tuxedocomputers.com>
Date: Tue, 15 Jun 2021 14:46:21 -0000
Message-ID: <162376838134.8819.11572214861649708626@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210615141426.6001-1-wse@tuxedocomputers.com>
In-Reply-To: <20210615141426.6001-1-wse@tuxedocomputers.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_New_uAPI_drm_properties_for_color_management?=
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

Series: New uAPI drm properties for color management
URL   : https://patchwork.freedesktop.org/series/91523/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3ad7ae056858 drm/amd/display: Remove unnecessary SIGNAL_TYPE_HDMI_TYPE_A check
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
Without further knowledge if YCbCr 4:2:0 is supported outside of HDMI, there is

-:32: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#32: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5356:
 	if (drm_mode_is_420_only(info, mode_in)
+			|| (drm_mode_is_420_also(info, mode_in) && aconnector->force_yuv420_output))

total: 0 errors, 1 warnings, 1 checks, 11 lines checked
c50d857bd4d3 drm/amd/display: Add missing cases convert_dc_color_depth_into_bpc
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
convert_dc_color_depth_into_bpc() that converts the enum dc_color_depth to an

total: 0 errors, 1 warnings, 0 checks, 10 lines checked
e8e22adbee4c drm/uAPI: Add "active bpc" as feedback channel for "max bpc" drm property
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
Add a new general drm property "active bpc" which can be used by graphic drivers

-:61: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#61: FILE: drivers/gpu/drm/drm_connector.c:2180:
+		prop = drm_property_create_range(dev, DRM_MODE_PROP_IMMUTABLE, "active bpc", min, max);

total: 0 errors, 2 warnings, 0 checks, 82 lines checked
8681f2f96c3c drm/amd/display: Add handling for new "active bpc" property
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
This commit implements the "active bpc" drm property for the AMD GPU driver.

-:33: WARNING:LINE_SPACING: Missing a blank line after declarations
#33: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9091:
+		struct drm_crtc *crtc = new_con_state->crtc;
+		if (crtc) {

-:38: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#38: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9096:
+				drm_connector_set_active_bpc_property(connector,
+					convert_dc_color_depth_into_bpc(

-:38: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#38: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9096:
+					convert_dc_color_depth_into_bpc(

-:41: ERROR:ELSE_AFTER_BRACE: else should follow close brace '}'
#41: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9099:
+		}
+		else

total: 1 errors, 2 warnings, 2 checks, 42 lines checked
e2c98762abb7 drm/i915/display: Add handling for new "active bpc" property
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
This commit implements the "active bpc" drm property for the Intel GPU driver.

-:31: WARNING:LINE_SPACING: Missing a blank line after declarations
#31: FILE: drivers/gpu/drm/i915/display/intel_display.c:10916:
+		struct intel_crtc *crtc = to_intel_crtc(new_conn_state->crtc);
+		if (crtc) {

-:31: CHECK:BRACES: braces {} should be used on all arms of this statement
#31: FILE: drivers/gpu/drm/i915/display/intel_display.c:10916:
+		if (crtc) {
[...]
+		else
[...]

-:32: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#32: FILE: drivers/gpu/drm/i915/display/intel_display.c:10917:
+			struct intel_crtc_state *new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);

-:33: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#33: FILE: drivers/gpu/drm/i915/display/intel_display.c:10918:
+			drm_connector_set_active_bpc_property(connector, new_crtc_state->pipe_bpp / 3);

-:33: WARNING:LINE_SPACING: Missing a blank line after declarations
#33: FILE: drivers/gpu/drm/i915/display/intel_display.c:10918:
+			struct intel_crtc_state *new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
+			drm_connector_set_active_bpc_property(connector, new_crtc_state->pipe_bpp / 3);

-:35: ERROR:ELSE_AFTER_BRACE: else should follow close brace '}'
#35: FILE: drivers/gpu/drm/i915/display/intel_display.c:10920:
+		}
+		else

-:56: ERROR:ELSE_AFTER_BRACE: else should follow close brace '}'
#56: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4695:
+	}
+	else if (DISPLAY_VER(dev_priv) >= 5) {

total: 2 errors, 5 warnings, 1 checks, 64 lines checked
212584fff8b9 drm/uAPI: Add "active color format" drm property as feedback for userspace
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
monitor. To surely predict this, one must know the exact capabilities of the

-:74: WARNING:LONG_LINE: line length of 183 exceeds 100 columns
#74: FILE: drivers/gpu/drm/drm_connector.c:2236:
+		prop = drm_property_create_enum(dev, DRM_MODE_PROP_IMMUTABLE, "active color format", drm_active_color_format_enum_list, ARRAY_SIZE(drm_active_color_format_enum_list));

-:87: WARNING:LONG_LINE_COMMENT: line length of 105 exceeds 100 columns
#87: FILE: drivers/gpu/drm/drm_connector.c:2249:
+ * drm_connector_set_active_color_format_property - sets the active color format property for a connector

-:93: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#93: FILE: drivers/gpu/drm/drm_connector.c:2255:
+void drm_connector_set_active_color_format_property(struct drm_connector *connector, u32 active_color_format)

-:95: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#95: FILE: drivers/gpu/drm/drm_connector.c:2257:
+	drm_object_property_set_value(&connector->base, connector->active_color_format_property, active_color_format);

-:124: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#124: FILE: include/drm/drm_connector.h:1720:
+void drm_connector_set_active_color_format_property(struct drm_connector *connector, u32 active_color_format);

total: 0 errors, 6 warnings, 0 checks, 94 lines checked
60256618fa4c drm/amd/display: Add handling for new "active color format" property
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
This commit implements the "active color format" drm property for the AMD GPU

-:20: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#20: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:6718:
+static int convert_dc_pixel_encoding_into_drm_color_format(enum dc_pixel_encoding display_pixel_encoding)

-:22: ERROR:SWITCH_CASE_INDENT_LEVEL: switch and case should be at the same indent
#22: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:6720:
+	switch (display_pixel_encoding) {
+		case PIXEL_ENCODING_RGB:
[...]
+		case PIXEL_ENCODING_YCBCR422:
[...]
+		case PIXEL_ENCODING_YCBCR444:
[...]
+		case PIXEL_ENCODING_YCBCR420:
[...]
+		default:

-:58: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#58: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9117:
+				drm_connector_set_active_color_format_property(connector,
+					convert_dc_pixel_encoding_into_drm_color_format(

-:58: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#58: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9117:
+					convert_dc_pixel_encoding_into_drm_color_format(

-:63: ERROR:ELSE_AFTER_BRACE: else should follow close brace '}'
#63: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9121:
 		}
+		else {

-:63: CHECK:BRACES: Unbalanced braces around else statement
#63: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9121:
+		else {

total: 2 errors, 2 warnings, 3 checks, 61 lines checked
ae0a4cc4b63e drm/i915/display: Add handling for new "active color format" property
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
This commit implements the "active color format" drm property for the Intel GPU

-:22: ERROR:SWITCH_CASE_INDENT_LEVEL: switch and case should be at the same indent
#22: FILE: drivers/gpu/drm/i915/display/intel_display.c:10614:
+	switch (output_format) {
+		case INTEL_OUTPUT_FORMAT_RGB:
[...]
+		case INTEL_OUTPUT_FORMAT_YCBCR420:
[...]
+		case INTEL_OUTPUT_FORMAT_YCBCR444:
[...]
+		default:

-:43: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_display.c:10935:
+				convert_intel_output_format_into_drm_color_format(new_crtc_state->output_format));

-:43: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#43: FILE: drivers/gpu/drm/i915/display/intel_display.c:10935:
+			drm_connector_set_active_color_format_property(connector,
+				convert_intel_output_format_into_drm_color_format(new_crtc_state->output_format));

-:46: ERROR:ELSE_AFTER_BRACE: else should follow close brace '}'
#46: FILE: drivers/gpu/drm/i915/display/intel_display.c:10937:
 		}
+		else {

-:46: CHECK:BRACES: Unbalanced braces around else statement
#46: FILE: drivers/gpu/drm/i915/display/intel_display.c:10937:
+		else {

total: 2 errors, 2 warnings, 2 checks, 65 lines checked
0fccadb22ab7 drm/uAPI: Add "active color range" drm property as feedback for userspace
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
Add a new general drm property "active color range" which can be used by graphic

-:71: WARNING:LONG_LINE: line length of 180 exceeds 100 columns
#71: FILE: drivers/gpu/drm/drm_connector.c:2290:
+		prop = drm_property_create_enum(dev, DRM_MODE_PROP_IMMUTABLE, "active color range", drm_active_color_range_enum_list, ARRAY_SIZE(drm_active_color_range_enum_list));

-:84: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#84: FILE: drivers/gpu/drm/drm_connector.c:2303:
+ * drm_connector_set_active_color_range_property - sets the active color range property for a connector

-:90: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#90: FILE: drivers/gpu/drm/drm_connector.c:2309:
+void drm_connector_set_active_color_range_property(struct drm_connector *connector, enum drm_mode_color_range active_color_range)

-:92: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#92: FILE: drivers/gpu/drm/drm_connector.c:2311:
+	drm_object_property_set_value(&connector->base, connector->active_color_range_property, active_color_range);

-:115: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#115: FILE: include/drm/drm_connector.h:659:
+ * ^I^I^I^I^I8-Bit color depth.$

-:117: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#117: FILE: include/drm/drm_connector.h:661:
+ * ^I^I^I^I^I8-Bit color depth.$

-:146: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#146: FILE: include/drm/drm_connector.h:1746:
+void drm_connector_set_active_color_range_property(struct drm_connector *connector, enum drm_mode_color_range active_color_range);

total: 0 errors, 8 warnings, 0 checks, 116 lines checked
fa47f470080a drm/amd/display: Add handling for new "active color range" property
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
This commit implements the "active color range" drm property for the AMD GPU

-:63: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#63: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9148:
+				drm_connector_set_active_color_range_property(connector,
+					convert_dc_color_space_into_drm_mode_color_range(

-:63: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#63: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9148:
+					convert_dc_color_space_into_drm_mode_color_range(

-:70: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#70: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9155:
+			drm_connector_set_active_color_range_property(connector, DRM_MODE_COLOR_RANGE_UNSET);

total: 0 errors, 2 warnings, 2 checks, 65 lines checked
3f6c38f8c4e1 drm/i915/display: Add handling for new "active color range" property
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
This commit implements the "active color range" drm property for the Intel GPU

-:21: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#21: FILE: drivers/gpu/drm/i915/display/intel_display.c:10937:
+				new_crtc_state->limited_color_range? DRM_MODE_COLOR_RANGE_LIMITED_16_235

-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_display.c:10937:
+			drm_connector_set_active_color_range_property(connector,
+				new_crtc_state->limited_color_range? DRM_MODE_COLOR_RANGE_LIMITED_16_235

-:21: ERROR:SPACING: spaces required around that '?' (ctx:VxW)
#21: FILE: drivers/gpu/drm/i915/display/intel_display.c:10937:
+				new_crtc_state->limited_color_range? DRM_MODE_COLOR_RANGE_LIMITED_16_235
 				                                   ^

-:27: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#27: FILE: drivers/gpu/drm/i915/display/intel_display.c:10943:
+			drm_connector_set_active_color_range_property(connector, DRM_MODE_COLOR_RANGE_UNSET);

total: 1 errors, 3 warnings, 1 checks, 45 lines checked
a52e822d83fb drm/uAPI: Add "preferred color format" drm property as setting for userspace
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
Add a new general drm property "preferred color format" which can be used by

-:126: WARNING:LONG_LINE: line length of 170 exceeds 100 columns
#126: FILE: drivers/gpu/drm/drm_connector.c:2266:
+		prop = drm_property_create_enum(dev, 0, "preferred color format", drm_preferred_color_format_enum_list, ARRAY_SIZE(drm_preferred_color_format_enum_list));

total: 0 errors, 2 warnings, 0 checks, 129 lines checked
8624713f5dea drm/amd/display: Add handling for new "preferred color format" property
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
This commit implements the "preferred color format" drm property for the AMD GPU

-:25: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#25: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5356:
+	if (connector_state && (connector_state->preferred_color_format == DRM_COLOR_FORMAT_YCRCB420
+			|| aconnector->force_yuv420_output) && drm_mode_is_420(info, mode_in))

-:29: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#29: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5358:
+	else if (connector_state && connector_state->preferred_color_format == DRM_COLOR_FORMAT_YCRCB444

-:30: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#30: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5359:
+	else if (connector_state && connector_state->preferred_color_format == DRM_COLOR_FORMAT_YCRCB444
+			&& connector->display_info.color_formats & DRM_COLOR_FORMAT_YCRCB444)

-:33: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#33: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5361:
+	else if (connector_state && connector_state->preferred_color_format == DRM_COLOR_FORMAT_RGB444

-:34: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#34: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5362:
+	else if (connector_state && connector_state->preferred_color_format == DRM_COLOR_FORMAT_RGB444
+			&& !drm_mode_is_420_only(info, mode_in))

-:37: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#37: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5365:
+	else /* connector_state->preferred_color_format not possible
+			|| connector_state->preferred_color_format == 0 (auto)

-:37: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#37: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5365:
+	else /* connector_state->preferred_color_format not possible
+			|| connector_state->preferred_color_format == 0 (auto)

-:38: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#38: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5366:
+			|| connector_state->preferred_color_format == 0 (auto)
+			|| connector_state->preferred_color_format == DRM_COLOR_FORMAT_YCRCB422 */

-:38: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#38: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5366:
+			|| connector_state->preferred_color_format == DRM_COLOR_FORMAT_YCRCB422 */

-:42: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#42: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5370:
+		else if ((connector->display_info.color_formats & DRM_COLOR_FORMAT_YCRCB444)
+				&& stream->signal == SIGNAL_TYPE_HDMI_TYPE_A)

total: 0 errors, 5 warnings, 6 checks, 49 lines checked
72afa8c54272 drm/i915/display: Add handling for new "preferred color format" property
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
This commit implements the "preferred color format" drm property for the Intel GPU

-:69: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#69: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:2156:
+	if (connector->ycbcr_420_allowed && conn_state->preferred_color_format == DRM_COLOR_FORMAT_YCRCB420 &&

total: 0 errors, 2 warnings, 0 checks, 55 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
