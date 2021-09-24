Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 232A3417C9B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 22:54:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 060696E252;
	Fri, 24 Sep 2021 20:54:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0F0EC6E252;
 Fri, 24 Sep 2021 20:53:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 031D2AA915;
 Fri, 24 Sep 2021 20:53:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6744201396931219421=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 20:53:58 -0000
Message-ID: <163251683896.20562.16550820821315668734@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210924153113.2159-1-christian.koenig@amd.com>
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/27=5D_dma-buf=3A_add_dma=5Fresv=5Ffor?=
 =?utf-8?q?=5Feach=5Ffence=5Funlocked_v6?=
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

--===============6744201396931219421==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/27] dma-buf: add dma_resv_for_each_fence_unlocked v6
URL   : https://patchwork.freedesktop.org/series/95034/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10641 -> Patchwork_21155
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21155 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21155, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21155:

### IGT changes ###

#### Possible regressions ####

  * {igt@dmabuf@all@dma_resv} (NEW):
    - fi-kbl-7500u:       NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-7500u/igt@dmabuf@all@dma_resv.html
    - fi-hsw-4770:        NOTRUN -> [DMESG-FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-hsw-4770/igt@dmabuf@all@dma_resv.html
    - fi-bwr-2160:        NOTRUN -> [DMESG-FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bwr-2160/igt@dmabuf@all@dma_resv.html
    - fi-kbl-r:           NOTRUN -> [DMESG-FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-r/igt@dmabuf@all@dma_resv.html
    - fi-snb-2520m:       NOTRUN -> [DMESG-FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-snb-2520m/igt@dmabuf@all@dma_resv.html
    - fi-kbl-8809g:       NOTRUN -> [DMESG-FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@dmabuf@all@dma_resv.html
    - fi-glk-dsi:         NOTRUN -> [DMESG-FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-glk-dsi/igt@dmabuf@all@dma_resv.html
    - fi-bsw-nick:        NOTRUN -> [DMESG-FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bsw-nick/igt@dmabuf@all@dma_resv.html
    - {fi-tgl-dsi}:       NOTRUN -> [DMESG-FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-dsi/igt@dmabuf@all@dma_resv.html
    - fi-cfl-8109u:       NOTRUN -> [DMESG-FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cfl-8109u/igt@dmabuf@all@dma_resv.html
    - fi-skl-6600u:       NOTRUN -> [DMESG-FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-skl-6600u/igt@dmabuf@all@dma_resv.html
    - fi-icl-u2:          NOTRUN -> [DMESG-FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-icl-u2/igt@dmabuf@all@dma_resv.html
    - fi-cfl-8700k:       NOTRUN -> [DMESG-FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cfl-8700k/igt@dmabuf@all@dma_resv.html
    - fi-bsw-kefka:       NOTRUN -> [DMESG-FAIL][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bsw-kefka/igt@dmabuf@all@dma_resv.html
    - fi-pnv-d510:        NOTRUN -> [DMESG-FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-pnv-d510/igt@dmabuf@all@dma_resv.html
    - fi-ilk-650:         NOTRUN -> [DMESG-FAIL][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-ilk-650/igt@dmabuf@all@dma_resv.html
    - fi-tgl-u2:          NOTRUN -> [DMESG-FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-u2/igt@dmabuf@all@dma_resv.html
    - fi-kbl-7567u:       NOTRUN -> [DMESG-FAIL][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-7567u/igt@dmabuf@all@dma_resv.html
    - fi-cfl-guc:         NOTRUN -> [DMESG-FAIL][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cfl-guc/igt@dmabuf@all@dma_resv.html
    - {fi-ehl-2}:         NOTRUN -> [DMESG-FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-ehl-2/igt@dmabuf@all@dma_resv.html
    - fi-icl-y:           NOTRUN -> [DMESG-FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-icl-y/igt@dmabuf@all@dma_resv.html
    - fi-elk-e7500:       NOTRUN -> [DMESG-FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-elk-e7500/igt@dmabuf@all@dma_resv.html
    - fi-tgl-1115g4:      NOTRUN -> [DMESG-FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-1115g4/igt@dmabuf@all@dma_resv.html
    - fi-bxt-dsi:         NOTRUN -> [DMESG-FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bxt-dsi/igt@dmabuf@all@dma_resv.html
    - fi-ivb-3770:        NOTRUN -> [DMESG-FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-ivb-3770/igt@dmabuf@all@dma_resv.html
    - fi-snb-2600:        NOTRUN -> [DMESG-FAIL][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-snb-2600/igt@dmabuf@all@dma_resv.html
    - {fi-jsl-1}:         NOTRUN -> [DMESG-FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-jsl-1/igt@dmabuf@all@dma_resv.html
    - fi-rkl-guc:         NOTRUN -> [DMESG-FAIL][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-rkl-guc/igt@dmabuf@all@dma_resv.html
    - fi-cml-u2:          NOTRUN -> [DMESG-FAIL][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cml-u2/igt@dmabuf@all@dma_resv.html

  * igt@gem_busy@busy@all:
    - fi-ilk-650:         [PASS][30] -> [FAIL][31] +14 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-ilk-650/igt@gem_busy@busy@all.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-ilk-650/igt@gem_busy@busy@all.html
    - fi-apl-guc:         [PASS][32] -> [FAIL][33] +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-apl-guc/igt@gem_busy@busy@all.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-apl-guc/igt@gem_busy@busy@all.html

  * igt@gem_exec_fence@basic-await@bcs0:
    - fi-skl-6600u:       [PASS][34] -> [FAIL][35] +18 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-skl-6600u/igt@gem_exec_fence@basic-await@bcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-skl-6600u/igt@gem_exec_fence@basic-await@bcs0.html
    - fi-cml-u2:          [PASS][36] -> [FAIL][37] +18 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-cml-u2/igt@gem_exec_fence@basic-await@bcs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cml-u2/igt@gem_exec_fence@basic-await@bcs0.html

  * igt@gem_exec_fence@basic-await@rcs0:
    - fi-cfl-guc:         [PASS][38] -> [FAIL][39] +18 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-cfl-guc/igt@gem_exec_fence@basic-await@rcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cfl-guc/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-elk-e7500:       [PASS][40] -> [FAIL][41] +12 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@gem_exec_fence@basic-await@vcs1:
    - fi-bdw-gvtdvm:      [PASS][42] -> [FAIL][43] +20 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-await@vcs1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-await@vcs1.html

  * igt@gem_exec_fence@basic-await@vecs0:
    - fi-cfl-8700k:       [PASS][44] -> [FAIL][45] +18 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-cfl-8700k/igt@gem_exec_fence@basic-await@vecs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cfl-8700k/igt@gem_exec_fence@basic-await@vecs0.html

  * igt@gem_exec_fence@basic-busy@vcs0:
    - fi-ivb-3770:        [PASS][46] -> [FAIL][47] +19 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html

  * igt@gem_exec_fence@basic-busy@vcs1:
    - fi-tgl-u2:          [PASS][48] -> [FAIL][49] +27 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-tgl-u2/igt@gem_exec_fence@basic-busy@vcs1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-u2/igt@gem_exec_fence@basic-busy@vcs1.html

  * igt@gem_exec_fence@basic-wait@bcs0:
    - fi-tgl-1115g4:      [PASS][50] -> [FAIL][51] +23 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-tgl-1115g4/igt@gem_exec_fence@basic-wait@bcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-1115g4/igt@gem_exec_fence@basic-wait@bcs0.html

  * igt@gem_exec_fence@basic-wait@vcs0:
    - fi-kbl-7500u:       [PASS][52] -> [FAIL][53] +18 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-7500u/igt@gem_exec_fence@basic-wait@vcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-7500u/igt@gem_exec_fence@basic-wait@vcs0.html
    - fi-cfl-8109u:       [PASS][54] -> [FAIL][55] +22 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-cfl-8109u/igt@gem_exec_fence@basic-wait@vcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cfl-8109u/igt@gem_exec_fence@basic-wait@vcs0.html

  * igt@gem_exec_fence@basic-wait@vecs0:
    - fi-kbl-7567u:       [PASS][56] -> [FAIL][57] +20 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-7567u/igt@gem_exec_fence@basic-wait@vecs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-7567u/igt@gem_exec_fence@basic-wait@vecs0.html
    - fi-bdw-5557u:       [PASS][58] -> [FAIL][59] +20 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-bdw-5557u/igt@gem_exec_fence@basic-wait@vecs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bdw-5557u/igt@gem_exec_fence@basic-wait@vecs0.html
    - fi-kbl-r:           [PASS][60] -> [FAIL][61] +18 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-r/igt@gem_exec_fence@basic-wait@vecs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-r/igt@gem_exec_fence@basic-wait@vecs0.html

  * igt@gem_exec_fence@nb-await@bcs0:
    - fi-icl-y:           [PASS][62] -> [FAIL][63] +26 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-icl-y/igt@gem_exec_fence@nb-await@bcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-icl-y/igt@gem_exec_fence@nb-await@bcs0.html
    - fi-bsw-nick:        [PASS][64] -> [FAIL][65] +18 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html

  * igt@gem_exec_fence@nb-await@rcs0:
    - fi-icl-u2:          [PASS][66] -> [FAIL][67] +26 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-icl-u2/igt@gem_exec_fence@nb-await@rcs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-icl-u2/igt@gem_exec_fence@nb-await@rcs0.html

  * igt@gem_exec_fence@nb-await@vcs0:
    - fi-glk-dsi:         [PASS][68] -> [FAIL][69] +18 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-glk-dsi/igt@gem_exec_fence@nb-await@vcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-glk-dsi/igt@gem_exec_fence@nb-await@vcs0.html

  * igt@gem_exec_fence@nb-await@vecs0:
    - fi-kbl-8809g:       [PASS][70] -> [FAIL][71] +16 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@gem_exec_fence@nb-await@vecs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@gem_exec_fence@nb-await@vecs0.html

  * igt@gem_exec_parallel@engines@fds:
    - fi-rkl-guc:         [PASS][72] -> [FAIL][73] +24 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-rkl-guc/igt@gem_exec_parallel@engines@fds.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-rkl-guc/igt@gem_exec_parallel@engines@fds.html

  * igt@gem_wait@busy@all:
    - fi-snb-2600:        [PASS][74] -> [FAIL][75] +7 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-snb-2600/igt@gem_wait@busy@all.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-snb-2600/igt@gem_wait@busy@all.html

  * igt@gem_wait@wait@all:
    - fi-bxt-dsi:         [PASS][76] -> [FAIL][77] +18 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-bxt-dsi/igt@gem_wait@wait@all.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bxt-dsi/igt@gem_wait@wait@all.html
    - fi-hsw-4770:        [PASS][78] -> [FAIL][79] +23 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-hsw-4770/igt@gem_wait@wait@all.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-hsw-4770/igt@gem_wait@wait@all.html
    - fi-bwr-2160:        [PASS][80] -> [FAIL][81] +4 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-bwr-2160/igt@gem_wait@wait@all.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bwr-2160/igt@gem_wait@wait@all.html

  * igt@kms_busy@basic@modeset:
    - fi-snb-2520m:       [PASS][82] -> [FAIL][83] +6 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-snb-2520m/igt@kms_busy@basic@modeset.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-snb-2520m/igt@kms_busy@basic@modeset.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-bsw-kefka:       [PASS][84] -> [FAIL][85] +22 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-pnv-d510:        [PASS][86] -> [FAIL][87] +8 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][88]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-ilk-650/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][89]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bsw-nick/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][90]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-snb-2520m/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][91]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bwr-2160/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][92]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-hsw-4770/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][93]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-snb-2600/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][94]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-rkl-guc/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][95]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-ivb-3770/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][96]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][97]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-elk-e7500/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][98]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-icl-y/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][99]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-u2/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bsw-kefka:       [FAIL][100] ([fdo#109271] / [i915#1436] / [i915#3428]) -> [FAIL][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-bsw-kefka/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bsw-kefka/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fence@basic-await@rcs0:
    - {fi-ehl-2}:         [PASS][102] -> [FAIL][103] +22 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-ehl-2/igt@gem_exec_fence@basic-await@rcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-ehl-2/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_fence@basic-busy@vecs0:
    - {fi-jsl-1}:         [PASS][104] -> [FAIL][105] +20 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html

  * igt@gem_exec_fence@nb-await@vecs0:
    - {fi-tgl-dsi}:       [PASS][106] -> [FAIL][107] +24 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-tgl-dsi/igt@gem_exec_fence@nb-await@vecs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-dsi/igt@gem_exec_fence@nb-await@vecs0.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - {fi-tgl-dsi}:       [PASS][108] -> [INCOMPLETE][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][110]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-jsl-1}:         NOTRUN -> [FAIL][111]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][112]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-ehl-2/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10641 and Patchwork_21155:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_resv:
    - Statuses : 29 dmesg-fail(s)
    - Exec time: [0.04, 0.19] s

  

Known issues
------------

  Here are the changes found in Patchwork_21155 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@vecs0:
    - fi-apl-guc:         [PASS][113] -> [DMESG-FAIL][114] ([i915#1610])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [PASS][115] -> [FAIL][116] ([i915#1888])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][117] -> [DMESG-WARN][118] ([i915#2868])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][119] ([fdo#109271]) +3 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-kbl-8809g:       [PASS][120] -> [SKIP][121] ([fdo#109271]) +15 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-8809g:       [PASS][122] -> [SKIP][123] ([fdo#109271] / [i915#533])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][124] ([i915#2403])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-pnv-d510/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][125] ([i915#3363])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cfl-8700k/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][126] ([i915#3363])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][127] ([i915#3363])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][128] ([i915#3363])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-icl-u2/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][129] ([i915#3363] / [k.org#202321])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][130] ([i915#3363])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-r/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][131] ([i915#1602] / [i915#2029])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][132] ([i915#3363])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-7500u/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][133] ([i915#3363])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cml-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][134] ([i915#3363])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][135] ([i915#3363])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cfl-guc/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][136] ([i915#3363])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-7567u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-8809g:       [INCOMPLETE][137] ([i915#4130]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][139] ([i915#1888]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][141] ([i915#1982] / [i915#4136]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-tgl-dsi/igt@i915_module_load@reload.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-dsi/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [INCOMPLETE][143] ([i915#2940]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@kms_addfb_basic@bad-pitch-65536:
    - fi-kbl-8809g:       [FAIL][145] -> [PASS][146] +1 similar issue
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@kms_addfb_basic@bad-pitch-65536.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@kms_addfb_basic@bad-pitch-65536.html

  * igt@kms_addfb_basic@too-high:
    - fi-kbl-8809g:       [FAIL][147] ([i915#2774]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html

  * igt@kms_addfb_basic@unused-modifier:
    - fi-kbl-8809g:       [SKIP][149] ([fdo#109271]) -> [PASS][150] +18 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@kms_addfb_basic@unused-modifier.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@kms_addfb_basic@unused-modifier.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-8809g:       [DMESG-FAIL][151] -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-8809g:       [CRASH][153] -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][155] ([i915#2283] / [i915#2426] / [i915#3363]) -> [FAIL][156] ([i915#3363])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2774]: https://gitlab.freedesktop.org/drm/intel/issues/2774
  [i915#2868]: https://gitlab.freedesktop.org/drm/intel/issues/2868
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
  [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (40 -> 32)
------------------------------

  Missing    (8): fi-kbl-soraka fi-rkl-11600 bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10641 -> Patchwork_21155

  CI-20190529: 20190529
  CI_DRM_10641: 7ed675211034f2d6fd57c0e6388081d5d008e2d4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6218: 8d4169d9543d8e5c01f0c746f603801a4d65ead0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21155: 5aab0a62bfd5f3c859d31a285deb75d70a252da2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5aab0a62bfd5 drm/etnaviv: replace dma_resv_get_excl_unlocked
17e53fef2daf drm/etnaviv: use new iterator in etnaviv_gem_describe
57e7c63ecba3 drm/nouveau: use the new interator in nv50_wndw_prepare_fb
99805ba5df9a drm/nouveau: use the new iterator in nouveau_fence_sync
0c12495336ba drm: use new iterator in drm_gem_plane_helper_prepare_fb
ab1e97345ff5 drm: use new iterator in drm_gem_fence_array_add_implicit v3
4cdf20dd2cc3 drm/i915: use new cursor in intel_prepare_plane_fb
f5f6de7f6991 drm/i915: use new iterator in i915_gem_object_wait_priority
57635ce0d636 drm/i915: use new iterator in i915_gem_object_wait_reservation
66e0731b7682 drm/i915: use the new iterator in i915_reque

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/index.html

--===============6744201396931219421==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [01/27] dma-buf: add dma_resv_for_each_fence_unlocked v6</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95034/">https://patchwork.freedesktop.org/series/95034/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10641 -&gt; Patchwork_21155</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21155 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21155, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21155:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@dmabuf@all@dma_resv} (NEW):</p>
<ul>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-7500u/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-hsw-4770/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bwr-2160/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-r/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-snb-2520m/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-glk-dsi/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bsw-nick/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-dsi/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cfl-8109u/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-skl-6600u/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-icl-u2/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cfl-8700k/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bsw-kefka/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-pnv-d510/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-ilk-650/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-u2/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-7567u/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cfl-guc/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-ehl-2/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-icl-y/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-elk-e7500/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-1115g4/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bxt-dsi/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-ivb-3770/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-snb-2600/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-jsl-1/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-rkl-guc/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cml-u2/igt@dmabuf@all@dma_resv.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-ilk-650/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-ilk-650/igt@gem_busy@busy@all.html">FAIL</a> +14 similar issues</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-apl-guc/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-apl-guc/igt@gem_busy@busy@all.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@bcs0:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-skl-6600u/igt@gem_exec_fence@basic-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-skl-6600u/igt@gem_exec_fence@basic-await@bcs0.html">FAIL</a> +18 similar issues</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-cml-u2/igt@gem_exec_fence@basic-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cml-u2/igt@gem_exec_fence@basic-await@bcs0.html">FAIL</a> +18 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@rcs0:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-cfl-guc/igt@gem_exec_fence@basic-await@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cfl-guc/igt@gem_exec_fence@basic-await@rcs0.html">FAIL</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vcs0:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vcs1:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-await@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bdw-gvtdvm/igt@gem_exec_fence@basic-await@vcs1.html">FAIL</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vecs0:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-cfl-8700k/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cfl-8700k/igt@gem_exec_fence@basic-await@vecs0.html">FAIL</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@vcs0:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html">FAIL</a> +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@vcs1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-tgl-u2/igt@gem_exec_fence@basic-busy@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-u2/igt@gem_exec_fence@basic-busy@vcs1.html">FAIL</a> +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@bcs0:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-tgl-1115g4/igt@gem_exec_fence@basic-wait@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-1115g4/igt@gem_exec_fence@basic-wait@bcs0.html">FAIL</a> +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@vcs0:</p>
<ul>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-7500u/igt@gem_exec_fence@basic-wait@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-7500u/igt@gem_exec_fence@basic-wait@vcs0.html">FAIL</a> +18 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-cfl-8109u/igt@gem_exec_fence@basic-wait@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cfl-8109u/igt@gem_exec_fence@basic-wait@vcs0.html">FAIL</a> +22 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@vecs0:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-7567u/igt@gem_exec_fence@basic-wait@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-7567u/igt@gem_exec_fence@basic-wait@vecs0.html">FAIL</a> +20 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-bdw-5557u/igt@gem_exec_fence@basic-wait@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bdw-5557u/igt@gem_exec_fence@basic-wait@vecs0.html">FAIL</a> +20 similar issues</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-r/igt@gem_exec_fence@basic-wait@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-r/igt@gem_exec_fence@basic-wait@vecs0.html">FAIL</a> +18 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@bcs0:</p>
<ul>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-icl-y/igt@gem_exec_fence@nb-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-icl-y/igt@gem_exec_fence@nb-await@bcs0.html">FAIL</a> +26 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html">FAIL</a> +18 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@rcs0:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-icl-u2/igt@gem_exec_fence@nb-await@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-icl-u2/igt@gem_exec_fence@nb-await@rcs0.html">FAIL</a> +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vcs0:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-glk-dsi/igt@gem_exec_fence@nb-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-glk-dsi/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vecs0:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@gem_exec_fence@nb-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@gem_exec_fence@nb-await@vecs0.html">FAIL</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-rkl-guc/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-rkl-guc/igt@gem_exec_parallel@engines@fds.html">FAIL</a> +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-snb-2600/igt@gem_wait@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-snb-2600/igt@gem_wait@busy@all.html">FAIL</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-bxt-dsi/igt@gem_wait@wait@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bxt-dsi/igt@gem_wait@wait@all.html">FAIL</a> +18 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-hsw-4770/igt@gem_wait@wait@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-hsw-4770/igt@gem_wait@wait@all.html">FAIL</a> +23 similar issues</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-bwr-2160/igt@gem_wait@wait@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bwr-2160/igt@gem_wait@wait@all.html">FAIL</a> +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-snb-2520m/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-snb-2520m/igt@kms_busy@basic@modeset.html">FAIL</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">FAIL</a> +22 similar issues</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">FAIL</a> +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-ilk-650/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bsw-nick/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-snb-2520m/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bwr-2160/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-hsw-4770/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-snb-2600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-rkl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-ivb-3770/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-icl-y/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-u2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@rcs0:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-ehl-2/igt@gem_exec_fence@basic-await@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-ehl-2/igt@gem_exec_fence@basic-await@rcs0.html">FAIL</a> +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@vecs0:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-jsl-1/igt@gem_exec_fence@basic-busy@vecs0.html">FAIL</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vecs0:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-tgl-dsi/igt@gem_exec_fence@nb-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-dsi/igt@gem_exec_fence@nb-await@vecs0.html">FAIL</a> +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10641 and Patchwork_21155:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@dmabuf@all@dma_resv:<ul>
<li>Statuses : 29 dmesg-fail(s)</li>
<li>Exec time: [0.04, 0.19] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21155 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@vecs0:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2868">i915#2868</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-tgl-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-tgl-dsi/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-65536:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@kms_addfb_basic@bad-pitch-65536.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@kms_addfb_basic@bad-pitch-65536.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2774">i915#2774</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-modifier:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@kms_addfb_basic@unused-modifier.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@kms_addfb_basic@unused-modifier.html">PASS</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html">CRASH</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10641/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21155/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (40 -&gt; 32)</h2>
<p>Missing    (8): fi-kbl-soraka fi-rkl-11600 bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10641 -&gt; Patchwork_21155</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10641: 7ed675211034f2d6fd57c0e6388081d5d008e2d4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6218: 8d4169d9543d8e5c01f0c746f603801a4d65ead0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21155: 5aab0a62bfd5f3c859d31a285deb75d70a252da2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5aab0a62bfd5 drm/etnaviv: replace dma_resv_get_excl_unlocked<br />
17e53fef2daf drm/etnaviv: use new iterator in etnaviv_gem_describe<br />
57e7c63ecba3 drm/nouveau: use the new interator in nv50_wndw_prepare_fb<br />
99805ba5df9a drm/nouveau: use the new iterator in nouveau_fence_sync<br />
0c12495336ba drm: use new iterator in drm_gem_plane_helper_prepare_fb<br />
ab1e97345ff5 drm: use new iterator in drm_gem_fence_array_add_implicit v3<br />
4cdf20dd2cc3 drm/i915: use new cursor in intel_prepare_plane_fb<br />
f5f6de7f6991 drm/i915: use new iterator in i915_gem_object_wait_priority<br />
57635ce0d636 drm/i915: use new iterator in i915_gem_object_wait_reservation<br />
66e0731b7682 drm/i915: use the new iterator in i915_reque</p>

</body>
</html>

--===============6744201396931219421==--
