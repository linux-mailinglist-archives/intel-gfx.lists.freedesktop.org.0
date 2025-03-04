Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C91DA4E332
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 16:28:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01FA910E612;
	Tue,  4 Mar 2025 15:28:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A01510E612;
 Tue,  4 Mar 2025 15:28:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7377303009757829238=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_i915/selftest/igt=5Fmmap?=
 =?utf-8?q?=3A_let_mmap_tests_run_in_kthread_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mikolaj Wasiak" <mikolaj.wasiak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 04 Mar 2025 15:28:36 -0000
Message-ID: <174110211622.642865.5360870821236954893@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <2w6pt2hnemndwmanwhyn3keexa6vtha7rmo6rqoerkmyxhbrh2@ls7lndjpia6z>
In-Reply-To: <2w6pt2hnemndwmanwhyn3keexa6vtha7rmo6rqoerkmyxhbrh2@ls7lndjpia6z>
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

--===============7377303009757829238==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915/selftest/igt_mmap: let mmap tests run in kthread (rev3)
URL   : https://patchwork.freedesktop.org/series/145391/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16220 -> Patchwork_145391v3
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_145391v3 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_145391v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/index.html

Participating hosts (41 -> 43)
------------------------------

  Additional (4): bat-apl-1 bat-jsl-1 fi-glk-j4005 fi-skl-6600u 
  Missing    (2): fi-snb-2520m fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_145391v3:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [ABORT][1] ([i915#13413]) -> [DMESG-FAIL][2] +1 other test dmesg-fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-atsm-1/igt@i915_selftest@live@mman.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-atsm-1/igt@i915_selftest@live@mman.html

  
Known issues
------------

  Here are the changes found in Patchwork_145391v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-jsl-1:          NOTRUN -> [SKIP][3] ([i915#9318])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-jsl-1/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@info:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][4] ([i915#1849])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-kbl-8809g/igt@fbdev@info.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][5] ([i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
    - bat-apl-1:          NOTRUN -> [SKIP][6] +23 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-apl-1/igt@gem_huc_copy@huc-copy.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][7] ([i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
    - bat-jsl-1:          NOTRUN -> [SKIP][8] ([i915#2190])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-jsl-1/igt@gem_huc_copy@huc-copy.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][9] ([i915#2190])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-jsl-1:          NOTRUN -> [SKIP][10] ([i915#4613]) +3 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-jsl-1/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][11] ([i915#4613]) +3 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-glk-j4005/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][12] ([i915#4613]) +3 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-kbl-8809g/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-skl-6600u:       NOTRUN -> [SKIP][13] ([i915#4613]) +3 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][14] -> [FAIL][15] ([i915#13633])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-7:          [PASS][16] -> [FAIL][17] ([i915#13633])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][18] -> [DMESG-FAIL][19] ([i915#12061])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-jsl-1:          NOTRUN -> [SKIP][20] ([i915#4103]) +1 other test skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][21] +34 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][22] +9 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-skl-6600u/igt@kms_dsc@dsc-basic.html
    - bat-jsl-1:          NOTRUN -> [SKIP][23] ([i915#3555] / [i915#9886])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-jsl-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-jsl-1:          NOTRUN -> [SKIP][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][25] -> [SKIP][26] ([i915#9197]) +3 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_psr@psr-primary-page-flip:
    - fi-glk-j4005:       NOTRUN -> [SKIP][27] +10 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-glk-j4005/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-jsl-1:          NOTRUN -> [SKIP][28] ([i915#3555])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-twl-2:          [INCOMPLETE][29] ([i915#12445] / [i915#13761] / [i915#13776]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-twl-2/igt@i915_selftest@live.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-twl-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@dmabuf:
    - bat-arlh-3:         [INCOMPLETE][31] ([i915#12445]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-arlh-3/igt@i915_selftest@live@dmabuf.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-arlh-3/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@reset:
    - bat-twl-2:          [INCOMPLETE][33] ([i915#12445]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-twl-2/igt@i915_selftest@live@reset.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-twl-2/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [DMESG-FAIL][35] ([i915#12061]) -> [PASS][36] +1 other test pass
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-arlh-3:         [INCOMPLETE][37] ([i915#12445]) -> [DMESG-FAIL][38] ([i915#12061] / [i915#12435])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-arlh-3/igt@i915_selftest@live.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-arlh-3/igt@i915_selftest@live.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12445]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445
  [i915#13413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13413
  [i915#13633]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633
  [i915#13761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13761
  [i915#13776]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13776
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_16220 -> Patchwork_145391v3

  CI-20190529: 20190529
  CI_DRM_16220: 1cf56e26a93292ca26fbf891368b75a67e8700dc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8257: 8257
  Patchwork_145391v3: 1cf56e26a93292ca26fbf891368b75a67e8700dc @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/index.html

--===============7377303009757829238==
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
<tr><td><b>Series:</b></td><td>i915/selftest/igt_mmap: let mmap tests run in kthread (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/145391/">https://patchwork.freedesktop.org/series/145391/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16220 -&gt; Patchwork_145391v3</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_145391v3 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_145391v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/index.html</p>
<h2>Participating hosts (41 -&gt; 43)</h2>
<p>Additional (4): bat-apl-1 bat-jsl-1 fi-glk-j4005 fi-skl-6600u <br />
  Missing    (2): fi-snb-2520m fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_145391v3:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@mman:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-atsm-1/igt@i915_selftest@live@mman.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13413">i915#13413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_145391v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-jsl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-kbl-8809g/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
<li>bat-apl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-apl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> +23 other tests skip</li>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-jsl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-jsl-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-glk-j4005/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-kbl-8809g/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633">i915#13633</a>)</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633">i915#13633</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html">SKIP</a> +34 other tests skip</li>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-skl-6600u/igt@kms_dsc@dsc-basic.html">SKIP</a> +9 other tests skip</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/fi-glk-j4005/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-twl-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13761">i915#13761</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13776">i915#13776</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-twl-2/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-arlh-3/igt@i915_selftest@live@dmabuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-arlh-3/igt@i915_selftest@live@dmabuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-twl-2/igt@i915_selftest@live@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-twl-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16220/bat-arlh-3/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145391v3/bat-arlh-3/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435">i915#12435</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16220 -&gt; Patchwork_145391v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16220: 1cf56e26a93292ca26fbf891368b75a67e8700dc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8257: 8257<br />
  Patchwork_145391v3: 1cf56e26a93292ca26fbf891368b75a67e8700dc @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7377303009757829238==--
