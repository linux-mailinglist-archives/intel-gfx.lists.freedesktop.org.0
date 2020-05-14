Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1EA1D2828
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 08:48:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00CD86EAB5;
	Thu, 14 May 2020 06:48:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A3706EAB4;
 Thu, 14 May 2020 06:48:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96600A47DA;
 Thu, 14 May 2020 06:48:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
Date: Thu, 14 May 2020 06:48:50 -0000
Message-ID: <158943893059.2824.10585008906553272505@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200514060732.3378396-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200514060732.3378396-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW4g?=
 =?utf-8?q?order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP_SDPs_?=
 =?utf-8?q?=28rev14=29?=
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
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8481 -> Patchwork_17654
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17654/index.html

Known issues
------------

  Here are the changes found in Patchwork_17654 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][1] -> [SKIP][2] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17654/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-cml-u2:          [INCOMPLETE][3] ([i915#656]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17654/fi-cml-u2/igt@i915_selftest@live@execlists.html
    - fi-kbl-soraka:      [INCOMPLETE][5] ([CI#80] / [i915#656]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17654/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (48 -> 44)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-hsw-4770 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8481 -> Patchwork_17654

  CI-20190529: 20190529
  CI_DRM_8481: 46f34234505b4e0eb3332974b47a36f9b0825de0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5654: 5637a466a0b09535517751608f5525a8b468a76b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17654: b391c6a63abcab4ee99c9606550d21a62cc85730 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b391c6a63abc drm/i915/psr: Use new DP VSC SDP compute routine on PSR
6d1aa4db1cc0 drm/i915/dp: Add compute routine for DP PSR VSC SDP
f8d2eda49214 drm/i915: Stop sending DP SDPs on ddi disable
5ac865ae0f3c drm/i915: Program DP SDPs on pipe updates
e373569ff8b1 drm/i915: Fix enabled infoframe states of lspcon
99bcd01ba088 drm/i915: Add state readout for DP VSC SDP
1723115921c6 drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
c7d93732395b drm/i915: Program DP SDPs with computed configs
2375c1f7c8e0 drm/i915: Include DP VSC SDP in the crtc state dump
af8b261a6986 drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
b53f926b3fa5 drm/i915: Include HDMI DRM infoframe in the crtc state dump
bf5fbd357375 drm: Add logging function for DP VSC SDP
0a10f4cd6cbe drm/i915/dp: Read out DP SDPs
e1053fdca03e video/hdmi: Add Unpack only function for DRM infoframe

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17654/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
