Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8284314D555
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 04:09:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43E1E6E084;
	Thu, 30 Jan 2020 03:09:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2382B6E084;
 Thu, 30 Jan 2020 03:09:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 14353A0071;
 Thu, 30 Jan 2020 03:09:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Thu, 30 Jan 2020 03:09:29 -0000
Message-ID: <158035376905.21034.6887409331134384399@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200129220540.7608-1-vivek.kasireddy@intel.com>
In-Reply-To: <20200129220540.7608-1-vivek.kasireddy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ddi=3A_Ensure_that_the_value_assigned_to_ddi=5Fclk=5Fneed?=
 =?utf-8?q?ed_is_a_bool?=
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

Series: drm/i915/ddi: Ensure that the value assigned to ddi_clk_needed is a bool
URL   : https://patchwork.freedesktop.org/series/72743/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7839 -> Patchwork_16321
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16321 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16321, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16321/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16321:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16321/fi-bsw-kefka/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16321 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][2] -> [TIMEOUT][3] ([fdo#112271] / [i915#816])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16321/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][4] -> [DMESG-FAIL][5] ([i915#563])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16321/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-ivb-3770:        [PASS][6] -> [DMESG-FAIL][7] ([i915#563])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16321/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gtt:
    - fi-kbl-7500u:       [PASS][8] -> [TIMEOUT][9] ([fdo#112271])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16321/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
    - fi-skl-6600u:       [PASS][10] -> [TIMEOUT][11] ([fdo#111732] / [fdo#112271])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-skl-6600u/igt@i915_selftest@live_gtt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16321/fi-skl-6600u/igt@i915_selftest@live_gtt.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][12] ([fdo#112271]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16321/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (47 -> 45)
------------------------------

  Additional (3): fi-hsw-peppy fi-bsw-kefka fi-kbl-r 
  Missing    (5): fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7839 -> Patchwork_16321

  CI-20190529: 20190529
  CI_DRM_7839: 41a9319a45aaf77e220c8101d6ce76ec66036ffc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5406: 786c79af483a9f6e4688811f74116030c734ca1f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16321: ddc00521ad241d85f6799314408ea6a55c43882e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ddc00521ad24 drm/i915/ddi: Ensure that the value assigned to ddi_clk_needed is a bool

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16321/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
