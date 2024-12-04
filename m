Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6071C9E3368
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 07:06:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E49310E0E6;
	Wed,  4 Dec 2024 06:06:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4371510E0E6;
 Wed,  4 Dec 2024 06:05:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/dp=5Fmst=3A_Fix_a_few?=
 =?utf-8?q?_side-band_message_handling_issues_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 04 Dec 2024 06:05:59 -0000
Message-ID: <173329235926.2298141.3460706666410965903@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241203160223.2926014-1-imre.deak@intel.com>
In-Reply-To: <20241203160223.2926014-1-imre.deak@intel.com>
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

Series: drm/dp_mst: Fix a few side-band message handling issues (rev2)
URL   : https://patchwork.freedesktop.org/series/142057/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15779 -> Patchwork_142057v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v2/index.html

Participating hosts (42 -> 41)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_142057v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2] ([i915#12914])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15779/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v2/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [PASS][3] -> [ABORT][4] ([i915#12061]) +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15779/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v2/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - fi-pnv-d510:        NOTRUN -> [SKIP][5] +36 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v2/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - fi-pnv-d510:        [ABORT][6] ([i915#13203]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15779/fi-pnv-d510/igt@i915_module_load@load.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v2/fi-pnv-d510/igt@i915_module_load@load.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [ABORT][8] ([i915#12061]) -> [PASS][9] +1 other test pass
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15779/bat-mtlp-8/igt@i915_selftest@live.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v2/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp1:
    - fi-kbl-7567u:       [DMESG-WARN][10] ([i915#12920]) -> [PASS][11] +1 other test pass
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15779/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v2/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12914]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12914
  [i915#12920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12920
  [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203


Build changes
-------------

  * Linux: CI_DRM_15779 -> Patchwork_142057v2

  CI-20190529: 20190529
  CI_DRM_15779: e46e8fdd83bc0ed3257bcd0230ea7c3272b496cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8136: 21076ee09438af484c58b308d8179277503922f5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142057v2: e46e8fdd83bc0ed3257bcd0230ea7c3272b496cb @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v2/index.html
