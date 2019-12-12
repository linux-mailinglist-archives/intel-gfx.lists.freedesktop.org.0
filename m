Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7159011CCDF
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 13:15:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D2FE6ED27;
	Thu, 12 Dec 2019 12:15:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DC2DB6ED25;
 Thu, 12 Dec 2019 12:15:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D434EA00C7;
 Thu, 12 Dec 2019 12:15:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Dec 2019 12:15:28 -0000
Message-ID: <157615292884.32010.13688621365940865484@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212102114.1134931-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191212102114.1134931-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/3=5D_drm/i915=3A_Use_EAGAIN_for_try?=
 =?utf-8?q?lock_failures?=
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

Series: series starting with [v2,1/3] drm/i915: Use EAGAIN for trylock failures
URL   : https://patchwork.freedesktop.org/series/70818/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7549 -> Patchwork_15713
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15713 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15713, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15713:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@basic-await-default:
    - fi-skl-6700k2:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-skl-6700k2/igt@gem_exec_fence@basic-await-default.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-skl-6700k2/igt@gem_exec_fence@basic-await-default.html
    - fi-skl-lmem:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-skl-lmem/igt@gem_exec_fence@basic-await-default.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-skl-lmem/igt@gem_exec_fence@basic-await-default.html
    - fi-bsw-n3050:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-bsw-n3050/igt@gem_exec_fence@basic-await-default.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-bsw-n3050/igt@gem_exec_fence@basic-await-default.html
    - fi-skl-6600u:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-skl-6600u/igt@gem_exec_fence@basic-await-default.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-skl-6600u/igt@gem_exec_fence@basic-await-default.html
    - fi-skl-6770hq:      [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-skl-6770hq/igt@gem_exec_fence@basic-await-default.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-skl-6770hq/igt@gem_exec_fence@basic-await-default.html
    - fi-kbl-guc:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-kbl-guc/igt@gem_exec_fence@basic-await-default.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-kbl-guc/igt@gem_exec_fence@basic-await-default.html
    - fi-kbl-7500u:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-kbl-7500u/igt@gem_exec_fence@basic-await-default.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-kbl-7500u/igt@gem_exec_fence@basic-await-default.html
    - fi-tgl-y:           NOTRUN -> [DMESG-FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-tgl-y/igt@gem_exec_fence@basic-await-default.html
    - fi-bsw-kefka:       [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-bsw-kefka/igt@gem_exec_fence@basic-await-default.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-bsw-kefka/igt@gem_exec_fence@basic-await-default.html
    - fi-kbl-x1275:       [PASS][18] -> [INCOMPLETE][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-kbl-x1275/igt@gem_exec_fence@basic-await-default.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-kbl-x1275/igt@gem_exec_fence@basic-await-default.html
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-kbl-soraka/igt@gem_exec_fence@basic-await-default.html
    - fi-whl-u:           [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-whl-u/igt@gem_exec_fence@basic-await-default.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-whl-u/igt@gem_exec_fence@basic-await-default.html
    - fi-cfl-guc:         NOTRUN -> [INCOMPLETE][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-cfl-guc/igt@gem_exec_fence@basic-await-default.html
    - fi-cfl-8700k:       [PASS][24] -> [INCOMPLETE][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-cfl-8700k/igt@gem_exec_fence@basic-await-default.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-cfl-8700k/igt@gem_exec_fence@basic-await-default.html
    - fi-kbl-r:           [PASS][26] -> [INCOMPLETE][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-kbl-r/igt@gem_exec_fence@basic-await-default.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-kbl-r/igt@gem_exec_fence@basic-await-default.html
    - fi-bsw-nick:        [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-bsw-nick/igt@gem_exec_fence@basic-await-default.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-bsw-nick/igt@gem_exec_fence@basic-await-default.html
    - fi-skl-guc:         [PASS][30] -> [INCOMPLETE][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-skl-guc/igt@gem_exec_fence@basic-await-default.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-skl-guc/igt@gem_exec_fence@basic-await-default.html
    - fi-bdw-5557u:       [PASS][32] -> [INCOMPLETE][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-bdw-5557u/igt@gem_exec_fence@basic-await-default.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-bdw-5557u/igt@gem_exec_fence@basic-await-default.html

  
Known issues
------------

  Here are the changes found in Patchwork_15713 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-await-default:
    - fi-cml-s:           [PASS][34] -> [INCOMPLETE][35] ([i915#283])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-cml-s/igt@gem_exec_fence@basic-await-default.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-cml-s/igt@gem_exec_fence@basic-await-default.html
    - fi-apl-guc:         [PASS][36] -> [INCOMPLETE][37] ([fdo#103927])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-apl-guc/igt@gem_exec_fence@basic-await-default.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-apl-guc/igt@gem_exec_fence@basic-await-default.html
    - fi-bxt-dsi:         [PASS][38] -> [INCOMPLETE][39] ([fdo#103927])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-bxt-dsi/igt@gem_exec_fence@basic-await-default.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-bxt-dsi/igt@gem_exec_fence@basic-await-default.html
    - fi-cml-u2:          [PASS][40] -> [INCOMPLETE][41] ([i915#283])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-cml-u2/igt@gem_exec_fence@basic-await-default.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-cml-u2/igt@gem_exec_fence@basic-await-default.html
    - fi-icl-y:           [PASS][42] -> [INCOMPLETE][43] ([i915#140])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-icl-y/igt@gem_exec_fence@basic-await-default.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-icl-y/igt@gem_exec_fence@basic-await-default.html
    - fi-icl-u3:          [PASS][44] -> [INCOMPLETE][45] ([i915#140])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-icl-u3/igt@gem_exec_fence@basic-await-default.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-icl-u3/igt@gem_exec_fence@basic-await-default.html
    - fi-glk-dsi:         [PASS][46] -> [INCOMPLETE][47] ([i915#58] / [k.org#198133])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-glk-dsi/igt@gem_exec_fence@basic-await-default.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-glk-dsi/igt@gem_exec_fence@basic-await-default.html
    - fi-icl-guc:         [PASS][48] -> [INCOMPLETE][49] ([i915#140])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-icl-guc/igt@gem_exec_fence@basic-await-default.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-icl-guc/igt@gem_exec_fence@basic-await-default.html
    - fi-icl-u2:          [PASS][50] -> [INCOMPLETE][51] ([i915#140])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-icl-u2/igt@gem_exec_fence@basic-await-default.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-icl-u2/igt@gem_exec_fence@basic-await-default.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [PASS][52] -> [INCOMPLETE][53] ([i915#45])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
    - fi-hsw-peppy:       [PASS][54] -> [INCOMPLETE][55] ([i915#694])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
    - fi-byt-n2820:       [PASS][56] -> [INCOMPLETE][57] ([i915#45])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][58] ([i915#563]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][60] ([i915#553] / [i915#725]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (48 -> 46)
------------------------------

  Additional (4): fi-kbl-soraka fi-hsw-4770r fi-tgl-y fi-cfl-guc 
  Missing    (6): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-kbl-8809g fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7549 -> Patchwork_15713

  CI-20190529: 20190529
  CI_DRM_7549: 9573e1b7d1cb54cc984cf5c4f93a743641d868da @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15713: e631a25bd38e664ef5e10b209ea3ffa1045517c8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e631a25bd38e drm/i915/gt: Eliminate the trylock for reading a timeline's hwsp
5de695ff9ae4 drm/i915: Eliminate the trylock for awaiting an earlier request
2a78ef4b37fa drm/i915: Use EAGAIN for trylock failures

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15713/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
