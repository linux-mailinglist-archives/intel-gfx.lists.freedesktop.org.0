Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7395411F455
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 22:49:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BB746E409;
	Sat, 14 Dec 2019 21:49:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 035B56E3F3;
 Sat, 14 Dec 2019 21:49:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EDE81A47DF;
 Sat, 14 Dec 2019 21:49:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 14 Dec 2019 21:49:45 -0000
Message-ID: <157636018594.13802.3123156913175805817@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191214211241.2243420-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191214211241.2243420-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Unpin_vma-=3Eobj_on_early_error?=
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

Series: drm/i915: Unpin vma->obj on early error
URL   : https://patchwork.freedesktop.org/series/70935/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7568 -> Patchwork_15762
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15762 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15762, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15762:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@basic:
    - fi-ilk-650:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-ilk-650/igt@gem_exec_parallel@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-ilk-650/igt@gem_exec_parallel@basic.html
    - fi-pnv-d510:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-pnv-d510/igt@gem_exec_parallel@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-pnv-d510/igt@gem_exec_parallel@basic.html
    - fi-bxt-dsi:         [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-bxt-dsi/igt@gem_exec_parallel@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-bxt-dsi/igt@gem_exec_parallel@basic.html
    - fi-bsw-nick:        [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-bsw-nick/igt@gem_exec_parallel@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-bsw-nick/igt@gem_exec_parallel@basic.html
    - fi-apl-guc:         [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-apl-guc/igt@gem_exec_parallel@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-apl-guc/igt@gem_exec_parallel@basic.html
    - fi-blb-e6850:       [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-blb-e6850/igt@gem_exec_parallel@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-blb-e6850/igt@gem_exec_parallel@basic.html
    - fi-bsw-kefka:       [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-bsw-kefka/igt@gem_exec_parallel@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-bsw-kefka/igt@gem_exec_parallel@basic.html
    - fi-glk-dsi:         [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-glk-dsi/igt@gem_exec_parallel@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-glk-dsi/igt@gem_exec_parallel@basic.html
    - fi-elk-e7500:       [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-elk-e7500/igt@gem_exec_parallel@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-elk-e7500/igt@gem_exec_parallel@basic.html
    - fi-byt-n2820:       [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-byt-n2820/igt@gem_exec_parallel@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-byt-n2820/igt@gem_exec_parallel@basic.html
    - fi-bsw-n3050:       [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-bsw-n3050/igt@gem_exec_parallel@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-bsw-n3050/igt@gem_exec_parallel@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-bwr-2160:        [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-bwr-2160/igt@gem_tiled_blits@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-bwr-2160/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live_gtt:
    - fi-kbl-guc:         [PASS][25] -> [TIMEOUT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-kbl-guc/igt@i915_selftest@live_gtt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-kbl-guc/igt@i915_selftest@live_gtt.html
    - fi-kbl-8809g:       [PASS][27] -> [TIMEOUT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-kbl-8809g/igt@i915_selftest@live_gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-kbl-8809g/igt@i915_selftest@live_gtt.html
    - fi-hsw-4770:        NOTRUN -> [TIMEOUT][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-hsw-4770/igt@i915_selftest@live_gtt.html
    - fi-kbl-soraka:      [PASS][30] -> [TIMEOUT][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-kbl-soraka/igt@i915_selftest@live_gtt.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-kbl-soraka/igt@i915_selftest@live_gtt.html
    - fi-ivb-3770:        [PASS][32] -> [TIMEOUT][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-ivb-3770/igt@i915_selftest@live_gtt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-ivb-3770/igt@i915_selftest@live_gtt.html
    - fi-hsw-4770r:       [PASS][34] -> [TIMEOUT][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-hsw-4770r/igt@i915_selftest@live_gtt.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-hsw-4770r/igt@i915_selftest@live_gtt.html
    - fi-hsw-peppy:       [PASS][36] -> [TIMEOUT][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-hsw-peppy/igt@i915_selftest@live_gtt.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-hsw-peppy/igt@i915_selftest@live_gtt.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-skl-guc:         [PASS][38] -> [DMESG-WARN][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-skl-guc/igt@kms_setmode@basic-clone-single-crtc.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-skl-guc/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][40]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-pnv-d510/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][41]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-kbl-8809g/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][42]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-apl-guc/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][43]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-byt-n2820/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][44]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-kbl-soraka/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][45]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-bxt-dsi/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][46]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-blb-e6850/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15762 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][47] -> [TIMEOUT][48] ([i915#816])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_linear_blits@basic:
    - fi-gdg-551:         [PASS][49] -> [INCOMPLETE][50] ([i915#172])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-gdg-551/igt@gem_linear_blits@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-gdg-551/igt@gem_linear_blits@basic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_requests:
    - fi-hsw-4770:        [INCOMPLETE][51] ([i915#773]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-hsw-4770/igt@i915_selftest@live_requests.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/fi-hsw-4770/igt@i915_selftest@live_requests.html

  
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#773]: https://gitlab.freedesktop.org/drm/intel/issues/773
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (35 -> 27)
------------------------------

  Missing    (8): fi-icl-1065g7 fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7568 -> Patchwork_15762

  CI-20190529: 20190529
  CI_DRM_7568: 243d577ae8401244d29960cc5106c58036d962cc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15762: b8c6ea1455417be4a294f96e1e304cd975c13445 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b8c6ea145541 drm/i915: Unpin vma->obj on early error

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15762/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
