Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C44461583D6
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 20:39:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DFF96ED38;
	Mon, 10 Feb 2020 19:39:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB5536ED38;
 Mon, 10 Feb 2020 19:39:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3181A0071;
 Mon, 10 Feb 2020 19:39:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Mon, 10 Feb 2020 19:39:43 -0000
Message-ID: <158136358392.3098.5690031197163800603@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200210171021.109684-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200210171021.109684-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_In_order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP?=
 =?utf-8?q?_SDPs_=28rev6=29?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev6)
URL   : https://patchwork.freedesktop.org/series/72853/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5b39096a6173 drm: Add DP1.4 VSC SDP Payload related Data Structures
7b89b55cb716 drm/i915/dp: Add compute routine for DP VSC SDP
-:117: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#117: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2446:
+	drm_WARN_ON(&dev_priv->drm, vsc->bpc == 6 &&
+				    vsc->pixelformat == DP_PIXELFORMAT_RGB);

total: 0 errors, 0 warnings, 1 checks, 117 lines checked
a58f9a4670d6 drm/i915/dp: Add compute routine for DP HDR Metadata Infoframe SDP
32e44c015776 drm/i915/dp: Add writing of DP SDPs
90baf15b2a24 video/hdmi: Add Unpack only function for DRM infoframe
4cfa92180bee drm/i915/dp: Read out DP SDPs
182c420ece15 drm: Add logging function for DP VSC SDP
26f915701b32 drm/i915: Include HDMI DRM infoframe in the crtc state dump
877860d453ef drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
940af0cd4b8b drm/i915: Include DP VSC SDP in the crtc state dump
97c094247cb2 drm/i915: Program DP SDPs with computed configs
ca9ed0ad09e1 drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
2f41984fb5fa drm/i915: Add state readout for DP VSC SDP
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
d29ea7802a66 drm/i915: Fix enabled infoframe states of lspcon
c10b0ee50bbe drm/i915: Program DP SDPs on pipe updates
b38bdf2a11e4 drm/i915: Stop sending DP SDPs on ddi disable
7d2beb287e3d drm/i915/dp: Add compute routine for DP PSR VSC SDP
25336a0274e2 drm/i915/psr: Use new DP VSC SDP compute routine on PSR

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
