Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB416144491
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 19:50:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D56526EE3E;
	Tue, 21 Jan 2020 18:50:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3EA5D6EE3A;
 Tue, 21 Jan 2020 18:50:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2FB7CA0019;
 Tue, 21 Jan 2020 18:50:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 21 Jan 2020 18:50:20 -0000
Message-ID: <157963262016.11479.13787272409338033834@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121153505.339402-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200121153505.339402-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Clear_the_GGTT=5FWRITE_bit_on_unbinding_the_vma?=
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

Series: drm/i915: Clear the GGTT_WRITE bit on unbinding the vma
URL   : https://patchwork.freedesktop.org/series/72340/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7786 -> Patchwork_16192
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16192 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16192, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16192/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16192:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@fds:
    - fi-hsw-4770r:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-hsw-4770r/igt@gem_exec_parallel@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16192/fi-hsw-4770r/igt@gem_exec_parallel@fds.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [INCOMPLETE][3] ([i915#45] / [i915#999]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16192/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
    - fi-byt-n2820:       [INCOMPLETE][5] ([i915#45] / [i915#999]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16192/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_16192 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][7] -> [SKIP][8] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16192/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][9] -> [DMESG-FAIL][10] ([i915#725])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16192/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][11] -> [FAIL][12] ([fdo#111407])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16192/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [DMESG-WARN][13] ([fdo#111764]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16192/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][15] ([CI#80] / [i915#424]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16192/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][17] ([i915#563]) -> [DMESG-FAIL][18] ([i915#553] / [i915#725])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16192/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937
  [i915#999]: https://gitlab.freedesktop.org/drm/intel/issues/999


Participating hosts (45 -> 41)
------------------------------

  Additional (5): fi-hsw-peppy fi-elk-e7500 fi-skl-lmem fi-blb-e6850 fi-skl-6600u 
  Missing    (9): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-icl-u3 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7786 -> Patchwork_16192

  CI-20190529: 20190529
  CI_DRM_7786: 72275204176397fc718218335edabb840f520024 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5376: 5cf58d947a02379d2885d6dd4f8bb487cfc3eed2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16192: 98e964becb0f8fdea5cc7b7591062ab8d155eee0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

98e964becb0f drm/i915: Clear the GGTT_WRITE bit on unbinding the vma

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16192/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
