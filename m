Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2C21A0882
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 09:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02AD26E560;
	Tue,  7 Apr 2020 07:41:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 91E606E560;
 Tue,  7 Apr 2020 07:41:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4766EA00C7;
 Tue,  7 Apr 2020 07:41:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jeevan B" <jeevan.b@intel.com>
Date: Tue, 07 Apr 2020 07:41:10 -0000
Message-ID: <158624527028.26325.608853901638056038@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1586242207-23214-1-git-send-email-jeevan.b@intel.com>
In-Reply-To: <1586242207-23214-1-git-send-email-jeevan.b@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/5=5D_drm=3A_report_dp_downstream_?=
 =?utf-8?q?port_type_as_a_subconnector_property?=
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

Series: series starting with [1/5] drm: report dp downstream port type as a subconnector property
URL   : https://patchwork.freedesktop.org/series/75585/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4bd9a33efdc0 drm: report dp downstream port type as a subconnector property
-:54: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_Unknown>
#54: FILE: drivers/gpu/drm/drm_connector.c:847:
+	{ DRM_MODE_SUBCONNECTOR_Unknown,   "Unknown"   }, /* DVI-I, TV-out and DP */

-:76: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_DisplayPort>
#76: FILE: drivers/gpu/drm/drm_connector.c:878:
+	{ DRM_MODE_SUBCONNECTOR_DisplayPort, "DP"        }, /* DP */

-:77: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_Wireless>
#77: FILE: drivers/gpu/drm/drm_connector.c:879:
+	{ DRM_MODE_SUBCONNECTOR_Wireless,    "Wireless"  }, /* DP */

-:78: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_Native>
#78: FILE: drivers/gpu/drm/drm_connector.c:880:
+	{ DRM_MODE_SUBCONNECTOR_Native,	     "Native"    }, /* DP */

-:119: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#119: FILE: drivers/gpu/drm/drm_connector.c:1311:
+			drm_property_create_enum(connector->dev,
+				DRM_MODE_PROP_IMMUTABLE,

-:152: WARNING:LINE_SPACING: Missing a blank line after declarations
#152: FILE: drivers/gpu/drm/drm_dp_helper.c:608:
+	int type;
+	if (!drm_dp_is_branch(dpcd))

-:213: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#213: FILE: drivers/gpu/drm/drm_dp_helper.c:669:
+	drm_object_property_set_value(&connector->base,
+			connector->dev->mode_config.dp_subconnector_property,

-:298: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_Automatic>
#298: FILE: include/uapi/drm/drm_mode.h:335:
+	DRM_MODE_SUBCONNECTOR_Automatic   = 0,  /* DVI-I, TV     */

-:303: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_Composite>
#303: FILE: include/uapi/drm/drm_mode.h:340:
+	DRM_MODE_SUBCONNECTOR_Composite   = 5,  /*        TV     */

-:305: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_Component>
#305: FILE: include/uapi/drm/drm_mode.h:342:
+	DRM_MODE_SUBCONNECTOR_Component   = 8,  /*        TV     */

total: 0 errors, 1 warnings, 9 checks, 234 lines checked
d2c8d8547c2a drm/i915: utilize subconnector property for DP
2dfa92187ee6 drm/nouveau: utilize subconnector property for DP
-:28: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_Unknown>
#28: FILE: drivers/gpu/drm/nouveau/nouveau_connector.c:653:
+		enum drm_mode_subconnector subconnector = DRM_MODE_SUBCONNECTOR_Unknown;

-:33: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#33: FILE: drivers/gpu/drm/nouveau/nouveau_connector.c:658:
+		drm_object_property_set_value(&connector->base,
+			connector->dev->mode_config.dp_subconnector_property,

total: 0 errors, 0 warnings, 2 checks, 53 lines checked
39a32c6dd117 drm/amdgpu: utilize subconnector property for DP through atombios
492358bb545e drm/amdgpu: utilize subconnector property for DP through DisplayManager
-:38: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_Native>
#38: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:128:
+		return DRM_MODE_SUBCONNECTOR_Native;

-:49: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_Unknown>
#49: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:139:
+		return DRM_MODE_SUBCONNECTOR_Unknown;

-:66: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#66: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:156:
+	drm_object_property_set_value(&connector->base,
+			connector->dev->mode_config.dp_subconnector_property,

total: 0 errors, 0 warnings, 3 checks, 80 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
