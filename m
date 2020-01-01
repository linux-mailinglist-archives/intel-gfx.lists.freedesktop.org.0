Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C0812DE8D
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 11:44:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F996898EE;
	Wed,  1 Jan 2020 10:44:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E58C4896B5;
 Wed,  1 Jan 2020 10:44:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2E9FA363D;
 Wed,  1 Jan 2020 10:44:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Jan 2020 10:44:04 -0000
Message-ID: <157787544483.5186.3116921754146202142@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200101100500.658787-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200101100500.658787-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Drop_local_vma-=3Evm=5Ffile_reference?=
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

Series: drm/i915/gem: Drop local vma->vm_file reference
URL   : https://patchwork.freedesktop.org/series/71539/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7662 -> Patchwork_15964
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15964 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15964, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15964:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_gtt@basic-small-bo-tiledx:
    - fi-bwr-2160:        [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-bwr-2160/igt@gem_mmap_gtt@basic-small-bo-tiledx.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-bwr-2160/igt@gem_mmap_gtt@basic-small-bo-tiledx.html
    - fi-ilk-650:         [PASS][3] -> [FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-ilk-650/igt@gem_mmap_gtt@basic-small-bo-tiledx.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-ilk-650/igt@gem_mmap_gtt@basic-small-bo-tiledx.html
    - fi-elk-e7500:       [PASS][5] -> [FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-elk-e7500/igt@gem_mmap_gtt@basic-small-bo-tiledx.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-elk-e7500/igt@gem_mmap_gtt@basic-small-bo-tiledx.html
    - fi-snb-2520m:       [PASS][7] -> [FAIL][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-snb-2520m/igt@gem_mmap_gtt@basic-small-bo-tiledx.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-snb-2520m/igt@gem_mmap_gtt@basic-small-bo-tiledx.html
    - fi-hsw-4770:        [PASS][9] -> [FAIL][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-hsw-4770/igt@gem_mmap_gtt@basic-small-bo-tiledx.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-hsw-4770/igt@gem_mmap_gtt@basic-small-bo-tiledx.html

  * igt@gem_mmap_gtt@basic-small-bo-tiledy:
    - fi-pnv-d510:        [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-pnv-d510/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-pnv-d510/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-skl-6600u/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-skl-guc:         [PASS][14] -> [FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-skl-guc/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-skl-guc/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-icl-y:           [PASS][16] -> [FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-icl-y/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-icl-y/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-kbl-guc:         [PASS][18] -> [FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-kbl-guc/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-kbl-guc/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-hsw-4770r:       [PASS][20] -> [FAIL][21] +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-hsw-4770r/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-hsw-4770r/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-bsw-nick:        [PASS][22] -> [FAIL][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-bsw-nick/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-bsw-nick/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-kbl-7500u/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-kbl-8809g:       [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-kbl-8809g/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-kbl-8809g/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-kbl-r:           [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-kbl-r/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-kbl-r/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-bsw-kefka:       [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-bsw-kefka/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-bsw-kefka/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-glk-dsi:         [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-glk-dsi/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-glk-dsi/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-kbl-soraka:      [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-kbl-soraka/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-kbl-soraka/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-icl-u3:          [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-icl-u3/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-icl-u3/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-kbl-x1275:       [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-kbl-x1275/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-kbl-x1275/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][39]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-cfl-guc/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-bsw-n3050:       [PASS][40] -> [FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-bsw-n3050/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-bsw-n3050/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-skl-lmem:        NOTRUN -> [FAIL][42]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-skl-lmem/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-cml-u2:          [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-cml-u2/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-cml-u2/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-icl-u2:          [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-icl-u2/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-icl-u2/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-skl-6700k2:      [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-skl-6700k2/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-skl-6700k2/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-icl-guc:         [PASS][49] -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-icl-guc/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-icl-guc/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-byt-n2820/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-bxt-dsi:         [PASS][52] -> [FAIL][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-bxt-dsi/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-bxt-dsi/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-cfl-8700k:       [PASS][54] -> [FAIL][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-cfl-8700k/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-cfl-8700k/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-apl-guc:         [PASS][56] -> [FAIL][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-apl-guc/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-apl-guc/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-icl-dsi:         [PASS][58] -> [FAIL][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-icl-dsi/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-icl-dsi/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - fi-whl-u:           NOTRUN -> [FAIL][60]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-whl-u/igt@gem_mmap_gtt@basic-small-bo-tiledy.html

  * igt@i915_selftest@live_mman:
    - fi-bxt-dsi:         NOTRUN -> [DMESG-FAIL][61]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-bxt-dsi/igt@i915_selftest@live_mman.html
    - fi-gdg-551:         NOTRUN -> [DMESG-FAIL][62]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-gdg-551/igt@i915_selftest@live_mman.html
    - fi-cml-u2:          [PASS][63] -> [DMESG-FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-cml-u2/igt@i915_selftest@live_mman.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-cml-u2/igt@i915_selftest@live_mman.html
    - fi-icl-u3:          [PASS][65] -> [DMESG-FAIL][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-icl-u3/igt@i915_selftest@live_mman.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-icl-u3/igt@i915_selftest@live_mman.html
    - fi-whl-u:           NOTRUN -> [DMESG-FAIL][67]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-whl-u/igt@i915_selftest@live_mman.html
    - fi-ilk-650:         [PASS][68] -> [DMESG-FAIL][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-ilk-650/igt@i915_selftest@live_mman.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-ilk-650/igt@i915_selftest@live_mman.html
    - fi-bsw-n3050:       [PASS][70] -> [DMESG-FAIL][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-bsw-n3050/igt@i915_selftest@live_mman.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-bsw-n3050/igt@i915_selftest@live_mman.html
    - fi-hsw-4770:        [PASS][72] -> [DMESG-FAIL][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-hsw-4770/igt@i915_selftest@live_mman.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-hsw-4770/igt@i915_selftest@live_mman.html
    - fi-cfl-guc:         NOTRUN -> [DMESG-FAIL][74]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-cfl-guc/igt@i915_selftest@live_mman.html
    - fi-skl-guc:         [PASS][75] -> [DMESG-FAIL][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-skl-guc/igt@i915_selftest@live_mman.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-skl-guc/igt@i915_selftest@live_mman.html
    - fi-skl-6700k2:      [PASS][77] -> [DMESG-FAIL][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-skl-6700k2/igt@i915_selftest@live_mman.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-skl-6700k2/igt@i915_selftest@live_mman.html
    - fi-elk-e7500:       [PASS][79] -> [DMESG-FAIL][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-elk-e7500/igt@i915_selftest@live_mman.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-elk-e7500/igt@i915_selftest@live_mman.html
    - fi-glk-dsi:         [PASS][81] -> [DMESG-FAIL][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-glk-dsi/igt@i915_selftest@live_mman.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-glk-dsi/igt@i915_selftest@live_mman.html
    - fi-snb-2520m:       [PASS][83] -> [DMESG-FAIL][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-snb-2520m/igt@i915_selftest@live_mman.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-snb-2520m/igt@i915_selftest@live_mman.html
    - fi-apl-guc:         [PASS][85] -> [DMESG-FAIL][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-apl-guc/igt@i915_selftest@live_mman.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-apl-guc/igt@i915_selftest@live_mman.html
    - fi-icl-y:           [PASS][87] -> [DMESG-FAIL][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-icl-y/igt@i915_selftest@live_mman.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-icl-y/igt@i915_selftest@live_mman.html
    - fi-cfl-8700k:       NOTRUN -> [DMESG-FAIL][89]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-cfl-8700k/igt@i915_selftest@live_mman.html
    - fi-skl-6600u:       NOTRUN -> [DMESG-FAIL][90]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-skl-6600u/igt@i915_selftest@live_mman.html
    - fi-icl-u2:          [PASS][91] -> [DMESG-FAIL][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-icl-u2/igt@i915_selftest@live_mman.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-icl-u2/igt@i915_selftest@live_mman.html
    - fi-pnv-d510:        [PASS][93] -> [DMESG-FAIL][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-pnv-d510/igt@i915_selftest@live_mman.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-pnv-d510/igt@i915_selftest@live_mman.html
    - fi-kbl-7500u:       NOTRUN -> [DMESG-FAIL][95]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-kbl-7500u/igt@i915_selftest@live_mman.html
    - fi-hsw-4770r:       [PASS][96] -> [DMESG-FAIL][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-hsw-4770r/igt@i915_selftest@live_mman.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-hsw-4770r/igt@i915_selftest@live_mman.html
    - fi-kbl-guc:         [PASS][98] -> [DMESG-FAIL][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-kbl-guc/igt@i915_selftest@live_mman.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-kbl-guc/igt@i915_selftest@live_mman.html
    - fi-icl-dsi:         [PASS][100] -> [DMESG-FAIL][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-icl-dsi/igt@i915_selftest@live_mman.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-icl-dsi/igt@i915_selftest@live_mman.html
    - fi-bsw-kefka:       [PASS][102] -> [DMESG-FAIL][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-bsw-kefka/igt@i915_selftest@live_mman.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-bsw-kefka/igt@i915_selftest@live_mman.html
    - fi-bwr-2160:        [PASS][104] -> [DMESG-FAIL][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-bwr-2160/igt@i915_selftest@live_mman.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-bwr-2160/igt@i915_selftest@live_mman.html
    - fi-kbl-r:           [PASS][106] -> [DMESG-FAIL][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-kbl-r/igt@i915_selftest@live_mman.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-kbl-r/igt@i915_selftest@live_mman.html
    - fi-byt-n2820:       NOTRUN -> [DMESG-FAIL][108]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-byt-n2820/igt@i915_selftest@live_mman.html
    - fi-icl-guc:         [PASS][109] -> [DMESG-FAIL][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-icl-guc/igt@i915_selftest@live_mman.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-icl-guc/igt@i915_selftest@live_mman.html
    - fi-bsw-nick:        [PASS][111] -> [DMESG-FAIL][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-bsw-nick/igt@i915_selftest@live_mman.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-bsw-nick/igt@i915_selftest@live_mman.html
    - fi-kbl-soraka:      [PASS][113] -> [DMESG-FAIL][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-kbl-soraka/igt@i915_selftest@live_mman.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-kbl-soraka/igt@i915_selftest@live_mman.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_mmap_gtt@basic-small-bo-tiledy:
    - {fi-tgl-guc}:       [PASS][115] -> [FAIL][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-tgl-guc/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-tgl-guc/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
    - {fi-tgl-u}:         [PASS][117] -> [FAIL][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-tgl-u/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-tgl-u/igt@gem_mmap_gtt@basic-small-bo-tiledy.html

  * igt@i915_selftest@live_mman:
    - {fi-tgl-u}:         [PASS][119] -> [DMESG-FAIL][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-tgl-u/igt@i915_selftest@live_mman.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-tgl-u/igt@i915_selftest@live_mman.html
    - {fi-tgl-guc}:       [PASS][121] -> [DMESG-FAIL][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-tgl-guc/igt@i915_selftest@live_mman.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-tgl-guc/igt@i915_selftest@live_mman.html

  
Known issues
------------

  Here are the changes found in Patchwork_15964 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [PASS][123] -> [DMESG-FAIL][124] ([i915#656])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][125] ([i915#816]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [INCOMPLETE][127] ([fdo#103927]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
    - fi-cfl-8700k:       [INCOMPLETE][129] ([i915#505]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][131] ([i915#553] / [i915#725]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][133] ([i915#553] / [i915#725]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][135] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][136] ([fdo#107139] / [i915#62] / [i915#92])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-kbl-x1275:       [DMESG-WARN][137] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][138] ([i915#62] / [i915#92]) +4 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][139] ([i915#62] / [i915#92]) -> [DMESG-WARN][140] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7662/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 38)
------------------------------

  Additional (7): fi-bdw-gvtdvm fi-cfl-guc fi-kbl-7500u fi-whl-u fi-gdg-551 fi-skl-lmem fi-skl-6600u 
  Missing    (13): fi-ilk-m540 fi-bdw-5557u fi-byt-j1900 fi-skl-6770hq fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-blb-e6850 fi-byt-clapper fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7662 -> Patchwork_15964

  CI-20190529: 20190529
  CI_DRM_7662: 44a89a2d9cc0e091fc1bb143aa5dcc0728d3ac90 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15964: 2bf706c3f5d3a230b7ef55175b451cbbc6a7f495 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2bf706c3f5d3 drm/i915/gem: Drop local vma->vm_file reference

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15964/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
