Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2141C90A9
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 16:50:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC7486E9D0;
	Thu,  7 May 2020 14:50:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D7BAD6E9CD;
 Thu,  7 May 2020 14:50:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0AD0A47EE;
 Thu,  7 May 2020 14:50:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Thu, 07 May 2020 14:50:38 -0000
Message-ID: <158886303885.2191.6543513292550174417@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200507132706.2058969-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200507132706.2058969-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW4g?=
 =?utf-8?q?order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP_SDPs_?=
 =?utf-8?q?=28rev13=29?=
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
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8444 -> Patchwork_17600
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17600/index.html

Known issues
------------

  Here are the changes found in Patchwork_17600 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - fi-cfl-8700k:       [PASS][1] -> [INCOMPLETE][2] ([i915#1794])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/fi-cfl-8700k/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17600/fi-cfl-8700k/igt@i915_selftest@live@gt_pm.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6700k2:      [INCOMPLETE][3] ([i915#151]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17600/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@reset:
    - fi-bwr-2160:        [INCOMPLETE][5] ([i915#489]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/fi-bwr-2160/igt@i915_selftest@live@reset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17600/fi-bwr-2160/igt@i915_selftest@live@reset.html

  
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1794]: https://gitlab.freedesktop.org/drm/intel/issues/1794
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (49 -> 42)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-hsw-4770 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8444 -> Patchwork_17600

  CI-20190529: 20190529
  CI_DRM_8444: 39544482386ac801dc4140df00a7e7e5bbea4d8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5638: 50868ab3c532a86aa147fb555b69a1078c572b13 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17600: 21e992a96510a4b297170c1aee390b96286704e9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

21e992a96510 drm/i915/psr: Use new DP VSC SDP compute routine on PSR
74c2a914a012 drm/i915/dp: Add compute routine for DP PSR VSC SDP
5cf81085a0c1 drm/i915: Stop sending DP SDPs on ddi disable
0251102af3b9 drm/i915: Program DP SDPs on pipe updates
a71792fd1d5a drm/i915: Fix enabled infoframe states of lspcon
84bf9208397c drm/i915: Add state readout for DP VSC SDP
e1c3006e8068 drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
0c6956c780de drm/i915: Program DP SDPs with computed configs
ffb06944568a drm/i915: Include DP VSC SDP in the crtc state dump
20cdec4dde7d drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
ee8f99248537 drm/i915: Include HDMI DRM infoframe in the crtc state dump
e32e44f11938 drm: Add logging function for DP VSC SDP
2ad5c4085132 drm/i915/dp: Read out DP SDPs
96f3abd228ee video/hdmi: Add Unpack only function for DRM infoframe

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17600/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
