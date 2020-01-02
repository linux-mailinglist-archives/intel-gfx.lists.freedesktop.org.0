Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A4F12F1E7
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 00:44:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5414D6E15D;
	Thu,  2 Jan 2020 23:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 432436E15C;
 Thu,  2 Jan 2020 23:44:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3AEDAA00E6;
 Thu,  2 Jan 2020 23:44:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 02 Jan 2020 23:44:57 -0000
Message-ID: <157800869723.8912.201658484275836469@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200102221949.1656194-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200102221949.1656194-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftest=3A_Move_igt=5Fatomic=5Fsection=5B=5D_out_of_the_?=
 =?utf-8?q?header_=28rev2=29?=
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

Series: drm/i915/selftest: Move igt_atomic_section[] out of the header (rev2)
URL   : https://patchwork.freedesktop.org/series/71577/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7668 -> Patchwork_15981
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15981 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15981, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15981/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15981:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-kbl-x1275:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15981/fi-kbl-x1275/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15981 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [PASS][2] -> [INCOMPLETE][3] ([i915#505])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15981/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [PASS][4] -> [INCOMPLETE][5] ([i915#671])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15981/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][6] -> [DMESG-FAIL][7] ([i915#553] / [i915#725])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15981/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-x1275:       [PASS][8] -> [DMESG-FAIL][9] ([i915#841])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-kbl-x1275/igt@i915_selftest@live_execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15981/fi-kbl-x1275/igt@i915_selftest@live_execlists.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][10] -> [DMESG-WARN][11] ([i915#44])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15981/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [INCOMPLETE][12] ([i915#671]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15981/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_active:
    - fi-kbl-r:           [DMESG-FAIL][14] -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-kbl-r/igt@i915_selftest@live_active.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15981/fi-kbl-r/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][16] ([i915#553] / [i915#725]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15981/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [FAIL][18] ([fdo#109635]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15981/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#841]: https://gitlab.freedesktop.org/drm/intel/issues/841


Participating hosts (48 -> 43)
------------------------------

  Additional (4): fi-skl-guc fi-cfl-8109u fi-bwr-2160 fi-kbl-8809g 
  Missing    (9): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-ilk-650 fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7668 -> Patchwork_15981

  CI-20190529: 20190529
  CI_DRM_7668: e63e1b81764ac9d3edbf178821a6cbbc8d7eab9d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15981: 29693862b2960748be684c00c33dfbd2eddd4953 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

29693862b296 drm/i915/selftest: Move igt_atomic_section[] out of the header

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15981/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
