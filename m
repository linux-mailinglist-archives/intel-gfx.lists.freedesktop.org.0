Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B59841AE0EB
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 17:21:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13C6F6EC38;
	Fri, 17 Apr 2020 15:21:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD3736EC38;
 Fri, 17 Apr 2020 15:21:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6CF4A41FB;
 Fri, 17 Apr 2020 15:21:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Fri, 17 Apr 2020 15:21:38 -0000
Message-ID: <158713689868.10465.6440789930841955897@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417120040.3432332-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200417120040.3432332-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_In_order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP?=
 =?utf-8?q?_SDPs_=28rev10=29?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev10)
URL   : https://patchwork.freedesktop.org/series/72853/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
04a7a12971b4 video/hdmi: Add Unpack only function for DRM infoframe
89d92042f6da drm/i915/dp: Read out DP SDPs
69460e7ad9d1 drm: Add logging function for DP VSC SDP
808aab8c443c drm/i915: Include HDMI DRM infoframe in the crtc state dump
8ec365f17f48 drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
578da91e2148 drm/i915: Include DP VSC SDP in the crtc state dump
0754e9ee06df drm/i915: Program DP SDPs with computed configs
22a5e5bca724 drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
b47e402f86e9 drm/i915: Add state readout for DP VSC SDP
-:83: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#83: FILE: drivers/gpu/drm/i915/display/intel_display.c:13728:
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
65c3865381d1 drm/i915: Fix enabled infoframe states of lspcon
4a022e8fc205 drm/i915: Program DP SDPs on pipe updates
b1e535972161 drm/i915: Stop sending DP SDPs on ddi disable
ca6476d66567 drm/i915/dp: Add compute routine for DP PSR VSC SDP
683a7302b245 drm/i915/psr: Use new DP VSC SDP compute routine on PSR

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
