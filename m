Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 894E29F44E5
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 08:16:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C84A10E7E5;
	Tue, 17 Dec 2024 07:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 113C310E7E5;
 Tue, 17 Dec 2024 07:16:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_series_starting_with_=5Bv?=
 =?utf-8?q?2=2C1/1=5D_drm/i915/gt=3A_Increase_a_time_to_retry_RING=5FHEAD_re?=
 =?utf-8?q?set?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nitin Gote" <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2024 07:16:20 -0000
Message-ID: <173441978006.3681322.13293644043754301847@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241217063532.2729031-1-nitin.r.gote@intel.com>
In-Reply-To: <20241217063532.2729031-1-nitin.r.gote@intel.com>
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

Series: series starting with [v2,1/1] drm/i915/gt: Increase a time to retry RING_HEAD reset
URL   : https://patchwork.freedesktop.org/series/142690/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15856 -> Patchwork_142690v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142690v1/index.html

Participating hosts (44 -> 44)
------------------------------

  Additional (1): fi-glk-j4005 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_142690v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-arls-5:         [PASS][1] -> [DMESG-WARN][2] ([i915#4423])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15856/bat-arls-5/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142690v1/bat-arls-5/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_huc_copy@huc-copy:
    - fi-glk-j4005:       NOTRUN -> [SKIP][3] ([i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142690v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-glk-j4005:       NOTRUN -> [SKIP][4] ([i915#4613]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142690v1/fi-glk-j4005/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_pm_rpm@module-reload:
    - bat-adls-6:         [PASS][5] -> [FAIL][6] ([i915#12903])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15856/bat-adls-6/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142690v1/bat-adls-6/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-7:          [PASS][7] -> [FAIL][8] ([i915#12903])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15856/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142690v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-twl-1:          NOTRUN -> [ABORT][9] ([i915#9413])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142690v1/bat-twl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-twl-1:          [PASS][10] -> [ABORT][11] ([i915#9413])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15856/bat-twl-1/igt@i915_selftest@live@gt_lrc.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142690v1/bat-twl-1/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][12] -> [ABORT][13] ([i915#12061]) +1 other test abort
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15856/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142690v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][14] -> [SKIP][15] ([i915#9197]) +3 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15856/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142690v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_psr@psr-primary-page-flip:
    - fi-glk-j4005:       NOTRUN -> [SKIP][16] +10 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142690v1/fi-glk-j4005/igt@kms_psr@psr-primary-page-flip.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-adlp-9:         [INCOMPLETE][17] ([i915#9413]) -> [PASS][18] +1 other test pass
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15856/bat-adlp-9/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142690v1/bat-adlp-9/igt@i915_selftest@live@workarounds.html
    - {bat-arls-6}:       [ABORT][19] ([i915#12061]) -> [PASS][20] +1 other test pass
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15856/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142690v1/bat-arls-6/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15856 -> Patchwork_142690v1

  CI-20190529: 20190529
  CI_DRM_15856: e7c9466eaad2e3e60e6dbd2725a648b58c717fb0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8157: 48a70f6795e6d68b9fae275261ae3b09d3401fe1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142690v1: e7c9466eaad2e3e60e6dbd2725a648b58c717fb0 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142690v1/index.html
