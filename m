Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D60F9F9019
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 11:20:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 346E310EF76;
	Fri, 20 Dec 2024 10:20:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57A4410E131;
 Fri, 20 Dec 2024 10:20:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/gvt=3A_store_vir?=
 =?utf-8?q?tual=5Fdp=5Fmonitor=5Fedid_in_rodata_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2024 10:20:23 -0000
Message-ID: <173469002335.733872.15072750654220771742@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241218141945.2588604-1-jani.nikula@intel.com>
In-Reply-To: <20241218141945.2588604-1-jani.nikula@intel.com>
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

Series: drm/i915/gvt: store virtual_dp_monitor_edid in rodata (rev3)
URL   : https://patchwork.freedesktop.org/series/142793/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15879 -> Patchwork_142793v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_142793v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_142793v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v3/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_142793v3:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live:
    - bat-arlh-3:         [PASS][1] -> [DMESG-WARN][2] +1 other test dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15879/bat-arlh-3/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v3/bat-arlh-3/igt@i915_selftest@live.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-kbl-7567u:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15879/fi-kbl-7567u/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v3/fi-kbl-7567u/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-modeset@c-dp1:
    - fi-cfl-8109u:       [PASS][5] -> [DMESG-WARN][6] +2 other tests dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15879/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v3/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_142793v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-adlp-11:        [PASS][7] -> [ABORT][8] ([i915#9413]) +1 other test abort
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15879/bat-adlp-11/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v3/bat-adlp-11/igt@i915_selftest@live.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - fi-cfl-8109u:       [PASS][9] -> [DMESG-WARN][10] ([i915#12914]) +2 other tests dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15879/fi-cfl-8109u/igt@kms_pipe_crc_basic@hang-read-crc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v3/fi-cfl-8109u/igt@kms_pipe_crc_basic@hang-read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [ABORT][11] ([i915#12061]) -> [PASS][12] +1 other test pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15879/bat-mtlp-8/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v3/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [ABORT][13] ([i915#12061]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15879/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v3/bat-arls-5/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12914]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12914
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15879 -> Patchwork_142793v3

  CI-20190529: 20190529
  CI_DRM_15879: 187726fb12b41cc501b62ee8e42946403083076c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8167: 6e93c2e807b398f24673d010f3f71986a09fef8f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142793v3: 187726fb12b41cc501b62ee8e42946403083076c @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v3/index.html
