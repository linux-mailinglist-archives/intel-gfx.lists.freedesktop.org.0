Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA3E17B4D7
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 04:22:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C2106EC56;
	Fri,  6 Mar 2020 03:22:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C0C66EC54;
 Fri,  6 Mar 2020 03:22:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D426A011C;
 Fri,  6 Mar 2020 03:22:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Fri, 06 Mar 2020 03:22:52 -0000
Message-ID: <158346497215.3080.841088334465504073@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305201236.152307-1-sean@poorly.run>
In-Reply-To: <20200305201236.152307-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_support_for_HDCP_1=2E4_over_MST_connectors_?=
 =?utf-8?b?KHJldjUp?=
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

Series: drm/i915: Add support for HDCP 1.4 over MST connectors (rev5)
URL   : https://patchwork.freedesktop.org/series/70393/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f3d9bb7dc10f drm/i915: Fix sha_text population code
-:63: WARNING:LINE_SPACING: Missing a blank line after declarations
#63: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:343:
+			u8 off = ((sizeof(sha_text) - j - 1 - sha_leftovers) * 8);
+			sha_text |= ksv[j] << off;

total: 0 errors, 1 warnings, 0 checks, 61 lines checked
c8f617e7591f drm/i915: Clear the repeater bit on HDCP disable
729375a1130b drm/i915: WARN if HDCP signalling is enabled upon disable
16e8d618fa38 drm/i915: Intercept Aksv writes in the aux hooks
5bdc5dc77094 drm/i915: Use the cpu_transcoder in intel_hdcp to toggle HDCP signalling
ef2cfbb9e130 drm/i915: Factor out hdcp->value assignments
-:69: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#69: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:934:
+			intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_ENABLED, true);

-:114: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#114: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1802:
+			intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_ENABLED,

-:126: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#126: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1817:
+			intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_ENABLED,

-:138: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#138: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1837:
+		intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_DESIRED, true);

total: 0 errors, 0 warnings, 4 checks, 138 lines checked
a53b07c7917d drm/i915: Protect workers against disappearing connectors
-:86: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#86: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:2198:
+	drm_WARN_ON(connector->base.dev,
+		connector->base.registration_state == DRM_CONNECTOR_REGISTERED);

total: 0 errors, 0 warnings, 1 checks, 71 lines checked
7d468b95ce7a drm/i915: Don't fully disable HDCP on a port if multiple pipes are using it
c9622c22eb06 drm/i915: Support DP MST in enc_to_dig_port() function
7ea37f514e7b drm/i915: Use ddi_update_pipe in intel_dp_mst
e63dce8c2a3f drm/i915: Factor out HDCP shim functions from dp for use by dp_mst
-:660: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#660: 
new file mode 100644

-:665: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_dp_hdcp.c', please use '//' instead
#665: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:1:
+/* SPDX-License-Identifier: MIT */

-:665: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#665: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:1:
+/* SPDX-License-Identifier: MIT */

-:986: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#986: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:322:
+
+}

-:1065: WARNING:LINE_SPACING: Missing a blank line after declarations
#1065: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:401:
+	ssize_t ret;
+	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_BKSV, bksv,

-:1128: WARNING:LINE_SPACING: Missing a blank line after declarations
#1128: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:464:
+	ssize_t ret;
+	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_RI_PRIME,

-:1143: WARNING:LINE_SPACING: Missing a blank line after declarations
#1143: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:479:
+	u8 bstatus;
+	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_BSTATUS,

-:1163: WARNING:LINE_SPACING: Missing a blank line after declarations
#1163: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:499:
+		size_t len = min(num_downstream - i, 3) * DRM_HDCP_KSV_LEN;
+		ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux,

total: 0 errors, 7 warnings, 1 checks, 1224 lines checked
c10d2e023dd1 drm/i915: Plumb port through hdcp init
76ae56e95efc drm/i915: Add connector to hdcp_shim->check_link()
bbf7c097884e drm/mst: Add support for QUERY_STREAM_ENCRYPTION_STATUS MST sideband message
-:58: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#58: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:951:
+drm_dp_sideband_parse_query_stream_enc_status(

-:128: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#128: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:3221:
+int drm_dp_send_query_stream_enc_status(struct drm_dp_mst_topology_mgr *mgr,
+		struct drm_dp_mst_port *port,

-:273: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#273: FILE: include/drm/drm_dp_mst_helper.h:849:
+int drm_dp_send_query_stream_enc_status(struct drm_dp_mst_topology_mgr *mgr,
+		struct drm_dp_mst_port *port,

total: 0 errors, 0 warnings, 3 checks, 236 lines checked
ed43091c9480 drm/i915: Print HDCP version info for all connectors
910e44eeaee6 drm/i915: Add HDCP 1.4 support for MST connectors

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
