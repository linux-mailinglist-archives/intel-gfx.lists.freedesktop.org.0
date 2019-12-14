Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B1E11EFF9
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 03:21:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 440686E0A1;
	Sat, 14 Dec 2019 02:21:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBD0F6E072;
 Sat, 14 Dec 2019 02:21:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D36A6A0114;
 Sat, 14 Dec 2019 02:21:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 14 Dec 2019 02:21:13 -0000
Message-ID: <157629007383.13804.17205462151103309947@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213223140.1830738-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191213223140.1830738-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Serialise_object_before_changing_cache-level?=
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

Series: drm/i915/gem: Serialise object before changing cache-level
URL   : https://patchwork.freedesktop.org/series/70917/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7566 -> Patchwork_15758
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/index.html

Known issues
------------

  Here are the changes found in Patchwork_15758 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-bsw-nick:        [PASS][1] -> [DMESG-FAIL][2] ([i915#723])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-bsw-nick/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/fi-bsw-nick/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][3] ([i915#816]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         [INCOMPLETE][5] ([fdo#111593]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  * igt@gem_sync@basic-all:
    - fi-tgl-y:           [INCOMPLETE][7] ([i915#470]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-tgl-y/igt@gem_sync@basic-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/fi-tgl-y/igt@gem_sync@basic-all.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-skl-lmem:        [INCOMPLETE][9] ([i915#424]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
    - fi-hsw-peppy:       [INCOMPLETE][11] ([i915#694]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_requests:
    - fi-hsw-4770:        [INCOMPLETE][13] ([i915#773]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-hsw-4770/igt@i915_selftest@live_requests.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/fi-hsw-4770/igt@i915_selftest@live_requests.html

  
#### Warnings ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [DMESG-FAIL][15] ([i915#722]) -> [INCOMPLETE][16] ([i915#45])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-kbl-x1275:       [DMESG-WARN][17] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][18] ([i915#62] / [i915#92]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][19] ([i915#62] / [i915#92]) -> [DMESG-WARN][20] ([i915#62] / [i915#92] / [i915#95]) +9 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#723]: https://gitlab.freedesktop.org/drm/intel/issues/723
  [i915#773]: https://gitlab.freedesktop.org/drm/intel/issues/773
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (54 -> 47)
------------------------------

  Additional (1): fi-hsw-4770r 
  Missing    (8): fi-icl-1065g7 fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7566 -> Patchwork_15758

  CI-20190529: 20190529
  CI_DRM_7566: 87c99602f2beb1b0ee7bdb3310bf12133f4d3f7f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15758: 30034c200ed3b908d3f5fb2e93ad5889db8ff2d9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

30034c200ed3 drm/i915/gem: Serialise object before changing cache-level

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15758/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
