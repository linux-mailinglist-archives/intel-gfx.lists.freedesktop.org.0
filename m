Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4A71568D1
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Feb 2020 05:15:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5F396E4B7;
	Sun,  9 Feb 2020 04:15:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FAED6E4B7;
 Sun,  9 Feb 2020 04:15:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 47981A0009;
 Sun,  9 Feb 2020 04:15:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Sun, 09 Feb 2020 04:15:01 -0000
Message-ID: <158122170126.18127.9206980335466188816@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200209035345.357436-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200209035345.357436-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_In_order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP?=
 =?utf-8?q?_SDPs_=28rev5=29?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev5)
URL   : https://patchwork.freedesktop.org/series/72853/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
00b0268b3c35 drm: Add DP1.4 VSC SDP Payload related Data Structures
f337401d8678 drm/i915/dp: Add compute routine for DP VSC SDP
-:117: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#117: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2446:
+	drm_WARN_ON(&dev_priv->drm, vsc->bpc == 6 &&
+				    vsc->pixelformat == DP_PIXELFORMAT_RGB);

total: 0 errors, 0 warnings, 1 checks, 117 lines checked
2b6b72262c8c drm/i915/dp: Add compute routine for DP HDR Metadata Infoframe SDP
6b0660d21141 drm/i915/dp: Add writing of DP SDPs
23aa39d1f68a video/hdmi: Add Unpack only function for DRM infoframe
a53c04de5983 drm/i915/dp: Read out DP SDPs
b1151c62aadb drm: Add logging function for DP VSC SDP
124747292677 drm/i915: Include HDMI DRM infoframe in the crtc state dump
b75f42532124 drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
f55238bf17aa drm/i915: Include DP VSC SDP in the crtc state dump
19496c35ab4f drm/i915: Program DP SDPs with computed configs
78a4484e3e5e drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
7d27e4306e8f drm/i915: Add state readout for DP VSC SDP
-:82: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#82: FILE: drivers/gpu/drm/i915/display/intel_display.c:13895:
+#define PIPE_CONF_CHECK_DP_VSC_SDP(name) do { \
+	if (!intel_compare_dp_vsc_sdp(&current_config->infoframes.name, \
+				      &pipe_config->infoframes.name)) { \
+		pipe_config_dp_vsc_sdp_mismatch(dev_priv, fastset, __stringify(name), \
+						&current_config->infoframes.name, \
+						&pipe_config->infoframes.name); \
+		ret = false; \
+	} \
+} while (0)

total: 0 errors, 0 warnings, 1 checks, 74 lines checked
49b1bee40f5f drm/i915: Disable DIPs when LSPCON is used
a220a96f626c drm/i915: Program DP SDPs on pipe updates
0042085e5a2e drm/i915: Stop sending DP SDPs on ddi disable
2e50c25511e4 drm/i915/dp: Add compute routine for DP PSR VSC SDP
9b3bbcfd33a7 drm/i915/psr: Use new DP VSC SDP compute routine on PSR

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
