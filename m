Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A67C369A3A3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 02:55:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F53610E190;
	Fri, 17 Feb 2023 01:55:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 18ADC10E190;
 Fri, 17 Feb 2023 01:55:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07D49A7DFF;
 Fri, 17 Feb 2023 01:55:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5224030342346529397=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Fri, 17 Feb 2023 01:55:40 -0000
Message-ID: <167659894002.7013.3906496014121772264@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_OAM_support_for_MTL_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5224030342346529397==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add OAM support for MTL (rev2)
URL   : https://patchwork.freedesktop.org/series/114033/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12754 -> Patchwork_114033v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/index.html

Participating hosts (40 -> 38)
------------------------------

  Missing    (2): bat-dg1-6 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_114033v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         NOTRUN -> [DMESG-FAIL][1] ([i915#7699])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-dg2-11:         NOTRUN -> [SKIP][2] ([i915#7828])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/bat-dg2-11/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-n3050:       [PASS][3] -> [FAIL][4] ([i915#6298])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12754/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-dg2-11:         NOTRUN -> [SKIP][5] ([i915#5354])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][6] ([i915#5334]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12754/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@guc:
    - bat-rpls-2:         [DMESG-WARN][8] ([i915#7852]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12754/bat-rpls-2/igt@i915_selftest@live@guc.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/bat-rpls-2/igt@i915_selftest@live@guc.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [INCOMPLETE][10] ([i915#7913]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12754/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         [DMESG-FAIL][12] ([i915#6997]) -> [DMESG-FAIL][13] ([i915#6367] / [i915#7996])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12754/bat-rpls-2/igt@i915_selftest@live@slpc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/bat-rpls-2/igt@i915_selftest@live@slpc.html
    - bat-rpls-1:         [DMESG-FAIL][14] ([i915#6367] / [i915#7996]) -> [DMESG-FAIL][15] ([i915#6367])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12754/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7852]: https://gitlab.freedesktop.org/drm/intel/issues/7852
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996


Build changes
-------------

  * IGT: IGT_7161 -> IGTPW_8498
  * Linux: CI_DRM_12754 -> Patchwork_114033v2

  CI-20190529: 20190529
  CI_DRM_12754: e9f03769fd297b17cd356ec6274e4824511e750c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_8498: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8498/index.html
  IGT_7161: 5574f110ae838031eef6db5236bad02e8c2d2dee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114033v2: e9f03769fd297b17cd356ec6274e4824511e750c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

81ba197c0458 drm/i915/perf: Add support for OA media units
969a31fc8893 drm/i915/perf: Add engine class instance parameters to perf
051fda74a777 drm/i915/perf: Handle non-power-of-2 reports
a3eec22925b2 drm/i915/perf: Parse 64bit report header formats correctly
03af54870886 drm/i915/perf: Fail modprobe if i915_perf_init fails on OOM
1847444238ee drm/i915/perf: Group engines into respective OA groups
56dd42e55f88 drm/i915/perf: Validate OA sseu config outside switch
f640ebc3c42f drm/i915/perf: Add helper to check supported OA engines
c8af7e3a03e8 drm/i915/perf: Drop wakeref on GuC RC error

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/index.html

--===============5224030342346529397==
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
<tr><td><b>Series:</b></td><td>Add OAM support for MTL (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114033/">https://patchwork.freedesktop.org/series/114033/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12754 -&gt; Patchwork_114033v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Missing    (2): bat-dg1-6 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114033v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/bat-dg2-11/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12754/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12754/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12754/bat-rpls-2/igt@i915_selftest@live@guc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7852">i915#7852</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/bat-rpls-2/igt@i915_selftest@live@guc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12754/bat-dg2-11/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12754/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7996">i915#7996</a>)</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12754/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7996">i915#7996</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114033v2/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7161 -&gt; IGTPW_8498</li>
<li>Linux: CI_DRM_12754 -&gt; Patchwork_114033v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12754: e9f03769fd297b17cd356ec6274e4824511e750c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_8498: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8498/index.html<br />
  IGT_7161: 5574f110ae838031eef6db5236bad02e8c2d2dee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114033v2: e9f03769fd297b17cd356ec6274e4824511e750c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>81ba197c0458 drm/i915/perf: Add support for OA media units<br />
969a31fc8893 drm/i915/perf: Add engine class instance parameters to perf<br />
051fda74a777 drm/i915/perf: Handle non-power-of-2 reports<br />
a3eec22925b2 drm/i915/perf: Parse 64bit report header formats correctly<br />
03af54870886 drm/i915/perf: Fail modprobe if i915_perf_init fails on OOM<br />
1847444238ee drm/i915/perf: Group engines into respective OA groups<br />
56dd42e55f88 drm/i915/perf: Validate OA sseu config outside switch<br />
f640ebc3c42f drm/i915/perf: Add helper to check supported OA engines<br />
c8af7e3a03e8 drm/i915/perf: Drop wakeref on GuC RC error</p>

</body>
</html>

--===============5224030342346529397==--
