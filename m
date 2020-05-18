Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F29F71D7436
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 11:39:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 003EE89ED3;
	Mon, 18 May 2020 09:39:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2DF1E89EAC;
 Mon, 18 May 2020 09:39:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 273FFA47E9;
 Mon, 18 May 2020 09:39:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 18 May 2020 09:39:53 -0000
Message-ID: <158979479313.31686.6187362370666955739@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200516170735.9406-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200516170735.9406-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Remove_PIN=5FUPDATE_for?=
 =?utf-8?q?_i915=5Fvma=5Fpin?=
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

Series: series starting with [1/2] drm/i915: Remove PIN_UPDATE for i915_vma_pin
URL   : https://patchwork.freedesktop.org/series/77323/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8493 -> Patchwork_17681
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17681 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17681, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17681/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17681:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_tiled_pread_basic:
    - fi-bsw-nick:        [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/fi-bsw-nick/igt@gem_tiled_pread_basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17681/fi-bsw-nick/igt@gem_tiled_pread_basic.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-nick:        [PASS][3] -> [DMESG-FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/fi-bsw-nick/igt@i915_selftest@live@gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17681/fi-bsw-nick/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_mocs:
    - fi-apl-guc:         [PASS][5] -> [DMESG-FAIL][6] +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/fi-apl-guc/igt@i915_selftest@live@gt_mocs.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17681/fi-apl-guc/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@hangcheck:
    - fi-apl-guc:         [PASS][7] -> [FAIL][8] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/fi-apl-guc/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17681/fi-apl-guc/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@mman:
    - fi-bsw-kefka:       [PASS][9] -> [DMESG-FAIL][10] +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/fi-bsw-kefka/igt@i915_selftest@live@mman.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17681/fi-bsw-kefka/igt@i915_selftest@live@mman.html
    - fi-bsw-nick:        [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/fi-bsw-nick/igt@i915_selftest@live@mman.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17681/fi-bsw-nick/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@reset:
    - fi-bsw-kefka:       [PASS][13] -> [FAIL][14] +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/fi-bsw-kefka/igt@i915_selftest@live@reset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17681/fi-bsw-kefka/igt@i915_selftest@live@reset.html

  
Known issues
------------

  Here are the changes found in Patchwork_17681 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_tiled_fence_blits@basic:
    - fi-apl-guc:         [PASS][15] -> [SKIP][16] ([fdo#109271]) +28 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/fi-apl-guc/igt@gem_tiled_fence_blits@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17681/fi-apl-guc/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_pm_rps@basic-api:
    - fi-bsw-nick:        [PASS][17] -> [SKIP][18] ([fdo#109271]) +20 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/fi-bsw-nick/igt@i915_pm_rps@basic-api.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17681/fi-bsw-nick/igt@i915_pm_rps@basic-api.html

  * igt@prime_vgem@basic-fence-read:
    - fi-bsw-kefka:       [PASS][19] -> [SKIP][20] ([fdo#109271]) +24 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17681/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-tgl-y:           [INCOMPLETE][21] ([i915#1803]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/fi-tgl-y/igt@i915_selftest@live@execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17681/fi-tgl-y/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1803]: https://gitlab.freedesktop.org/drm/intel/issues/1803


Participating hosts (51 -> 44)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8493 -> Patchwork_17681

  CI-20190529: 20190529
  CI_DRM_8493: 47e0097b33017be45f6826ef82a1f535b81ab9a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5657: 649eae5c905a7460b44305800f95db83a6dd47cb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17681: 97083f187a2cfa728684d37443440e1e4aaef143 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

97083f187a2c drm/i915/gt: Stop cross-poluting PIN_GLOBAL with PIN_USER with no-ppgtt
913f5e8c137e drm/i915: Remove PIN_UPDATE for i915_vma_pin

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17681/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
