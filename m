Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B670A9F5F84
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 08:43:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E39610EAC7;
	Wed, 18 Dec 2024 07:43:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7016910EAC7;
 Wed, 18 Dec 2024 07:43:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_drop_?=
 =?utf-8?q?unnecessary_i915=5Fdrv=2Eh_includes_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2024 07:43:37 -0000
Message-ID: <173450781745.4154419.13074356308796302989@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241217132147.2008057-1-jani.nikula@intel.com>
In-Reply-To: <20241217132147.2008057-1-jani.nikula@intel.com>
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

Series: drm/i915/display: drop unnecessary i915_drv.h includes (rev2)
URL   : https://patchwork.freedesktop.org/series/142669/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15861 -> Patchwork_142669v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142669v2/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_142669v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][1] -> [FAIL][2] ([i915#12903])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142669v2/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-7:          [PASS][3] -> [FAIL][4] ([i915#12903])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142669v2/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][5] -> [ABORT][6] ([i915#12061]) +1 other test abort
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142669v2/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-6:         [PASS][7] -> [ABORT][8] ([i915#12061]) +1 other test abort
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142669v2/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_busy@basic@modeset:
    - bat-apl-1:          [PASS][9] -> [DMESG-WARN][10] ([i915#12918]) +1 other test dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-apl-1/igt@kms_busy@basic@modeset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142669v2/bat-apl-1/igt@kms_busy@basic@modeset.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][11] -> [SKIP][12] ([i915#9197]) +3 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142669v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - fi-skl-6600u:       [INCOMPLETE][13] ([i915#13050]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/fi-skl-6600u/igt@i915_selftest@live.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142669v2/fi-skl-6600u/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-skl-6600u:       [INCOMPLETE][15] -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/fi-skl-6600u/igt@i915_selftest@live@gt_timelines.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142669v2/fi-skl-6600u/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@workarounds:
    - {bat-arls-6}:       [ABORT][17] ([i915#12061]) -> [PASS][18] +1 other test pass
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142669v2/bat-arls-6/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12918]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12918
  [i915#13050]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13050
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15861 -> Patchwork_142669v2

  CI-20190529: 20190529
  CI_DRM_15861: 561947cbde53a2d22434977709610f42e4f0229b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8160: 4f10d98c56498ab29445ae0b06aab6f5a8ec2eca @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142669v2: 561947cbde53a2d22434977709610f42e4f0229b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142669v2/index.html
