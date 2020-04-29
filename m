Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D7F1BE8E5
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 22:46:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F84D6EB15;
	Wed, 29 Apr 2020 20:46:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1F5496EB15;
 Wed, 29 Apr 2020 20:46:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 115CCA011A;
 Wed, 29 Apr 2020 20:46:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Wed, 29 Apr 2020 20:46:15 -0000
Message-ID: <158819317504.6698.17797741550076186666@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200429195502.39919-1-sean@poorly.run>
In-Reply-To: <20200429195502.39919-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_support_for_HDCP_1=2E4_over_MST_connectors_?=
 =?utf-8?b?KHJldjYp?=
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

Series: drm/i915: Add support for HDCP 1.4 over MST connectors (rev6)
URL   : https://patchwork.freedesktop.org/series/70393/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7c5a77a1d31e drm/i915: Fix sha_text population code
-:66: WARNING:LINE_SPACING: Missing a blank line after declarations
#66: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:341:
+			u8 off = ((sizeof(sha_text) - j - 1 - sha_leftovers) * 8);
+			sha_text |= ksv[j] << off;

total: 0 errors, 1 warnings, 0 checks, 61 lines checked
56a12ebb5f87 drm/i915: Clear the repeater bit on HDCP disable
77560570cb05 drm/i915: WARN if HDCP signalling is enabled upon disable
5f5874553395 drm/i915: Intercept Aksv writes in the aux hooks
72c447d80879 drm/i915: Use the cpu_transcoder in intel_hdcp to toggle HDCP signalling
cd2f5f723997 drm/i915: Factor out hdcp->value assignments
-:72: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#72: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:931:
+			intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_ENABLED, true);

-:117: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#117: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1800:
+			intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_ENABLED,

-:129: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#129: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1815:
+			intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_ENABLED,

-:141: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#141: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1835:
+		intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_DESIRED, true);

total: 0 errors, 0 warnings, 4 checks, 138 lines checked
911130714349 drm/i915: Protect workers against disappearing connectors
-:89: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#89: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:2195:
+	drm_WARN_ON(connector->base.dev,
+		connector->base.registration_state == DRM_CONNECTOR_REGISTERED);

total: 0 errors, 0 warnings, 1 checks, 71 lines checked
52711d976c11 drm/i915: Don't fully disable HDCP on a port if multiple pipes are using it
2d2715a81d8a drm/i915: Support DP MST in enc_to_dig_port() function
02cdf8b227d5 drm/i915: Use ddi_update_pipe in intel_dp_mst
-:69: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#69: FILE: drivers/gpu/drm/i915/display/intel_dp.h:132:
+void intel_ddi_update_pipe(struct intel_atomic_state *state,
+						   struct intel_encoder *encoder,

total: 0 errors, 0 warnings, 1 checks, 42 lines checked
05c8e3ab9587 drm/i915: Factor out HDCP shim functions from dp for use by dp_mst
-:692: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#692: 
new file mode 100644

-:697: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_dp_hdcp.c', please use '//' instead
#697: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:1:
+/* SPDX-License-Identifier: MIT */

-:697: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#697: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:1:
+/* SPDX-License-Identifier: MIT */

-:1024: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1024: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:328:
+
+}

-:1219: WARNING:LINE_SPACING: Missing a blank line after declarations
#1219: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:523:
+		size_t len = min(num_downstream - i, 3) * DRM_HDCP_KSV_LEN;
+		ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux,

total: 0 errors, 4 warnings, 1 checks, 1282 lines checked
9b2d1bea4bd1 drm/i915: Plumb port through hdcp init
-:21: WARNING:BAD_SIGN_OFF: Duplicate signature
#21: 
Signed-off-by: Sean Paul <seanpaul@chromium.org>

total: 0 errors, 1 warnings, 0 checks, 72 lines checked
cfcc0a390986 drm/i915: Add connector to hdcp_shim->check_link()
02a575d5925b drm/mst: Add support for QUERY_STREAM_ENCRYPTION_STATUS MST sideband message
-:75: ERROR:CODE_INDENT: code indent should use tabs where possible
#75: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:576:
+^I^I^I^I^I^I^I ^I buf[idx]);$

-:75: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#75: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:576:
+^I^I^I^I^I^I^I ^I buf[idx]);$

-:75: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#75: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:576:
+		req->u.enc_status.valid_stream_event = FIELD_GET(BIT(2),
+							 	 buf[idx]);

-:106: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#106: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:971:
+drm_dp_sideband_parse_query_stream_enc_status(

-:176: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#176: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:3204:
+int drm_dp_send_query_stream_enc_status(struct drm_dp_mst_topology_mgr *mgr,
+		struct drm_dp_mst_port *port,

-:356: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#356: FILE: include/drm/drm_dp_mst_helper.h:836:
+int drm_dp_send_query_stream_enc_status(struct drm_dp_mst_topology_mgr *mgr,
+		struct drm_dp_mst_port *port,

total: 1 errors, 1 warnings, 4 checks, 307 lines checked
61361de16c42 drm/i915: Print HDCP version info for all connectors
7ef7fff8d44f drm/i915: Add HDCP 1.4 support for MST connectors
-:69: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#69: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:638:
+		drm_dbg_kms(&i915->drm, "%s HDCP signalling failed (%d)\n",
+			      enable ? "Enable" : "Disable", ret);

-:208: CHECK:LINE_SPACING: Please don't use multiple blank lines
#208: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:761:
 
+

total: 0 errors, 0 warnings, 2 checks, 171 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
