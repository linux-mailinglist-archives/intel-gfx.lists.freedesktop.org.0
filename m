Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B69931B216B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 10:19:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6D9D6E41D;
	Tue, 21 Apr 2020 08:19:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DAE1B6E41D;
 Tue, 21 Apr 2020 08:19:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D1A22A008A;
 Tue, 21 Apr 2020 08:19:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Tue, 21 Apr 2020 08:19:08 -0000
Message-ID: <158745714882.17662.6487888097145532839@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417120040.3432332-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200417120040.3432332-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW4g?=
 =?utf-8?q?order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP_SDPs_?=
 =?utf-8?q?=28rev11=29?=
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
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8339 -> Patchwork_17395
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17395 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17395, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17395/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17395:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@mman:
    - fi-snb-2600:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8339/fi-snb-2600/igt@i915_selftest@live@mman.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17395/fi-snb-2600/igt@i915_selftest@live@mman.html

  
Known issues
------------

  Here are the changes found in Patchwork_17395 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - fi-apl-guc:         [PASS][3] -> [DMESG-FAIL][4] ([i915#1751])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8339/fi-apl-guc/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17395/fi-apl-guc/igt@i915_selftest@live@gt_pm.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - fi-icl-u2:          [DMESG-FAIL][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8339/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17395/fi-icl-u2/igt@i915_selftest@live@gt_pm.html

  
  [i915#1751]: https://gitlab.freedesktop.org/drm/intel/issues/1751


Participating hosts (48 -> 41)
------------------------------

  Missing    (7): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-hsw-4770 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8339 -> Patchwork_17395

  CI-20190529: 20190529
  CI_DRM_8339: aff3f45feee4ed28b07e06bacac28c72c5315e37 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17395: a5db16ec932c85ce6de749e953448d54a6b5e40f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a5db16ec932c drm/i915/psr: Use new DP VSC SDP compute routine on PSR
9a2ad5a32a45 drm/i915/dp: Add compute routine for DP PSR VSC SDP
07856a13f253 drm/i915: Stop sending DP SDPs on ddi disable
b8c74d06c9ea drm/i915: Program DP SDPs on pipe updates
e78863a17e96 drm/i915: Fix enabled infoframe states of lspcon
3f0c456bcfa9 drm/i915: Add state readout for DP VSC SDP
beeabdf3a48b drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
baa9bbad6bef drm/i915: Program DP SDPs with computed configs
673d595572d2 drm/i915: Include DP VSC SDP in the crtc state dump
ca01029436e6 drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
6cccd45e8119 drm/i915: Include HDMI DRM infoframe in the crtc state dump
3df2cc567e5a drm: Add logging function for DP VSC SDP
5eae0ec2d8ae drm/i915/dp: Read out DP SDPs
33516c7eda02 video/hdmi: Add Unpack only function for DRM infoframe

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17395/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
