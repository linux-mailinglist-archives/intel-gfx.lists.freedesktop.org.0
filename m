Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 321EB11D853
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 22:12:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91B8F6E1EE;
	Thu, 12 Dec 2019 21:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1354B6E1EE;
 Thu, 12 Dec 2019 21:12:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0A37FA0BA8;
 Thu, 12 Dec 2019 21:12:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Thu, 12 Dec 2019 21:12:31 -0000
Message-ID: <157618515101.32007.6962263130484092183@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212190230.188505-1-sean@poorly.run>
In-Reply-To: <20191212190230.188505-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_support_for_HDCP_1=2E4_over_MST_connectors_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915: Add support for HDCP 1.4 over MST connectors (rev2)
URL   : https://patchwork.freedesktop.org/series/70393/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4f25d7348ece drm/i915: Fix sha_text population code
-:53: WARNING:LINE_SPACING: Missing a blank line after declarations
#53: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:340:
+			u8 off = ((sizeof(sha_text) - j - 1 - sha_leftovers) * 8);
+			sha_text |= ksv[j] << off;

total: 0 errors, 1 warnings, 0 checks, 59 lines checked
ab50e164f964 drm/i915: Clear the repeater bit on HDCP disable
b16968ebee0e drm/i915: WARN if HDCP signalling is enabled upon disable
2ef309e174b5 drm/i915: Intercept Aksv writes in the aux hooks
135b02f35aa2 drm/i915: Use the cpu_transcoder in intel_hdcp to toggle HDCP signalling
03cad2db95dc drm/i915: Factor out hdcp->value assignments
-:59: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#59: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:905:
+			intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_ENABLED, true);

-:104: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#104: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1747:
+			intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_ENABLED,

-:116: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#116: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1761:
+			intel_hdcp_update_value(connector,
+					DRM_MODE_CONTENT_PROTECTION_ENABLED,

-:128: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#128: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1778:
+		intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_DESIRED, true);

total: 0 errors, 0 warnings, 4 checks, 138 lines checked
46a30f077469 drm/i915: Protect workers against disappearing connectors
5cf2459e1ab8 drm/i915: Don't fully disable HDCP on a port if multiple pipes are using it
d1165847a339 drm/i915: Support DP MST in enc_to_dig_port() function
f03715af66e3 drm/i915: Use ddi_update_pipe in intel_dp_mst
-:51: CHECK:LINE_SPACING: Please don't use multiple blank lines
#51: FILE: drivers/gpu/drm/i915/display/intel_dp.h:126:
 
+

total: 0 errors, 0 warnings, 1 checks, 40 lines checked
42978bd3f621 drm/i915: Expose HDCP shim functions from dp for use by dp_mst
-:29: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#29: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1644:
+int intel_dp_hdcp_read_bstatus(struct intel_digital_port *intel_dig_port,
+				      u8 *bstatus);

-:75: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#75: FILE: drivers/gpu/drm/i915/display/intel_dp.c:5962:
+int intel_dp_hdcp_read_bstatus(struct intel_digital_port *intel_dig_port,
 				      u8 *bstatus)

total: 0 errors, 0 warnings, 2 checks, 106 lines checked
33b2dcba156f drm/i915: Add HDCP 1.4 support for MST connectors
-:144: WARNING:LINE_SPACING: Missing a blank line after declarations
#144: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:659:
+		int ret = intel_hdcp_init(intel_connector, &intel_dp_hdcp_shim);
+		if (ret)

total: 0 errors, 1 warnings, 0 checks, 124 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
