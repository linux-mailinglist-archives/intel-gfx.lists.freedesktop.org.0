Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4E314FEAC
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Feb 2020 18:49:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1F866E0EC;
	Sun,  2 Feb 2020 17:49:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 464B56E0F8;
 Sun,  2 Feb 2020 17:49:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CE816A0009;
 Sun,  2 Feb 2020 17:49:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 02 Feb 2020 17:49:50 -0000
Message-ID: <158066579081.17036.12038036460161103522@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200202171635.4039044-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200202171635.4039044-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm=3A_Remove_PageReserved_manipula?=
 =?utf-8?q?tion_from_drm=5Fpci=5Falloc?=
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

Series: series starting with [1/5] drm: Remove PageReserved manipulation from drm_pci_alloc
URL   : https://patchwork.freedesktop.org/series/72883/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7856 -> Patchwork_16385
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16385 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16385, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16385/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16385:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16385/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_execlists:
    - fi-skl-6600u:       NOTRUN -> [TIMEOUT][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16385/fi-skl-6600u/igt@i915_selftest@live_execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_16385 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [PASS][4] -> [TIMEOUT][5] ([fdo#112271] / [i915#1084])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16385/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_active:
    - fi-icl-y:           [PASS][6] -> [DMESG-FAIL][7] ([i915#765])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-icl-y/igt@i915_selftest@live_active.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16385/fi-icl-y/igt@i915_selftest@live_active.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][8] -> [FAIL][9] ([fdo#111407])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16385/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][10] ([i915#553] / [i915#725]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16385/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][12] ([fdo#108569]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-icl-y/igt@i915_selftest@live_execlists.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16385/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [DMESG-FAIL][14] ([i915#1052]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16385/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-hsw-4770:        [TIMEOUT][16] ([fdo#112271]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-hsw-4770/igt@i915_selftest@live_gtt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16385/fi-hsw-4770/igt@i915_selftest@live_gtt.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [FAIL][18] ([i915#694]) -> [TIMEOUT][19] ([fdo#112271])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16385/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][20] ([IGT#4] / [i915#263]) -> [DMESG-FAIL][21] ([IGT#4] / [i915#263])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16385/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765


Participating hosts (43 -> 43)
------------------------------

  Additional (8): fi-bdw-5557u fi-byt-j1900 fi-bwr-2160 fi-ilk-650 fi-bsw-kefka fi-skl-lmem fi-bsw-nick fi-skl-6600u 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-byt-clapper fi-blb-e6850 fi-snb-2600 fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7856 -> Patchwork_16385

  CI-20190529: 20190529
  CI_DRM_7856: a113999b001035a5b6474407b228363c163574a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5411: 86c6ab8a0b6696bdb2153febd350af7fa02fbb00 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16385: c2cfb483f90bc5697eaf32773538dd9039459f30 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c2cfb483f90b drm: Remove exports for drm_pci_alloc/drm_pci_free
4a38cc58ae16 drm/i915: Wean off drm_pci_alloc/drm_pci_free
35048571697e drm/r128: Wean off drm_pci_alloc
5daedabb367b drm: Remove the dma_alloc_coherent wrapper for internal usage
0aa4536eb0f4 drm: Remove PageReserved manipulation from drm_pci_alloc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16385/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
