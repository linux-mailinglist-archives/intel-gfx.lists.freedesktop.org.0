Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7628119886D
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 01:40:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DE686E4FB;
	Mon, 30 Mar 2020 23:40:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7AB966E4FB;
 Mon, 30 Mar 2020 23:40:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 62AAAA47E1;
 Mon, 30 Mar 2020 23:40:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Mon, 30 Mar 2020 23:40:11 -0000
Message-ID: <158561161137.13828.17056048467337010365@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200330162356.162361-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200330162356.162361-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW4g?=
 =?utf-8?q?order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP_SDPs_?=
 =?utf-8?b?KHJldjkp?=
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
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8219 -> Patchwork_17138
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17138 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17138, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17138/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17138:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-icl-guc:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17138/fi-icl-guc/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-u}:         NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17138/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17138 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-icl-dsi:         [PASS][3] -> [INCOMPLETE][4] ([i915#1505])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/fi-icl-dsi/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17138/fi-icl-dsi/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1505]: https://gitlab.freedesktop.org/drm/intel/issues/1505


Participating hosts (44 -> 38)
------------------------------

  Additional (3): fi-kbl-7560u fi-kbl-x1275 fi-kbl-r 
  Missing    (9): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-hsw-4770 fi-gdg-551 fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8219 -> Patchwork_17138

  CI-20190529: 20190529
  CI_DRM_8219: 42de3b3c94078845ceed586199c039622561b522 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5545: 9e5bfd10d56f81b98e0229c6bb14670221fd0b54 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17138: 025e44f9037e5c174b128843f2e9e9eec57fb4d4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

025e44f9037e drm/i915/psr: Use new DP VSC SDP compute routine on PSR
f8e40f339fb2 drm/i915/dp: Add compute routine for DP PSR VSC SDP
016763fca759 drm/i915: Stop sending DP SDPs on ddi disable
0256e6feea41 drm/i915: Program DP SDPs on pipe updates
de9f8e3bc14c drm/i915: Fix enabled infoframe states of lspcon
e6bbd6890567 drm/i915: Add state readout for DP VSC SDP
561b303fba93 drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
bcd2ab9c0373 drm/i915: Program DP SDPs with computed configs
0845eae4c199 drm/i915: Include DP VSC SDP in the crtc state dump
c9cbe7b7bd25 drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
96c9d0bf88ac drm/i915: Include HDMI DRM infoframe in the crtc state dump
10cbc3f7cd79 drm: Add logging function for DP VSC SDP
e58de153b99b drm/i915/dp: Read out DP SDPs
38f26ed437b1 video/hdmi: Add Unpack only function for DRM infoframe

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17138/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
