Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 554551343BB
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 14:23:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF4F06E2E4;
	Wed,  8 Jan 2020 13:23:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 16ACB6E2E8;
 Wed,  8 Jan 2020 13:23:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0E989A00C7;
 Wed,  8 Jan 2020 13:23:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 08 Jan 2020 13:23:56 -0000
Message-ID: <157848983605.23226.11045832079067321254@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200108122325.3549421-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200108122325.3549421-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gt=3A_Push_context_state_a?=
 =?utf-8?q?llocation_earlier?=
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

Series: series starting with [1/2] drm/i915/gt: Push context state allocation earlier
URL   : https://patchwork.freedesktop.org/series/71759/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7702 -> Patchwork_16023
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16023 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16023, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16023:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy-all:
    - fi-bsw-nick:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-bsw-nick/igt@gem_busy@busy-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-bsw-nick/igt@gem_busy@busy-all.html
    - fi-kbl-guc:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-kbl-guc/igt@gem_busy@busy-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-kbl-guc/igt@gem_busy@busy-all.html

  * igt@gem_ctx_switch@rcs0:
    - fi-kbl-8809g:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-kbl-8809g/igt@gem_ctx_switch@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-kbl-8809g/igt@gem_ctx_switch@rcs0.html

  * igt@i915_selftest@live_workarounds:
    - fi-icl-u3:          [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-icl-u3/igt@i915_selftest@live_workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-icl-u3/igt@i915_selftest@live_workarounds.html
    - fi-kbl-r:           [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-kbl-r/igt@i915_selftest@live_workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-kbl-r/igt@i915_selftest@live_workarounds.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-cfl-guc:         [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-cfl-guc/igt@kms_busy@basic-flip-pipe-a.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-cfl-guc/igt@kms_busy@basic-flip-pipe-a.html
    - fi-kbl-x1275:       [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-a.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-a.html
    - fi-kbl-soraka:      [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-kbl-soraka/igt@kms_busy@basic-flip-pipe-a.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-kbl-soraka/igt@kms_busy@basic-flip-pipe-a.html
    - fi-glk-dsi:         [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-glk-dsi/igt@kms_busy@basic-flip-pipe-a.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-glk-dsi/igt@kms_busy@basic-flip-pipe-a.html
    - fi-bsw-kefka:       [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-bsw-kefka/igt@kms_busy@basic-flip-pipe-a.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-bsw-kefka/igt@kms_busy@basic-flip-pipe-a.html
    - fi-icl-y:           [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-icl-y/igt@kms_busy@basic-flip-pipe-a.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-icl-y/igt@kms_busy@basic-flip-pipe-a.html
    - fi-whl-u:           [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-whl-u/igt@kms_busy@basic-flip-pipe-a.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-whl-u/igt@kms_busy@basic-flip-pipe-a.html
    - fi-icl-dsi:         [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-icl-dsi/igt@kms_busy@basic-flip-pipe-a.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-icl-dsi/igt@kms_busy@basic-flip-pipe-a.html
    - fi-apl-guc:         [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-apl-guc/igt@kms_busy@basic-flip-pipe-a.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-apl-guc/igt@kms_busy@basic-flip-pipe-a.html
    - fi-bxt-dsi:         [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-bxt-dsi/igt@kms_busy@basic-flip-pipe-a.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-bxt-dsi/igt@kms_busy@basic-flip-pipe-a.html
    - fi-cfl-8700k:       [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-cfl-8700k/igt@kms_busy@basic-flip-pipe-a.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-cfl-8700k/igt@kms_busy@basic-flip-pipe-a.html
    - fi-icl-guc:         [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-icl-guc/igt@kms_busy@basic-flip-pipe-a.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-icl-guc/igt@kms_busy@basic-flip-pipe-a.html
    - fi-skl-6700k2:      [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-skl-6700k2/igt@kms_busy@basic-flip-pipe-a.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-skl-6700k2/igt@kms_busy@basic-flip-pipe-a.html
    - fi-cml-u2:          [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-cml-u2/igt@kms_busy@basic-flip-pipe-a.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-cml-u2/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-skl-guc:         [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-skl-guc/igt@kms_busy@basic-flip-pipe-b.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-skl-guc/igt@kms_busy@basic-flip-pipe-b.html

  * igt@kms_busy@basic-flip-pipe-c:
    - fi-bsw-n3050:       NOTRUN -> [DMESG-WARN][41]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-bsw-n3050/igt@kms_busy@basic-flip-pipe-c.html
    - fi-icl-u2:          [PASS][42] -> [DMESG-WARN][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-icl-u2/igt@kms_busy@basic-flip-pipe-c.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-icl-u2/igt@kms_busy@basic-flip-pipe-c.html

  * igt@runner@aborted:
    - fi-kbl-x1275:       NOTRUN -> [FAIL][44]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][45]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-cfl-8700k/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][46]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-apl-guc/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][47]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][48]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-kbl-guc/igt@runner@aborted.html
    - fi-whl-u:           NOTRUN -> [FAIL][49]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-whl-u/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][50]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-cfl-guc/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][52] ([i915#858]) -> [FAIL][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-kbl-8809g/igt@runner@aborted.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-kbl-8809g/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_busy@basic-flip-pipe-a:
    - {fi-tgl-u}:         [PASS][54] -> [DMESG-WARN][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-tgl-u/igt@kms_busy@basic-flip-pipe-a.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-tgl-u/igt@kms_busy@basic-flip-pipe-a.html

  
Known issues
------------

  Here are the changes found in Patchwork_16023 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][56] -> [TIMEOUT][57] ([i915#816])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-byt-j1900/igt@gem_close_race@basic-threads.html
    - fi-byt-n2820:       [PASS][58] -> [TIMEOUT][59] ([i915#816])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [PASS][60] -> [DMESG-FAIL][61] ([i915#722])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][62] ([i915#725]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#858]: https://gitlab.freedesktop.org/drm/intel/issues/858


Participating hosts (51 -> 37)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (15): fi-bdw-samus fi-bdw-5557u fi-hsw-4200u fi-skl-6770hq fi-bdw-gvtdvm fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-kbl-7500u fi-ctg-p8600 fi-gdg-551 fi-ivb-3770 fi-kbl-7560u fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7702 -> Patchwork_16023

  CI-20190529: 20190529
  CI_DRM_7702: 696cc0448fced2ed45ab5e9e0a5c913bfe263592 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16023: d2a13c2a79e37f35acc873b7713e1b606dcafba2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d2a13c2a79e3 drm/i915/gt: Pull context activation into central intel_context_pin()
ec1a6b75257b drm/i915/gt: Push context state allocation earlier

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16023/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
