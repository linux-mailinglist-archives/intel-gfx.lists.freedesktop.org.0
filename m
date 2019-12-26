Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C273812AE5B
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 20:49:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE8FA89C05;
	Thu, 26 Dec 2019 19:49:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7AA8189BB2;
 Thu, 26 Dec 2019 19:49:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 721FDA00FD;
 Thu, 26 Dec 2019 19:49:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 26 Dec 2019 19:49:13 -0000
Message-ID: <157738975343.14824.10309475362190295477@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191226191237.2654510-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191226191237.2654510-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Ignore_incomplete_engines_after_init_failure?=
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

Series: drm/i915/gt: Ignore incomplete engines after init failure
URL   : https://patchwork.freedesktop.org/series/71404/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7637 -> Patchwork_15930
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15930 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15930, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15930/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15930:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_vma:
    - fi-bwr-2160:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-bwr-2160/igt@i915_selftest@live_vma.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15930/fi-bwr-2160/igt@i915_selftest@live_vma.html

  
Known issues
------------

  Here are the changes found in Patchwork_15930 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [PASS][3] -> [DMESG-WARN][4] ([fdo#111764])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15930/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live_hugepages:
    - fi-byt-j1900:       [PASS][5] -> [DMESG-FAIL][6] ([i915#845])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-byt-j1900/igt@i915_selftest@live_hugepages.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15930/fi-byt-j1900/igt@i915_selftest@live_hugepages.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][7] -> [FAIL][8] ([i915#217])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15930/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_create@basic:
    - {fi-tgl-u}:         [INCOMPLETE][9] ([fdo#111736]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-tgl-u/igt@gem_exec_create@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15930/fi-tgl-u/igt@gem_exec_create@basic.html

  * igt@gem_exec_parallel@basic:
    - fi-byt-j1900:       [TIMEOUT][11] -> [PASS][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-byt-j1900/igt@gem_exec_parallel@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15930/fi-byt-j1900/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_store@basic-all:
    - fi-byt-j1900:       [FAIL][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-byt-j1900/igt@gem_exec_store@basic-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15930/fi-byt-j1900/igt@gem_exec_store@basic-all.html

  
#### Warnings ####

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][16] ([i915#62] / [i915#92]) +6 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15930/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-x1275:       [DMESG-WARN][17] ([i915#62] / [i915#92]) -> [DMESG-WARN][18] ([i915#62] / [i915#92] / [i915#95]) +7 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15930/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#845]: https://gitlab.freedesktop.org/drm/intel/issues/845
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (47 -> 41)
------------------------------

  Additional (5): fi-skl-6770hq fi-bsw-kefka fi-skl-lmem fi-tgl-y fi-skl-6700k2 
  Missing    (11): fi-hsw-4770r fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-whl-u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7637 -> Patchwork_15930

  CI-20190529: 20190529
  CI_DRM_7637: 0fc0908e6c01a7ebed3baff96bb4a50675431e82 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15930: c02a07f5fa71c01465bfa4a1581b9282da8fb717 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c02a07f5fa71 drm/i915/gt: Ignore incomplete engines after init failure

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15930/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
