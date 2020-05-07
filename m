Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D58851C8E2A
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 16:16:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ADCC6E08A;
	Thu,  7 May 2020 14:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 43FAC6E08A;
 Thu,  7 May 2020 14:16:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 40538A00CC;
 Thu,  7 May 2020 14:16:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Thu, 07 May 2020 14:16:04 -0000
Message-ID: <158886096425.2191.15397136197390470606@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200507132706.2058969-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200507132706.2058969-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_In_order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP?=
 =?utf-8?q?_SDPs_=28rev13=29?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev13)
URL   : https://patchwork.freedesktop.org/series/72853/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
96f3abd228ee video/hdmi: Add Unpack only function for DRM infoframe
2ad5c4085132 drm/i915/dp: Read out DP SDPs
e32e44f11938 drm: Add logging function for DP VSC SDP
ee8f99248537 drm/i915: Include HDMI DRM infoframe in the crtc state dump
20cdec4dde7d drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
ffb06944568a drm/i915: Include DP VSC SDP in the crtc state dump
0c6956c780de drm/i915: Program DP SDPs with computed configs
e1c3006e8068 drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
84bf9208397c drm/i915: Add state readout for DP VSC SDP
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
a71792fd1d5a drm/i915: Fix enabled infoframe states of lspcon
0251102af3b9 drm/i915: Program DP SDPs on pipe updates
5cf81085a0c1 drm/i915: Stop sending DP SDPs on ddi disable
74c2a914a012 drm/i915/dp: Add compute routine for DP PSR VSC SDP
21e992a96510 drm/i915/psr: Use new DP VSC SDP compute routine on PSR
-:107: WARNING:TABSTOP: Statements should start on a tabstop
#107: FILE: drivers/gpu/drm/i915/display/intel_psr.c:727:
+	 if (!psr_global_enabled(dev_priv))

total: 0 errors, 1 warnings, 0 checks, 168 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
