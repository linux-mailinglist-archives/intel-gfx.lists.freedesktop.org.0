Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C83959F7D45
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 15:40:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72A8B10E00D;
	Thu, 19 Dec 2024 14:40:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 554D210E00D;
 Thu, 19 Dec 2024 14:40:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/scaler=3A_Scaler?=
 =?utf-8?q?_cleanups_and_tracepoints?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2024 14:40:14 -0000
Message-ID: <173461921434.446779.6305167570615289255@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/scaler: Scaler cleanups and tracepoints
URL   : https://patchwork.freedesktop.org/series/142828/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15871 -> Patchwork_142828v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142828v1/index.html

Participating hosts (44 -> 43)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_142828v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - fi-glk-j4005:       [PASS][1] -> [INCOMPLETE][2] ([i915#12904]) +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15871/fi-glk-j4005/igt@dmabuf@all-tests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142828v1/fi-glk-j4005/igt@dmabuf@all-tests.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][3] -> [ABORT][4] ([i915#12061]) +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15871/bat-mtlp-8/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142828v1/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [PASS][5] -> [ABORT][6] ([i915#12061]) +1 other test abort
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15871/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142828v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@too-high:
    - fi-cfl-8109u:       [PASS][7] -> [DMESG-WARN][8] ([i915#11621]) +120 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15871/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142828v1/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html

  * igt@kms_busy@basic@flip:
    - fi-cfl-8109u:       [PASS][9] -> [DMESG-WARN][10] ([i915#11621] / [i915#1982]) +1 other test dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15871/fi-cfl-8109u/igt@kms_busy@basic@flip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142828v1/fi-cfl-8109u/igt@kms_busy@basic@flip.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][11] -> [SKIP][12] ([i915#9197]) +3 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15871/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142828v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-adlm-1:         [ABORT][13] ([i915#9413]) -> [PASS][14] +1 other test pass
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15871/bat-adlm-1/igt@i915_selftest@live.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142828v1/bat-adlm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@dmabuf:
    - bat-arls-5:         [DMESG-WARN][15] -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15871/bat-arls-5/igt@i915_selftest@live@dmabuf.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142828v1/bat-arls-5/igt@i915_selftest@live@dmabuf.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - {bat-mtlp-9}:       [WARN][17] -> [PASS][18] +1 other test pass
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15871/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142828v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
    - {bat-mtlp-9}:       [FAIL][19] ([i915#13290]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15871/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142828v1/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - {bat-mtlp-9}:       [DMESG-WARN][21] ([i915#12695]) -> [PASS][22] +10 other tests pass
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15871/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142828v1/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [SKIP][23] -> [ABORT][24] ([i915#13169])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15871/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142828v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12695]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12695
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
  [i915#13290]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13290
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15871 -> Patchwork_142828v1

  CI-20190529: 20190529
  CI_DRM_15871: 995cd30a4e222b6a7b4b40c36219e4937fd7109e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8165: 4d630db8b8cfbccd2b871e5084e5c039c374fb14 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142828v1: 995cd30a4e222b6a7b4b40c36219e4937fd7109e @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142828v1/index.html
