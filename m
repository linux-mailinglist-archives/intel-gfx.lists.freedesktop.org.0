Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFC73AC7FA
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 11:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB7DD6E9CF;
	Fri, 18 Jun 2021 09:47:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 119256E9CB;
 Fri, 18 Jun 2021 09:47:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 088A2A47EA;
 Fri, 18 Jun 2021 09:47:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Werner Sembach" <wse@tuxedocomputers.com>
Date: Fri, 18 Jun 2021 09:47:51 -0000
Message-ID: <162400967100.1294.15646271940215568363@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210618091116.14428-1-wse@tuxedocomputers.com>
In-Reply-To: <20210618091116.14428-1-wse@tuxedocomputers.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_New_uAPI_drm_properties_for_color_management_=28rev2=29?=
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

Series: New uAPI drm properties for color management (rev2)
URL   : https://patchwork.freedesktop.org/series/91523/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8a1dbc104f1d drm/amd/display: Remove unnecessary SIGNAL_TYPE_HDMI_TYPE_A check
-:32: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#32: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5356:
 	if (drm_mode_is_420_only(info, mode_in)
+			|| (drm_mode_is_420_also(info, mode_in) && aconnector->force_yuv420_output))

total: 0 errors, 0 warnings, 1 checks, 11 lines checked
a184c9f6c5f9 drm/amd/display: Add missing cases convert_dc_color_depth_into_bpc
5d445706107f drm/uAPI: Add "active bpc" as feedback channel for "max bpc" drm property
f27795b7edfc drm/amd/display: Add handling for new "active bpc" property
-:40: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#40: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9097:
+				drm_connector_set_active_bpc_property(connector,
+					convert_dc_color_depth_into_bpc(

-:40: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#40: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9097:
+					convert_dc_color_depth_into_bpc(

-:42: CHECK:BRACES: Unbalanced braces around else statement
#42: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9099:
+		} else

total: 0 errors, 0 warnings, 3 checks, 42 lines checked
d894e2d6d92c drm/i915/display: Add handling for new "active bpc" property
-:33: CHECK:BRACES: braces {} should be used on all arms of this statement
#33: FILE: drivers/gpu/drm/i915/display/intel_display.c:10917:
+		if (crtc) {
[...]
+		} else
[...]

-:38: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#38: FILE: drivers/gpu/drm/i915/display/intel_display.c:10922:
+			drm_connector_set_active_bpc_property(connector,
+				new_crtc_state->pipe_bpp / 3);

-:39: CHECK:BRACES: Unbalanced braces around else statement
#39: FILE: drivers/gpu/drm/i915/display/intel_display.c:10923:
+		} else

total: 0 errors, 0 warnings, 3 checks, 66 lines checked
01063e3e0973 drm/uAPI: Add "active color format" drm property as feedback for userspace
b3388b2b31a3 drm/amd/display: Add handling for new "active color format" property
-:20: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#20: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:6718:
+static int convert_dc_pixel_encoding_into_drm_color_format(

-:60: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#60: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9119:
+				drm_connector_set_active_color_format_property(connector,
+					convert_dc_pixel_encoding_into_drm_color_format(

-:60: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#60: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9119:
+					convert_dc_pixel_encoding_into_drm_color_format(

total: 0 errors, 0 warnings, 3 checks, 61 lines checked
d20d983e5c00 drm/i915/display: Add handling for new "active color format" property
-:44: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#44: FILE: drivers/gpu/drm/i915/display/intel_display.c:10939:
+			drm_connector_set_active_color_format_property(connector,
+				convert_intel_output_format_into_drm_color_format(

-:44: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#44: FILE: drivers/gpu/drm/i915/display/intel_display.c:10939:
+				convert_intel_output_format_into_drm_color_format(

total: 0 errors, 0 warnings, 2 checks, 64 lines checked
38cabfeae439 drm/uAPI: Add "active color range" drm property as feedback for userspace
34a60f410858 drm/amd/display: Add handling for new "active color range" property
-:63: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#63: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9150:
+				drm_connector_set_active_color_range_property(connector,
+					convert_dc_color_space_into_drm_mode_color_range(

-:63: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#63: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9150:
+					convert_dc_color_space_into_drm_mode_color_range(

total: 0 errors, 0 warnings, 2 checks, 65 lines checked
4a5eb1073840 drm/i915/display: Add handling for new "active color range" property
-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_display.c:10942:
+			drm_connector_set_active_color_range_property(connector,
+				new_crtc_state->limited_color_range ?

total: 0 errors, 0 warnings, 1 checks, 45 lines checked
c75e0d2c86bc drm/uAPI: Add "preferred color format" drm property as setting for userspace
7c574ffde4b2 drm/amd/display: Add handling for new "preferred color format" property
-:25: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#25: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5356:
+	if (connector_state
+			&& (connector_state->preferred_color_format == DRM_COLOR_FORMAT_YCRCB420

-:26: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#26: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5357:
+			&& (connector_state->preferred_color_format == DRM_COLOR_FORMAT_YCRCB420
+			|| aconnector->force_yuv420_output) && drm_mode_is_420(info, mode_in))

-:31: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#31: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5360:
+	else if (connector_state
+			&& connector_state->preferred_color_format == DRM_COLOR_FORMAT_YCRCB444

-:32: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#32: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5361:
+			&& connector_state->preferred_color_format == DRM_COLOR_FORMAT_YCRCB444
+			&& connector->display_info.color_formats & DRM_COLOR_FORMAT_YCRCB444)

-:36: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#36: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5364:
+	else if (connector_state
+			&& connector_state->preferred_color_format == DRM_COLOR_FORMAT_RGB444

-:37: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#37: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5365:
+			&& connector_state->preferred_color_format == DRM_COLOR_FORMAT_RGB444
+			&& !drm_mode_is_420_only(info, mode_in))

-:48: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#48: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5376:
+		else if ((connector->display_info.color_formats & DRM_COLOR_FORMAT_YCRCB444)
+				&& stream->signal == SIGNAL_TYPE_HDMI_TYPE_A)

total: 0 errors, 0 warnings, 7 checks, 55 lines checked
7036e14723d4 drm/i915/display: Add handling for new "preferred color format" property
fb7489fcb966 drm/uAPI: Move "Broadcast RGB" property from driver specific to general context
0e59e4efe994 drm/i915/display: Use the general "Broadcast RGB" implementation
c085286ee017 drm/amd/display: Add handling for new "Broadcast RGB" property
-:32: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#32: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5272:
+			if (dc_crtc_timing->flags.Y_ONLY
+					|| preferred_color_range ==

-:41: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#41: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5280:
+			if (dc_crtc_timing->flags.Y_ONLY
+					|| preferred_color_range ==

total: 0 errors, 0 warnings, 2 checks, 67 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
