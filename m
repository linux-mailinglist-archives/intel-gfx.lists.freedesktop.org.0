Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 676FC14F58F
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2020 02:07:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCA616E28E;
	Sat,  1 Feb 2020 01:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 31DB76E28E;
 Sat,  1 Feb 2020 01:06:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21C89A0119;
 Sat,  1 Feb 2020 01:06:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Sat, 01 Feb 2020 01:06:58 -0000
Message-ID: <158051921810.32692.15230608585837512098@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200131214701.1085737-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200131214701.1085737-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_In_order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP?=
 =?utf-8?q?_SDPs?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs
URL   : https://patchwork.freedesktop.org/series/72853/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
974c950dba68 drm: add DP 1.4 VSC SDP Payload related enums
b5932d8b337a drm/i915: Add DP VSC SDP payload data to intel_crtc_state.infoframes
fe36e97597d0 drm/i915/dp: Add compute routine for DP VSC SDP
dab670ba6466 drm/i915/dp: Add compute routine for DP HDR Metadata Infoframe SDP
-:40: WARNING:LONG_LINE: line over 100 characters
#40: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2483:
+	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);

total: 0 errors, 1 warnings, 0 checks, 33 lines checked
4d1d1328db05 drm/i915/dp: Add writing of DP SDPs (Secondary Data Packet)
a1ee3b6d5e37 video/hdmi: Add Unpack only function for DRM infoframe
ee3cca76be12 drm/i915/dp: Read out DP SDPs (Secondary Data Packet)
-:43: ERROR:SPACING: space prohibited before that close parenthesis ')'
#43: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4933:
+	if (sdp->sdp_header.HB0 != 0 )

-:96: WARNING:LINE_SPACING: Missing a blank line after declarations
#96: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4986:
+	const struct dp_sdp *sdp = buffer;
+	if (size < sizeof(struct dp_sdp))

-:99: ERROR:SPACING: space prohibited before that close parenthesis ')'
#99: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4989:
+	if (sdp->sdp_header.HB0 != 0 )

-:159: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#159: FILE: drivers/gpu/drm/i915/display/intel_dp.c:5049:
+
+}

total: 2 errors, 1 warnings, 1 checks, 185 lines checked
71d4541b4e2b drm/i915/dp: Add logging function for DP VSC SDP
-:181: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#181: FILE: drivers/gpu/drm/i915/display/intel_dp.c:5255:
+	dp_sdp_log("    colorspace: %s\n",
+			dp_colorspace_get_name(vsc->colorspace));

-:183: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#183: FILE: drivers/gpu/drm/i915/display/intel_dp.c:5257:
+	dp_sdp_log("    colorimetry: %s\n",
+			dp_colorimetry_get_name(vsc->colorspace, vsc->colorimetry));

-:184: ERROR:SPACING: space required after that ',' (ctx:VxV)
#184: FILE: drivers/gpu/drm/i915/display/intel_dp.c:5258:
+	dp_sdp_log("    bpc: %u\n",vsc->bpc);
 	                          ^

-:186: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#186: FILE: drivers/gpu/drm/i915/display/intel_dp.c:5260:
+	dp_sdp_log("    dynamic range: %s\n",
+			dp_dynamic_range_get_name(vsc->dynamic_range));

-:188: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#188: FILE: drivers/gpu/drm/i915/display/intel_dp.c:5262:
+	dp_sdp_log("    content type: %s\n",
+			dp_content_type_get_name(vsc->content_type));

-:190: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#190: FILE: drivers/gpu/drm/i915/display/intel_dp.c:5264:
+}
+#undef dp_sdp_log

total: 1 errors, 0 warnings, 5 checks, 201 lines checked
36bad01ec45b drm/i915: Include HDMI DRM infoframe in the crtc state dump
5e7f5283440d drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
4018f46daed3 drm/i915: Include DP VSC SDP in the crtc state dump
598b9e7b6d4b drm/i915: Program DP SDPs with computed configs
ed56d2bf8bf9 drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
2ca13c74b7ea drm/i915: Add state readout for DP VSC SDP
-:76: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#76: FILE: drivers/gpu/drm/i915/display/intel_display.c:13869:
+#define PIPE_CONF_CHECK_DP_VSC_SDP(name) do { \
+	if (!intel_compare_dp_vsc_sdp(&current_config->infoframes.name, \
+				      &pipe_config->infoframes.name)) { \
+		pipe_config_dp_vsc_sdp_mismatch(dev_priv, fastset, __stringify(name), \
+						&current_config->infoframes.name, \
+						&pipe_config->infoframes.name); \
+		ret = false; \
+	} \
+} while (0)

-:86: CHECK:LINE_SPACING: Please don't use multiple blank lines
#86: FILE: drivers/gpu/drm/i915/display/intel_display.c:13879:
+
+

total: 0 errors, 0 warnings, 2 checks, 74 lines checked
4b64dff6dce0 drm/i915: Program DP SDPs on pipe updates
2d4bcb15a15d drm/i915: Stop sending DP SDPs on intel_ddi_post_disable_dp()
762cbeda3c0d drm/i915/dp: Add compute routine for DP PSR VSC SDP
89ecb4d12fb1 drm/i915/psr: Use new DP VSC SDP compute routine on PSR
-:13: WARNING:TYPO_SPELLING: 'defintion' may be misspelled - perhaps 'definition'?
#13: 
it moves defintion of "struct intel_dp_vsc_sdp" to i915_drv.h .

total: 0 errors, 1 warnings, 0 checks, 180 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
