Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9EC9E5F96
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 21:41:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58DDF10E3CF;
	Thu,  5 Dec 2024 20:41:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1358B10E3CF;
 Thu,  5 Dec 2024 20:41:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/mst=3A_add_begin?=
 =?utf-8?q?nings_of_DP_MST_documentation_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 05 Dec 2024 20:41:48 -0000
Message-ID: <173343130807.3077870.12534491885604029395@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241125151933.2382910-1-jani.nikula@intel.com>
In-Reply-To: <20241125151933.2382910-1-jani.nikula@intel.com>
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

Series: drm/i915/mst: add beginnings of DP MST documentation (rev2)
URL   : https://patchwork.freedesktop.org/series/141756/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15796 -> Patchwork_141756v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_141756v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_141756v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/index.html

Participating hosts (44 -> 43)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_141756v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@evict:
    - bat-mtlp-8:         NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/bat-mtlp-8/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gt_tlb:
    - bat-twl-1:          [PASS][2] -> [ABORT][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15796/bat-twl-1/igt@i915_selftest@live@gt_tlb.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/bat-twl-1/igt@i915_selftest@live@gt_tlb.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - bat-arls-5:         [PASS][4] -> [DMESG-WARN][5] +1 other test dmesg-warn
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15796/bat-arls-5/igt@kms_addfb_basic@invalid-set-prop.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/bat-arls-5/igt@kms_addfb_basic@invalid-set-prop.html

  
Known issues
------------

  Here are the changes found in Patchwork_141756v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - bat-adlp-6:         [PASS][6] -> [DMESG-WARN][7] ([i915#12253])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15796/bat-adlp-6/igt@i915_module_load@load.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/bat-adlp-6/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - bat-twl-1:          [PASS][8] -> [DMESG-WARN][9] ([i915#1982])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15796/bat-twl-1/igt@i915_module_load@reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/bat-twl-1/igt@i915_module_load@reload.html
    - bat-arls-5:         [PASS][10] -> [DMESG-WARN][11] ([i915#4423]) +1 other test dmesg-warn
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15796/bat-arls-5/igt@i915_module_load@reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/bat-arls-5/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][12] -> [FAIL][13] ([i915#12903])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15796/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
    - bat-rpls-4:         [PASS][14] -> [FAIL][15] ([i915#12903])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15796/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-twl-1:          [PASS][16] -> [ABORT][17] ([i915#12919])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15796/bat-twl-1/igt@i915_selftest@live.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/bat-twl-1/igt@i915_selftest@live.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][18] -> [SKIP][19] ([i915#9197]) +3 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15796/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - fi-pnv-d510:        NOTRUN -> [SKIP][20] +31 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - bat-jsl-3:          [DMESG-WARN][21] ([i915#1982]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15796/bat-jsl-3/igt@i915_module_load@reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/bat-jsl-3/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-7:          [FAIL][23] ([i915#12903]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15796/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-adlp-6:         [ABORT][25] ([i915#9413]) -> [PASS][26] +1 other test pass
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15796/bat-adlp-6/igt@i915_selftest@live.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/bat-adlp-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - {bat-arls-6}:       [ABORT][27] ([i915#12061]) -> [PASS][28] +1 other test pass
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15796/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/bat-arls-6/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-8:         [ABORT][29] ([i915#12061]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15796/bat-mtlp-8/igt@i915_selftest@live@workarounds.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/bat-mtlp-8/igt@i915_selftest@live@workarounds.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - bat-dg2-13:         [DMESG-WARN][31] ([i915#12253]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15796/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - fi-cfl-8109u:       [DMESG-WARN][33] ([i915#12914]) -> [PASS][34] +1 other test pass
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15796/fi-cfl-8109u/igt@kms_pipe_crc_basic@hang-read-crc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/fi-cfl-8109u/igt@kms_pipe_crc_basic@hang-read-crc.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [ABORT][35] ([i915#13169]) -> [SKIP][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15796/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [ABORT][37] ([i915#12061]) -> [INCOMPLETE][38] ([i915#13133])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15796/bat-mtlp-8/igt@i915_selftest@live.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/bat-mtlp-8/igt@i915_selftest@live.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12253]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12914]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12914
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#13133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13133
  [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15796 -> Patchwork_141756v2

  CI-20190529: 20190529
  CI_DRM_15796: 1b7746f770882ce40dacae683e8e65657c40c2b7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8138: 8138
  Patchwork_141756v2: 1b7746f770882ce40dacae683e8e65657c40c2b7 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141756v2/index.html
