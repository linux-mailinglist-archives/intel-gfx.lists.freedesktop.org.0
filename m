Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C13125206
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 20:41:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B4C46EA62;
	Wed, 18 Dec 2019 19:41:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C53D66EA61;
 Wed, 18 Dec 2019 19:41:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B0A49A0114;
 Wed, 18 Dec 2019 19:41:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 18 Dec 2019 19:41:10 -0000
Message-ID: <157669807071.8356.16000612544723881966@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191218164152.3883750-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191218164152.3883750-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Track_engine_round-trip_times_=28rev4=29?=
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

Series: drm/i915/gt: Track engine round-trip times (rev4)
URL   : https://patchwork.freedesktop.org/series/69513/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7599 -> Patchwork_15829
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15829 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15829, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15829/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15829:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15829/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cml-s:           NOTRUN -> [DMESG-FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15829/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_15829 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [PASS][4] -> [FAIL][5] ([fdo#103375])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15829/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6770hq:      [PASS][6] -> [DMESG-WARN][7] ([i915#88])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15829/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][8] -> [FAIL][9] ([i915#178])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15829/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][10] -> [DMESG-FAIL][11] ([i915#725])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15829/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-byt-j1900:       [PASS][12] -> [DMESG-FAIL][13] ([i915#725])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-byt-j1900/igt@i915_selftest@live_blt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15829/fi-byt-j1900/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][14] ([i915#816]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15829/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         [INCOMPLETE][16] ([fdo#111593]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15829/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [DMESG-WARN][18] ([fdo#111764]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15829/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][20] ([i915#424]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15829/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][22] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][23] ([i915#62] / [i915#92]) +6 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15829/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-kbl-x1275:       [DMESG-WARN][24] ([i915#62] / [i915#92]) -> [DMESG-WARN][25] ([i915#62] / [i915#92] / [i915#95]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15829/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#88]: https://gitlab.freedesktop.org/drm/intel/issues/88
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (48 -> 40)
------------------------------

  Additional (2): fi-snb-2520m fi-skl-6600u 
  Missing    (10): fi-ilk-m540 fi-bsw-n3050 fi-hsw-4200u fi-hsw-peppy fi-bsw-cyan fi-skl-lmem fi-tgl-y fi-byt-clapper fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7599 -> Patchwork_15829

  CI-20190529: 20190529
  CI_DRM_7599: 03dfaf2e5f39b632d0187544f3c988b8596f11b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15829: 693f17b7016a0d29a5e1358bdfedd4fc2197a9aa @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

693f17b7016a drm/i915/gt: Track engine round-trip times

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15829/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
