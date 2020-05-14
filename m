Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0621D27A4
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 08:24:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23F1C6E2DF;
	Thu, 14 May 2020 06:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E6C686E2DF;
 Thu, 14 May 2020 06:24:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E0F74A00CC;
 Thu, 14 May 2020 06:24:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
Date: Thu, 14 May 2020 06:24:43 -0000
Message-ID: <158943748391.2826.12120764777597281790@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200514060732.3378396-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200514060732.3378396-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_In_order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP?=
 =?utf-8?q?_SDPs_=28rev14=29?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev14)
URL   : https://patchwork.freedesktop.org/series/72853/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e1053fdca03e video/hdmi: Add Unpack only function for DRM infoframe
0a10f4cd6cbe drm/i915/dp: Read out DP SDPs
bf5fbd357375 drm: Add logging function for DP VSC SDP
b53f926b3fa5 drm/i915: Include HDMI DRM infoframe in the crtc state dump
af8b261a6986 drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
2375c1f7c8e0 drm/i915: Include DP VSC SDP in the crtc state dump
c7d93732395b drm/i915: Program DP SDPs with computed configs
1723115921c6 drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
99bcd01ba088 drm/i915: Add state readout for DP VSC SDP
-:83: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#83: FILE: drivers/gpu/drm/i915/display/intel_display.c:13750:
+#define PIPE_CONF_CHECK_DP_VSC_SDP(name) do { \
+	if (!current_config->has_psr && !pipe_config->has_psr && \
+	    !intel_compare_dp_vsc_sdp(&current_config->infoframes.name, \
+				      &pipe_config->infoframes.name)) { \
+		pipe_config_dp_vsc_sdp_mismatch(dev_priv, fastset, __stringify(name), \
+						&current_config->infoframes.name, \
+						&pipe_config->infoframes.name); \
+		ret = false; \
+	} \
+} while (0)

total: 0 errors, 0 warnings, 1 checks, 75 lines checked
e373569ff8b1 drm/i915: Fix enabled infoframe states of lspcon
5ac865ae0f3c drm/i915: Program DP SDPs on pipe updates
f8d2eda49214 drm/i915: Stop sending DP SDPs on ddi disable
6d1aa4db1cc0 drm/i915/dp: Add compute routine for DP PSR VSC SDP
b391c6a63abc drm/i915/psr: Use new DP VSC SDP compute routine on PSR

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
