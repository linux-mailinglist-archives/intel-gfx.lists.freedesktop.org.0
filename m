Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C2E158AF0
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 08:58:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 156D76EDCF;
	Tue, 11 Feb 2020 07:58:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 304FD6E46F;
 Tue, 11 Feb 2020 07:58:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 291E5A0094;
 Tue, 11 Feb 2020 07:58:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Tue, 11 Feb 2020 07:58:54 -0000
Message-ID: <158140793413.23973.11255177234012764207@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200211074657.231405-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200211074657.231405-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_In_order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP?=
 =?utf-8?q?_SDPs_=28rev7=29?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev7)
URL   : https://patchwork.freedesktop.org/series/72853/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1ec55bed0178 drm: Add DP1.4 VSC SDP Payload related Data Structures
af98f8569ec0 drm/i915/dp: Add compute routine for DP VSC SDP
716fa531cfc4 drm/i915/dp: Add compute routine for DP HDR Metadata Infoframe SDP
314cbcc618a4 drm/i915/dp: Add writing of DP SDPs
31791cfcf1fd video/hdmi: Add Unpack only function for DRM infoframe
e8ae4c96f04b drm/i915/dp: Read out DP SDPs
4984b40cd894 drm: Add logging function for DP VSC SDP
b5e53b152b57 drm/i915: Include HDMI DRM infoframe in the crtc state dump
bb7d7c0a22b5 drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
ff2f055f0051 drm/i915: Include DP VSC SDP in the crtc state dump
8b34cb1487f9 drm/i915: Program DP SDPs with computed configs
db92d92142fa drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
200d6124205f drm/i915: Add state readout for DP VSC SDP
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
5607ed3e0895 drm/i915: Fix enabled infoframe states of lspcon
ccc1b44c6c82 drm/i915: Program DP SDPs on pipe updates
6413aa289f40 drm/i915: Stop sending DP SDPs on ddi disable
f6ab721ac385 drm/i915/dp: Add compute routine for DP PSR VSC SDP
290fe3c7dbc4 drm/i915/psr: Use new DP VSC SDP compute routine on PSR

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
