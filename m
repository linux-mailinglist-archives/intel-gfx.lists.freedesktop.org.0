Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A64212E053
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 21:06:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC91789C9A;
	Wed,  1 Jan 2020 20:06:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE4F789BA1;
 Wed,  1 Jan 2020 20:06:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9CE64A432F;
 Wed,  1 Jan 2020 20:06:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Jan 2020 20:06:44 -0000
Message-ID: <157790920461.5186.4034982607991265943@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200101163918.768253-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200101163918.768253-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gem=3A_Single_page_ob?=
 =?utf-8?q?jects_are_naturally_contiguous_=28rev4=29?=
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

Series: series starting with [CI,1/3] drm/i915/gem: Single page objects are naturally contiguous (rev4)
URL   : https://patchwork.freedesktop.org/series/71546/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7663 -> Patchwork_15971
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15971 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15971, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15971/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15971:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_client:
    - fi-ilk-650:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-ilk-650/igt@i915_selftest@live_client.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15971/fi-ilk-650/igt@i915_selftest@live_client.html

  
Known issues
------------

  Here are the changes found in Patchwork_15971 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][3] -> [TIMEOUT][4] ([i915#816])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15971/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [PASS][5] -> [INCOMPLETE][6] ([fdo#103927])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15971/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
    - fi-glk-dsi:         [PASS][7] -> [INCOMPLETE][8] ([i915#58] / [k.org#198133])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-glk-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15971/fi-glk-dsi/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][9] -> [DMESG-FAIL][10] ([i915#553] / [i915#725])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15971/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][11] ([i915#816]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15971/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [INCOMPLETE][13] ([i915#671]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15971/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - fi-icl-dsi:         [DMESG-WARN][15] ([i915#109]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-icl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15971/fi-icl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [DMESG-WARN][17] ([i915#889]) -> [INCOMPLETE][18] ([i915#505] / [i915#671])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15971/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][19] ([fdo#109271]) -> [FAIL][20] ([i915#704])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15971/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][21] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][22] ([i915#62] / [i915#92]) +10 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15971/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][23] ([i915#62] / [i915#92]) -> [DMESG-WARN][24] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-kbl-x1275/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15971/fi-kbl-x1275/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#704]: https://gitlab.freedesktop.org/drm/intel/issues/704
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (43 -> 37)
------------------------------

  Additional (4): fi-skl-lmem fi-bsw-nick fi-snb-2520m fi-kbl-r 
  Missing    (10): fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-gdg-551 fi-bdw-samus fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7663 -> Patchwork_15971

  CI-20190529: 20190529
  CI_DRM_7663: f062a18e0daf3d831fd816c27f74458ff36a1da9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15971: dbf9f49bf4dc5dcbf0a9cdbfaf3b596dfa4cff32 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

dbf9f49bf4dc drm/i915/selftests: Extend fault handler selftests to all memory regions
116efdf5254a drm/i915/gem: Extend mmap support for lmem
0fbfa0d2453e drm/i915/gem: Single page objects are naturally contiguous

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15971/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
