Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 236BF9F3014
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 13:06:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A07D710E410;
	Mon, 16 Dec 2024 12:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A00410E410;
 Mon, 16 Dec 2024 12:06:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/selftests=3A_Use?=
 =?utf-8?q?_preemption_timeout_on_cleanup?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2024 12:06:51 -0000
Message-ID: <173435081156.3271492.10137086727163630263@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241213190122.513709-2-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20241213190122.513709-2-janusz.krzysztofik@linux.intel.com>
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

Series: drm/i915/selftests: Use preemption timeout on cleanup
URL   : https://patchwork.freedesktop.org/series/142582/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15843 -> Patchwork_142582v1
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_142582v1 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_142582v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_142582v1:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [ABORT][1] ([i915#12061]) -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_142582v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-apl-1:          [PASS][3] -> [DMESG-WARN][4] ([i915#12918])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/bat-apl-1/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/bat-apl-1/igt@i915_pm_rpm@module-reload.html
    - bat-rpls-4:         [PASS][5] -> [FAIL][6] ([i915#12903])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
    - fi-cfl-8109u:       [PASS][7] -> [DMESG-WARN][8] ([i915#12914]) +2 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - fi-kbl-7567u:       [PASS][9] -> [DMESG-WARN][10] ([i915#12926]) +2 other tests dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-dg2-11:         [PASS][11] -> [SKIP][12] ([i915#9197])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - bat-adls-6:         [FAIL][13] ([i915#12903]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/bat-adls-6/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/bat-adls-6/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [ABORT][15] ([i915#12061]) -> [PASS][16] +1 other test pass
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-apl-1:          [DMESG-WARN][17] ([i915#12921]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-1:
    - bat-apl-1:          [DMESG-WARN][19] ([i915#12918]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-1.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-arlh-3:         [ABORT][21] ([i915#12061]) -> [DMESG-FAIL][22] ([i915#12435])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/bat-arlh-3/igt@i915_selftest@live.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/bat-arlh-3/igt@i915_selftest@live.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12914]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12914
  [i915#12918]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12918
  [i915#12921]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12921
  [i915#12926]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12926
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15843 -> Patchwork_142582v1

  CI-20190529: 20190529
  CI_DRM_15843: 3002940575eb5832d1fb8d10fd6311467b29c6d7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8156: edf352a96646c8d793f0c1eb11795112f9bde725 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142582v1: 3002940575eb5832d1fb8d10fd6311467b29c6d7 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/index.html
