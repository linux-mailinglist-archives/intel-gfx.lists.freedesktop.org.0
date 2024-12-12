Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 304EC9EE463
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 11:43:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C184210E417;
	Thu, 12 Dec 2024 10:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB0A610E417;
 Thu, 12 Dec 2024 10:43:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Add_W?=
 =?utf-8?q?A=5F14018221282_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2024 10:43:28 -0000
Message-ID: <173400020867.1547303.5841025214069417326@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241212094043.911853-1-nemesa.garg@intel.com>
In-Reply-To: <20241212094043.911853-1-nemesa.garg@intel.com>
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

Series: drm/i915/display: Add WA_14018221282 (rev3)
URL   : https://patchwork.freedesktop.org/series/141087/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15829 -> Patchwork_141087v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141087v3/index.html

Participating hosts (47 -> 45)
------------------------------

  Missing    (2): fi-glk-j4005 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_141087v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - fi-hsw-4770:        [PASS][1] -> [DMESG-WARN][2] ([i915#12806]) +1 other test dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15829/fi-hsw-4770/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141087v3/fi-hsw-4770/igt@i915_selftest@live.html
    - bat-arls-5:         NOTRUN -> [ABORT][3] ([i915#12061])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141087v3/bat-arls-5/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_timelines:
    - bat-twl-2:          [PASS][4] -> [ABORT][5] ([i915#13051])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15829/bat-twl-2/igt@i915_selftest@live@gt_timelines.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141087v3/bat-twl-2/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][6] -> [ABORT][7] ([i915#12061]) +1 other test abort
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15829/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141087v3/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-arls-5:         [PASS][8] -> [ABORT][9] ([i915#12061])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15829/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141087v3/bat-arls-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dp1:
    - bat-apl-1:          [PASS][10] -> [DMESG-WARN][11] ([i915#12921]) +1 other test dmesg-warn
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15829/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141087v3/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-7:          [FAIL][12] ([i915#12903]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15829/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141087v3/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [ABORT][14] ([i915#12061]) -> [PASS][15] +1 other test pass
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15829/bat-mtlp-8/igt@i915_selftest@live.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141087v3/bat-mtlp-8/igt@i915_selftest@live.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-twl-2:          [ABORT][16] ([i915#12919]) -> [ABORT][17] ([i915#13051])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15829/bat-twl-2/igt@i915_selftest@live.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141087v3/bat-twl-2/igt@i915_selftest@live.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12806
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#12921]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12921
  [i915#13051]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13051


Build changes
-------------

  * Linux: CI_DRM_15829 -> Patchwork_141087v3

  CI-20190529: 20190529
  CI_DRM_15829: e2a7d57b916f6425afb6bbcc81c1b8bf8a0561a9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8150: 7812065f4aebab1629b570bd78ef71e09480b359 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_141087v3: e2a7d57b916f6425afb6bbcc81c1b8bf8a0561a9 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141087v3/index.html
