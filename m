Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B30263B8890
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 20:37:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CF0D6EA6E;
	Wed, 30 Jun 2021 18:37:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E569B6EA6D;
 Wed, 30 Jun 2021 18:37:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CFE2BA47EB;
 Wed, 30 Jun 2021 18:37:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Werner Sembach" <wse@tuxedocomputers.com>
Date: Wed, 30 Jun 2021 18:37:17 -0000
Message-ID: <162507823782.10376.8613666400059954692@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210630151018.330354-1-wse@tuxedocomputers.com>
In-Reply-To: <20210630151018.330354-1-wse@tuxedocomputers.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_New_uAPI_drm_properties_for_color_management_=28rev3=29?=
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

Series: New uAPI drm properties for color management (rev3)
URL   : https://patchwork.freedesktop.org/series/91523/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
de5b09605b88 drm/amd/display: Remove unnecessary SIGNAL_TYPE_HDMI_TYPE_A check
-:32: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#32: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5331:
 	if (drm_mode_is_420_only(info, mode_in)
+			|| (drm_mode_is_420_also(info, mode_in) && aconnector->force_yuv420_output))

total: 0 errors, 0 warnings, 1 checks, 11 lines checked
acbc1fa10104 drm/amd/display: Add missing cases convert_dc_color_depth_into_bpc
a3501a1254e9 drm/uAPI: Add "active bpc" as feedback channel for "max bpc" drm property
3ac175acf116 drm/amd/display: Add handling for new "active bpc" property
-:43: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#43: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9113:
+				drm_connector_set_active_bpc_property(connector,
+					stream->timing.flags.DSC ?

-:45: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#45: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9115:
+						convert_dc_color_depth_into_bpc(

-:47: CHECK:BRACES: Unbalanced braces around else statement
#47: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9117:
+		} else

total: 0 errors, 0 warnings, 3 checks, 47 lines checked
3e6ebc8ddc1c drm/i915/display: Add handling for new "active bpc" property
-:33: CHECK:BRACES: braces {} should be used on all arms of this statement
#33: FILE: drivers/gpu/drm/i915/display/intel_display.c:10927:
+		if (crtc) {
[...]
+		} else
[...]

-:38: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#38: FILE: drivers/gpu/drm/i915/display/intel_display.c:10932:
+			drm_connector_set_active_bpc_property(connector,
+				new_crtc_state->dsc.compression_enable ?

-:41: CHECK:BRACES: Unbalanced braces around else statement
#41: FILE: drivers/gpu/drm/i915/display/intel_display.c:10935:
+		} else

total: 0 errors, 0 warnings, 3 checks, 68 lines checked
c7e6abbdeea8 drm/uAPI: Add "active color format" drm property as feedback for userspace
b992c4fb2b09 drm/amd/display: Add handling for new "active color format" property
-:20: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#20: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:6725:
+static int convert_dc_pixel_encoding_into_drm_color_format(

-:62: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#62: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9137:
+				drm_connector_set_active_color_format_property(connector,
+					convert_dc_pixel_encoding_into_drm_color_format(

-:62: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#62: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9137:
+					convert_dc_pixel_encoding_into_drm_color_format(

total: 0 errors, 0 warnings, 3 checks, 63 lines checked
27a08747a4e0 drm/i915/display: Add handling for new "active color format" property
-:44: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#44: FILE: drivers/gpu/drm/i915/display/intel_display.c:10951:
+			drm_connector_set_active_color_format_property(connector,
+				convert_intel_output_format_into_drm_color_format(

-:44: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#44: FILE: drivers/gpu/drm/i915/display/intel_display.c:10951:
+				convert_intel_output_format_into_drm_color_format(

total: 0 errors, 0 warnings, 2 checks, 64 lines checked
dea414d4c1f5 drm/uAPI: Add "active color range" drm property as feedback for userspace
7aaeb8fe964a drm/amd/display: Add handling for new "active color range" property
-:63: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#63: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9168:
+				drm_connector_set_active_color_range_property(connector,
+					convert_dc_color_space_into_drm_mode_color_range(

-:63: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#63: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9168:
+					convert_dc_color_space_into_drm_mode_color_range(

total: 0 errors, 0 warnings, 2 checks, 65 lines checked
60c647d72801 drm/i915/display: Add handling for new "active color range" property
-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_display.c:10954:
+			drm_connector_set_active_color_range_property(connector,
+				new_crtc_state->limited_color_range ||

total: 0 errors, 0 warnings, 1 checks, 41 lines checked
6e2c78d00f47 drm/uAPI: Add "preferred color format" drm property as setting for userspace
c49700e94fa3 drm/amd/display: Add handling for new "preferred color format" property
-:25: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#25: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5331:
+	if (connector_state
+			&& (connector_state->preferred_color_format == DRM_COLOR_FORMAT_YCRCB420

-:26: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#26: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5332:
+			&& (connector_state->preferred_color_format == DRM_COLOR_FORMAT_YCRCB420
+			|| aconnector->force_yuv420_output) && drm_mode_is_420(info, mode_in))

-:31: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#31: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5335:
+	else if (connector_state
+			&& connector_state->preferred_color_format == DRM_COLOR_FORMAT_YCRCB444

-:32: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#32: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5336:
+			&& connector_state->preferred_color_format == DRM_COLOR_FORMAT_YCRCB444
+			&& connector->display_info.color_formats & DRM_COLOR_FORMAT_YCRCB444)

-:36: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#36: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5339:
+	else if (connector_state
+			&& connector_state->preferred_color_format == DRM_COLOR_FORMAT_RGB444

-:37: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#37: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5340:
+			&& connector_state->preferred_color_format == DRM_COLOR_FORMAT_RGB444
+			&& !drm_mode_is_420_only(info, mode_in))

-:48: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#48: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:5351:
+		else if ((connector->display_info.color_formats & DRM_COLOR_FORMAT_YCRCB444)
+				&& stream->signal == SIGNAL_TYPE_HDMI_TYPE_A)

total: 0 errors, 0 warnings, 7 checks, 55 lines checked
204cfad3307a drm/i915/display: Add handling for new "preferred color format" property
20d6a32d4c22 drm/uAPI: Move "Broadcast RGB" property from driver specific to general context
5f414124d4e6 drm/i915/display: Use the general "Broadcast RGB" implementation
f1f5fc6be615 drm/amd/display: Add handling for new "Broadcast RGB" property


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
