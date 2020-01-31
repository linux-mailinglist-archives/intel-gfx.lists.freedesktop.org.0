Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DEA14EE87
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 15:36:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 605F16E9B1;
	Fri, 31 Jan 2020 14:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 809066E9AF;
 Fri, 31 Jan 2020 14:35:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 75E0AA00FD;
 Fri, 31 Jan 2020 14:35:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 31 Jan 2020 14:35:57 -0000
Message-ID: <158048135745.13124.548755852677075307@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200131104548.2451485-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200131104548.2451485-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/12=5D_drm/i915/gem=3A_Require_per-engin?=
 =?utf-8?q?e_reset_support_for_non-persistent_contexts?=
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

Series: series starting with [01/12] drm/i915/gem: Require per-engine reset support for non-persistent contexts
URL   : https://patchwork.freedesktop.org/series/72813/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7850 -> Patchwork_16353
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/index.html

Known issues
------------

  Here are the changes found in Patchwork_16353 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_active:
    - fi-icl-y:           [PASS][1] -> [DMESG-FAIL][2] ([i915#765])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-icl-y/igt@i915_selftest@live_active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/fi-icl-y/igt@i915_selftest@live_active.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][3] -> [FAIL][4] ([i915#217])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([CI#94] / [i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][7] ([fdo#112271] / [i915#1084] / [i915#816]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_store@basic-all:
    - fi-apl-guc:         [TIMEOUT][9] ([fdo#112271]) -> [PASS][10] +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-apl-guc/igt@gem_exec_store@basic-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/fi-apl-guc/igt@gem_exec_store@basic-all.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][11] ([CI#94]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-apl-guc:         [SKIP][13] ([fdo#109271]) -> [PASS][14] +47 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-apl-guc/igt@gem_tiled_fence_blits@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/fi-apl-guc/igt@gem_tiled_fence_blits@basic.html

  * igt@kms_addfb_basic@bad-pitch-32:
    - fi-tgl-y:           [DMESG-WARN][15] ([CI#94] / [i915#402]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-32.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-32.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][17] ([fdo#111407]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][19] ([i915#553] / [i915#725]) -> [DMESG-FAIL][20] ([i915#770])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (43 -> 45)
------------------------------

  Additional (11): fi-bdw-5557u fi-bsw-n3050 fi-byt-j1900 fi-skl-6770hq fi-snb-2520m fi-whl-u fi-gdg-551 fi-ivb-3770 fi-elk-e7500 fi-kbl-r fi-snb-2600 
  Missing    (9): fi-ilk-m540 fi-bdw-samus fi-kbl-7560u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-blb-e6850 fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7850 -> Patchwork_16353

  CI-20190529: 20190529
  CI_DRM_7850: ae66f2257648ce52c51298506977baa32873c9d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5407: a9d69f51dadbcbc53527671f87572d05c3370cba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16353: 5b086f11a8fea2dc9872072e19f7f108bac5bf41 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5b086f11a8fe drm/i915/gem: Honour O_NONBLOCK before throttling execbuf submissions
04486f9552c2 drm/i915: Allow userspace to specify ringsize on construction
14152045734c drm/i915: Flush idle barriers when waiting
fec4d13402ab drm/i915/gt: Split logical ring context manipulation into intel_lrc.c
37da77f319f6 drm/i915/gt: Rename lrc.c to execlists_submission.c
bc6a62afb01e drm/i915/gt: Move move context layout registers and offsets to lrc_reg.h
f572562b1f0b drm/i915/gt: Pull sseu context updates under gt
e88c6333db37 drm/i915/gvt: Use the pinned ce->lrc_reg_state
1178f728bc7d drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
edaa3f3922af drm/i915/selftests: Also wait for the scratch buffer to be bound
3f22ad1cf14f drm/i915/gt: Also use async bind for PIN_USER into bsw/bxt ggtt
d94430028946 drm/i915/gem: Require per-engine reset support for non-persistent contexts

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
