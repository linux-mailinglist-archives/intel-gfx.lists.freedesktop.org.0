Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A6F11F51B
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Dec 2019 00:47:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7391D6E408;
	Sat, 14 Dec 2019 23:47:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 42F256E400;
 Sat, 14 Dec 2019 23:47:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 120A4A00C7;
 Sat, 14 Dec 2019 23:47:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 14 Dec 2019 23:47:15 -0000
Message-ID: <157636723504.13804.6842604309639326956@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191214211241.2243420-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191214211241.2243420-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Unpin_vma-=3Eobj_on_early_error_=28rev2=29?=
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

Series: drm/i915: Unpin vma->obj on early error (rev2)
URL   : https://patchwork.freedesktop.org/series/70935/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7568 -> Patchwork_15763
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15763 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15763, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15763:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gtt:
    - fi-kbl-guc:         [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-kbl-guc/igt@i915_selftest@live_gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/fi-kbl-guc/igt@i915_selftest@live_gtt.html
    - fi-kbl-8809g:       [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-kbl-8809g/igt@i915_selftest@live_gtt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/fi-kbl-8809g/igt@i915_selftest@live_gtt.html
    - fi-bxt-dsi:         [PASS][5] -> [TIMEOUT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-bxt-dsi/igt@i915_selftest@live_gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/fi-bxt-dsi/igt@i915_selftest@live_gtt.html
    - fi-byt-j1900:       [PASS][7] -> [TIMEOUT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-byt-j1900/igt@i915_selftest@live_gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/fi-byt-j1900/igt@i915_selftest@live_gtt.html
    - fi-hsw-4770:        NOTRUN -> [TIMEOUT][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/fi-hsw-4770/igt@i915_selftest@live_gtt.html
    - fi-apl-guc:         [PASS][10] -> [TIMEOUT][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-apl-guc/igt@i915_selftest@live_gtt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/fi-apl-guc/igt@i915_selftest@live_gtt.html
    - fi-kbl-soraka:      [PASS][12] -> [TIMEOUT][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-kbl-soraka/igt@i915_selftest@live_gtt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/fi-kbl-soraka/igt@i915_selftest@live_gtt.html
    - fi-ivb-3770:        [PASS][14] -> [TIMEOUT][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-ivb-3770/igt@i915_selftest@live_gtt.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/fi-ivb-3770/igt@i915_selftest@live_gtt.html
    - fi-byt-n2820:       [PASS][16] -> [TIMEOUT][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-byt-n2820/igt@i915_selftest@live_gtt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/fi-byt-n2820/igt@i915_selftest@live_gtt.html
    - fi-hsw-4770r:       [PASS][18] -> [TIMEOUT][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-hsw-4770r/igt@i915_selftest@live_gtt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/fi-hsw-4770r/igt@i915_selftest@live_gtt.html
    - fi-hsw-peppy:       [PASS][20] -> [TIMEOUT][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-hsw-peppy/igt@i915_selftest@live_gtt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/fi-hsw-peppy/igt@i915_selftest@live_gtt.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-skl-guc:         [PASS][22] -> [DMESG-WARN][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-skl-guc/igt@kms_setmode@basic-clone-single-crtc.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/fi-skl-guc/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-ilk-650:         [PASS][24] -> [DMESG-WARN][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-ilk-650/igt@kms_setmode@basic-clone-single-crtc.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/fi-ilk-650/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/fi-kbl-8809g/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/fi-kbl-soraka/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/fi-bxt-dsi/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15763 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gtt:
    - fi-glk-dsi:         [PASS][29] -> [TIMEOUT][30] ([i915#690])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-glk-dsi/igt@i915_selftest@live_gtt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/fi-glk-dsi/igt@i915_selftest@live_gtt.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_requests:
    - fi-hsw-4770:        [INCOMPLETE][31] ([i915#773]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-hsw-4770/igt@i915_selftest@live_requests.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/fi-hsw-4770/igt@i915_selftest@live_requests.html

  
  [i915#690]: https://gitlab.freedesktop.org/drm/intel/issues/690
  [i915#773]: https://gitlab.freedesktop.org/drm/intel/issues/773


Participating hosts (35 -> 27)
------------------------------

  Missing    (8): fi-icl-1065g7 fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7568 -> Patchwork_15763

  CI-20190529: 20190529
  CI_DRM_7568: 243d577ae8401244d29960cc5106c58036d962cc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15763: 9e71662e68f544fca388c8fe29827d4ec91f90c8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9e71662e68f5 drm/i915: Unpin vma->obj on early error

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15763/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
