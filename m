Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6771C14FE4E
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Feb 2020 17:33:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C14D6E0C5;
	Sun,  2 Feb 2020 16:33:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D2B546E0C5;
 Sun,  2 Feb 2020 16:32:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CAF29A0118;
 Sun,  2 Feb 2020 16:32:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Sun, 02 Feb 2020 16:32:59 -0000
Message-ID: <158066117980.17035.12839444324028930167@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200202154938.1129610-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200202154938.1129610-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_In_order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP?=
 =?utf-8?q?_SDPs_=28rev2=29?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev2)
URL   : https://patchwork.freedesktop.org/series/72853/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
20e405544f77 drm: add DP 1.4 VSC SDP Payload related enums
fd79588e7005 drm/i915: Add DP VSC SDP payload data to intel_crtc_state.infoframes
c5ac25c1a5f8 drm/i915/dp: Add compute routine for DP VSC SDP
b82b2a59941d drm/i915/dp: Add compute routine for DP HDR Metadata Infoframe SDP
94709dc29218 drm/i915/dp: Add writing of DP SDPs (Secondary Data Packet)
1cb28037364e video/hdmi: Add Unpack only function for DRM infoframe
56220d9f4ad2 drm/i915/dp: Read out DP SDPs (Secondary Data Packet)
a13ab11796ef drm/i915/dp: Add logging function for DP VSC SDP
-:194: CHECK:LINE_SPACING: Please don't use multiple blank lines
#194: FILE: drivers/gpu/drm/i915/display/intel_dp.c:5267:
+
+

total: 0 errors, 0 warnings, 1 checks, 202 lines checked
1fd82d1db39d drm/i915: Include HDMI DRM infoframe in the crtc state dump
4feab04a1555 drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
f53de2c1ea0a drm/i915: Include DP VSC SDP in the crtc state dump
05f50974f33c drm/i915: Program DP SDPs with computed configs
0c1409bfc54e drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
b00ca0ef9afa drm/i915: Add state readout for DP VSC SDP
-:78: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#78: FILE: drivers/gpu/drm/i915/display/intel_display.c:13869:
+#define PIPE_CONF_CHECK_DP_VSC_SDP(name) do { \
+	if (!intel_compare_dp_vsc_sdp(&current_config->infoframes.name, \
+				      &pipe_config->infoframes.name)) { \
+		pipe_config_dp_vsc_sdp_mismatch(dev_priv, fastset, __stringify(name), \
+						&current_config->infoframes.name, \
+						&pipe_config->infoframes.name); \
+		ret = false; \
+	} \
+} while (0)

total: 0 errors, 0 warnings, 1 checks, 73 lines checked
203b78b49e5d drm/i915: Program DP SDPs on pipe updates
3045bd7f3d1c drm/i915: Stop sending DP SDPs on intel_ddi_post_disable_dp()
948bdde86a99 drm/i915/dp: Add compute routine for DP PSR VSC SDP
2e4da14a99b9 drm/i915/psr: Use new DP VSC SDP compute routine on PSR

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
