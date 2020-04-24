Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1811B762B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 15:04:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BB308911A;
	Fri, 24 Apr 2020 13:04:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3DFD48911A;
 Fri, 24 Apr 2020 13:04:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35536A47E6;
 Fri, 24 Apr 2020 13:04:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jeevan B" <jeevan.b@intel.com>
Date: Fri, 24 Apr 2020 13:04:51 -0000
Message-ID: <158773349119.10803.10529732904980808495@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1587732655-17544-1-git-send-email-jeevan.b@intel.com>
In-Reply-To: <1587732655-17544-1-git-send-email-jeevan.b@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/76430/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3b34502050b6 drm: report dp downstream port type as a subconnector property
-:57: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_Unknown>
#57: FILE: drivers/gpu/drm/drm_connector.c:847:
+	{ DRM_MODE_SUBCONNECTOR_Unknown,   "Unknown"   }, /* DVI-I, TV-out and DP */

-:79: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_DisplayPort>
#79: FILE: drivers/gpu/drm/drm_connector.c:878:
+	{ DRM_MODE_SUBCONNECTOR_DisplayPort, "DP"        }, /* DP */

-:80: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_Wireless>
#80: FILE: drivers/gpu/drm/drm_connector.c:879:
+	{ DRM_MODE_SUBCONNECTOR_Wireless,    "Wireless"  }, /* DP */

-:81: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_Native>
#81: FILE: drivers/gpu/drm/drm_connector.c:880:
+	{ DRM_MODE_SUBCONNECTOR_Native,	     "Native"    }, /* DP */

-:122: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#122: FILE: drivers/gpu/drm/drm_connector.c:1311:
+			drm_property_create_enum(connector->dev,
+				DRM_MODE_PROP_IMMUTABLE,

-:153: WARNING:LINE_SPACING: Missing a blank line after declarations
#153: FILE: drivers/gpu/drm/drm_dp_helper.c:606:
+	int type;
+	if (!drm_dp_is_branch(dpcd))

-:210: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#210: FILE: drivers/gpu/drm/drm_dp_helper.c:663:
+	drm_object_property_set_value(&connector->base,
+			connector->dev->mode_config.dp_subconnector_property,

-:295: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_Automatic>
#295: FILE: include/uapi/drm/drm_mode.h:335:
+	DRM_MODE_SUBCONNECTOR_Automatic   = 0,  /* DVI-I, TV     */

-:300: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_Composite>
#300: FILE: include/uapi/drm/drm_mode.h:340:
+	DRM_MODE_SUBCONNECTOR_Composite   = 5,  /*        TV     */

-:302: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_Component>
#302: FILE: include/uapi/drm/drm_mode.h:342:
+	DRM_MODE_SUBCONNECTOR_Component   = 8,  /*        TV     */

total: 0 errors, 1 warnings, 9 checks, 228 lines checked
5540c9591905 drm/i915: utilize subconnector property for DP
0bac12dd1549 drm/nouveau: utilize subconnector property for DP
-:27: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_Unknown>
#27: FILE: drivers/gpu/drm/nouveau/nouveau_connector.c:653:
+		enum drm_mode_subconnector subconnector = DRM_MODE_SUBCONNECTOR_Unknown;

-:32: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#32: FILE: drivers/gpu/drm/nouveau/nouveau_connector.c:658:
+		drm_object_property_set_value(&connector->base,
+			connector->dev->mode_config.dp_subconnector_property,

total: 0 errors, 0 warnings, 2 checks, 53 lines checked
e4922d3602ac drm/amdgpu: utilize subconnector property for DP through atombios
df174f027acd drm/amdgpu: utilize subconnector property for DP through DisplayManager
-:40: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_Native>
#40: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:128:
+		return DRM_MODE_SUBCONNECTOR_Native;

-:51: CHECK:CAMELCASE: Avoid CamelCase: <DRM_MODE_SUBCONNECTOR_Unknown>
#51: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:139:
+		return DRM_MODE_SUBCONNECTOR_Unknown;

-:68: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#68: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:156:
+	drm_object_property_set_value(&connector->base,
+			connector->dev->mode_config.dp_subconnector_property,

total: 0 errors, 0 warnings, 3 checks, 80 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
