Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1932128C6E
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 04:12:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A06C66E4EC;
	Sun, 22 Dec 2019 03:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D8F776E4EA;
 Sun, 22 Dec 2019 03:12:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C7672A0094;
 Sun, 22 Dec 2019 03:12:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tom Murphy" <murphyt7@tcd.ie>
Date: Sun, 22 Dec 2019 03:12:04 -0000
Message-ID: <157698432478.8697.16662850149571814718@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191221150402.13868-1-murphyt7@tcd.ie>
In-Reply-To: <20191221150402.13868-1-murphyt7@tcd.ie>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQ29u?=
 =?utf-8?q?vert_the_intel_iommu_driver_to_the_dma-iommu_api?=
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

Series: Convert the intel iommu driver to the dma-iommu api
URL   : https://patchwork.freedesktop.org/series/71260/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7620 -> Patchwork_15878
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15878 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15878, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15878:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-byt-j1900:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7620/fi-byt-j1900/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/fi-byt-j1900/igt@gem_close_race@basic-process.html

  * igt@i915_selftest@live_execlists:
    - fi-bwr-2160:        [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7620/fi-bwr-2160/igt@i915_selftest@live_execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/fi-bwr-2160/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_objects:
    - fi-hsw-4770r:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7620/fi-hsw-4770r/igt@i915_selftest@live_objects.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/fi-hsw-4770r/igt@i915_selftest@live_objects.html
    - fi-ivb-3770:        [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7620/fi-ivb-3770/igt@i915_selftest@live_objects.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/fi-ivb-3770/igt@i915_selftest@live_objects.html

  * igt@runner@aborted:
    - fi-hsw-4770r:       NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/fi-hsw-4770r/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/fi-ivb-3770/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - {fi-kbl-7560u}:     NOTRUN -> [WARN][11] +10 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/fi-kbl-7560u/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  
Known issues
------------

  Here are the changes found in Patchwork_15878 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][12] -> [DMESG-FAIL][13] ([i915#725])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7620/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@basic:
    - {fi-tgl-u}:         [INCOMPLETE][14] ([i915#476]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7620/fi-tgl-u/igt@gem_exec_parallel@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/fi-tgl-u/igt@gem_exec_parallel@basic.html

  * igt@i915_module_load@reload-no-display:
    - fi-skl-lmem:        [DMESG-WARN][16] ([i915#592]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7620/fi-skl-lmem/igt@i915_module_load@reload-no-display.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/fi-skl-lmem/igt@i915_module_load@reload-no-display.html
    - fi-skl-6600u:       [DMESG-WARN][18] ([i915#592]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7620/fi-skl-6600u/igt@i915_module_load@reload-no-display.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/fi-skl-6600u/igt@i915_module_load@reload-no-display.html

  * igt@i915_selftest@live_blt:
    - fi-byt-j1900:       [DMESG-FAIL][20] ([i915#725]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7620/fi-byt-j1900/igt@i915_selftest@live_blt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/fi-byt-j1900/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_evict:
    - fi-bwr-2160:        [FAIL][22] -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7620/fi-bwr-2160/igt@i915_selftest@live_evict.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/fi-bwr-2160/igt@i915_selftest@live_evict.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [INCOMPLETE][24] ([i915#45]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7620/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][26] ([fdo#111407]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7620/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][28] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][29] ([i915#62] / [i915#92]) +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7620/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-kbl-x1275:       [DMESG-WARN][30] ([i915#62] / [i915#92]) -> [DMESG-WARN][31] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7620/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#592]: https://gitlab.freedesktop.org/drm/intel/issues/592
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (45 -> 40)
------------------------------

  Additional (4): fi-kbl-7560u fi-icl-u2 fi-ilk-650 fi-bsw-n3050 
  Missing    (9): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7620 -> Patchwork_15878

  CI-20190529: 20190529
  CI_DRM_7620: e71a85869bc2e15ac60119a1635cfe23d7c8469c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15878: 6c37d8e17b40a5d7bbdafa20c2c5282b3bfedb79 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6c37d8e17b40 DO NOT MERGE: iommu: disable list appending in dma-iommu
0eeda0f2af1c iommu/vt-d: Convert intel iommu driver to the iommu ops
4be33d5f7bb6 iommu: allow the dma-iommu api to use bounce buffers
46112cc82738 iommu: Add iommu_dma_free_cpu_cached_iovas function
cd34da42186b iommu: Handle freelists when using deferred flushing in iommu drivers
da7e37085b86 iommu/vt-d: Remove IOVA handling code from non-dma_ops path
746c1cb07c86 iommu/vt-d: Use default dma_direct_* mapping functions for direct mapped devices
4a2327b5e2dd iommu/vt-d: clean up 32bit si_domain assignment

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15878/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
