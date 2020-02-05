Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D3B15398C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 21:32:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CC6E6E9F3;
	Wed,  5 Feb 2020 20:32:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 667136E9F3;
 Wed,  5 Feb 2020 20:32:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5DBF4A0096;
 Wed,  5 Feb 2020 20:32:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Wed, 05 Feb 2020 20:32:19 -0000
Message-ID: <158093473935.17320.14059535669738305320@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200205154137.1202389-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200205154137.1202389-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_In_order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP?=
 =?utf-8?q?_SDPs_=28rev4=29?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev4)
URL   : https://patchwork.freedesktop.org/series/72853/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
337be6e4a25e drm: add DP 1.4 VSC SDP Payload related enums and a structure
8e6cf3c5fe7f drm/i915/dp: Add compute routine for DP VSC SDP
e34ff27be612 drm/i915/dp: Add compute routine for DP HDR Metadata Infoframe SDP
e92dd2d13e47 drm/i915/dp: Add writing of DP SDPs (Secondary Data Packet)
d587ae502b80 video/hdmi: Add Unpack only function for DRM infoframe
7fc4c0069309 drm/i915/dp: Read out DP SDPs (Secondary Data Packet)
c754babdda67 drm: Add logging function for DP VSC SDP
60f01133b46c drm/i915: Include HDMI DRM infoframe in the crtc state dump
983f664b850e drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
5716f680b4a0 drm/i915: Include DP VSC SDP in the crtc state dump
5070b80edd7a drm/i915: Program DP SDPs with computed configs
f5aeba2edcb3 drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
12492e08c39d drm/i915: Add state readout for DP VSC SDP
-:81: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#81: FILE: drivers/gpu/drm/i915/display/intel_display.c:13895:
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
a483a4881789 drm/i915: Program DP SDPs on pipe updates
279ec55c845f drm/i915: Stop sending DP SDPs on intel_ddi_post_disable_dp()
64b807768c4c drm/i915/dp: Add compute routine for DP PSR VSC SDP
f4f8b0f85ef9 drm/i915/psr: Use new DP VSC SDP compute routine on PSR

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
