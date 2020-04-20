Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D041B0711
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 13:12:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 548B16E509;
	Mon, 20 Apr 2020 11:12:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A49556E506;
 Mon, 20 Apr 2020 11:12:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E880A3C0D;
 Mon, 20 Apr 2020 11:12:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 20 Apr 2020 11:12:48 -0000
Message-ID: <158738116861.29874.5897865883068735644@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200420090914.14679-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200420090914.14679-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915/selftests=3A_Verify_freque?=
 =?utf-8?q?ncy_scaling_with_RPS?=
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

Series: series starting with [1/4] drm/i915/selftests: Verify frequency scaling with RPS
URL   : https://patchwork.freedesktop.org/series/76184/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8327 -> Patchwork_17376
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17376:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1}:
    - {fi-tgl-dsi}:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1.html

  
Known issues
------------

  Here are the changes found in Patchwork_17376 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-skl-6770hq:      [PASS][3] -> [DMESG-WARN][4] ([i915#203]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/fi-skl-6770hq/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/fi-skl-6770hq/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_pm:
    - fi-icl-y:           [PASS][5] -> [DMESG-FAIL][6] ([i915#1751])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/fi-icl-y/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/fi-icl-y/igt@i915_selftest@live@gt_pm.html
    - fi-skl-6600u:       [PASS][7] -> [DMESG-FAIL][8] ([i915#1751])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/fi-skl-6600u/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/fi-skl-6600u/igt@i915_selftest@live@gt_pm.html
    - fi-cfl-8109u:       [PASS][9] -> [DMESG-FAIL][10] ([i915#1751])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
    - fi-whl-u:           [PASS][11] -> [DMESG-FAIL][12] ([i915#1751])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/fi-whl-u/igt@i915_selftest@live@gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/fi-whl-u/igt@i915_selftest@live@gt_pm.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6770hq:      [PASS][13] -> [SKIP][14] ([fdo#109271]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-skl-6770hq:      [PASS][15] -> [DMESG-WARN][16] ([i915#106])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Warnings ####

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-y:           [DMESG-FAIL][17] ([i915#1725]) -> [DMESG-FAIL][18] ([i915#1744])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/fi-tgl-y/igt@i915_selftest@live@gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/fi-tgl-y/igt@i915_selftest@live@gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#1725]: https://gitlab.freedesktop.org/drm/intel/issues/1725
  [i915#1744]: https://gitlab.freedesktop.org/drm/intel/issues/1744
  [i915#1751]: https://gitlab.freedesktop.org/drm/intel/issues/1751
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203


Participating hosts (49 -> 44)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bdw-samus fi-byt-clapper fi-skl-6700k2 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8327 -> Patchwork_17376

  CI-20190529: 20190529
  CI_DRM_8327: 17e0a63ab93b19ea2bfccd9a0425c93e52a65246 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17376: 589884d12beb98e0c84eb0026628ccb93ed0b946 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

589884d12beb drm/i915/selftests: Split RPS frequency measurement
affab98e14a6 drm/i915/selftests: Check RPS controls
979f48e06a1c drm/i915/selftests: Skip energy consumption tests if not controlling freq
27cd01ca67a5 drm/i915/selftests: Verify frequency scaling with RPS

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17376/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
