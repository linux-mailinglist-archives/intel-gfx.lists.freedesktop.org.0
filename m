Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAAB9F47FD
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 10:50:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F315710E8C9;
	Tue, 17 Dec 2024 09:50:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C64C910E8C9;
 Tue, 17 Dec 2024 09:50:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/hdcp=3A_Fix_Repe?=
 =?utf-8?q?ater_authentication_during_topology_change?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2024 09:50:28 -0000
Message-ID: <173442902880.3702663.6935824645863437829@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241217083723.2883317-1-suraj.kandpal@intel.com>
In-Reply-To: <20241217083723.2883317-1-suraj.kandpal@intel.com>
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

Series: drm/i915/hdcp: Fix Repeater authentication during topology change
URL   : https://patchwork.freedesktop.org/series/142698/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15856 -> Patchwork_142698v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142698v1/index.html

Participating hosts (44 -> 44)
------------------------------

  Additional (1): fi-glk-j4005 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_142698v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-glk-j4005:       NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142698v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-glk-j4005:       NOTRUN -> [SKIP][2] ([i915#4613]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142698v1/fi-glk-j4005/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_module_load@load:
    - fi-pnv-d510:        [PASS][3] -> [ABORT][4] ([i915#13203])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15856/fi-pnv-d510/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142698v1/fi-pnv-d510/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-adls-6:         [PASS][5] -> [FAIL][6] ([i915#12903])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15856/bat-adls-6/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142698v1/bat-adls-6/igt@i915_pm_rpm@module-reload.html
    - bat-apl-1:          [PASS][7] -> [FAIL][8] ([i915#12903])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15856/bat-apl-1/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142698v1/bat-apl-1/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-7:          [PASS][9] -> [FAIL][10] ([i915#12903])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15856/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142698v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][11] -> [ABORT][12] ([i915#12061]) +1 other test abort
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15856/bat-mtlp-8/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142698v1/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][13] -> [ABORT][14] ([i915#12061]) +1 other test abort
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15856/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142698v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][15] -> [SKIP][16] ([i915#9197]) +3 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15856/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142698v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_psr@psr-primary-page-flip:
    - fi-glk-j4005:       NOTRUN -> [SKIP][17] +10 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142698v1/fi-glk-j4005/igt@kms_psr@psr-primary-page-flip.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-adlp-9:         [INCOMPLETE][18] ([i915#9413]) -> [PASS][19] +1 other test pass
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15856/bat-adlp-9/igt@i915_selftest@live@workarounds.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142698v1/bat-adlp-9/igt@i915_selftest@live@workarounds.html
    - {bat-arls-6}:       [ABORT][20] ([i915#12061]) -> [PASS][21] +1 other test pass
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15856/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142698v1/bat-arls-6/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15856 -> Patchwork_142698v1

  CI-20190529: 20190529
  CI_DRM_15856: e7c9466eaad2e3e60e6dbd2725a648b58c717fb0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8157: 48a70f6795e6d68b9fae275261ae3b09d3401fe1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142698v1: e7c9466eaad2e3e60e6dbd2725a648b58c717fb0 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142698v1/index.html
