Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0258D1600F6
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Feb 2020 23:52:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB3286E120;
	Sat, 15 Feb 2020 22:52:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 698246E106;
 Sat, 15 Feb 2020 22:52:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61804A47EB;
 Sat, 15 Feb 2020 22:52:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 15 Feb 2020 22:52:05 -0000
Message-ID: <158180712536.4010.16665564246623381499@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200215220624.72013-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200215220624.72013-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Track_hw_reported_context_runtime_=28rev2=29?=
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

Series: drm/i915: Track hw reported context runtime (rev2)
URL   : https://patchwork.freedesktop.org/series/73499/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7948 -> Patchwork_16583
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16583 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16583, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16583:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_create@basic:
    - fi-icl-u3:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-icl-u3/igt@gem_exec_create@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-icl-u3/igt@gem_exec_create@basic.html
    - fi-icl-y:           [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-icl-y/igt@gem_exec_create@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-icl-y/igt@gem_exec_create@basic.html
    - fi-kbl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-kbl-guc/igt@gem_exec_create@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-kbl-guc/igt@gem_exec_create@basic.html
    - fi-skl-6600u:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-skl-6600u/igt@gem_exec_create@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-skl-6600u/igt@gem_exec_create@basic.html
    - fi-icl-u2:          [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-icl-u2/igt@gem_exec_create@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-icl-u2/igt@gem_exec_create@basic.html
    - fi-skl-6700k2:      [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-skl-6700k2/igt@gem_exec_create@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-skl-6700k2/igt@gem_exec_create@basic.html

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-x1275:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
    - fi-cfl-8109u:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html
    - fi-bdw-5557u:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
    - fi-cfl-guc:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
    - fi-icl-guc:         [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-icl-guc/igt@gem_exec_gttfill@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-icl-guc/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@basic:
    - fi-icl-dsi:         [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-icl-dsi/igt@gem_exec_parallel@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-icl-dsi/igt@gem_exec_parallel@basic.html
    - fi-skl-guc:         [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-skl-guc/igt@gem_exec_parallel@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-skl-guc/igt@gem_exec_parallel@basic.html
    - fi-kbl-r:           [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-kbl-r/igt@gem_exec_parallel@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-kbl-r/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@fds:
    - fi-cfl-8700k:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-cfl-8700k/igt@gem_exec_parallel@fds.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-cfl-8700k/igt@gem_exec_parallel@fds.html

  * igt@gem_sync@basic-each:
    - fi-kbl-8809g:       [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-kbl-8809g/igt@gem_sync@basic-each.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-kbl-8809g/igt@gem_sync@basic-each.html

  * igt@runner@aborted:
    - fi-kbl-x1275:       NOTRUN -> [FAIL][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][34]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][35]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-cfl-8109u/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][36]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-apl-guc/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][37]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][38]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-kbl-guc/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][39]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-cfl-guc/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][40] ([i915#1209]) -> [FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-kbl-8809g/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-kbl-8809g/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_close_race@basic-threads:
    - {fi-tgl-u}:         [PASS][42] -> [INCOMPLETE][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-tgl-u/igt@gem_close_race@basic-threads.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-tgl-u/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_create@basic:
    - {fi-kbl-7560u}:     NOTRUN -> [INCOMPLETE][44]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-kbl-7560u/igt@gem_exec_create@basic.html

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][45]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-ehl-1/igt@runner@aborted.html
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][46]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-kbl-7560u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16583 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_create@basic:
    - fi-cml-u2:          [PASS][47] -> [INCOMPLETE][48] ([i915#283])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-cml-u2/igt@gem_exec_create@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-cml-u2/igt@gem_exec_create@basic.html

  * igt@gem_exec_gttfill@basic:
    - fi-cml-s:           [PASS][49] -> [INCOMPLETE][50] ([i915#283])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-cml-s/igt@gem_exec_gttfill@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-cml-s/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@basic:
    - fi-apl-guc:         [PASS][51] -> [INCOMPLETE][52] ([fdo#103927])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-apl-guc/igt@gem_exec_parallel@basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-apl-guc/igt@gem_exec_parallel@basic.html

  * igt@i915_selftest@live_workarounds:
    - fi-glk-dsi:         [PASS][53] -> [INCOMPLETE][54] ([i915#58] / [k.org#198133])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-glk-dsi/igt@i915_selftest@live_workarounds.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-glk-dsi/igt@i915_selftest@live_workarounds.html
    - fi-bxt-dsi:         [PASS][55] -> [INCOMPLETE][56] ([fdo#103927])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-bxt-dsi/igt@i915_selftest@live_workarounds.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-bxt-dsi/igt@i915_selftest@live_workarounds.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][57] -> [DMESG-WARN][58] ([i915#44])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [INCOMPLETE][59] ([i915#45]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7948/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (46 -> 34)
------------------------------

  Additional (3): fi-bsw-kefka fi-kbl-7560u fi-snb-2520m 
  Missing    (15): fi-bsw-n3050 fi-hsw-4200u fi-byt-squawks fi-bwr-2160 fi-kbl-7500u fi-ctg-p8600 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-skl-lmem fi-blb-e6850 fi-byt-clapper fi-bsw-nick fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7948 -> Patchwork_16583

  CI-20190529: 20190529
  CI_DRM_7948: 129a4630a618fee5d2eaa4290cd367e24893bc91 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5444: c46bae259d427f53fcfcd5f05de0181a9e82d6fe @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16583: 2171c7e5dc4ed7eaafd7c6e8fcc3648e00d1d935 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2171c7e5dc4e drm/i915: Track hw reported context runtime

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16583/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
