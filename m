Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D8D24A2BB
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 17:21:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4901C6E439;
	Wed, 19 Aug 2020 15:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 776436E439;
 Wed, 19 Aug 2020 15:21:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70D3FA47EA;
 Wed, 19 Aug 2020 15:21:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Wed, 19 Aug 2020 15:21:50 -0000
Message-ID: <159785051045.23597.14390866595202325259@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200818153910.27894-1-sean@poorly.run>
In-Reply-To: <20200818153910.27894-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_support_for_HDCP_1=2E4_over_MST_=28rev3=29?=
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

Series: drm/i915: Add support for HDCP 1.4 over MST (rev3)
URL   : https://patchwork.freedesktop.org/series/78749/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
75835fa85a82 drm/i915: Fix sha_text population code
-:72: WARNING:LINE_SPACING: Missing a blank line after declarations
#72: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:341:
+			u8 off = ((sizeof(sha_text) - j - 1 - sha_leftovers) * 8);
+			sha_text |= ksv[j] << off;

total: 0 errors, 1 warnings, 0 checks, 61 lines checked
2022ef4a6151 drm/i915: Clear the repeater bit on HDCP disable
f75a1292a09a drm/i915: WARN if HDCP signalling is enabled upon disable
f61be32af4f4 drm/i915: Intercept Aksv writes in the aux hooks
cd2828c49252 drm/i915: Use the cpu_transcoder in intel_hdcp to toggle HDCP signalling
7659c82aec36 drm/i915: Factor out hdcp->value assignments
-:78: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#78: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:930:
+			intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_ENABLED, true);

-:123: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#123: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1799:
+			intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_ENABLED,

-:135: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#135: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1814:
+			intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_ENABLED,

-:147: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#147: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1834:
+		intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_DESIRED, true);

total: 0 errors, 0 warnings, 4 checks, 138 lines checked
f6bb1a3e3379 drm/i915: Protect workers against disappearing connectors
-:95: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#95: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:2205:
+	drm_WARN_ON(connector->base.dev,
+		connector->base.registration_state == DRM_CONNECTOR_REGISTERED);

total: 0 errors, 0 warnings, 1 checks, 71 lines checked
aae84a3d1e58 drm/i915: Clean up intel_hdcp_disable
c9bf9bc90816 drm/i915: Don't fully disable HDCP on a port if multiple pipes are using it
2b6b206b775b drm/i915: Support DP MST in enc_to_dig_port() function
ec3ad644d55f drm/i915: Use ddi_update_pipe in intel_dp_mst
3c4ef5d3a2fa drm/i915: Factor out HDCP shim functions from dp for use by dp_mst
-:692: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#692: 
new file mode 100644

-:697: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_dp_hdcp.c', please use '//' instead
#697: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:1:
+/* SPDX-License-Identifier: MIT */

-:697: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#697: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:1:
+/* SPDX-License-Identifier: MIT */

-:878: WARNING:LINE_SPACING: Missing a blank line after declarations
#878: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:182:
+		size_t len = min(num_downstream - i, 3) * DRM_HDCP_KSV_LEN;
+		ret = drm_dp_dpcd_read(&dig_port->dp.aux,

-:1254: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1254: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:558:
+
+}

total: 0 errors, 4 warnings, 1 checks, 1276 lines checked
cbf6864233d8 drm/i915: Plumb port through hdcp init
88ed54f45d4a drm/i915: Add connector to hdcp_shim->check_link()
ee796c747bb0 drm/mst: Add support for QUERY_STREAM_ENCRYPTION_STATUS MST sideband message
-:119: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#119: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:982:
+drm_dp_sideband_parse_query_stream_enc_status(

-:197: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#197: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:3256:
+int drm_dp_send_query_stream_enc_status(struct drm_dp_mst_topology_mgr *mgr,
+		struct drm_dp_mst_port *port,

-:377: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#377: FILE: include/drm/drm_dp_mst_helper.h:853:
+int drm_dp_send_query_stream_enc_status(struct drm_dp_mst_topology_mgr *mgr,
+		struct drm_dp_mst_port *port,

total: 0 errors, 0 warnings, 3 checks, 315 lines checked
8b877b97b221 drm/i915: Print HDCP version info for all connectors
4e90cfaa37a5 drm/i915: Add HDCP 1.4 support for MST connectors
-:76: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#76: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:639:
+		drm_dbg_kms(&i915->drm, "%s HDCP signalling failed (%d)\n",
+			      enable ? "Enable" : "Disable", ret);

-:174: CHECK:LINE_SPACING: Please don't use multiple blank lines
#174: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:812:
 
+

total: 0 errors, 0 warnings, 2 checks, 138 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
