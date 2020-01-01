Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA3512DD73
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 04:00:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DE706E2BC;
	Wed,  1 Jan 2020 02:59:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E93656E2B6;
 Wed,  1 Jan 2020 02:59:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A2864A0134;
 Wed,  1 Jan 2020 02:59:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Jan 2020 02:59:56 -0000
Message-ID: <157784759664.5189.16860010919072809805@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200101022716.641962-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200101022716.641962-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gem=3A_Extend_mmap_su?=
 =?utf-8?q?pport_for_lmem?=
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

Series: series starting with [CI,1/3] drm/i915/gem: Extend mmap support for lmem
URL   : https://patchwork.freedesktop.org/series/71538/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7661 -> Patchwork_15963
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15963 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15963, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15963/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15963:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-kbl-x1275:       NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15963/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_15963 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [PASS][2] -> [INCOMPLETE][3] ([i915#505])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7661/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15963/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_evict:
    - fi-bwr-2160:        [PASS][4] -> [FAIL][5] ([i915#878]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7661/fi-bwr-2160/igt@i915_selftest@live_evict.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15963/fi-bwr-2160/igt@i915_selftest@live_evict.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [PASS][6] -> [DMESG-FAIL][7] ([i915#656])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7661/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15963/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [PASS][8] -> [DMESG-FAIL][9] ([i915#722])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7661/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15963/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_mman:
    - fi-bxt-dsi:         [PASS][10] -> [DMESG-WARN][11] ([i915#889]) +23 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7661/fi-bxt-dsi/igt@i915_selftest@live_mman.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15963/fi-bxt-dsi/igt@i915_selftest@live_mman.html

  * igt@i915_selftest@live_reset:
    - fi-bxt-dsi:         [PASS][12] -> [DMESG-FAIL][13] ([i915#889]) +7 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7661/fi-bxt-dsi/igt@i915_selftest@live_reset.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15963/fi-bxt-dsi/igt@i915_selftest@live_reset.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [INCOMPLETE][14] ([i915#671]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7661/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15963/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][16] ([i915#563]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7661/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15963/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_workarounds:
    - fi-icl-dsi:         [DMESG-FAIL][18] -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7661/fi-icl-dsi/igt@i915_selftest@live_workarounds.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15963/fi-icl-dsi/igt@i915_selftest@live_workarounds.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][20] ([i915#704]) -> [SKIP][21] ([fdo#109271])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7661/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15963/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][22] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][23] ([i915#62] / [i915#92]) +7 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7661/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15963/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-x1275:       [DMESG-WARN][24] ([i915#62] / [i915#92]) -> [DMESG-WARN][25] ([i915#62] / [i915#92] / [i915#95]) +7 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7661/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15963/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#704]: https://gitlab.freedesktop.org/drm/intel/issues/704
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#878]: https://gitlab.freedesktop.org/drm/intel/issues/878
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (45 -> 39)
------------------------------

  Additional (4): fi-hsw-4770r fi-blb-e6850 fi-gdg-551 fi-cml-s 
  Missing    (10): fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-kbl-7500u fi-whl-u fi-bdw-samus fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7661 -> Patchwork_15963

  CI-20190529: 20190529
  CI_DRM_7661: 1adead839bd8fc1b4c150864c9de270ee05051a7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15963: 422c6c94fa8071b02afaf420d92abb6ae59fcdd3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

422c6c94fa80 drm/i915/gem: Single page objects are naturally contiguous
fcac03df03c3 drm/i915/selftests: Extend fault handler selftests to all memory regions
5b09b1115138 drm/i915/gem: Extend mmap support for lmem

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15963/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
