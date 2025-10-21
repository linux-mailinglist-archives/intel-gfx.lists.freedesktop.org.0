Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D92BF6D73
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Oct 2025 15:42:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E6D310E066;
	Tue, 21 Oct 2025 13:42:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 97596180aaec (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1CA610E066;
 Tue, 21 Oct 2025 13:42:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8347812529869559745=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm=3A_Reduce_page_tables?=
 =?utf-8?q?_overhead_with_THP_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Lo=C3=AFc_Molinari?= <loic.molinari@collabora.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Oct 2025 13:42:06 -0000
Message-ID: <176105412671.36825.12766932671171642025@97596180aaec>
X-Patchwork-Hint: ignore
References: <20251021113049.17242-1-loic.molinari@collabora.com>
In-Reply-To: <20251021113049.17242-1-loic.molinari@collabora.com>
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

--===============8347812529869559745==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Reduce page tables overhead with THP (rev2)
URL   : https://patchwork.freedesktop.org/series/156001/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17399 -> Patchwork_156001v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_156001v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_156001v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_156001v2:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_vgem@basic-gtt:
    - bat-adlp-6:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-adlp-6/igt@prime_vgem@basic-gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-adlp-6/igt@prime_vgem@basic-gtt.html
    - fi-skl-6600u:       [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-skl-6600u/igt@prime_vgem@basic-gtt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-skl-6600u/igt@prime_vgem@basic-gtt.html
    - bat-twl-2:          [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-twl-2/igt@prime_vgem@basic-gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-twl-2/igt@prime_vgem@basic-gtt.html
    - fi-cfl-8700k:       [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-cfl-8700k/igt@prime_vgem@basic-gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-cfl-8700k/igt@prime_vgem@basic-gtt.html
    - fi-elk-e7500:       [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-elk-e7500/igt@prime_vgem@basic-gtt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-elk-e7500/igt@prime_vgem@basic-gtt.html
    - bat-kbl-2:          [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-kbl-2/igt@prime_vgem@basic-gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-kbl-2/igt@prime_vgem@basic-gtt.html
    - fi-hsw-4770:        [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-hsw-4770/igt@prime_vgem@basic-gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-hsw-4770/igt@prime_vgem@basic-gtt.html
    - fi-ivb-3770:        [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-ivb-3770/igt@prime_vgem@basic-gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-ivb-3770/igt@prime_vgem@basic-gtt.html
    - fi-kbl-guc:         [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-kbl-guc/igt@prime_vgem@basic-gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-kbl-guc/igt@prime_vgem@basic-gtt.html
    - bat-adls-6:         [PASS][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-adls-6/igt@prime_vgem@basic-gtt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-adls-6/igt@prime_vgem@basic-gtt.html
    - bat-jsl-1:          [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-jsl-1/igt@prime_vgem@basic-gtt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-jsl-1/igt@prime_vgem@basic-gtt.html
    - fi-bsw-n3050:       [PASS][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-bsw-n3050/igt@prime_vgem@basic-gtt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-bsw-n3050/igt@prime_vgem@basic-gtt.html
    - fi-pnv-d510:        [PASS][25] -> [ABORT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-pnv-d510/igt@prime_vgem@basic-gtt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-pnv-d510/igt@prime_vgem@basic-gtt.html
    - fi-glk-j4005:       [PASS][27] -> [ABORT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-glk-j4005/igt@prime_vgem@basic-gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-glk-j4005/igt@prime_vgem@basic-gtt.html
    - bat-adlp-9:         [PASS][29] -> [ABORT][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-adlp-9/igt@prime_vgem@basic-gtt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-adlp-9/igt@prime_vgem@basic-gtt.html
    - bat-rpls-4:         [PASS][31] -> [ABORT][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-rpls-4/igt@prime_vgem@basic-gtt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-rpls-4/igt@prime_vgem@basic-gtt.html
    - fi-kbl-7567u:       [PASS][33] -> [ABORT][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-kbl-7567u/igt@prime_vgem@basic-gtt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-kbl-7567u/igt@prime_vgem@basic-gtt.html
    - bat-twl-1:          [PASS][35] -> [ABORT][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-twl-1/igt@prime_vgem@basic-gtt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-twl-1/igt@prime_vgem@basic-gtt.html
    - fi-kbl-8809g:       [PASS][37] -> [ABORT][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-kbl-8809g/igt@prime_vgem@basic-gtt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-kbl-8809g/igt@prime_vgem@basic-gtt.html
    - bat-apl-1:          [PASS][39] -> [ABORT][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-apl-1/igt@prime_vgem@basic-gtt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-apl-1/igt@prime_vgem@basic-gtt.html
    - bat-rplp-1:         [PASS][41] -> [ABORT][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-rplp-1/igt@prime_vgem@basic-gtt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-rplp-1/igt@prime_vgem@basic-gtt.html
    - fi-rkl-11600:       [PASS][43] -> [ABORT][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-rkl-11600/igt@prime_vgem@basic-gtt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-rkl-11600/igt@prime_vgem@basic-gtt.html
    - fi-tgl-1115g4:      [PASS][45] -> [ABORT][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-tgl-1115g4/igt@prime_vgem@basic-gtt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-tgl-1115g4/igt@prime_vgem@basic-gtt.html
    - fi-cfl-guc:         [PASS][47] -> [ABORT][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-cfl-guc/igt@prime_vgem@basic-gtt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-cfl-guc/igt@prime_vgem@basic-gtt.html
    - fi-kbl-x1275:       [PASS][49] -> [ABORT][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-kbl-x1275/igt@prime_vgem@basic-gtt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-kbl-x1275/igt@prime_vgem@basic-gtt.html
    - bat-adlp-11:        [PASS][51] -> [ABORT][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-adlp-11/igt@prime_vgem@basic-gtt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-adlp-11/igt@prime_vgem@basic-gtt.html
    - fi-cfl-8109u:       [PASS][53] -> [ABORT][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-cfl-8109u/igt@prime_vgem@basic-gtt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-cfl-8109u/igt@prime_vgem@basic-gtt.html
    - fi-ilk-650:         [PASS][55] -> [ABORT][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-ilk-650/igt@prime_vgem@basic-gtt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-ilk-650/igt@prime_vgem@basic-gtt.html

  * igt@vgem_basic@dmabuf-mmap:
    - bat-atsm-1:         [PASS][57] -> [ABORT][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-atsm-1/igt@vgem_basic@dmabuf-mmap.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-atsm-1/igt@vgem_basic@dmabuf-mmap.html
    - bat-mtlp-9:         [PASS][59] -> [ABORT][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-mtlp-9/igt@vgem_basic@dmabuf-mmap.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-mtlp-9/igt@vgem_basic@dmabuf-mmap.html
    - bat-arls-6:         [PASS][61] -> [ABORT][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-arls-6/igt@vgem_basic@dmabuf-mmap.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-arls-6/igt@vgem_basic@dmabuf-mmap.html
    - bat-mtlp-8:         [PASS][63] -> [ABORT][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-mtlp-8/igt@vgem_basic@dmabuf-mmap.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-mtlp-8/igt@vgem_basic@dmabuf-mmap.html
    - bat-dg2-8:          [PASS][65] -> [ABORT][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-dg2-8/igt@vgem_basic@dmabuf-mmap.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-dg2-8/igt@vgem_basic@dmabuf-mmap.html
    - bat-arlh-3:         [PASS][67] -> [ABORT][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-arlh-3/igt@vgem_basic@dmabuf-mmap.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-arlh-3/igt@vgem_basic@dmabuf-mmap.html
    - bat-dg1-7:          [PASS][69] -> [ABORT][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-dg1-7/igt@vgem_basic@dmabuf-mmap.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-dg1-7/igt@vgem_basic@dmabuf-mmap.html
    - bat-arls-5:         [PASS][71] -> [ABORT][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-arls-5/igt@vgem_basic@dmabuf-mmap.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-arls-5/igt@vgem_basic@dmabuf-mmap.html
    - bat-arlh-2:         [PASS][73] -> [ABORT][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-arlh-2/igt@vgem_basic@dmabuf-mmap.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-arlh-2/igt@vgem_basic@dmabuf-mmap.html
    - bat-mtlp-6:         [PASS][75] -> [ABORT][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-mtlp-6/igt@vgem_basic@dmabuf-mmap.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-mtlp-6/igt@vgem_basic@dmabuf-mmap.html
    - bat-dg2-9:          [PASS][77] -> [ABORT][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-dg2-9/igt@vgem_basic@dmabuf-mmap.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-dg2-9/igt@vgem_basic@dmabuf-mmap.html
    - bat-dg1-6:          [PASS][79] -> [ABORT][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-dg1-6/igt@vgem_basic@dmabuf-mmap.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-dg1-6/igt@vgem_basic@dmabuf-mmap.html
    - bat-dg2-11:         [PASS][81] -> [ABORT][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-dg2-11/igt@vgem_basic@dmabuf-mmap.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-dg2-11/igt@vgem_basic@dmabuf-mmap.html
    - bat-dg2-14:         [PASS][83] -> [ABORT][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-dg2-14/igt@vgem_basic@dmabuf-mmap.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-dg2-14/igt@vgem_basic@dmabuf-mmap.html

  
Known issues
------------

  Here are the changes found in Patchwork_156001v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][85] ([i915#15124])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-bsw-nick/igt@runner@aborted.html

  
  [i915#15124]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15124


Build changes
-------------

  * Linux: CI_DRM_17399 -> Patchwork_156001v2

  CI-20190529: 20190529
  CI_DRM_17399: f249aa892c04c616ca232b58830cf4817ae570a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8594: 8594
  Patchwork_156001v2: f249aa892c04c616ca232b58830cf4817ae570a3 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/index.html

--===============8347812529869559745==
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
<tr><td><b>Series:</b></td><td>drm: Reduce page tables overhead with THP (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/156001/">https://patchwork.freedesktop.org/series/156001/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17399 -&gt; Patchwork_156001v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_156001v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_156001v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/index.html</p>
<h2>Participating hosts (45 -&gt; 44)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_156001v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-adlp-6/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-adlp-6/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-skl-6600u/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-skl-6600u/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-twl-2/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-twl-2/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-cfl-8700k/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-cfl-8700k/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-elk-e7500/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-elk-e7500/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-kbl-2/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-kbl-2/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-hsw-4770/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-hsw-4770/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-ivb-3770/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-ivb-3770/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-kbl-guc/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-kbl-guc/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-adls-6/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-adls-6/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-jsl-1/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-jsl-1/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-bsw-n3050/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-bsw-n3050/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-pnv-d510/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-pnv-d510/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-glk-j4005/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-glk-j4005/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-adlp-9/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-adlp-9/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-rpls-4/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-rpls-4/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-kbl-7567u/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-kbl-7567u/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-twl-1/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-twl-1/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-kbl-8809g/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-kbl-8809g/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-apl-1/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-apl-1/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-rplp-1/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-rplp-1/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-rkl-11600/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-rkl-11600/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-tgl-1115g4/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-tgl-1115g4/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-cfl-guc/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-cfl-guc/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-kbl-x1275/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-kbl-x1275/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-adlp-11/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-adlp-11/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-cfl-8109u/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-cfl-8109u/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/fi-ilk-650/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-ilk-650/igt@prime_vgem@basic-gtt.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-mmap:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-atsm-1/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-atsm-1/igt@vgem_basic@dmabuf-mmap.html">ABORT</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-mtlp-9/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-mtlp-9/igt@vgem_basic@dmabuf-mmap.html">ABORT</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-arls-6/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-arls-6/igt@vgem_basic@dmabuf-mmap.html">ABORT</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-mtlp-8/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-mtlp-8/igt@vgem_basic@dmabuf-mmap.html">ABORT</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-dg2-8/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-dg2-8/igt@vgem_basic@dmabuf-mmap.html">ABORT</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-arlh-3/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-arlh-3/igt@vgem_basic@dmabuf-mmap.html">ABORT</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-dg1-7/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-dg1-7/igt@vgem_basic@dmabuf-mmap.html">ABORT</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-arls-5/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-arls-5/igt@vgem_basic@dmabuf-mmap.html">ABORT</a></li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-arlh-2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-arlh-2/igt@vgem_basic@dmabuf-mmap.html">ABORT</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-mtlp-6/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-mtlp-6/igt@vgem_basic@dmabuf-mmap.html">ABORT</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-dg2-9/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-dg2-9/igt@vgem_basic@dmabuf-mmap.html">ABORT</a></li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-dg1-6/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-dg1-6/igt@vgem_basic@dmabuf-mmap.html">ABORT</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-dg2-11/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-dg2-11/igt@vgem_basic@dmabuf-mmap.html">ABORT</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17399/bat-dg2-14/igt@vgem_basic@dmabuf-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/bat-dg2-14/igt@vgem_basic@dmabuf-mmap.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_156001v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156001v2/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15124">i915#15124</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17399 -&gt; Patchwork_156001v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17399: f249aa892c04c616ca232b58830cf4817ae570a3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8594: 8594<br />
  Patchwork_156001v2: f249aa892c04c616ca232b58830cf4817ae570a3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8347812529869559745==--
