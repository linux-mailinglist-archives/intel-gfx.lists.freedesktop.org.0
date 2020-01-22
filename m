Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDFB145F1F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 00:25:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C6486F92D;
	Wed, 22 Jan 2020 23:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7FC296F92D;
 Wed, 22 Jan 2020 23:25:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6EE7BA011C;
 Wed, 22 Jan 2020 23:25:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 22 Jan 2020 23:25:30 -0000
Message-ID: <157973553043.22395.432713667752881731@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200122182617.18597-1-jose.souza@intel.com>
In-Reply-To: <20200122182617.18597-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/dc3co=3A_Do_the_full_?=
 =?utf-8?q?calculation_of_DC3CO_exit_only_once?=
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

Series: series starting with [CI,1/2] drm/i915/dc3co: Do the full calculation of DC3CO exit only once
URL   : https://patchwork.freedesktop.org/series/72416/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7797 -> Patchwork_16217
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16217 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16217, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16217/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16217:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16217/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-tgl-y:           NOTRUN -> [SKIP][2] +29 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16217/fi-tgl-y/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][3] ([fdo#112271]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16217/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_16217 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [PASS][5] -> [INCOMPLETE][6] ([i915#283])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16217/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live_blt:
    - fi-bsw-n3050:       [PASS][7] -> [DMESG-FAIL][8] ([i915#723])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-bsw-n3050/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16217/fi-bsw-n3050/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][9] ([i915#45]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16217/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][11] ([i915#725]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16217/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [TIMEOUT][13] ([fdo#112271]) -> [INCOMPLETE][14] ([i915#45])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7797/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16217/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#723]: https://gitlab.freedesktop.org/drm/intel/issues/723
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (51 -> 43)
------------------------------

  Additional (1): fi-tgl-y 
  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-icl-u3 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7797 -> Patchwork_16217

  CI-20190529: 20190529
  CI_DRM_7797: c6751dc645f51c3058592c615770ecefd9899672 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5377: 1e6cb3e75925cf623df04f78430ae9299632ec3f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16217: 18c85d0075560f26c710e7e7796e33f8cfa82f38 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

18c85d007556 drm/i915/dc3co: Avoid full modeset when EXITLINE needs to be changed
b1f09d7967a9 drm/i915/dc3co: Do the full calculation of DC3CO exit only once

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16217/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
