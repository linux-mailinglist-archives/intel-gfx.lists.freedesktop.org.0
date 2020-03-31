Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC75199E4B
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 20:44:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43C0A89E8C;
	Tue, 31 Mar 2020 18:44:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 98EAE89E39;
 Tue, 31 Mar 2020 18:44:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 92C76A00CC;
 Tue, 31 Mar 2020 18:44:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Tue, 31 Mar 2020 18:44:19 -0000
Message-ID: <158568025957.5566.13845198458833716568@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200331114646.81793-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200331114646.81793-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_Enable_application_triggered_OA_reports?=
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

Series: drm/i915/perf: Enable application triggered OA reports
URL   : https://patchwork.freedesktop.org/series/75310/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8228 -> Patchwork_17154
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17154 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17154, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17154:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@workarounds:
    - fi-skl-6700k2:      [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html
    - fi-cml-s:           [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-cml-s/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-cml-s/igt@i915_selftest@live@workarounds.html
    - fi-icl-y:           [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-icl-y/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-icl-y/igt@i915_selftest@live@workarounds.html
    - fi-kbl-x1275:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-kbl-x1275/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-kbl-x1275/igt@i915_selftest@live@workarounds.html
    - fi-cfl-guc:         [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-cfl-guc/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-cfl-guc/igt@i915_selftest@live@workarounds.html
    - fi-skl-guc:         [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-skl-guc/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-skl-guc/igt@i915_selftest@live@workarounds.html
    - fi-skl-6600u:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-skl-6600u/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-skl-6600u/igt@i915_selftest@live@workarounds.html
    - fi-icl-dsi:         [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-icl-dsi/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-icl-dsi/igt@i915_selftest@live@workarounds.html
    - fi-glk-dsi:         [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-glk-dsi/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-glk-dsi/igt@i915_selftest@live@workarounds.html
    - fi-apl-guc:         [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-apl-guc/igt@i915_selftest@live@workarounds.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-apl-guc/igt@i915_selftest@live@workarounds.html
    - fi-kbl-8809g:       [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-kbl-8809g/igt@i915_selftest@live@workarounds.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-kbl-8809g/igt@i915_selftest@live@workarounds.html
    - fi-cfl-8700k:       [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-cfl-8700k/igt@i915_selftest@live@workarounds.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-cfl-8700k/igt@i915_selftest@live@workarounds.html
    - fi-kbl-r:           [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-kbl-r/igt@i915_selftest@live@workarounds.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-kbl-r/igt@i915_selftest@live@workarounds.html
    - fi-icl-guc:         [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-icl-guc/igt@i915_selftest@live@workarounds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-icl-guc/igt@i915_selftest@live@workarounds.html
    - fi-icl-u2:          [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-icl-u2/igt@i915_selftest@live@workarounds.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-icl-u2/igt@i915_selftest@live@workarounds.html
    - fi-cfl-8109u:       [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-cfl-8109u/igt@i915_selftest@live@workarounds.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-cfl-8109u/igt@i915_selftest@live@workarounds.html
    - fi-skl-lmem:        [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-skl-lmem/igt@i915_selftest@live@workarounds.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-skl-lmem/igt@i915_selftest@live@workarounds.html
    - fi-kbl-7500u:       [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-kbl-7500u/igt@i915_selftest@live@workarounds.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-kbl-7500u/igt@i915_selftest@live@workarounds.html
    - fi-kbl-guc:         [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-kbl-guc/igt@i915_selftest@live@workarounds.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-kbl-guc/igt@i915_selftest@live@workarounds.html
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][39]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-kbl-soraka/igt@i915_selftest@live@workarounds.html
    - fi-bxt-dsi:         [PASS][40] -> [DMESG-FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-bxt-dsi/igt@i915_selftest@live@workarounds.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-bxt-dsi/igt@i915_selftest@live@workarounds.html
    - fi-cml-u2:          [PASS][42] -> [DMESG-FAIL][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-cml-u2/igt@i915_selftest@live@workarounds.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-cml-u2/igt@i915_selftest@live@workarounds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@workarounds:
    - {fi-ehl-1}:         [PASS][44] -> [DMESG-FAIL][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-ehl-1/igt@i915_selftest@live@workarounds.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-ehl-1/igt@i915_selftest@live@workarounds.html
    - {fi-tgl-u}:         [PASS][46] -> [DMESG-FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-tgl-u/igt@i915_selftest@live@workarounds.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-tgl-u/igt@i915_selftest@live@workarounds.html
    - {fi-kbl-7560u}:     [PASS][48] -> [DMESG-FAIL][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-kbl-7560u/igt@i915_selftest@live@workarounds.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-kbl-7560u/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_17154 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [PASS][50] -> [INCOMPLETE][51] ([i915#1430] / [i915#656])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (48 -> 41)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (8): fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8228 -> Patchwork_17154

  CI-20190529: 20190529
  CI_DRM_8228: 1f33fcd4f840355af75a61ce7204f39bafc52018 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5548: d9e70dc1b35633b7d5c81cbfa165e331189eb260 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17154: e4c33963fe8200515cf78f1abe36555071d7a029 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e4c33963fe82 drm/i915/perf: Enable application triggered OA reports

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17154/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
