Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3021B2067
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 09:54:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A956E8B8;
	Tue, 21 Apr 2020 07:54:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82D016E8A5;
 Tue, 21 Apr 2020 07:54:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B3C8A0019;
 Tue, 21 Apr 2020 07:54:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Tue, 21 Apr 2020 07:54:09 -0000
Message-ID: <158745564950.17661.676528458732520712@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417120040.3432332-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200417120040.3432332-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_In_order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP?=
 =?utf-8?q?_SDPs_=28rev11=29?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev11)
URL   : https://patchwork.freedesktop.org/series/72853/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
33516c7eda02 video/hdmi: Add Unpack only function for DRM infoframe
5eae0ec2d8ae drm/i915/dp: Read out DP SDPs
3df2cc567e5a drm: Add logging function for DP VSC SDP
6cccd45e8119 drm/i915: Include HDMI DRM infoframe in the crtc state dump
ca01029436e6 drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
673d595572d2 drm/i915: Include DP VSC SDP in the crtc state dump
baa9bbad6bef drm/i915: Program DP SDPs with computed configs
beeabdf3a48b drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
3f0c456bcfa9 drm/i915: Add state readout for DP VSC SDP
-:83: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#83: FILE: drivers/gpu/drm/i915/display/intel_display.c:13735:
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
e78863a17e96 drm/i915: Fix enabled infoframe states of lspcon
b8c74d06c9ea drm/i915: Program DP SDPs on pipe updates
07856a13f253 drm/i915: Stop sending DP SDPs on ddi disable
9a2ad5a32a45 drm/i915/dp: Add compute routine for DP PSR VSC SDP
a5db16ec932c drm/i915/psr: Use new DP VSC SDP compute routine on PSR

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
