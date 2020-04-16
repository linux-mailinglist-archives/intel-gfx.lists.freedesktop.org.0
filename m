Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E38B1ACDAB
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 18:28:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4563F6E329;
	Thu, 16 Apr 2020 16:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 23AD26E326;
 Thu, 16 Apr 2020 16:28:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1C5D7A47E0;
 Thu, 16 Apr 2020 16:28:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 16 Apr 2020 16:28:31 -0000
Message-ID: <158705451108.20887.9800542756735993807@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200416155100.22331-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200416155100.22331-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gt=3A_Trace_RPS_events?=
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

Series: series starting with [1/2] drm/i915/gt: Trace RPS events
URL   : https://patchwork.freedesktop.org/series/76036/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8311 -> Patchwork_17327
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17327 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17327, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17327:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_pm:
    - fi-cml-s:           [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-cml-s/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-cml-s/igt@i915_selftest@live@gt_pm.html
    - fi-icl-y:           [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-icl-y/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-icl-y/igt@i915_selftest@live@gt_pm.html
    - fi-skl-6700k2:      [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-skl-6700k2/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-skl-6700k2/igt@i915_selftest@live@gt_pm.html
    - fi-bsw-n3050:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-bsw-n3050/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-bsw-n3050/igt@i915_selftest@live@gt_pm.html
    - fi-icl-dsi:         [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-icl-dsi/igt@i915_selftest@live@gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-icl-dsi/igt@i915_selftest@live@gt_pm.html
    - fi-skl-6600u:       [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-skl-6600u/igt@i915_selftest@live@gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-skl-6600u/igt@i915_selftest@live@gt_pm.html
    - fi-cfl-8109u:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
    - fi-bsw-nick:        [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-bsw-nick/igt@i915_selftest@live@gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-bsw-nick/igt@i915_selftest@live@gt_pm.html
    - fi-hsw-peppy:       [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-hsw-peppy/igt@i915_selftest@live@gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-hsw-peppy/igt@i915_selftest@live@gt_pm.html
    - fi-skl-lmem:        [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-skl-lmem/igt@i915_selftest@live@gt_pm.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-skl-lmem/igt@i915_selftest@live@gt_pm.html
    - fi-apl-guc:         [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-apl-guc/igt@i915_selftest@live@gt_pm.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-apl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-r:           [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
    - fi-bdw-5557u:       [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-bdw-5557u/igt@i915_selftest@live@gt_pm.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-bdw-5557u/igt@i915_selftest@live@gt_pm.html
    - fi-skl-6770hq:      [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-skl-6770hq/igt@i915_selftest@live@gt_pm.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-skl-6770hq/igt@i915_selftest@live@gt_pm.html
    - fi-snb-2600:        [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-snb-2600/igt@i915_selftest@live@gt_pm.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-snb-2600/igt@i915_selftest@live@gt_pm.html
    - fi-whl-u:           [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-whl-u/igt@i915_selftest@live@gt_pm.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-whl-u/igt@i915_selftest@live@gt_pm.html
    - fi-cfl-guc:         [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-cfl-guc/igt@i915_selftest@live@gt_pm.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-cfl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-skl-guc:         [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-skl-guc/igt@i915_selftest@live@gt_pm.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-skl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-x1275:       [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html
    - fi-bsw-kefka:       [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-bsw-kefka/igt@i915_selftest@live@gt_pm.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-bsw-kefka/igt@i915_selftest@live@gt_pm.html
    - fi-cfl-8700k:       [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-cfl-8700k/igt@i915_selftest@live@gt_pm.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-cfl-8700k/igt@i915_selftest@live@gt_pm.html
    - fi-icl-u2:          [PASS][43] -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
    - fi-glk-dsi:         [PASS][45] -> [DMESG-FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html
    - fi-snb-2520m:       [PASS][47] -> [DMESG-FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-snb-2520m/igt@i915_selftest@live@gt_pm.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-snb-2520m/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-8809g:       [PASS][49] -> [DMESG-FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-kbl-8809g/igt@i915_selftest@live@gt_pm.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-kbl-8809g/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-soraka:      [PASS][51] -> [DMESG-FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
    - fi-hsw-4770:        [PASS][53] -> [DMESG-FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-hsw-4770/igt@i915_selftest@live@gt_pm.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-hsw-4770/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-7500u:       [PASS][55] -> [DMESG-FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-kbl-7500u/igt@i915_selftest@live@gt_pm.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-kbl-7500u/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-guc:         [PASS][57] -> [DMESG-FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-kbl-guc/igt@i915_selftest@live@gt_pm.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-kbl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-cml-u2:          [PASS][59] -> [DMESG-FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-cml-u2/igt@i915_selftest@live@gt_pm.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-cml-u2/igt@i915_selftest@live@gt_pm.html
    - fi-ivb-3770:        [PASS][61] -> [DMESG-FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-ivb-3770/igt@i915_selftest@live@gt_pm.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-ivb-3770/igt@i915_selftest@live@gt_pm.html
    - fi-bxt-dsi:         [PASS][63] -> [DMESG-FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-bxt-dsi/igt@i915_selftest@live@gt_pm.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-bxt-dsi/igt@i915_selftest@live@gt_pm.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_pm:
    - {fi-kbl-7560u}:     NOTRUN -> [DMESG-FAIL][65]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-kbl-7560u/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17327 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-bwr-2160:        [FAIL][66] -> [SKIP][67] ([fdo#109271])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-bwr-2160/igt@amdgpu/amd_prime@i915-to-amd.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/fi-bwr-2160/igt@amdgpu/amd_prime@i915-to-amd.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271


Participating hosts (51 -> 46)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8311 -> Patchwork_17327

  CI-20190529: 20190529
  CI_DRM_8311: 19367bb5e65eaf0719597b3ff244fd1c2ea12bda @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5593: 1c658f5e46598ae93345177d4981ef54704daec6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17327: 1e6b7b0ed0e398aa5377c51998fc506b3a9b556d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1e6b7b0ed0e3 drm/i915/gt: Use the RPM config register to determine clk frequencies
2aaa5fffbe7c drm/i915/gt: Trace RPS events

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17327/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
