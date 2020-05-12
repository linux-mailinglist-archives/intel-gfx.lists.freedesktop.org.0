Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E64B41CFC4B
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 19:36:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94C2D6E949;
	Tue, 12 May 2020 17:36:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 590726E13D;
 Tue, 12 May 2020 17:36:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52BCDA00C7;
 Tue, 12 May 2020 17:36:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 12 May 2020 17:36:31 -0000
Message-ID: <158930499131.18140.15435491758047020819@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200512132255.20537-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200512132255.20537-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Transfer_old_virtual_breadcrumbs_to_irq=5Fworker_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/gt: Transfer old virtual breadcrumbs to irq_worker (rev2)
URL   : https://patchwork.freedesktop.org/series/77191/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8470 -> Patchwork_17634
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17634 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17634, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17634:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_create@basic-files:
    - fi-hsw-4770:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-hsw-4770/igt@gem_ctx_create@basic-files.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-hsw-4770/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_fence@basic-busy@vcs0:
    - fi-ivb-3770:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-ivb-3770/igt@gem_exec_fence@basic-busy@vcs0.html
    - fi-elk-e7500:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-elk-e7500/igt@gem_exec_fence@basic-busy@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-elk-e7500/igt@gem_exec_fence@basic-busy@vcs0.html
    - fi-ilk-650:         [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-ilk-650/igt@gem_exec_fence@basic-busy@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-ilk-650/igt@gem_exec_fence@basic-busy@vcs0.html

  * igt@gem_exec_fence@basic-busy@vecs0:
    - fi-apl-guc:         [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-apl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bxt-dsi:         [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-bxt-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-bxt-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cml-u2:          [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-cml-u2/igt@gem_exec_fence@basic-busy@vecs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-cml-u2/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-6700k2:      [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vecs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-skl-6700k2/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cfl-8700k:       [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-icl-guc:         [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-icl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-icl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bsw-n3050:       [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@vecs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-bsw-n3050/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-lmem:        [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-skl-lmem/igt@gem_exec_fence@basic-busy@vecs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-skl-lmem/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-soraka:      [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vecs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cml-s:           [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-x1275:       [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cfl-guc:         [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-cfl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-cfl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bsw-kefka:       [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@vecs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-bsw-kefka/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-glk-dsi:         [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-glk-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-glk-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-8809g:       [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-kbl-8809g/igt@gem_exec_fence@basic-busy@vecs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-kbl-8809g/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-r:           [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-kbl-r/igt@gem_exec_fence@basic-busy@vecs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-kbl-r/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cfl-8109u:       [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-cfl-8109u/igt@gem_exec_fence@basic-busy@vecs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-cfl-8109u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-icl-y:           [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-icl-y/igt@gem_exec_fence@basic-busy@vecs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-icl-y/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-guc:         [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-kbl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-kbl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bsw-nick:        [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-bsw-nick/igt@gem_exec_fence@basic-busy@vecs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-bsw-nick/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-bdw-5557u:       [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-bdw-5557u/igt@gem_exec_fence@basic-busy@vecs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-bdw-5557u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-kbl-7500u:       [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-kbl-7500u/igt@gem_exec_fence@basic-busy@vecs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-kbl-7500u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-whl-u:           [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-whl-u/igt@gem_exec_fence@basic-busy@vecs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-whl-u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-6600u:       [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-skl-6600u/igt@gem_exec_fence@basic-busy@vecs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-skl-6600u/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-guc:         [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-skl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-skl-guc/igt@gem_exec_fence@basic-busy@vecs0.html

  * igt@gem_exec_fence@basic-wait@vcs0:
    - fi-byt-n2820:       [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-byt-n2820/igt@gem_exec_fence@basic-wait@vcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-byt-n2820/igt@gem_exec_fence@basic-wait@vcs0.html
    - fi-byt-j1900:       [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-byt-j1900/igt@gem_exec_fence@basic-wait@vcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-byt-j1900/igt@gem_exec_fence@basic-wait@vcs0.html

  * igt@gem_exec_fence@basic-wait@vecs0:
    - fi-tgl-y:           [PASS][63] -> [DMESG-WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-tgl-y/igt@gem_exec_fence@basic-wait@vecs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-tgl-y/igt@gem_exec_fence@basic-wait@vecs0.html

  * igt@gem_render_linear_blits@basic:
    - fi-blb-e6850:       [PASS][65] -> [INCOMPLETE][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-blb-e6850/igt@gem_render_linear_blits@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-blb-e6850/igt@gem_render_linear_blits@basic.html
    - fi-snb-2520m:       [PASS][67] -> [INCOMPLETE][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-snb-2520m/igt@gem_render_linear_blits@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-snb-2520m/igt@gem_render_linear_blits@basic.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][69]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-ilk-650/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][70]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][71]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][72]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-cfl-8700k/igt@runner@aborted.html
    - fi-tgl-y:           NOTRUN -> [FAIL][73]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-tgl-y/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][74]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-cfl-8109u/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][75]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-gdg-551/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][76]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][77]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-kbl-8809g/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][78]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-snb-2520m/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][79]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-apl-guc/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][80]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-kbl-r/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][81]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-bwr-2160/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][82]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-byt-n2820/igt@runner@aborted.html
    - fi-icl-guc:         NOTRUN -> [FAIL][83]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-icl-guc/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][84]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][85]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][86]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][87]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-kbl-guc/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][88]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-snb-2600/igt@runner@aborted.html
    - fi-whl-u:           NOTRUN -> [FAIL][89]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-whl-u/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][90]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-cml-u2/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][91]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][92]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-bxt-dsi/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][93]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-byt-j1900/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][94]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-elk-e7500/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][95]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-cml-s/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][96]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][97]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-icl-y/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][98]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-bsw-n3050/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][99]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-blb-e6850/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - fi-icl-u2:          [PASS][100] -> [{ABORT}][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-icl-u2/igt@debugfs_test@read_all_entries.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-icl-u2/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_fence@basic-busy@vecs0:
    - {fi-tgl-u}:         [PASS][102] -> [DMESG-WARN][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-tgl-u/igt@gem_exec_fence@basic-busy@vecs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-tgl-u/igt@gem_exec_fence@basic-busy@vecs0.html
    - {fi-ehl-1}:         [PASS][104] -> [DMESG-WARN][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-ehl-1/igt@gem_exec_fence@basic-busy@vecs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-ehl-1/igt@gem_exec_fence@basic-busy@vecs0.html
    - {fi-tgl-dsi}:       [PASS][106] -> [DMESG-WARN][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-tgl-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-tgl-dsi/igt@gem_exec_fence@basic-busy@vecs0.html
    - {fi-kbl-7560u}:     NOTRUN -> [DMESG-WARN][108]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-kbl-7560u/igt@gem_exec_fence@basic-busy@vecs0.html

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][109]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-ehl-1}:         NOTRUN -> [FAIL][110]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-ehl-1/igt@runner@aborted.html
    - {fi-kbl-7560u}:     [FAIL][111] ([i915#1569] / [i915#192] / [i915#193] / [i915#194]) -> [FAIL][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-kbl-7560u/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-kbl-7560u/igt@runner@aborted.html
    - {fi-tgl-u}:         NOTRUN -> [FAIL][113]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17634 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_render_linear_blits@basic:
    - fi-gdg-551:         [PASS][114] -> [INCOMPLETE][115] ([i915#172])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-gdg-551/igt@gem_render_linear_blits@basic.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-gdg-551/igt@gem_render_linear_blits@basic.html
    - fi-snb-2600:        [PASS][116] -> [INCOMPLETE][117] ([i915#82])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-snb-2600/igt@gem_render_linear_blits@basic.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/fi-snb-2600/igt@gem_render_linear_blits@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (49 -> 44)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8470 -> Patchwork_17634

  CI-20190529: 20190529
  CI_DRM_8470: d2c5ae86eac811c49f2fe22c4fa02b6e6d31cd67 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5651: e54e2642f1967ca3c488db32264607df670d1dfb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17634: 9a1d8bec880b77f7c39805ddcd1886266fdd1c0a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9a1d8bec880b drm/i915/gt: Transfer old virtual breadcrumbs to irq_worker

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17634/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
