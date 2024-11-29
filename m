Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 615F99DE830
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 15:00:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 028C410E540;
	Fri, 29 Nov 2024 14:00:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 375D810E128;
 Fri, 29 Nov 2024 14:00:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_power?=
 =?utf-8?q?_conversion_to_struct_intel=5Fdisplay_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2024 14:00:40 -0000
Message-ID: <173288884022.304126.3191167612035529874@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1732808222.git.jani.nikula@intel.com>
In-Reply-To: <cover.1732808222.git.jani.nikula@intel.com>
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

Series: drm/i915/display: power conversion to struct intel_display (rev2)
URL   : https://patchwork.freedesktop.org/series/141846/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15759 -> Patchwork_141846v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141846v2/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_141846v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][1] -> [ABORT][2] ([i915#12061]) +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15759/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141846v2/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-6:         [PASS][3] -> [ABORT][4] ([i915#12061]) +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15759/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141846v2/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-modeset@b-dp1:
    - bat-apl-1:          [PASS][5] -> [DMESG-WARN][6] ([i915#12918]) +1 other test dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15759/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141846v2/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - fi-cfl-8109u:       [PASS][7] -> [DMESG-WARN][8] ([i915#12914]) +2 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15759/fi-cfl-8109u/igt@kms_pipe_crc_basic@hang-read-crc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141846v2/fi-cfl-8109u/igt@kms_pipe_crc_basic@hang-read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - bat-twl-2:          [ABORT][9] ([i915#12919]) -> [PASS][10] +1 other test pass
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15759/bat-twl-2/igt@i915_selftest@live@gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141846v2/bat-twl-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@workarounds:
    - {bat-arls-6}:       [ABORT][11] ([i915#12061]) -> [PASS][12] +1 other test pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15759/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141846v2/bat-arls-6/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12914]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12914
  [i915#12918]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12918
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919


Build changes
-------------

  * Linux: CI_DRM_15759 -> Patchwork_141846v2

  CI-20190529: 20190529
  CI_DRM_15759: 5379d0a88558b73308ad82f163e80b863626e90b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8129: 363499a879fee5b9b7eda8acf7c772bce3423493 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_141846v2: 5379d0a88558b73308ad82f163e80b863626e90b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141846v2/index.html
