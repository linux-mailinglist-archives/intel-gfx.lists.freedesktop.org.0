Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D3B9F30C1
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 13:44:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6432D10E601;
	Mon, 16 Dec 2024 12:44:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C5EA10E5FD;
 Mon, 16 Dec 2024 12:44:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm=3A_Constify_=27struct?=
 =?utf-8?q?_bin=5Fattribute=27?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2024 12:44:08 -0000
Message-ID: <173435304804.3284051.10705153684382471010@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241216-sysfs-const-bin_attr-drm-v1-0-210f2b36b9bf@weissschuh.net>
In-Reply-To: <20241216-sysfs-const-bin_attr-drm-v1-0-210f2b36b9bf@weissschuh.net>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm: Constify 'struct bin_attribute'
URL   : https://patchwork.freedesktop.org/series/142646/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15849 -> Patchwork_142646v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_142646v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_142646v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142646v1/index.html

Participating hosts (45 -> 43)
------------------------------

  Missing    (2): fi-glk-j4005 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_142646v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@requests:
    - bat-arlh-2:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15849/bat-arlh-2/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142646v1/bat-arlh-2/igt@i915_selftest@live@requests.html

  
Known issues
------------

  Here are the changes found in Patchwork_142646v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][3] ([i915#12904]) +1 other test incomplete
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142646v1/fi-pnv-d510/igt@dmabuf@all-tests.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][4] -> [FAIL][5] ([i915#12903])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15849/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142646v1/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
    - bat-rpls-4:         [PASS][6] -> [FAIL][7] ([i915#12903])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15849/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142646v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-arlh-2:         [PASS][8] -> [INCOMPLETE][9] ([i915#12435] / [i915#13194])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15849/bat-arlh-2/igt@i915_selftest@live.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142646v1/bat-arlh-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [PASS][10] -> [ABORT][11] ([i915#12061]) +1 other test abort
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15849/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142646v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dp2:
    - fi-cfl-8109u:       [PASS][12] -> [DMESG-WARN][13] ([i915#12914]) +1 other test dmesg-warn
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15849/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@a-dp2.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142646v1/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@a-dp2.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][14] -> [SKIP][15] ([i915#9197]) +3 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15849/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142646v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - fi-pnv-d510:        NOTRUN -> [SKIP][16] +31 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142646v1/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [ABORT][17] ([i915#12061]) -> [PASS][18] +1 other test pass
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15849/bat-mtlp-8/igt@i915_selftest@live.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142646v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-twl-1:          [ABORT][19] ([i915#12435] / [i915#12919]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15849/bat-twl-1/igt@i915_selftest@live.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142646v1/bat-twl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@requests:
    - bat-twl-1:          [ABORT][21] ([i915#12919]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15849/bat-twl-1/igt@i915_selftest@live@requests.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142646v1/bat-twl-1/igt@i915_selftest@live@requests.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - {bat-mtlp-9}:       [FAIL][23] ([i915#13290]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15849/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142646v1/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - {bat-mtlp-9}:       [DMESG-WARN][25] ([i915#12695]) -> [PASS][26] +10 other tests pass
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15849/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142646v1/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [ABORT][27] ([i915#13169]) -> [SKIP][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15849/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142646v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12695]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12695
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#12914]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12914
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
  [i915#13194]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13194
  [i915#13290]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13290
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15849 -> Patchwork_142646v1

  CI-20190529: 20190529
  CI_DRM_15849: 46e1a74cb7576e5318856a8c24bd127150687c97 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8157: 48a70f6795e6d68b9fae275261ae3b09d3401fe1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142646v1: 46e1a74cb7576e5318856a8c24bd127150687c97 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142646v1/index.html
