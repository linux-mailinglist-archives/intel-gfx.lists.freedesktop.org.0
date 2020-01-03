Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EC312FB1B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 18:08:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 139256E20E;
	Fri,  3 Jan 2020 17:08:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B41DA6E1F9;
 Fri,  3 Jan 2020 17:08:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A92A9A0114;
 Fri,  3 Jan 2020 17:08:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 03 Jan 2020 17:08:34 -0000
Message-ID: <157807131466.20615.774827975092247514@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200103162953.783184-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200103162953.783184-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_nest_annotation_from_intel=5Fcontext=5Funpin_?=
 =?utf-8?b?KHJldjMp?=
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

Series: drm/i915: Remove nest annotation from intel_context_unpin (rev3)
URL   : https://patchwork.freedesktop.org/series/71157/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7674 -> Patchwork_15989
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15989 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15989, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15989:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_create@basic-files:
    - fi-byt-n2820:       NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-byt-n2820/igt@gem_ctx_create@basic-files.html
    - fi-hsw-4770:        [PASS][2] -> [DMESG-WARN][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-hsw-4770/igt@gem_ctx_create@basic-files.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-hsw-4770/igt@gem_ctx_create@basic-files.html
    - fi-ivb-3770:        [PASS][4] -> [DMESG-WARN][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-ivb-3770/igt@gem_ctx_create@basic-files.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-ivb-3770/igt@gem_ctx_create@basic-files.html
    - fi-hsw-peppy:       [PASS][6] -> [DMESG-WARN][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-hsw-peppy/igt@gem_ctx_create@basic-files.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-hsw-peppy/igt@gem_ctx_create@basic-files.html
    - fi-hsw-4770r:       NOTRUN -> [DMESG-WARN][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-hsw-4770r/igt@gem_ctx_create@basic-files.html
    - fi-byt-j1900:       [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-byt-j1900/igt@gem_ctx_create@basic-files.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-byt-j1900/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-x1275:       [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
    - fi-icl-u3:          [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-icl-u3/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-icl-u3/igt@gem_exec_gttfill@basic.html
    - fi-kbl-8809g:       [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
    - fi-icl-y:           [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-icl-y/igt@gem_exec_gttfill@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-icl-y/igt@gem_exec_gttfill@basic.html
    - fi-blb-e6850:       [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-blb-e6850/igt@gem_exec_gttfill@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-blb-e6850/igt@gem_exec_gttfill@basic.html
    - fi-kbl-7500u:       [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
    - fi-kbl-guc:         [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-kbl-guc/igt@gem_exec_gttfill@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-kbl-guc/igt@gem_exec_gttfill@basic.html
    - fi-icl-dsi:         [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-icl-dsi/igt@gem_exec_gttfill@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-icl-dsi/igt@gem_exec_gttfill@basic.html
    - fi-cml-u2:          [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-cml-u2/igt@gem_exec_gttfill@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-cml-u2/igt@gem_exec_gttfill@basic.html
    - fi-skl-6600u:       [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
    - fi-skl-lmem:        [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-skl-lmem/igt@gem_exec_gttfill@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-skl-lmem/igt@gem_exec_gttfill@basic.html
    - fi-cml-s:           [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-cml-s/igt@gem_exec_gttfill@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-cml-s/igt@gem_exec_gttfill@basic.html
    - fi-skl-6770hq:      [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-skl-6770hq/igt@gem_exec_gttfill@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-skl-6770hq/igt@gem_exec_gttfill@basic.html
    - fi-skl-6700k2:      [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-skl-6700k2/igt@gem_exec_gttfill@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-skl-6700k2/igt@gem_exec_gttfill@basic.html
    - fi-snb-2600:        [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-snb-2600/igt@gem_exec_gttfill@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-snb-2600/igt@gem_exec_gttfill@basic.html
    - fi-kbl-r:           [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-kbl-r/igt@gem_exec_gttfill@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-kbl-r/igt@gem_exec_gttfill@basic.html
    - fi-bdw-5557u:       [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
    - fi-skl-guc:         [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-skl-guc/igt@gem_exec_gttfill@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-skl-guc/igt@gem_exec_gttfill@basic.html
    - fi-pnv-d510:        [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
    - fi-cfl-8700k:       [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html
    - fi-whl-u:           [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-whl-u/igt@gem_exec_gttfill@basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-whl-u/igt@gem_exec_gttfill@basic.html
    - fi-icl-u2:          [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-icl-u2/igt@gem_exec_gttfill@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-icl-u2/igt@gem_exec_gttfill@basic.html
    - fi-snb-2520m:       [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-snb-2520m/igt@gem_exec_gttfill@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-snb-2520m/igt@gem_exec_gttfill@basic.html
    - fi-cfl-guc:         [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
    - fi-icl-guc:         [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-icl-guc/igt@gem_exec_gttfill@basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-icl-guc/igt@gem_exec_gttfill@basic.html
    - fi-ilk-650:         NOTRUN -> [DMESG-WARN][61]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-ilk-650/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live_evict:
    - fi-glk-dsi:         [PASS][62] -> [DMESG-WARN][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-glk-dsi/igt@i915_selftest@live_evict.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-glk-dsi/igt@i915_selftest@live_evict.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         [PASS][64] -> [DMESG-WARN][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-tgl-u/igt@gem_exec_gttfill@basic.html
    - {fi-ehl-1}:         [INCOMPLETE][66] -> [DMESG-WARN][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-ehl-1/igt@gem_exec_gttfill@basic.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-ehl-1/igt@gem_exec_gttfill@basic.html

  * igt@kms_busy@basic-flip-pipe-c:
    - {fi-ehl-1}:         NOTRUN -> [INCOMPLETE][68]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-ehl-1/igt@kms_busy@basic-flip-pipe-c.html

  
Known issues
------------

  Here are the changes found in Patchwork_15989 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][69] -> [DMESG-FAIL][70] ([i915#725])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_evict:
    - fi-bxt-dsi:         [PASS][71] -> [DMESG-WARN][72] ([i915#211])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-bxt-dsi/igt@i915_selftest@live_evict.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-bxt-dsi/igt@i915_selftest@live_evict.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-4770:        [PASS][73] -> [DMESG-FAIL][74] ([i915#722])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-hsw-4770/igt@i915_selftest@live_gem_contexts.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-hsw-4770/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-u2:          [PASS][75] -> [INCOMPLETE][76] ([fdo#108569] / [i915#140])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-icl-u2/igt@i915_selftest@live_hangcheck.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-icl-u2/igt@i915_selftest@live_hangcheck.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-icl-dsi:         [PASS][77] -> [INCOMPLETE][78] ([i915#140])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-icl-dsi/igt@kms_frontbuffer_tracking@basic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-icl-dsi/igt@kms_frontbuffer_tracking@basic.html
    - fi-hsw-peppy:       [PASS][79] -> [DMESG-WARN][80] ([i915#44])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@amdgpu/amd_basic@userptr:
    - fi-kbl-8809g:       [DMESG-WARN][81] ([i915#858]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-kbl-8809g/igt@amdgpu/amd_basic@userptr.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-kbl-8809g/igt@amdgpu/amd_basic@userptr.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [INCOMPLETE][83] ([i915#671]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6770hq:      [INCOMPLETE][85] ([i915#671]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-7500u:       [INCOMPLETE][87] ([i915#879]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#211]: https://gitlab.freedesktop.org/drm/intel/issues/211
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#858]: https://gitlab.freedesktop.org/drm/intel/issues/858
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879


Participating hosts (46 -> 43)
------------------------------

  Additional (4): fi-hsw-4770r fi-byt-n2820 fi-ilk-650 fi-bsw-n3050 
  Missing    (7): fi-hsw-4200u fi-bwr-2160 fi-ctg-p8600 fi-bsw-kefka fi-tgl-y fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7674 -> Patchwork_15989

  CI-20190529: 20190529
  CI_DRM_7674: 6cdc2db5a5641dd00f47fcc80b83bb8adb777797 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15989: f0846ffe75e7e1b0773859ddd45891009570efa7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f0846ffe75e7 drm/i915: Remove nest annotation from intel_context_unpin

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15989/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
