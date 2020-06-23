Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBD6205757
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 18:38:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FB30897E4;
	Tue, 23 Jun 2020 16:38:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 67BC78910D;
 Tue, 23 Jun 2020 16:38:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61BB5A0BD0;
 Tue, 23 Jun 2020 16:38:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Tue, 23 Jun 2020 16:38:00 -0000
Message-ID: <159293028039.4208.16868617419984002781@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200623155907.22961-1-sean@poorly.run>
In-Reply-To: <20200623155907.22961-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_support_for_HDCP_1=2E4_over_MST?=
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

Series: drm/i915: Add support for HDCP 1.4 over MST
URL   : https://patchwork.freedesktop.org/series/78749/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
40a9cf573823 drm/i915: Fix sha_text population code
-:69: WARNING:LINE_SPACING: Missing a blank line after declarations
#69: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:341:
+			u8 off = ((sizeof(sha_text) - j - 1 - sha_leftovers) * 8);
+			sha_text |= ksv[j] << off;

total: 0 errors, 1 warnings, 0 checks, 61 lines checked
fdd9116bae73 drm/i915: Clear the repeater bit on HDCP disable
26c597bb2bdf drm/i915: WARN if HDCP signalling is enabled upon disable
2dfd826048e1 drm/i915: Intercept Aksv writes in the aux hooks
f4a73566d2ac drm/i915: Use the cpu_transcoder in intel_hdcp to toggle HDCP signalling
24dfa20af876 drm/i915: Factor out hdcp->value assignments
-:75: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#75: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:931:
+			intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_ENABLED, true);

-:120: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#120: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1800:
+			intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_ENABLED,

-:132: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#132: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1815:
+			intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_ENABLED,

-:144: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#144: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1835:
+		intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_DESIRED, true);

total: 0 errors, 0 warnings, 4 checks, 138 lines checked
96ac1382f6c4 drm/i915: Protect workers against disappearing connectors
-:92: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#92: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:2198:
+	drm_WARN_ON(connector->base.dev,
+		connector->base.registration_state == DRM_CONNECTOR_REGISTERED);

total: 0 errors, 0 warnings, 1 checks, 71 lines checked
5bef2450359c drm/i915: Clean up intel_hdcp_disable
6adefe67fdcb drm/i915: Don't fully disable HDCP on a port if multiple pipes are using it
9118a955e697 drm/i915: Support DP MST in enc_to_dig_port() function
60fe26102e05 drm/i915: Use ddi_update_pipe in intel_dp_mst
294a579032b2 drm/i915: Factor out HDCP shim functions from dp for use by dp_mst
-:687: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#687: 
new file mode 100644

-:692: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_dp_hdcp.c', please use '//' instead
#692: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:1:
+/* SPDX-License-Identifier: MIT */

-:692: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#692: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:1:
+/* SPDX-License-Identifier: MIT */

-:872: WARNING:LINE_SPACING: Missing a blank line after declarations
#872: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:181:
+		size_t len = min(num_downstream - i, 3) * DRM_HDCP_KSV_LEN;
+		ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux,

-:1248: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1248: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:557:
+
+}

total: 0 errors, 4 warnings, 1 checks, 1274 lines checked
e95d4796d643 drm/i915: Plumb port through hdcp init
b159048d4ee3 drm/i915: Add connector to hdcp_shim->check_link()
43dca30ee7d8 drm/mst: Add support for QUERY_STREAM_ENCRYPTION_STATUS MST sideband message
-:78: ERROR:CODE_INDENT: code indent should use tabs where possible
#78: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:576:
+^I^I^I^I^I^I^I ^I buf[idx]);$

-:78: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#78: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:576:
+^I^I^I^I^I^I^I ^I buf[idx]);$

-:78: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#78: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:576:
+		req->u.enc_status.valid_stream_event = FIELD_GET(BIT(2),
+							 	 buf[idx]);

-:109: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#109: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:971:
+drm_dp_sideband_parse_query_stream_enc_status(

-:179: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#179: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:3232:
+int drm_dp_send_query_stream_enc_status(struct drm_dp_mst_topology_mgr *mgr,
+		struct drm_dp_mst_port *port,

-:359: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#359: FILE: include/drm/drm_dp_mst_helper.h:853:
+int drm_dp_send_query_stream_enc_status(struct drm_dp_mst_topology_mgr *mgr,
+		struct drm_dp_mst_port *port,

total: 1 errors, 1 warnings, 4 checks, 307 lines checked
f415c158925f drm/i915: Print HDCP version info for all connectors
ff0e9553b262 drm/i915: Add HDCP 1.4 support for MST connectors
-:72: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#72: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:638:
+		drm_dbg_kms(&i915->drm, "%s HDCP signalling failed (%d)\n",
+			      enable ? "Enable" : "Disable", ret);

-:170: CHECK:LINE_SPACING: Please don't use multiple blank lines
#170: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:783:
 
+

total: 0 errors, 0 warnings, 2 checks, 138 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
