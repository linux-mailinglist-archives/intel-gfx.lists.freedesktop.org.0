Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EDE69D9C0D
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2024 18:05:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A5B910E960;
	Tue, 26 Nov 2024 17:05:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE90910E960;
 Tue, 26 Nov 2024 17:05:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/dp=3A_Expose_only_a_p?=
 =?utf-8?q?roperly_inited_connector?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2024 17:05:15 -0000
Message-ID: <173264071571.3414272.14139745521249922693@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241126161859.1858058-1-imre.deak@intel.com>
In-Reply-To: <20241126161859.1858058-1-imre.deak@intel.com>
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

Series: drm/dp: Expose only a properly inited connector
URL   : https://patchwork.freedesktop.org/series/141797/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15749 -> Patchwork_141797v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141797v1/index.html

Participating hosts (45 -> 43)
------------------------------

  Missing    (2): fi-glk-j4005 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_141797v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live:
    - {bat-mtlp-9}:       [ABORT][1] ([i915#12061]) -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15749/bat-mtlp-9/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141797v1/bat-mtlp-9/igt@i915_selftest@live.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-dp7:
    - {bat-mtlp-9}:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15749/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@b-dp7.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141797v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@b-dp7.html

  
Known issues
------------

  Here are the changes found in Patchwork_141797v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-rplp-1:         NOTRUN -> [SKIP][5] ([i915#4613]) +3 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141797v1/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_pm_rpm@module-reload:
    - bat-adls-6:         [PASS][6] -> [FAIL][7] ([i915#12903])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15749/bat-adls-6/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141797v1/bat-adls-6/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-7:          [PASS][8] -> [FAIL][9] ([i915#12903])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15749/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141797v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-arls-5:         NOTRUN -> [ABORT][10] ([i915#12061])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141797v1/bat-arls-5/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [PASS][11] -> [ABORT][12] ([i915#12061])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15749/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141797v1/bat-arls-5/igt@i915_selftest@live@workarounds.html

  * igt@prime_vgem@basic-read:
    - bat-rplp-1:         NOTRUN -> [SKIP][13] ([i915#3708]) +2 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141797v1/bat-rplp-1/igt@prime_vgem@basic-read.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - fi-skl-6600u:       [INCOMPLETE][14] ([i915#13050]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15749/fi-skl-6600u/igt@i915_selftest@live.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141797v1/fi-skl-6600u/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-skl-6600u:       [INCOMPLETE][16] -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15749/fi-skl-6600u/igt@i915_selftest@live@gt_lrc.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141797v1/fi-skl-6600u/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [ABORT][18] ([i915#12061]) -> [PASS][19] +1 other test pass
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15749/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141797v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-arlh-2:         [ABORT][20] ([i915#12061]) -> [PASS][21] +1 other test pass
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15749/bat-arlh-2/igt@i915_selftest@live@workarounds.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141797v1/bat-arlh-2/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-apl-1:          [DMESG-WARN][22] ([i915#12921]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15749/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141797v1/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp1:
    - bat-apl-1:          [DMESG-WARN][24] ([i915#12918]) -> [PASS][25] +1 other test pass
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15749/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141797v1/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html

  * igt@kms_flip@basic-flip-vs-modeset@b-dp1:
    - bat-apl-1:          [DMESG-WARN][26] -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15749/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141797v1/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-rplp-1:         [INCOMPLETE][28] -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15749/bat-rplp-1/igt@prime_vgem@basic-fence-flip.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141797v1/bat-rplp-1/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12918]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12918
  [i915#12921]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12921
  [i915#13050]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13050
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613


Build changes
-------------

  * Linux: CI_DRM_15749 -> Patchwork_141797v1

  CI-20190529: 20190529
  CI_DRM_15749: 739a2506c44a0be22cc842d2c625a05ed21c1198 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8126: 8126
  Patchwork_141797v1: 739a2506c44a0be22cc842d2c625a05ed21c1198 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141797v1/index.html
