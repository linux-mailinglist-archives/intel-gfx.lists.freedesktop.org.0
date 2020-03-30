Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4641B1987F3
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 01:19:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81AE489D87;
	Mon, 30 Mar 2020 23:19:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E03A89D87;
 Mon, 30 Mar 2020 23:19:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 37C10A47E8;
 Mon, 30 Mar 2020 23:19:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Mon, 30 Mar 2020 23:19:46 -0000
Message-ID: <158561038619.13827.14908602027304864777@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200330162356.162361-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200330162356.162361-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_In_order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP?=
 =?utf-8?q?_SDPs_=28rev9=29?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev9)
URL   : https://patchwork.freedesktop.org/series/72853/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
38f26ed437b1 video/hdmi: Add Unpack only function for DRM infoframe
e58de153b99b drm/i915/dp: Read out DP SDPs
10cbc3f7cd79 drm: Add logging function for DP VSC SDP
96c9d0bf88ac drm/i915: Include HDMI DRM infoframe in the crtc state dump
c9cbe7b7bd25 drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
0845eae4c199 drm/i915: Include DP VSC SDP in the crtc state dump
bcd2ab9c0373 drm/i915: Program DP SDPs with computed configs
561b303fba93 drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
e6bbd6890567 drm/i915: Add state readout for DP VSC SDP
-:82: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#82: FILE: drivers/gpu/drm/i915/display/intel_display.c:13710:
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
de9f8e3bc14c drm/i915: Fix enabled infoframe states of lspcon
0256e6feea41 drm/i915: Program DP SDPs on pipe updates
016763fca759 drm/i915: Stop sending DP SDPs on ddi disable
f8e40f339fb2 drm/i915/dp: Add compute routine for DP PSR VSC SDP
025e44f9037e drm/i915/psr: Use new DP VSC SDP compute routine on PSR

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
