Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC7BA11A66
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 08:07:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CBFE10E4DB;
	Wed, 15 Jan 2025 07:07:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7807B10E4DB;
 Wed, 15 Jan 2025 07:07:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4489614315953404308=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/dmc=5Fwl=3A_Trac?=
 =?utf-8?q?k_pipe_interrupt_registers_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jan 2025 07:07:08 -0000
Message-ID: <173692482848.3849170.13347677169814373200@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250113204306.112266-1-gustavo.sousa@intel.com>
In-Reply-To: <20250113204306.112266-1-gustavo.sousa@intel.com>
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

--===============4489614315953404308==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dmc_wl: Track pipe interrupt registers (rev3)
URL   : https://patchwork.freedesktop.org/series/143104/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15950 -> Patchwork_143104v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/index.html

Participating hosts (44 -> 42)
------------------------------

  Missing    (2): fi-snb-2520m fi-skl-6600u 

Known issues
------------

  Here are the changes found in Patchwork_143104v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][1] ([i915#12904]) +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/fi-pnv-d510/igt@dmabuf@all-tests.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][2] -> [FAIL][3] ([i915#13401])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-dg2-11/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-jsl-3:          [PASS][4] -> [INCOMPLETE][5] ([i915#13241])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-jsl-3/igt@i915_selftest@live.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-jsl-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-twl-2:          [PASS][6] -> [ABORT][7] ([i915#9413])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-twl-2/igt@i915_selftest@live@gt_lrc.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-twl-2/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@memory_region:
    - bat-jsl-3:          [PASS][8] -> [INCOMPLETE][9] ([i915#12445])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-jsl-3/igt@i915_selftest@live@memory_region.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-jsl-3/igt@i915_selftest@live@memory_region.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][10] -> [SKIP][11] ([i915#9197]) +2 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - fi-pnv-d510:        NOTRUN -> [SKIP][12] +36 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-rpls-4:         [DMESG-WARN][13] ([i915#13400]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [INCOMPLETE][15] ([i915#12904]) -> [PASS][16] +1 other test pass
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-apl-1/igt@dmabuf@all-tests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@i915_module_load@load:
    - fi-pnv-d510:        [ABORT][17] ([i915#13203]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/fi-pnv-d510/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/fi-pnv-d510/igt@i915_module_load@load.html

  * igt@i915_selftest@live:
    - bat-adlp-6:         [ABORT][19] ([i915#13399]) -> [PASS][20] +1 other test pass
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-adlp-6/igt@i915_selftest@live.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-adlp-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [DMESG-FAIL][21] ([i915#13393]) -> [PASS][22] +1 other test pass
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-arls-5:         [DMESG-FAIL][23] ([i915#13393]) -> [PASS][24] +1 other test pass
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-arls-5/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-twl-2:          [ABORT][25] ([i915#12919]) -> [ABORT][26] ([i915#9413])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-twl-2/igt@i915_selftest@live.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-twl-2/igt@i915_selftest@live.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12445]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203
  [i915#13241]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13241
  [i915#13393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393
  [i915#13399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399
  [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15950 -> Patchwork_143104v3

  CI-20190529: 20190529
  CI_DRM_15950: 3deaca65541212fd09c8832090815813e6128caa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8189: e036190dc1730ecb94cb393f88378e734db4b1d6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_143104v3: 3deaca65541212fd09c8832090815813e6128caa @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/index.html

--===============4489614315953404308==
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
<tr><td><b>Series:</b></td><td>drm/i915/dmc_wl: Track pipe interrupt registers (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/143104/">https://patchwork.freedesktop.org/series/143104/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15950 -&gt; Patchwork_143104v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/index.html</p>
<h2>Participating hosts (44 -&gt; 42)</h2>
<p>Missing    (2): fi-snb-2520m fi-skl-6600u </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_143104v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/fi-pnv-d510/igt@dmabuf@all-tests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-jsl-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-jsl-3/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13241">i915#13241</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-twl-2/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-twl-2/igt@i915_selftest@live@gt_lrc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@memory_region:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-jsl-3/igt@i915_selftest@live@memory_region.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-jsl-3/igt@i915_selftest@live@memory_region.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> +36 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400">i915#13400</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-apl-1/igt@dmabuf@all-tests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-apl-1/igt@dmabuf@all-tests.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/fi-pnv-d510/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203">i915#13203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/fi-pnv-d510/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-adlp-6/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399">i915#13399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-adlp-6/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393">i915#13393</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393">i915#13393</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/bat-twl-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919">i915#12919</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/bat-twl-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15950 -&gt; Patchwork_143104v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15950: 3deaca65541212fd09c8832090815813e6128caa @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8189: e036190dc1730ecb94cb393f88378e734db4b1d6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_143104v3: 3deaca65541212fd09c8832090815813e6128caa @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4489614315953404308==--
