Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B268163A6E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 03:46:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7CFE6EB03;
	Wed, 19 Feb 2020 02:46:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ACFE26EB03;
 Wed, 19 Feb 2020 02:46:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A655DA363D;
 Wed, 19 Feb 2020 02:46:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Wed, 19 Feb 2020 02:46:18 -0000
Message-ID: <158208037865.21061.10931406830000489052@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218220242.107265-1-sean@poorly.run>
In-Reply-To: <20200218220242.107265-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_support_for_HDCP_1=2E4_over_MST_connectors_?=
 =?utf-8?b?KHJldjQp?=
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

Series: drm/i915: Add support for HDCP 1.4 over MST connectors (rev4)
URL   : https://patchwork.freedesktop.org/series/70393/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
00144368762c drm/i915: Fix sha_text population code
-:60: WARNING:LINE_SPACING: Missing a blank line after declarations
#60: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:342:
+			u8 off = ((sizeof(sha_text) - j - 1 - sha_leftovers) * 8);
+			sha_text |= ksv[j] << off;

total: 0 errors, 1 warnings, 0 checks, 61 lines checked
c57f20a6d5ac drm/i915: Clear the repeater bit on HDCP disable
f1e66e436fbc drm/i915: WARN if HDCP signalling is enabled upon disable
9c9e349c28d2 drm/i915: Intercept Aksv writes in the aux hooks
56ad8b94e126 drm/i915: Use the cpu_transcoder in intel_hdcp to toggle HDCP signalling
943511ab23c7 drm/i915: Factor out hdcp->value assignments
-:66: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#66: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:926:
+			intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_ENABLED, true);

-:111: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#111: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1779:
+			intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_ENABLED,

-:123: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#123: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1794:
+			intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_ENABLED,

-:135: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#135: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1814:
+		intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_DESIRED, true);

total: 0 errors, 0 warnings, 4 checks, 138 lines checked
389e75331a14 drm/i915: Protect workers against disappearing connectors
301dd5045dc9 drm/i915: Don't fully disable HDCP on a port if multiple pipes are using it
137f1748c5be drm/i915: Support DP MST in enc_to_dig_port() function
066f466f0668 drm/i915: Use ddi_update_pipe in intel_dp_mst
23e973d48595 drm/i915: Factor out HDCP shim functions from dp for use by dp_mst
-:653: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#653: 
new file mode 100644

-:658: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_dp_hdcp.c', please use '//' instead
#658: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:1:
+/* SPDX-License-Identifier: MIT */

-:658: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#658: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:1:
+/* SPDX-License-Identifier: MIT */

-:1054: WARNING:LINE_SPACING: Missing a blank line after declarations
#1054: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:397:
+	ssize_t ret;
+	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_BKSV, bksv,

-:1065: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1065: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:408:
+int intel_dp_hdcp_read_bstatus(struct intel_digital_port *intel_dig_port,
+				      u8 *bstatus)

-:1118: WARNING:LINE_SPACING: Missing a blank line after declarations
#1118: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:461:
+	ssize_t ret;
+	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_RI_PRIME,

-:1133: WARNING:LINE_SPACING: Missing a blank line after declarations
#1133: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:476:
+	u8 bstatus;
+	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_BSTATUS,

-:1153: WARNING:LINE_SPACING: Missing a blank line after declarations
#1153: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:496:
+		size_t len = min(num_downstream - i, 3) * DRM_HDCP_KSV_LEN;
+		ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux,

total: 0 errors, 7 warnings, 1 checks, 1217 lines checked
60fa90f3f472 drm/i915: Add connector to hdcp_shim->check_link()
8d2bdafbea37 drm/mst: Add support for QUERY_STREAM_ENCRYPTION_STATUS MST sideband message
-:55: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#55: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:947:
+drm_dp_sideband_parse_query_stream_enc_status(

-:125: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#125: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:3224:
+int drm_dp_send_query_stream_enc_status(struct drm_dp_mst_topology_mgr *mgr,
+		struct drm_dp_mst_port *port,

-:270: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#270: FILE: include/drm/drm_dp_mst_helper.h:849:
+int drm_dp_send_query_stream_enc_status(struct drm_dp_mst_topology_mgr *mgr,
+		struct drm_dp_mst_port *port,

total: 0 errors, 0 warnings, 3 checks, 236 lines checked
1b69e08389bd drm/i915: Add HDCP 1.4 support for MST connectors

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
