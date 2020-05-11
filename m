Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 249C71CD58A
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 11:42:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 776CF6E415;
	Mon, 11 May 2020 09:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 48B8D6E415;
 Mon, 11 May 2020 09:42:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 42B8EA0BCB;
 Mon, 11 May 2020 09:42:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Mon, 11 May 2020 09:42:27 -0000
Message-ID: <158919014726.13116.15026960854756434290@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/writeback=3A_don=27t_set_fence-?=
 =?utf-8?q?=3Eops_to_default?=
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

Series: series starting with [1/3] drm/writeback: don't set fence->ops to default
URL   : https://patchwork.freedesktop.org/series/77144/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8461 -> Patchwork_17621
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17621 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17621, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17621:

### IGT changes ###

#### Possible regressions ####

  * igt@dmabuf@all@dma_fence:
    - fi-icl-u2:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-icl-u2/igt@dmabuf@all@dma_fence.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-icl-u2/igt@dmabuf@all@dma_fence.html
    - fi-icl-guc:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-icl-guc/igt@dmabuf@all@dma_fence.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-icl-guc/igt@dmabuf@all@dma_fence.html
    - fi-kbl-8809g:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-kbl-8809g/igt@dmabuf@all@dma_fence.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-kbl-8809g/igt@dmabuf@all@dma_fence.html
    - fi-byt-n2820:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-byt-n2820/igt@dmabuf@all@dma_fence.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-byt-n2820/igt@dmabuf@all@dma_fence.html
    - fi-kbl-r:           [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-kbl-r/igt@dmabuf@all@dma_fence.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-kbl-r/igt@dmabuf@all@dma_fence.html
    - fi-cfl-8700k:       [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-cfl-8700k/igt@dmabuf@all@dma_fence.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-cfl-8700k/igt@dmabuf@all@dma_fence.html
    - fi-apl-guc:         [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-apl-guc/igt@dmabuf@all@dma_fence.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-apl-guc/igt@dmabuf@all@dma_fence.html
    - fi-snb-2520m:       [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-snb-2520m/igt@dmabuf@all@dma_fence.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-snb-2520m/igt@dmabuf@all@dma_fence.html
    - fi-bsw-kefka:       [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-bsw-kefka/igt@dmabuf@all@dma_fence.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-bsw-kefka/igt@dmabuf@all@dma_fence.html
    - fi-glk-dsi:         [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-glk-dsi/igt@dmabuf@all@dma_fence.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-glk-dsi/igt@dmabuf@all@dma_fence.html
    - fi-kbl-x1275:       [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-kbl-x1275/igt@dmabuf@all@dma_fence.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-kbl-x1275/igt@dmabuf@all@dma_fence.html
    - fi-cml-s:           [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-cml-s/igt@dmabuf@all@dma_fence.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-cml-s/igt@dmabuf@all@dma_fence.html
    - fi-skl-6600u:       [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-skl-6600u/igt@dmabuf@all@dma_fence.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-skl-6600u/igt@dmabuf@all@dma_fence.html
    - fi-skl-guc:         [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-skl-guc/igt@dmabuf@all@dma_fence.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-skl-guc/igt@dmabuf@all@dma_fence.html
    - fi-icl-y:           NOTRUN -> [FAIL][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-icl-y/igt@dmabuf@all@dma_fence.html
    - fi-cfl-guc:         [PASS][30] -> [FAIL][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-cfl-guc/igt@dmabuf@all@dma_fence.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-cfl-guc/igt@dmabuf@all@dma_fence.html
    - fi-bsw-n3050:       [PASS][32] -> [FAIL][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-bsw-n3050/igt@dmabuf@all@dma_fence.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-bsw-n3050/igt@dmabuf@all@dma_fence.html
    - fi-ilk-650:         [PASS][34] -> [FAIL][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-ilk-650/igt@dmabuf@all@dma_fence.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-ilk-650/igt@dmabuf@all@dma_fence.html
    - fi-ivb-3770:        [PASS][36] -> [FAIL][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-ivb-3770/igt@dmabuf@all@dma_fence.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-ivb-3770/igt@dmabuf@all@dma_fence.html
    - fi-cml-u2:          [PASS][38] -> [FAIL][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-cml-u2/igt@dmabuf@all@dma_fence.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-cml-u2/igt@dmabuf@all@dma_fence.html
    - fi-blb-e6850:       [PASS][40] -> [FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-blb-e6850/igt@dmabuf@all@dma_fence.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-blb-e6850/igt@dmabuf@all@dma_fence.html
    - fi-byt-j1900:       [PASS][42] -> [FAIL][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-byt-j1900/igt@dmabuf@all@dma_fence.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-byt-j1900/igt@dmabuf@all@dma_fence.html
    - fi-elk-e7500:       [PASS][44] -> [FAIL][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-elk-e7500/igt@dmabuf@all@dma_fence.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-elk-e7500/igt@dmabuf@all@dma_fence.html
    - fi-skl-6700k2:      [PASS][46] -> [FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-skl-6700k2/igt@dmabuf@all@dma_fence.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-skl-6700k2/igt@dmabuf@all@dma_fence.html
    - fi-bxt-dsi:         [PASS][48] -> [FAIL][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-bxt-dsi/igt@dmabuf@all@dma_fence.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-bxt-dsi/igt@dmabuf@all@dma_fence.html
    - fi-hsw-4770:        [PASS][50] -> [FAIL][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-hsw-4770/igt@dmabuf@all@dma_fence.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-hsw-4770/igt@dmabuf@all@dma_fence.html
    - fi-whl-u:           [PASS][52] -> [FAIL][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-whl-u/igt@dmabuf@all@dma_fence.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-whl-u/igt@dmabuf@all@dma_fence.html
    - fi-bdw-5557u:       [PASS][54] -> [FAIL][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-bdw-5557u/igt@dmabuf@all@dma_fence.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-bdw-5557u/igt@dmabuf@all@dma_fence.html
    - fi-snb-2600:        [PASS][56] -> [FAIL][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-snb-2600/igt@dmabuf@all@dma_fence.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-snb-2600/igt@dmabuf@all@dma_fence.html
    - fi-bwr-2160:        [PASS][58] -> [FAIL][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-bwr-2160/igt@dmabuf@all@dma_fence.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-bwr-2160/igt@dmabuf@all@dma_fence.html
    - fi-gdg-551:         [PASS][60] -> [FAIL][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-gdg-551/igt@dmabuf@all@dma_fence.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-gdg-551/igt@dmabuf@all@dma_fence.html
    - fi-skl-lmem:        [PASS][62] -> [FAIL][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-skl-lmem/igt@dmabuf@all@dma_fence.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-skl-lmem/igt@dmabuf@all@dma_fence.html
    - fi-kbl-guc:         [PASS][64] -> [FAIL][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-kbl-guc/igt@dmabuf@all@dma_fence.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-kbl-guc/igt@dmabuf@all@dma_fence.html
    - fi-cfl-8109u:       [PASS][66] -> [FAIL][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-cfl-8109u/igt@dmabuf@all@dma_fence.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-cfl-8109u/igt@dmabuf@all@dma_fence.html
    - fi-bsw-nick:        [PASS][68] -> [FAIL][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-bsw-nick/igt@dmabuf@all@dma_fence.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-bsw-nick/igt@dmabuf@all@dma_fence.html

  * igt@i915_selftest@live@requests:
    - fi-kbl-soraka:      [PASS][70] -> [INCOMPLETE][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-kbl-soraka/igt@i915_selftest@live@requests.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-kbl-soraka/igt@i915_selftest@live@requests.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@dmabuf@all@dma_fence:
    - {fi-tgl-dsi}:       [PASS][72] -> [FAIL][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-tgl-dsi/igt@dmabuf@all@dma_fence.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-tgl-dsi/igt@dmabuf@all@dma_fence.html
    - {fi-tgl-u}:         [PASS][74] -> [FAIL][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-tgl-u/igt@dmabuf@all@dma_fence.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-tgl-u/igt@dmabuf@all@dma_fence.html
    - {fi-ehl-1}:         [PASS][76] -> [FAIL][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-ehl-1/igt@dmabuf@all@dma_fence.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-ehl-1/igt@dmabuf@all@dma_fence.html

  
Known issues
------------

  Here are the changes found in Patchwork_17621 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [INCOMPLETE][78] ([i915#1580]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8461/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580


Participating hosts (48 -> 43)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8461 -> Patchwork_17621

  CI-20190529: 20190529
  CI_DRM_8461: c0be14b9502e54c9ece4f4fc25872d665c6a6553 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5644: 16f067ae42a6a93b8f0c5835210e2575a883001b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17621: 22f23e5ef53f4a88a03167d3341821452c5f2d4f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

22f23e5ef53f misc/habalabs: don't set default fence_ops->wait
d701844ab384 dma-fence: use default wait function for mock fences
9634e3eb3729 drm/writeback: don't set fence->ops to default

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17621/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
