Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A6214158B
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2020 03:08:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B0BF6F991;
	Sat, 18 Jan 2020 02:08:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B6DF46F991;
 Sat, 18 Jan 2020 02:08:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A720DA00E9;
 Sat, 18 Jan 2020 02:08:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Sat, 18 Jan 2020 02:08:28 -0000
Message-ID: <157931330866.11508.4495763358958084733@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200117193103.156821-1-sean@poorly.run>
In-Reply-To: <20200117193103.156821-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_support_for_HDCP_1=2E4_over_MST_connectors_?=
 =?utf-8?b?KHJldjMp?=
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

Series: drm/i915: Add support for HDCP 1.4 over MST connectors (rev3)
URL   : https://patchwork.freedesktop.org/series/70393/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
312b2607dec2 drm/i915: Fix sha_text population code
-:57: WARNING:LINE_SPACING: Missing a blank line after declarations
#57: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:340:
+			u8 off = ((sizeof(sha_text) - j - 1 - sha_leftovers) * 8);
+			sha_text |= ksv[j] << off;

total: 0 errors, 1 warnings, 0 checks, 59 lines checked
15af2664aa69 drm/i915: Clear the repeater bit on HDCP disable
ba69b9f58892 drm/i915: WARN if HDCP signalling is enabled upon disable
92b934d3188d drm/i915: Intercept Aksv writes in the aux hooks
a0bd0c93c7ac drm/i915: Use the cpu_transcoder in intel_hdcp to toggle HDCP signalling
063ca0ba55a5 drm/i915: Factor out hdcp->value assignments
-:63: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#63: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:905:
+			intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_ENABLED, true);

-:108: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#108: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1747:
+			intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_ENABLED,

-:120: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#120: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1761:
+			intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_ENABLED,

-:132: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#132: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1778:
+		intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_DESIRED, true);

total: 0 errors, 0 warnings, 4 checks, 138 lines checked
271876e345d7 drm/i915: Protect workers against disappearing connectors
451df5953e02 drm/i915: Don't fully disable HDCP on a port if multiple pipes are using it
a9e16bca771e drm/i915: Support DP MST in enc_to_dig_port() function
f8c6683c2366 drm/i915: Use ddi_update_pipe in intel_dp_mst
998e6c8d1e10 drm/i915: Factor out HDCP shim functions from dp for use by dp_mst
-:649: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#649: 
new file mode 100644

-:654: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_dp_hdcp.c', please use '//' instead
#654: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:1:
+/* SPDX-License-Identifier: MIT */

-:654: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#654: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:1:
+/* SPDX-License-Identifier: MIT */

-:1050: WARNING:LINE_SPACING: Missing a blank line after declarations
#1050: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:397:
+	ssize_t ret;
+	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_BKSV, bksv,

-:1061: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1061: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:408:
+int intel_dp_hdcp_read_bstatus(struct intel_digital_port *intel_dig_port,
+				      u8 *bstatus)

-:1114: WARNING:LINE_SPACING: Missing a blank line after declarations
#1114: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:461:
+	ssize_t ret;
+	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_RI_PRIME,

-:1129: WARNING:LINE_SPACING: Missing a blank line after declarations
#1129: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:476:
+	u8 bstatus;
+	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_BSTATUS,

-:1149: WARNING:LINE_SPACING: Missing a blank line after declarations
#1149: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:496:
+		size_t len = min(num_downstream - i, 3) * DRM_HDCP_KSV_LEN;
+		ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux,

total: 0 errors, 7 warnings, 1 checks, 1216 lines checked
3132e233d7c7 drm/i915: Add HDCP 1.4 support for MST connectors

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
