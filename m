Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC05D9DF9A3
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 04:35:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C281910E212;
	Mon,  2 Dec 2024 03:35:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6A5F10E212;
 Mon,  2 Dec 2024 03:35:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_Add_AS=5FSDP_to_fastset_?=
 =?utf-8?q?=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 02 Dec 2024 03:35:43 -0000
Message-ID: <173311054393.1482155.8915834755576874970@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241202024540.2578856-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20241202024540.2578856-1-mitulkumar.ajitkumar.golani@intel.com>
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

Series: Add AS_SDP to fastset (rev4)
URL   : https://patchwork.freedesktop.org/series/137035/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15764 -> Patchwork_137035v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v4/index.html

Participating hosts (46 -> 45)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_137035v4:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - {bat-mtlp-9}:       NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v4/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  
Known issues
------------

  Here are the changes found in Patchwork_137035v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][2] -> [ABORT][3] ([i915#12061]) +1 other test abort
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15764/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v4/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-6:         [PASS][4] -> [ABORT][5] ([i915#12061]) +1 other test abort
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15764/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v4/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-dg2-11:         [PASS][6] -> [SKIP][7] ([i915#9197])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15764/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v4/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - fi-pnv-d510:        NOTRUN -> [SKIP][8] +31 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v4/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [INCOMPLETE][9] ([i915#12904]) -> [PASS][10] +1 other test pass
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15764/bat-apl-1/igt@dmabuf@all-tests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v4/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-7:          [FAIL][11] ([i915#12903]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15764/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v4/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [ABORT][13] ([i915#12061]) -> [PASS][14] +1 other test pass
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15764/bat-mtlp-8/igt@i915_selftest@live.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v4/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@kms_busy@basic@modeset:
    - {bat-mtlp-9}:       [DMESG-WARN][15] ([i915#12695]) -> [PASS][16] +2 other tests pass
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15764/bat-mtlp-9/igt@kms_busy@basic@modeset.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v4/bat-mtlp-9/igt@kms_busy@basic@modeset.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dp1:
    - bat-apl-1:          [DMESG-WARN][17] ([i915#12921]) -> [PASS][18] +1 other test pass
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15764/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v4/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [ABORT][19] -> [SKIP][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15764/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v4/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12695]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12695
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#12921]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12921
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15764 -> Patchwork_137035v4

  CI-20190529: 20190529
  CI_DRM_15764: 9b0aa1ea1d6b35c6eb7e641e5b81b33c297ca4ff @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8132: 7675e070cb74c6808050764367f978f6b74ebc36 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_137035v4: 9b0aa1ea1d6b35c6eb7e641e5b81b33c297ca4ff @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137035v4/index.html
