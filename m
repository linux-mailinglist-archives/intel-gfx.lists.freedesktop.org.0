Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C69412E024
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 19:41:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E29F989861;
	Wed,  1 Jan 2020 18:41:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9822889850;
 Wed,  1 Jan 2020 18:41:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8EEFBA432F;
 Wed,  1 Jan 2020 18:41:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Jan 2020 18:41:01 -0000
Message-ID: <157790406155.5188.13239991868344169087@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200101163918.768253-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200101163918.768253-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gem=3A_Single_page_ob?=
 =?utf-8?q?jects_are_naturally_contiguous_=28rev2=29?=
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

Series: series starting with [CI,1/3] drm/i915/gem: Single page objects are naturally contiguous (rev2)
URL   : https://patchwork.freedesktop.org/series/71546/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7663 -> Patchwork_15969
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15969/index.html

Known issues
------------

  Here are the changes found in Patchwork_15969 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gt_contexts:
    - fi-bwr-2160:        [PASS][1] -> [FAIL][2] ([i915#878])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-bwr-2160/igt@i915_selftest@live_gt_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15969/fi-bwr-2160/igt@i915_selftest@live_gt_contexts.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][3] ([i915#816]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15969/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_coherency:
    - fi-cfl-guc:         [DMESG-FAIL][5] ([i915#889]) -> [PASS][6] +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-cfl-guc/igt@i915_selftest@live_coherency.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15969/fi-cfl-guc/igt@i915_selftest@live_coherency.html

  * igt@i915_selftest@live_gt_timelines:
    - fi-cfl-guc:         [DMESG-WARN][7] ([i915#889]) -> [PASS][8] +23 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-cfl-guc/igt@i915_selftest@live_gt_timelines.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15969/fi-cfl-guc/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_busy@basic-flip-pipe-a:
    - {fi-tgl-guc}:       [DMESG-WARN][9] ([i915#402]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-tgl-guc/igt@kms_busy@basic-flip-pipe-a.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15969/fi-tgl-guc/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - fi-icl-dsi:         [DMESG-WARN][11] ([i915#109]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-icl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15969/fi-icl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  
#### Warnings ####

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][14] ([i915#62] / [i915#92]) +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15969/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92]) -> [DMESG-WARN][16] ([i915#62] / [i915#92] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15969/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][17] ([i915#858]) -> [FAIL][18] ([i915#192] / [i915#193] / [i915#194])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7663/fi-kbl-8809g/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15969/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#858]: https://gitlab.freedesktop.org/drm/intel/issues/858
  [i915#878]: https://gitlab.freedesktop.org/drm/intel/issues/878
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (43 -> 35)
------------------------------

  Additional (6): fi-bdw-5557u fi-bsw-n3050 fi-skl-6770hq fi-snb-2520m fi-skl-lmem fi-bsw-nick 
  Missing    (14): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-whl-u fi-gdg-551 fi-bdw-samus fi-byt-n2820 fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7663 -> Patchwork_15969

  CI-20190529: 20190529
  CI_DRM_7663: f062a18e0daf3d831fd816c27f74458ff36a1da9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15969: 2bf8c1d8145faccbfc4f07e50ac2f3b656798b7f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2bf8c1d8145f drm/i915/selftests: Extend fault handler selftests to all memory regions
d2c0e07dd6fe drm/i915/gem: Extend mmap support for lmem
c07fa7b444de drm/i915/gem: Single page objects are naturally contiguous

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15969/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
