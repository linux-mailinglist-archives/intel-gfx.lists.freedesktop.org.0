Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 098E511ABDF
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 14:19:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 566B96EB4A;
	Wed, 11 Dec 2019 13:19:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 10CBB6E1E5;
 Wed, 11 Dec 2019 13:19:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 067DAA0118;
 Wed, 11 Dec 2019 13:19:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 11 Dec 2019 13:19:26 -0000
Message-ID: <157607036602.30629.8648479664933790613@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210103204.3564263-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20191210103204.3564263-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/execbuf=3A_Add_support_for_parallel_execbuf_submission=2E?=
 =?utf-8?q?_=28rev3=29?=
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

Series: drm/i915/execbuf: Add support for parallel execbuf submission. (rev3)
URL   : https://patchwork.freedesktop.org/series/70680/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7540 -> Patchwork_15687
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15687 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15687, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15687:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy-all:
    - fi-bsw-kefka:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-bsw-kefka/igt@gem_busy@busy-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-bsw-kefka/igt@gem_busy@busy-all.html
    - fi-bsw-n3050:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-bsw-n3050/igt@gem_busy@busy-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-bsw-n3050/igt@gem_busy@busy-all.html
    - fi-ilk-650:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-ilk-650/igt@gem_busy@busy-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-ilk-650/igt@gem_busy@busy-all.html
    - fi-bsw-nick:        [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-bsw-nick/igt@gem_busy@busy-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-bsw-nick/igt@gem_busy@busy-all.html
    - fi-blb-e6850:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-blb-e6850/igt@gem_busy@busy-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-blb-e6850/igt@gem_busy@busy-all.html

  * igt@gem_close_race@basic-process:
    - fi-bwr-2160:        [PASS][11] -> [TIMEOUT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-bwr-2160/igt@gem_close_race@basic-process.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-bwr-2160/igt@gem_close_race@basic-process.html

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-x1275:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
    - fi-icl-u3:          [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-icl-u3/igt@gem_exec_gttfill@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-icl-u3/igt@gem_exec_gttfill@basic.html
    - fi-tgl-y:           NOTRUN -> [DMESG-WARN][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-tgl-y/igt@gem_exec_gttfill@basic.html
    - fi-kbl-8809g:       [PASS][18] -> [DMESG-FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
    - fi-icl-y:           [PASS][20] -> [DMESG-WARN][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-icl-y/igt@gem_exec_gttfill@basic.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-icl-y/igt@gem_exec_gttfill@basic.html
    - fi-hsw-4770:        [PASS][22] -> [DMESG-WARN][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-hsw-4770/igt@gem_exec_gttfill@basic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-hsw-4770/igt@gem_exec_gttfill@basic.html
    - fi-kbl-7500u:       [PASS][24] -> [FAIL][25] +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
    - fi-kbl-guc:         [PASS][26] -> [DMESG-FAIL][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-kbl-guc/igt@gem_exec_gttfill@basic.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-kbl-guc/igt@gem_exec_gttfill@basic.html
    - fi-cml-u2:          [PASS][28] -> [DMESG-FAIL][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-cml-u2/igt@gem_exec_gttfill@basic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-cml-u2/igt@gem_exec_gttfill@basic.html
    - fi-skl-6600u:       [PASS][30] -> [DMESG-FAIL][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
    - fi-ivb-3770:        [PASS][32] -> [DMESG-WARN][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-ivb-3770/igt@gem_exec_gttfill@basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-ivb-3770/igt@gem_exec_gttfill@basic.html
    - fi-skl-lmem:        [PASS][34] -> [DMESG-FAIL][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-skl-lmem/igt@gem_exec_gttfill@basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-skl-lmem/igt@gem_exec_gttfill@basic.html
    - fi-cml-s:           [PASS][36] -> [DMESG-FAIL][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-cml-s/igt@gem_exec_gttfill@basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-cml-s/igt@gem_exec_gttfill@basic.html
    - fi-skl-6770hq:      [PASS][38] -> [DMESG-FAIL][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-skl-6770hq/igt@gem_exec_gttfill@basic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-skl-6770hq/igt@gem_exec_gttfill@basic.html
    - fi-skl-6700k2:      [PASS][40] -> [DMESG-FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-skl-6700k2/igt@gem_exec_gttfill@basic.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-skl-6700k2/igt@gem_exec_gttfill@basic.html
    - fi-snb-2600:        [PASS][42] -> [DMESG-WARN][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-snb-2600/igt@gem_exec_gttfill@basic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-snb-2600/igt@gem_exec_gttfill@basic.html
    - fi-hsw-4770r:       [PASS][44] -> [DMESG-WARN][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-hsw-4770r/igt@gem_exec_gttfill@basic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-hsw-4770r/igt@gem_exec_gttfill@basic.html
    - fi-kbl-r:           [PASS][46] -> [DMESG-FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-kbl-r/igt@gem_exec_gttfill@basic.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-kbl-r/igt@gem_exec_gttfill@basic.html
    - fi-bdw-5557u:       [PASS][48] -> [DMESG-WARN][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
    - fi-skl-guc:         [PASS][50] -> [DMESG-FAIL][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-skl-guc/igt@gem_exec_gttfill@basic.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-skl-guc/igt@gem_exec_gttfill@basic.html
    - fi-cfl-8700k:       [PASS][52] -> [DMESG-FAIL][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html
    - fi-whl-u:           [PASS][54] -> [DMESG-FAIL][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-whl-u/igt@gem_exec_gttfill@basic.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-whl-u/igt@gem_exec_gttfill@basic.html
    - fi-icl-u2:          [PASS][56] -> [DMESG-WARN][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-icl-u2/igt@gem_exec_gttfill@basic.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-icl-u2/igt@gem_exec_gttfill@basic.html
    - fi-snb-2520m:       [PASS][58] -> [DMESG-WARN][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-snb-2520m/igt@gem_exec_gttfill@basic.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-snb-2520m/igt@gem_exec_gttfill@basic.html
    - fi-cfl-guc:         [PASS][60] -> [DMESG-FAIL][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
    - fi-icl-guc:         [PASS][62] -> [DMESG-WARN][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-icl-guc/igt@gem_exec_gttfill@basic.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-icl-guc/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@basic:
    - fi-kbl-soraka:      [PASS][64] -> [FAIL][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-kbl-soraka/igt@gem_exec_parallel@basic.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-kbl-soraka/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parse@basic-allowed:
    - fi-hsw-peppy:       [PASS][66] -> [DMESG-WARN][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-hsw-peppy/igt@gem_exec_parse@basic-allowed.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-hsw-peppy/igt@gem_exec_parse@basic-allowed.html

  * igt@gem_exec_store@basic-all:
    - fi-kbl-soraka:      [PASS][68] -> [DMESG-WARN][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-kbl-soraka/igt@gem_exec_store@basic-all.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-kbl-soraka/igt@gem_exec_store@basic-all.html
    - fi-kbl-7500u:       [PASS][70] -> [DMESG-WARN][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-kbl-7500u/igt@gem_exec_store@basic-all.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-kbl-7500u/igt@gem_exec_store@basic-all.html

  * igt@gem_render_linear_blits@basic:
    - fi-hsw-peppy:       [PASS][72] -> [FAIL][73] +3 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-hsw-peppy/igt@gem_render_linear_blits@basic.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-hsw-peppy/igt@gem_render_linear_blits@basic.html

  * igt@i915_selftest@live_gem:
    - fi-hsw-peppy:       [PASS][74] -> [INCOMPLETE][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-hsw-peppy/igt@i915_selftest@live_gem.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-hsw-peppy/igt@i915_selftest@live_gem.html

  * igt@prime_vgem@basic-read:
    - fi-hsw-peppy:       [PASS][76] -> [TIMEOUT][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-hsw-peppy/igt@prime_vgem@basic-read.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-hsw-peppy/igt@prime_vgem@basic-read.html

  * igt@runner@aborted:
    - fi-snb-2520m:       NOTRUN -> [FAIL][78]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-snb-2520m/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][79]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][80]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][81]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-kbl-7500u/igt@runner@aborted.html
    - fi-whl-u:           NOTRUN -> [FAIL][82]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-whl-u/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][83]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-ivb-3770/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][84]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-cfl-guc/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][85]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][86]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-cfl-8700k/igt@runner@aborted.html
    - fi-hsw-4770r:       NOTRUN -> [FAIL][87]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-hsw-4770r/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][88]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-kbl-8809g/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][89]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][90]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-kbl-guc/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][91]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-snb-2600/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-guc}:       [PASS][92] -> [DMESG-WARN][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-tgl-guc/igt@gem_exec_gttfill@basic.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-tgl-guc/igt@gem_exec_gttfill@basic.html
    - {fi-tgl-u}:         [PASS][94] -> [DMESG-WARN][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_15687 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-all:
    - fi-glk-dsi:         [PASS][96] -> [INCOMPLETE][97] ([i915#58] / [k.org#198133])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-glk-dsi/igt@gem_busy@busy-all.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-glk-dsi/igt@gem_busy@busy-all.html
    - fi-bxt-dsi:         [PASS][98] -> [INCOMPLETE][99] ([fdo#103927])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-bxt-dsi/igt@gem_busy@busy-all.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-bxt-dsi/igt@gem_busy@busy-all.html
    - fi-byt-n2820:       [PASS][100] -> [INCOMPLETE][101] ([i915#45])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-byt-n2820/igt@gem_busy@busy-all.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-byt-n2820/igt@gem_busy@busy-all.html
    - fi-pnv-d510:        [PASS][102] -> [INCOMPLETE][103] ([i915#299])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-pnv-d510/igt@gem_busy@busy-all.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-pnv-d510/igt@gem_busy@busy-all.html
    - fi-apl-guc:         [PASS][104] -> [INCOMPLETE][105] ([fdo#103927])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-apl-guc/igt@gem_busy@busy-all.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-apl-guc/igt@gem_busy@busy-all.html
    - fi-elk-e7500:       [PASS][106] -> [INCOMPLETE][107] ([i915#66])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-elk-e7500/igt@gem_busy@busy-all.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-elk-e7500/igt@gem_busy@busy-all.html
    - fi-byt-j1900:       [PASS][108] -> [INCOMPLETE][109] ([i915#45])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-byt-j1900/igt@gem_busy@busy-all.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-byt-j1900/igt@gem_busy@busy-all.html

  * igt@gem_close_race@basic-process:
    - fi-gdg-551:         [PASS][110] -> [INCOMPLETE][111] ([i915#172])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-gdg-551/igt@gem_close_race@basic-process.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-gdg-551/igt@gem_close_race@basic-process.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-icl-guc:         [FAIL][112] ([fdo#110943] / [fdo#111093]) -> [FAIL][113] ([fdo#111093])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-icl-guc/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-icl-guc/igt@runner@aborted.html
    - fi-cml-s:           [FAIL][114] ([fdo#111764] / [i915#577]) -> [FAIL][115] ([i915#577])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7540/fi-cml-s/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/fi-cml-s/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#110943]: https://bugs.freedesktop.org/show_bug.cgi?id=110943
  [fdo#111093]: https://bugs.freedesktop.org/show_bug.cgi?id=111093
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#577]: https://gitlab.freedesktop.org/drm/intel/issues/577
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (53 -> 47)
------------------------------

  Additional (1): fi-tgl-y 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7540 -> Patchwork_15687

  CI-20190529: 20190529
  CI_DRM_7540: f7af732973915f9e52e939c0a8046f2eb8c6db63 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5343: e3664f8ce1f9152712b32e9bfa1e4ec93ffa5349 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15687: 634cda0e5b2f94cd6add0e09ba56df034c8f0078 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

634cda0e5b2f drm/i915: Use per object locking in execbuf on top of struct_mutex, v2.
e4af2a8a5e01 drm/i915: Parse command buffer earlier in eb_relocate(slow)
3b3becae13ec drm/i915: Separate lookup and pinning in execbuf.
092396daf708 drm/i915: Remove locking from i915_gem_object_prepare_read/write
6ad08d5f7b69 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
ebc0f514e06f drm/i915/gem: Extract transient execbuf flags from i915_vma
286cec44d90b drm/i915: Drop inspection of execbuf flags during evict

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15687/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
