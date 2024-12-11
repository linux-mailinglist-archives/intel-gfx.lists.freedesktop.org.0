Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D405E9ECBB5
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 13:04:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98ECE10EB18;
	Wed, 11 Dec 2024 12:04:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F25A910E617;
 Wed, 11 Dec 2024 12:04:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_use_I?=
 =?utf-8?q?S=5FERR=5FOR=5FNULL_macro_on_DP_tunnel_mgr_creation_failure?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2024 12:04:28 -0000
Message-ID: <173391866898.1184935.11883135750260480263@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <fw4bnfdbbolmg5zdzrf7raw5d7vzcxxz3zno3pti6tmnakrnvt@tx3262k6bzfs>
In-Reply-To: <fw4bnfdbbolmg5zdzrf7raw5d7vzcxxz3zno3pti6tmnakrnvt@tx3262k6bzfs>
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

Series: drm/i915/display: use IS_ERR_OR_NULL macro on DP tunnel mgr creation failure
URL   : https://patchwork.freedesktop.org/series/142404/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15819 -> Patchwork_142404v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_142404v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_142404v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142404v1/index.html

Participating hosts (46 -> 45)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_142404v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@basic-flip-vs-modeset@c-dp1:
    - bat-apl-1:          [PASS][1] -> [DMESG-WARN][2] +1 other test dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15819/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142404v1/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_142404v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][3] -> [ABORT][4] ([i915#12061]) +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15819/bat-mtlp-8/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142404v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-arls-5:         NOTRUN -> [ABORT][5] ([i915#12061])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142404v1/bat-arls-5/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][6] -> [ABORT][7] ([i915#12061]) +1 other test abort
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15819/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142404v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-arls-5:         [PASS][8] -> [ABORT][9] ([i915#12061])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15819/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142404v1/bat-arls-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@too-high:
    - fi-cfl-8109u:       [PASS][10] -> [DMESG-WARN][11] ([i915#11621]) +52 other tests dmesg-warn
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15819/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142404v1/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-apl-1:          [PASS][12] -> [DMESG-WARN][13] ([i915#12921])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15819/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142404v1/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
    - bat-apl-1:          [PASS][14] -> [DMESG-WARN][15] ([i915#12918]) +1 other test dmesg-warn
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15819/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142404v1/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-dg2-11:         [PASS][16] -> [SKIP][17] ([i915#9197]) +1 other test skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15819/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142404v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc.html

  
#### Possible fixes ####

  * igt@core_auth@basic-auth:
    - fi-cfl-8109u:       [DMESG-WARN][18] ([i915#11621]) -> [PASS][19] +1 other test pass
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15819/fi-cfl-8109u/igt@core_auth@basic-auth.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142404v1/fi-cfl-8109u/igt@core_auth@basic-auth.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [FAIL][20] ([i915#12903]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15819/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142404v1/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-7:          [FAIL][22] ([i915#12903]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15819/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142404v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [ABORT][24] ([i915#12061]) -> [PASS][25] +1 other test pass
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15819/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142404v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-kbl-7567u:       [DMESG-WARN][26] ([i915#12920]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15819/fi-kbl-7567u/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142404v1/fi-kbl-7567u/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [SKIP][28] -> [ABORT][29] ([i915#13169])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15819/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142404v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12918]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12918
  [i915#12920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12920
  [i915#12921]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12921
  [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15819 -> Patchwork_142404v1

  CI-20190529: 20190529
  CI_DRM_15819: 03abf2f5f12e0f13a3a28bf70ccf2d88ec2a707b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8147: df65b61f81a5cc919c10ff9c5ed516b45364135c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142404v1: 03abf2f5f12e0f13a3a28bf70ccf2d88ec2a707b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142404v1/index.html
