Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B149AEA35
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 17:19:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43D1810E96A;
	Thu, 24 Oct 2024 15:19:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E510110E964;
 Thu, 24 Oct 2024 15:19:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5869069237125000646=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_convert?=
 =?utf-8?q?_I915=5FSTATE=5FWARN=28=29_to_struct_intel=5Fdisplay?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2024 15:19:53 -0000
Message-ID: <172978319392.1328167.16906582678148411440@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241024143035.2164165-1-jani.nikula@intel.com>
In-Reply-To: <20241024143035.2164165-1-jani.nikula@intel.com>
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

--===============5869069237125000646==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: convert I915_STATE_WARN() to struct intel_display
URL   : https://patchwork.freedesktop.org/series/140444/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15588 -> Patchwork_140444v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140444v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140444v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/index.html

Participating hosts (44 -> 43)
------------------------------

  Additional (2): fi-skl-6600u fi-kbl-8809g 
  Missing    (3): bat-dg2-14 bat-dg2-9 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140444v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_hangman@error-state-basic:
    - fi-blb-e6850:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-blb-e6850/igt@i915_hangman@error-state-basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-blb-e6850/igt@i915_hangman@error-state-basic.html
    - fi-pnv-d510:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-pnv-d510/igt@i915_hangman@error-state-basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-pnv-d510/igt@i915_hangman@error-state-basic.html

  * igt@i915_module_load@load:
    - bat-adlp-6:         [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-adlp-6/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-adlp-6/igt@i915_module_load@load.html

  * igt@kms_busy@basic:
    - fi-ilk-650:         [PASS][7] -> [ABORT][8] +1 other test abort
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-ilk-650/igt@kms_busy@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-ilk-650/igt@kms_busy@basic.html
    - fi-skl-6600u:       NOTRUN -> [ABORT][9] +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-skl-6600u/igt@kms_busy@basic.html
    - bat-twl-2:          [PASS][10] -> [ABORT][11] +1 other test abort
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-twl-2/igt@kms_busy@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-twl-2/igt@kms_busy@basic.html
    - bat-dg2-11:         [PASS][12] -> [ABORT][13] +1 other test abort
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-dg2-11/igt@kms_busy@basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-dg2-11/igt@kms_busy@basic.html
    - bat-jsl-3:          [PASS][14] -> [ABORT][15] +1 other test abort
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-jsl-3/igt@kms_busy@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-jsl-3/igt@kms_busy@basic.html

  * igt@kms_busy@basic@flip:
    - fi-cfl-8700k:       [PASS][16] -> [ABORT][17] +1 other test abort
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-cfl-8700k/igt@kms_busy@basic@flip.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-cfl-8700k/igt@kms_busy@basic@flip.html
    - fi-elk-e7500:       [PASS][18] -> [ABORT][19] +1 other test abort
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-elk-e7500/igt@kms_busy@basic@flip.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-elk-e7500/igt@kms_busy@basic@flip.html
    - fi-hsw-4770:        [PASS][20] -> [ABORT][21] +1 other test abort
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-hsw-4770/igt@kms_busy@basic@flip.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-hsw-4770/igt@kms_busy@basic@flip.html
    - fi-ivb-3770:        [PASS][22] -> [ABORT][23] +1 other test abort
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-ivb-3770/igt@kms_busy@basic@flip.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-ivb-3770/igt@kms_busy@basic@flip.html
    - bat-mtlp-8:         [PASS][24] -> [ABORT][25] +1 other test abort
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-mtlp-8/igt@kms_busy@basic@flip.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-mtlp-8/igt@kms_busy@basic@flip.html
    - bat-dg2-8:          [PASS][26] -> [ABORT][27] +1 other test abort
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-dg2-8/igt@kms_busy@basic@flip.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-dg2-8/igt@kms_busy@basic@flip.html
    - bat-jsl-1:          [PASS][28] -> [ABORT][29] +1 other test abort
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-jsl-1/igt@kms_busy@basic@flip.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-jsl-1/igt@kms_busy@basic@flip.html
    - bat-arls-1:         [PASS][30] -> [ABORT][31] +1 other test abort
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-arls-1/igt@kms_busy@basic@flip.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-arls-1/igt@kms_busy@basic@flip.html
    - fi-bsw-n3050:       [PASS][32] -> [ABORT][33] +1 other test abort
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-bsw-n3050/igt@kms_busy@basic@flip.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-bsw-n3050/igt@kms_busy@basic@flip.html
    - fi-rkl-11600:       [PASS][34] -> [ABORT][35] +1 other test abort
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-rkl-11600/igt@kms_busy@basic@flip.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-rkl-11600/igt@kms_busy@basic@flip.html
    - bat-arlh-3:         [PASS][36] -> [ABORT][37] +1 other test abort
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-arlh-3/igt@kms_busy@basic@flip.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-arlh-3/igt@kms_busy@basic@flip.html
    - bat-dg1-7:          [PASS][38] -> [ABORT][39] +1 other test abort
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-dg1-7/igt@kms_busy@basic@flip.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-dg1-7/igt@kms_busy@basic@flip.html
    - fi-glk-j4005:       [PASS][40] -> [ABORT][41] +1 other test abort
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-glk-j4005/igt@kms_busy@basic@flip.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-glk-j4005/igt@kms_busy@basic@flip.html
    - bat-adlp-9:         [PASS][42] -> [ABORT][43] +1 other test abort
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-adlp-9/igt@kms_busy@basic@flip.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-adlp-9/igt@kms_busy@basic@flip.html
    - bat-rpls-4:         [PASS][44] -> [ABORT][45] +1 other test abort
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-rpls-4/igt@kms_busy@basic@flip.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-rpls-4/igt@kms_busy@basic@flip.html
    - fi-kbl-7567u:       [PASS][46] -> [ABORT][47] +1 other test abort
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-kbl-7567u/igt@kms_busy@basic@flip.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-kbl-7567u/igt@kms_busy@basic@flip.html
    - bat-twl-1:          [PASS][48] -> [ABORT][49] +1 other test abort
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-twl-1/igt@kms_busy@basic@flip.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-twl-1/igt@kms_busy@basic@flip.html
    - bat-apl-1:          [PASS][50] -> [ABORT][51] +1 other test abort
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-apl-1/igt@kms_busy@basic@flip.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-apl-1/igt@kms_busy@basic@flip.html
    - bat-rplp-1:         [PASS][52] -> [ABORT][53] +1 other test abort
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-rplp-1/igt@kms_busy@basic@flip.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-rplp-1/igt@kms_busy@basic@flip.html
    - fi-tgl-1115g4:      [PASS][54] -> [ABORT][55] +1 other test abort
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-tgl-1115g4/igt@kms_busy@basic@flip.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-tgl-1115g4/igt@kms_busy@basic@flip.html
    - fi-cfl-guc:         [PASS][56] -> [ABORT][57] +1 other test abort
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-cfl-guc/igt@kms_busy@basic@flip.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-cfl-guc/igt@kms_busy@basic@flip.html
    - fi-cfl-8109u:       [PASS][58] -> [ABORT][59] +1 other test abort
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-cfl-8109u/igt@kms_busy@basic@flip.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-cfl-8109u/igt@kms_busy@basic@flip.html
    - bat-arls-2:         [PASS][60] -> [ABORT][61] +1 other test abort
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-arls-2/igt@kms_busy@basic@flip.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-arls-2/igt@kms_busy@basic@flip.html

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-adlm-1:         [PASS][62] -> [ABORT][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-x1275:       [PASS][64] -> [ABORT][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-8809g:       NOTRUN -> [ABORT][66]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html
    - bat-dg1-6:          [PASS][67] -> [ABORT][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-dg1-6/igt@kms_force_connector_basic@force-connector-state.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-dg1-6/igt@kms_force_connector_basic@force-connector-state.html
    - bat-mtlp-6:         [PASS][69] -> [ABORT][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html
    - fi-bsw-nick:        [PASS][71] -> [ABORT][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-bsw-nick/igt@kms_force_connector_basic@force-connector-state.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-bsw-nick/igt@kms_force_connector_basic@force-connector-state.html
    - bat-kbl-2:          [PASS][73] -> [ABORT][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-guc:         [PASS][75] -> [ABORT][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_140444v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - fi-skl-6600u:       NOTRUN -> [SKIP][77]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-skl-6600u/igt@debugfs_test@basic-hwmon.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][78] ([i915#2190])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][79] ([i915#2190])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][80] +14 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-atsm-1:         [INCOMPLETE][81] ([i915#12133]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-atsm-1/igt@i915_selftest@live.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@hangcheck:
    - bat-atsm-1:         [INCOMPLETE][83] -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-atsm-1/igt@i915_selftest@live@hangcheck.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-atsm-1/igt@i915_selftest@live@hangcheck.html

  
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190


Build changes
-------------

  * Linux: CI_DRM_15588 -> Patchwork_140444v1

  CI-20190529: 20190529
  CI_DRM_15588: 121cd95da591284c97d6f9ac1c58c7a79d27b201 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8082: c8379ec8b26f3c21bae5473706b23da78bd26ffa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_140444v1: 121cd95da591284c97d6f9ac1c58c7a79d27b201 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/index.html

--===============5869069237125000646==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/display: convert I915_STATE_WARN() to struct intel_display</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/140444/">https://patchwork.freedesktop.org/series/140444/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15588 -&gt; Patchwork_140444v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140444v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_140444v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Additional (2): fi-skl-6600u fi-kbl-8809g <br />
  Missing    (3): bat-dg2-14 bat-dg2-9 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_140444v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-blb-e6850/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-blb-e6850/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-pnv-d510/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-pnv-d510/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-adlp-6/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-ilk-650/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-ilk-650/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-skl-6600u/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-twl-2/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-twl-2/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-dg2-11/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-dg2-11/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-jsl-3/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-jsl-3/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-cfl-8700k/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-cfl-8700k/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-elk-e7500/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-elk-e7500/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-hsw-4770/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-hsw-4770/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-ivb-3770/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-ivb-3770/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-mtlp-8/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-mtlp-8/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-dg2-8/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-dg2-8/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-jsl-1/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-jsl-1/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-arls-1/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-arls-1/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-bsw-n3050/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-bsw-n3050/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-rkl-11600/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-rkl-11600/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-arlh-3/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-arlh-3/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-dg1-7/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-dg1-7/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-glk-j4005/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-glk-j4005/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-adlp-9/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-adlp-9/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-rpls-4/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-rpls-4/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-kbl-7567u/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-kbl-7567u/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-twl-1/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-twl-1/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-apl-1/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-apl-1/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-rplp-1/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-rplp-1/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-tgl-1115g4/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-tgl-1115g4/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-cfl-guc/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-cfl-guc/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-cfl-8109u/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-cfl-8109u/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-arls-2/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-arls-2/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-dg1-6/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-dg1-6/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-bsw-nick/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-bsw-nick/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140444v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-skl-6600u/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html">SKIP</a> +14 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-atsm-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-atsm-1/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v1/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15588 -&gt; Patchwork_140444v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15588: 121cd95da591284c97d6f9ac1c58c7a79d27b201 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8082: c8379ec8b26f3c21bae5473706b23da78bd26ffa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_140444v1: 121cd95da591284c97d6f9ac1c58c7a79d27b201 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5869069237125000646==--
