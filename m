Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DDD128FD8
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 21:43:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4A1E6E0C6;
	Sun, 22 Dec 2019 20:43:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3197E6E0B6;
 Sun, 22 Dec 2019 20:43:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2A68AA01BB;
 Sun, 22 Dec 2019 20:43:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 22 Dec 2019 20:43:02 -0000
Message-ID: <157704738215.8700.588319653122113592@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191222193811.1941891-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191222193811.1941891-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Tidy_up_checking_active_timelines_during_retirement?=
 =?utf-8?q?_=28rev4=29?=
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

Series: drm/i915/gt: Tidy up checking active timelines during retirement (rev4)
URL   : https://patchwork.freedesktop.org/series/71266/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7623 -> Patchwork_15885
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15885 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15885, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15885:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-x1275:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
    - fi-icl-u3:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u3/igt@gem_exec_gttfill@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-icl-u3/igt@gem_exec_gttfill@basic.html
    - fi-hsw-4770r:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770r/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-hsw-4770r/igt@gem_exec_gttfill@basic.html
    - fi-kbl-8809g:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
    - fi-icl-y:           [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-y/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-icl-y/igt@gem_exec_gttfill@basic.html
    - fi-kbl-r:           [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-r/igt@gem_exec_gttfill@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-kbl-r/igt@gem_exec_gttfill@basic.html
    - fi-bdw-5557u:       [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
    - fi-skl-guc:         NOTRUN -> [DMESG-WARN][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-skl-guc/igt@gem_exec_gttfill@basic.html
    - fi-hsw-4770:        [PASS][16] -> [DMESG-WARN][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770/igt@gem_exec_gttfill@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-hsw-4770/igt@gem_exec_gttfill@basic.html
    - fi-kbl-7500u:       NOTRUN -> [DMESG-WARN][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
    - fi-kbl-guc:         [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-guc/igt@gem_exec_gttfill@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-kbl-guc/igt@gem_exec_gttfill@basic.html
    - fi-cml-u2:          [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cml-u2/igt@gem_exec_gttfill@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-cml-u2/igt@gem_exec_gttfill@basic.html
    - fi-cfl-8700k:       [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html
    - fi-whl-u:           NOTRUN -> [DMESG-WARN][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-whl-u/igt@gem_exec_gttfill@basic.html
    - fi-skl-6600u:       NOTRUN -> [DMESG-WARN][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
    - fi-ivb-3770:        [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-ivb-3770/igt@gem_exec_gttfill@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-ivb-3770/igt@gem_exec_gttfill@basic.html
    - fi-icl-u2:          [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@gem_exec_gttfill@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-icl-u2/igt@gem_exec_gttfill@basic.html
    - fi-byt-j1900:       [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-byt-j1900/igt@gem_exec_gttfill@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-byt-j1900/igt@gem_exec_gttfill@basic.html
    - fi-skl-lmem:        NOTRUN -> [DMESG-WARN][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-skl-lmem/igt@gem_exec_gttfill@basic.html
    - fi-cml-s:           [PASS][34] -> [DMESG-WARN][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cml-s/igt@gem_exec_gttfill@basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-cml-s/igt@gem_exec_gttfill@basic.html
    - fi-byt-n2820:       NOTRUN -> [DMESG-WARN][36]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-byt-n2820/igt@gem_exec_gttfill@basic.html
    - fi-cfl-guc:         [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
    - fi-icl-guc:         [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-guc/igt@gem_exec_gttfill@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-icl-guc/igt@gem_exec_gttfill@basic.html
    - fi-skl-6700k2:      [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-skl-6700k2/igt@gem_exec_gttfill@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-skl-6700k2/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live_dmabuf:
    - fi-hsw-4770r:       [PASS][43] -> [FAIL][44] +23 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770r/igt@i915_selftest@live_dmabuf.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-hsw-4770r/igt@i915_selftest@live_dmabuf.html

  * igt@i915_selftest@live_evict:
    - fi-ivb-3770:        [PASS][45] -> [FAIL][46] +21 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-ivb-3770/igt@i915_selftest@live_evict.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-ivb-3770/igt@i915_selftest@live_evict.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-glk-dsi:         [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-glk-dsi/igt@i915_selftest@live_gem_contexts.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-glk-dsi/igt@i915_selftest@live_gem_contexts.html
    - fi-hsw-peppy:       NOTRUN -> [DMESG-WARN][49]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_hugepages:
    - fi-bwr-2160:        NOTRUN -> [FAIL][50]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-bwr-2160/igt@i915_selftest@live_hugepages.html

  * igt@i915_selftest@live_reset:
    - fi-hsw-4770:        [PASS][51] -> [FAIL][52] +12 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770/igt@i915_selftest@live_reset.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-hsw-4770/igt@i915_selftest@live_reset.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][53] ([i915#725]) -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-ivb-3770/igt@i915_selftest@live_blt.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         NOTRUN -> [DMESG-WARN][55]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_15885 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [PASS][56] -> [FAIL][57] ([fdo#103375])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-u2:          [PASS][58] -> [FAIL][59] ([fdo#111550])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_pm_rpm@module-reload:
    - fi-hsw-4770r:       [PASS][60] -> [SKIP][61] ([fdo#109271])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770r/igt@i915_pm_rpm@module-reload.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-hsw-4770r/igt@i915_pm_rpm@module-reload.html
    - fi-hsw-4770:        [PASS][62] -> [SKIP][63] ([fdo#109271])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-bxt-dsi:         [PASS][64] -> [DMESG-WARN][65] ([i915#211])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-bxt-dsi/igt@i915_selftest@live_gem_contexts.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-bxt-dsi/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-guc:         [PASS][66] -> [INCOMPLETE][67] ([fdo#108569] / [i915#140])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-guc/igt@i915_selftest@live_hangcheck.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-icl-guc/igt@i915_selftest@live_hangcheck.html

  
#### Possible fixes ####

  * igt@amdgpu/amd_basic@userptr:
    - fi-kbl-8809g:       [DMESG-WARN][68] ([i915#858]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-8809g/igt@amdgpu/amd_basic@userptr.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-kbl-8809g/igt@amdgpu/amd_basic@userptr.html

  * igt@gem_exec_create@basic:
    - {fi-tgl-u}:         [INCOMPLETE][70] ([fdo#111736]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-tgl-u/igt@gem_exec_create@basic.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-tgl-u/igt@gem_exec_create@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [DMESG-WARN][72] ([fdo#111764]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [INCOMPLETE][74] ([i915#505]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-u2:          [INCOMPLETE][76] ([fdo#112175] / [i915#140]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@i915_selftest@live_execlists.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-icl-u2/igt@i915_selftest@live_execlists.html
    - fi-kbl-soraka:      [DMESG-FAIL][78] -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
    - fi-kbl-r:           [INCOMPLETE][80] ([fdo#112175] / [fdo#112259]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-r/igt@i915_selftest@live_execlists.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-kbl-r/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [INCOMPLETE][82] ([i915#45]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [INCOMPLETE][84] -> [DMESG-WARN][85] ([i915#62] / [i915#92])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][86] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][87] ([i915#62] / [i915#92]) +5 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-a.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][88] ([IGT#4] / [i915#263]) -> [FAIL][89] ([fdo#103375])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][90] ([i915#62] / [i915#92]) -> [DMESG-WARN][91] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@runner@aborted:
    - fi-cml-s:           [FAIL][92] ([fdo#111764] / [i915#577]) -> [FAIL][93] ([i915#577])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cml-s/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/fi-cml-s/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111550]: https://bugs.freedesktop.org/show_bug.cgi?id=111550
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#211]: https://gitlab.freedesktop.org/drm/intel/issues/211
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#577]: https://gitlab.freedesktop.org/drm/intel/issues/577
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#858]: https://gitlab.freedesktop.org/drm/intel/issues/858
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (40 -> 43)
------------------------------

  Additional (9): fi-hsw-peppy fi-skl-guc fi-bwr-2160 fi-snb-2520m fi-kbl-7500u fi-whl-u fi-skl-lmem fi-byt-n2820 fi-skl-6600u 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7623 -> Patchwork_15885

  CI-20190529: 20190529
  CI_DRM_7623: 08c8f85caff9f010e7c66e79a2b6fa8a4a230fc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15885: 9d3defe234d52aaa235eb200fd73c3634ea8e5cf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9d3defe234d5 drm/i915/gt: Tidy up checking active timelines during retirement

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15885/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
