Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1FD125901
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 02:01:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 107E86EAB5;
	Thu, 19 Dec 2019 01:01:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 842F66E0E6;
 Thu, 19 Dec 2019 01:01:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7D2BBA0091;
 Thu, 19 Dec 2019 01:01:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 19 Dec 2019 01:01:25 -0000
Message-ID: <157671728549.26199.15111127761291928125@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191218232129.4065243-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191218232129.4065243-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Schedule_request_retirement_when_signaler_idles_=28?=
 =?utf-8?q?rev2=29?=
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

Series: drm/i915/gt: Schedule request retirement when signaler idles (rev2)
URL   : https://patchwork.freedesktop.org/series/71137/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7601 -> Patchwork_15835
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15835 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15835, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15835/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15835:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_sync@basic-each:
    - fi-icl-u3:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/fi-icl-u3/igt@gem_sync@basic-each.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15835/fi-icl-u3/igt@gem_sync@basic-each.html
    - fi-icl-guc:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/fi-icl-guc/igt@gem_sync@basic-each.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15835/fi-icl-guc/igt@gem_sync@basic-each.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/fi-icl-y/igt@i915_selftest@live_execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15835/fi-icl-y/igt@i915_selftest@live_execlists.html
    - fi-skl-lmem:        [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/fi-skl-lmem/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15835/fi-skl-lmem/igt@i915_selftest@live_execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_15835 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][9] -> [TIMEOUT][10] ([i915#816])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15835/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][11] -> [SKIP][12] ([fdo#109271])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15835/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-u2:          [PASS][13] -> [INCOMPLETE][14] ([i915#140])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/fi-icl-u2/igt@i915_selftest@live_execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15835/fi-icl-u2/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [PASS][15] -> [INCOMPLETE][16] ([i915#694])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15835/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_sync@basic-all:
    - fi-tgl-y:           [INCOMPLETE][17] ([i915#470] / [i915#472]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/fi-tgl-y/igt@gem_sync@basic-all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15835/fi-tgl-y/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-many-each:
    - fi-bsw-kefka:       [DMESG-FAIL][19] -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/fi-bsw-kefka/igt@gem_sync@basic-many-each.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15835/fi-bsw-kefka/igt@gem_sync@basic-many-each.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-hsw-4770:        [SKIP][21] ([fdo#109271]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15835/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][23] ([i915#553] / [i915#725]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15835/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][25] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][26] ([i915#62] / [i915#92]) +10 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15835/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-kbl-x1275:       [DMESG-WARN][27] ([i915#62] / [i915#92]) -> [DMESG-WARN][28] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15835/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@runner@aborted:
    - fi-icl-guc:         [FAIL][29] ([fdo#110943] / [fdo#111093]) -> [FAIL][30] ([fdo#111093])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/fi-icl-guc/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15835/fi-icl-guc/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#110943]: https://bugs.freedesktop.org/show_bug.cgi?id=110943
  [fdo#111093]: https://bugs.freedesktop.org/show_bug.cgi?id=111093
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 38)
------------------------------

  Additional (6): fi-hsw-4770r fi-bsw-n3050 fi-ivb-3770 fi-blb-e6850 fi-kbl-r fi-snb-2600 
  Missing    (12): fi-ilk-m540 fi-bdw-5557u fi-byt-squawks fi-cfl-8700k fi-kbl-7500u fi-ctg-p8600 fi-gdg-551 fi-cfl-8109u fi-kbl-8809g fi-byt-n2820 fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7601 -> Patchwork_15835

  CI-20190529: 20190529
  CI_DRM_7601: ae3554cfc3c170d7eab0229497d7b1d10256038f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15835: 1c1b2c7a95f4dcb7c50258a4002d6f1d8cfa661e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1c1b2c7a95f4 drm/i915/gt: Schedule request retirement when signaler idles

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15835/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
