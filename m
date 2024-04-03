Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 839F3896E87
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:55:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B6D0112A38;
	Wed,  3 Apr 2024 11:55:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEFFD112A38;
 Wed,  3 Apr 2024 11:55:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6125972925339420358=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Enable_dislay_support_for_B?=
 =?utf-8?q?attlemage_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Balasubramani Vivekanandan" <balasubramani.vivekanandan@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 03 Apr 2024 11:55:19 -0000
Message-ID: <171214531971.1172471.6578102082768086368@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
In-Reply-To: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
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

--===============6125972925339420358==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable dislay support for Battlemage (rev2)
URL   : https://patchwork.freedesktop.org/series/131984/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14520 -> Patchwork_131984v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/index.html

Participating hosts (39 -> 30)
------------------------------

  Missing    (9): bat-arls-4 fi-snb-2520m fi-glk-j4005 bat-atsm-1 fi-cfl-8109u bat-dg2-11 fi-bsw-nick bat-jsl-1 bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_131984v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-9:          [PASS][1] -> [FAIL][2] ([i915#10378])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14520/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
    - bat-dg2-8:          [PASS][3] -> [FAIL][4] ([i915#10378])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14520/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-adlm-1:         NOTRUN -> [SKIP][5] ([i915#4613]) +3 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_pm_rps@basic-api:
    - bat-adlm-1:         NOTRUN -> [SKIP][6] ([i915#6621])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@i915_pm_rps@basic-api.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-adlm-1:         NOTRUN -> [SKIP][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-adlm-1:         NOTRUN -> [SKIP][8] ([i915#1849] / [i915#4342])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - bat-adlm-1:         NOTRUN -> [SKIP][9] ([i915#9875] / [i915#9900]) +6 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-adlm-1:         NOTRUN -> [SKIP][10] ([i915#5354])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - bat-adlm-1:         NOTRUN -> [SKIP][11] ([i915#1072] / [i915#9673] / [i915#9732]) +3 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-adlm-1:         NOTRUN -> [SKIP][12] ([i915#3555])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-adlm-1:         NOTRUN -> [SKIP][13] ([i915#3708] / [i915#9900])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-write:
    - bat-adlm-1:         NOTRUN -> [SKIP][14] ([i915#3708]) +2 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - {bat-mtlp-9}:       [WARN][15] ([i915#10436]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14520/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - bat-rpls-3:         [DMESG-WARN][17] ([i915#5591]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14520/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-rpls-3/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#10436]: https://gitlab.freedesktop.org/drm/intel/issues/10436
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9875]: https://gitlab.freedesktop.org/drm/intel/issues/9875
  [i915#9900]: https://gitlab.freedesktop.org/drm/intel/issues/9900


Build changes
-------------

  * Linux: CI_DRM_14520 -> Patchwork_131984v2

  CI-20190529: 20190529
  CI_DRM_14520: 23e6199ddb938adf30f3174971cd36160b8f0ade @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7797: e88ebc17ec12b503aab380b08c1213af9cc7a97c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131984v2: 23e6199ddb938adf30f3174971cd36160b8f0ade @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4ff3db4ed8c1 drm/xe/bmg: Enable the display support
e69341c4b894 drm/i915/display: perform transient flush
3c8d78f26025 drm/xe/device: implement transient flush
2f890f740e2d drm/xe/gt_print: add xe_gt_err_once()
5041e5e64b5a drm/i915/xe2hpd: Set maximum DP rate to UHBR13.5
62518c712575 drm/i915/bmg: BMG should re-use MTL's south display logic
e797b1751dac drm/i915/xe2hpd: Do not program MBUS_DBOX BW credits
0b7b2915da83 drm/i915/display: Enable RM timeout detection
dd9abbff34f3 drm/i915/xe2hpd: Add max memory bandwidth algorithm
e4c0bac1c385 drm/xe/xe2hpd: Define a new DRAM type INTEL_DRAM_GDDR
dcf3b7c48faf drm/xe/display: Lane reversal requires writes to both context lanes
957cc4dc737d drm/i915/xe2hpd: Add missing chicken bit register programming
d1ad3a0bec7a drm/i915/xe2hpd: Add display info
dcb20dea7d71 drm/i915/xe2hpd: update pll values in sync with Bspec
e4ccd3ff10b3 drm/i915/xe2hpd: Add support for eDP PLL configuration
fff6e736f2ac drm/i915/xe2hpd: Add new C20 PLL register address
f86b2ba7fbe8 drm/i915/xe2hpd: Properly disable power in port A
82796f452e15 drm/i915/bmg: Extend DG2 tc check to future
4cecdb06e2ec Revert "drm/i915/dgfx: DGFX uses direct VBT pin mapping"
e430451e09da drm/i915/xe2hpd: Initial cdclk table
ed1fc2916af9 drm/i915/xe2: Skip CCS modifiers for Xe2 platforms
4f9fcbb557a2 drm/i915/bmg: Define IS_BATTLEMAGE macro
fcdf063db61f drm/xe/bmg: Define IS_BATTLEMAGE macro
9f50c01d575f drm/xe/bmg: Add BMG platform definition
a4133968d1b8 drm/i915/display: Prepare to handle new C20 PLL register address

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/index.html

--===============6125972925339420358==
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
<tr><td><b>Series:</b></td><td>Enable dislay support for Battlemage (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131984/">https://patchwork.freedesktop.org/series/131984/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14520 -&gt; Patchwork_131984v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/index.html</p>
<h2>Participating hosts (39 -&gt; 30)</h2>
<p>Missing    (9): bat-arls-4 fi-snb-2520m fi-glk-j4005 bat-atsm-1 fi-cfl-8109u bat-dg2-11 fi-bsw-nick bat-jsl-1 bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131984v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14520/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14520/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4342">i915#4342</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9875">i915#9875</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9900">i915#9900</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9900">i915#9900</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-adlm-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14520/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10436">i915#10436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-rpls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14520/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131984v2/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14520 -&gt; Patchwork_131984v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14520: 23e6199ddb938adf30f3174971cd36160b8f0ade @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7797: e88ebc17ec12b503aab380b08c1213af9cc7a97c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131984v2: 23e6199ddb938adf30f3174971cd36160b8f0ade @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4ff3db4ed8c1 drm/xe/bmg: Enable the display support<br />
e69341c4b894 drm/i915/display: perform transient flush<br />
3c8d78f26025 drm/xe/device: implement transient flush<br />
2f890f740e2d drm/xe/gt_print: add xe_gt_err_once()<br />
5041e5e64b5a drm/i915/xe2hpd: Set maximum DP rate to UHBR13.5<br />
62518c712575 drm/i915/bmg: BMG should re-use MTL's south display logic<br />
e797b1751dac drm/i915/xe2hpd: Do not program MBUS_DBOX BW credits<br />
0b7b2915da83 drm/i915/display: Enable RM timeout detection<br />
dd9abbff34f3 drm/i915/xe2hpd: Add max memory bandwidth algorithm<br />
e4c0bac1c385 drm/xe/xe2hpd: Define a new DRAM type INTEL_DRAM_GDDR<br />
dcf3b7c48faf drm/xe/display: Lane reversal requires writes to both context lanes<br />
957cc4dc737d drm/i915/xe2hpd: Add missing chicken bit register programming<br />
d1ad3a0bec7a drm/i915/xe2hpd: Add display info<br />
dcb20dea7d71 drm/i915/xe2hpd: update pll values in sync with Bspec<br />
e4ccd3ff10b3 drm/i915/xe2hpd: Add support for eDP PLL configuration<br />
fff6e736f2ac drm/i915/xe2hpd: Add new C20 PLL register address<br />
f86b2ba7fbe8 drm/i915/xe2hpd: Properly disable power in port A<br />
82796f452e15 drm/i915/bmg: Extend DG2 tc check to future<br />
4cecdb06e2ec Revert "drm/i915/dgfx: DGFX uses direct VBT pin mapping"<br />
e430451e09da drm/i915/xe2hpd: Initial cdclk table<br />
ed1fc2916af9 drm/i915/xe2: Skip CCS modifiers for Xe2 platforms<br />
4f9fcbb557a2 drm/i915/bmg: Define IS_BATTLEMAGE macro<br />
fcdf063db61f drm/xe/bmg: Define IS_BATTLEMAGE macro<br />
9f50c01d575f drm/xe/bmg: Add BMG platform definition<br />
a4133968d1b8 drm/i915/display: Prepare to handle new C20 PLL register address</p>

</body>
</html>

--===============6125972925339420358==--
