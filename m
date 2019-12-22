Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E40128FCB
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 21:15:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29CC16E077;
	Sun, 22 Dec 2019 20:15:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 180086E073;
 Sun, 22 Dec 2019 20:15:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 06E16A0019;
 Sun, 22 Dec 2019 20:15:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 22 Dec 2019 20:15:41 -0000
Message-ID: <157704574199.8698.1855840991350280934@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191222190719.1914605-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191222190719.1914605-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Tidy_up_checking_active_timelines_during_retirement?=
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

Series: drm/i915/gt: Tidy up checking active timelines during retirement (rev3)
URL   : https://patchwork.freedesktop.org/series/71266/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7623 -> Patchwork_15884
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15884 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15884, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15884:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-x1275:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
    - fi-icl-u3:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u3/igt@gem_exec_gttfill@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-icl-u3/igt@gem_exec_gttfill@basic.html
    - fi-hsw-4770r:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770r/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-hsw-4770r/igt@gem_exec_gttfill@basic.html
    - fi-kbl-8809g:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
    - fi-icl-y:           [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-y/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-icl-y/igt@gem_exec_gttfill@basic.html
    - fi-kbl-r:           [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-r/igt@gem_exec_gttfill@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-kbl-r/igt@gem_exec_gttfill@basic.html
    - fi-bdw-5557u:       [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
    - fi-skl-guc:         NOTRUN -> [DMESG-WARN][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-skl-guc/igt@gem_exec_gttfill@basic.html
    - fi-hsw-4770:        [PASS][16] -> [DMESG-WARN][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770/igt@gem_exec_gttfill@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-hsw-4770/igt@gem_exec_gttfill@basic.html
    - fi-kbl-guc:         [PASS][18] -> [DMESG-WARN][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-guc/igt@gem_exec_gttfill@basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-kbl-guc/igt@gem_exec_gttfill@basic.html
    - fi-cml-u2:          [PASS][20] -> [DMESG-WARN][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cml-u2/igt@gem_exec_gttfill@basic.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-cml-u2/igt@gem_exec_gttfill@basic.html
    - fi-cfl-8700k:       [PASS][22] -> [DMESG-WARN][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html
    - fi-whl-u:           NOTRUN -> [DMESG-WARN][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-whl-u/igt@gem_exec_gttfill@basic.html
    - fi-icl-u2:          [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@gem_exec_gttfill@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-icl-u2/igt@gem_exec_gttfill@basic.html
    - fi-byt-j1900:       [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-byt-j1900/igt@gem_exec_gttfill@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-byt-j1900/igt@gem_exec_gttfill@basic.html
    - fi-cml-s:           [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cml-s/igt@gem_exec_gttfill@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-cml-s/igt@gem_exec_gttfill@basic.html
    - fi-byt-n2820:       NOTRUN -> [DMESG-WARN][31]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-byt-n2820/igt@gem_exec_gttfill@basic.html
    - fi-cfl-guc:         [PASS][32] -> [DMESG-WARN][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
    - fi-icl-guc:         [PASS][34] -> [DMESG-WARN][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-guc/igt@gem_exec_gttfill@basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-icl-guc/igt@gem_exec_gttfill@basic.html
    - fi-skl-6700k2:      [PASS][36] -> [DMESG-WARN][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-skl-6700k2/igt@gem_exec_gttfill@basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-skl-6700k2/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload:
    - fi-ivb-3770:        [PASS][38] -> [FAIL][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-ivb-3770/igt@i915_module_load@reload.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-ivb-3770/igt@i915_module_load@reload.html

  * igt@i915_module_load@reload-no-display:
    - fi-ivb-3770:        [PASS][40] -> [DMESG-WARN][41] +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-ivb-3770/igt@i915_module_load@reload-no-display.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-ivb-3770/igt@i915_module_load@reload-no-display.html

  * igt@i915_selftest@live_active:
    - fi-bwr-2160:        NOTRUN -> [FAIL][42] +10 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-bwr-2160/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_coherency:
    - fi-hsw-4770:        [PASS][43] -> [FAIL][44] +14 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770/igt@i915_selftest@live_coherency.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-hsw-4770/igt@i915_selftest@live_coherency.html

  * igt@i915_selftest@live_dmabuf:
    - fi-hsw-4770r:       [PASS][45] -> [FAIL][46] +27 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770r/igt@i915_selftest@live_dmabuf.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-hsw-4770r/igt@i915_selftest@live_dmabuf.html

  * igt@runner@aborted:
    - fi-ivb-3770:        NOTRUN -> [FAIL][47]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-ivb-3770/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         NOTRUN -> [DMESG-WARN][48]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_15884 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [PASS][49] -> [FAIL][50] ([fdo#103375])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-u2:          [PASS][51] -> [FAIL][52] ([fdo#111550])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_pm_rpm@module-reload:
    - fi-hsw-4770r:       [PASS][53] -> [SKIP][54] ([fdo#109271])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770r/igt@i915_pm_rpm@module-reload.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-hsw-4770r/igt@i915_pm_rpm@module-reload.html
    - fi-hsw-4770:        [PASS][55] -> [SKIP][56] ([fdo#109271])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][57] -> [DMESG-FAIL][58] ([i915#553] / [i915#725])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-bxt-dsi:         [PASS][59] -> [DMESG-WARN][60] ([i915#211])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-bxt-dsi/igt@i915_selftest@live_gem_contexts.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-bxt-dsi/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@amdgpu/amd_basic@userptr:
    - fi-kbl-8809g:       [DMESG-WARN][61] ([i915#858]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-8809g/igt@amdgpu/amd_basic@userptr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-kbl-8809g/igt@amdgpu/amd_basic@userptr.html

  * igt@gem_close_race@basic-threads:
    - {fi-tgl-guc}:       [INCOMPLETE][63] ([i915#435]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-tgl-guc/igt@gem_close_race@basic-threads.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-tgl-guc/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_create@basic:
    - {fi-tgl-u}:         [INCOMPLETE][65] ([fdo#111736]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-tgl-u/igt@gem_exec_create@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-tgl-u/igt@gem_exec_create@basic.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [INCOMPLETE][67] ([i915#505]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-u2:          [INCOMPLETE][69] ([fdo#112175] / [i915#140]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@i915_selftest@live_execlists.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-icl-u2/igt@i915_selftest@live_execlists.html
    - fi-kbl-soraka:      [DMESG-FAIL][71] -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
    - fi-kbl-r:           [INCOMPLETE][73] ([fdo#112175] / [fdo#112259]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-r/igt@i915_selftest@live_execlists.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-kbl-r/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [INCOMPLETE][75] ([i915#45]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [INCOMPLETE][77] -> [DMESG-WARN][78] ([i915#62] / [i915#92])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][79] ([IGT#4] / [i915#263]) -> [FAIL][80] ([fdo#103375])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-x1275:       [DMESG-WARN][81] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][82] ([i915#62] / [i915#92]) +7 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][83] ([i915#62] / [i915#92]) -> [DMESG-WARN][84] ([i915#62] / [i915#92] / [i915#95])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111550]: https://bugs.freedesktop.org/show_bug.cgi?id=111550
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#211]: https://gitlab.freedesktop.org/drm/intel/issues/211
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#858]: https://gitlab.freedesktop.org/drm/intel/issues/858
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (40 -> 36)
------------------------------

  Additional (4): fi-skl-guc fi-whl-u fi-byt-n2820 fi-bwr-2160 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7623 -> Patchwork_15884

  CI-20190529: 20190529
  CI_DRM_7623: 08c8f85caff9f010e7c66e79a2b6fa8a4a230fc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15884: 57029e044b3feff27d9a257968dbc9f63b17e3e4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

57029e044b3f drm/i915/gt: Tidy up checking active timelines during retirement

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15884/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
