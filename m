Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B057516C42E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 15:39:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C02DC6EB10;
	Tue, 25 Feb 2020 14:39:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE3626EB00;
 Tue, 25 Feb 2020 14:39:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6822A363D;
 Tue, 25 Feb 2020 14:39:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 25 Feb 2020 14:39:16 -0000
Message-ID: <158264155667.5723.6154983856864959999@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225115024.2386811-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200225115024.2386811-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_avoid_spurious_EBUSY_due_to_nonblocking_atomic_modesets_=28?=
 =?utf-8?q?rev3=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm: avoid spurious EBUSY due to nonblocking atomic modesets (rev3)
URL   : https://patchwork.freedesktop.org/series/45968/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8004 -> Patchwork_16701
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16701:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_busy@basic@modeset}:
    - fi-apl-guc:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-apl-guc/igt@kms_busy@basic@modeset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-apl-guc/igt@kms_busy@basic@modeset.html
    - fi-icl-dsi:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-icl-dsi/igt@kms_busy@basic@modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-icl-dsi/igt@kms_busy@basic@modeset.html
    - {fi-tgl-u}:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-tgl-u/igt@kms_busy@basic@modeset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-tgl-u/igt@kms_busy@basic@modeset.html
    - {fi-tgl-dsi}:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-tgl-dsi/igt@kms_busy@basic@modeset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-tgl-dsi/igt@kms_busy@basic@modeset.html
    - fi-bxt-dsi:         [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-bxt-dsi/igt@kms_busy@basic@modeset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-bxt-dsi/igt@kms_busy@basic@modeset.html
    - fi-cfl-guc:         [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-cfl-guc/igt@kms_busy@basic@modeset.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-cfl-guc/igt@kms_busy@basic@modeset.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-skl-6600u/igt@kms_busy@basic@modeset.html
    - fi-cml-s:           [PASS][14] -> [FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-cml-s/igt@kms_busy@basic@modeset.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-cml-s/igt@kms_busy@basic@modeset.html
    - fi-skl-lmem:        [PASS][16] -> [FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-skl-lmem/igt@kms_busy@basic@modeset.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-skl-lmem/igt@kms_busy@basic@modeset.html
    - {fi-ehl-1}:         NOTRUN -> [FAIL][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-ehl-1/igt@kms_busy@basic@modeset.html
    - fi-bsw-n3050:       [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-bsw-n3050/igt@kms_busy@basic@modeset.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-bsw-n3050/igt@kms_busy@basic@modeset.html
    - fi-icl-guc:         [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-icl-guc/igt@kms_busy@basic@modeset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-icl-guc/igt@kms_busy@basic@modeset.html
    - fi-byt-n2820:       [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-byt-n2820/igt@kms_busy@basic@modeset.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-byt-n2820/igt@kms_busy@basic@modeset.html
    - fi-skl-6700k2:      [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-skl-6700k2/igt@kms_busy@basic@modeset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-skl-6700k2/igt@kms_busy@basic@modeset.html
    - fi-glk-dsi:         [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-glk-dsi/igt@kms_busy@basic@modeset.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-glk-dsi/igt@kms_busy@basic@modeset.html
    - fi-bsw-kefka:       [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-bsw-kefka/igt@kms_busy@basic@modeset.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-bsw-kefka/igt@kms_busy@basic@modeset.html
    - fi-skl-guc:         [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-skl-guc/igt@kms_busy@basic@modeset.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-skl-guc/igt@kms_busy@basic@modeset.html
    - fi-kbl-x1275:       [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-kbl-x1275/igt@kms_busy@basic@modeset.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-kbl-x1275/igt@kms_busy@basic@modeset.html
    - fi-kbl-7500u:       [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-kbl-7500u/igt@kms_busy@basic@modeset.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-kbl-7500u/igt@kms_busy@basic@modeset.html
    - fi-cfl-8109u:       [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-cfl-8109u/igt@kms_busy@basic@modeset.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-cfl-8109u/igt@kms_busy@basic@modeset.html
    - fi-icl-y:           [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-icl-y/igt@kms_busy@basic@modeset.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-icl-y/igt@kms_busy@basic@modeset.html
    - fi-cfl-8700k:       [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-cfl-8700k/igt@kms_busy@basic@modeset.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-cfl-8700k/igt@kms_busy@basic@modeset.html
    - fi-kbl-r:           [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-kbl-r/igt@kms_busy@basic@modeset.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-kbl-r/igt@kms_busy@basic@modeset.html
    - fi-icl-u2:          [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-icl-u2/igt@kms_busy@basic@modeset.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-icl-u2/igt@kms_busy@basic@modeset.html
    - fi-cml-u2:          [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-cml-u2/igt@kms_busy@basic@modeset.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-cml-u2/igt@kms_busy@basic@modeset.html
    - fi-byt-j1900:       [PASS][49] -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-byt-j1900/igt@kms_busy@basic@modeset.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-byt-j1900/igt@kms_busy@basic@modeset.html

  
Known issues
------------

  Here are the changes found in Patchwork_16701 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [PASS][51] -> [FAIL][52] ([i915#217])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][53] -> [DMESG-WARN][54] ([CI#94] / [i915#402]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [INCOMPLETE][55] ([i915#140]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-icl-y/igt@i915_selftest@live_execlists.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-tgl-y:           [DMESG-WARN][57] ([CI#94] / [i915#402]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [FAIL][59] ([i915#217] / [i915#976]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (43 -> 44)
------------------------------

  Additional (7): fi-ehl-1 fi-ilk-650 fi-snb-2520m fi-gdg-551 fi-elk-e7500 fi-blb-e6850 fi-skl-6600u 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8004 -> Patchwork_16701

  CI-20190529: 20190529
  CI_DRM_8004: 1a2e0cce5af4a9ad9694995610ed64578ccc430f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5464: 8cf2f8684992052ab89de1cf328c418224c0c2a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16701: fa89a2596808b056b52d6c22b5e5ddc3fe07e25a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fa89a2596808 drm: avoid spurious EBUSY due to nonblocking atomic modesets

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16701/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
