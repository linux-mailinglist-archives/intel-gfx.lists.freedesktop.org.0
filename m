Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C687D58B5B3
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Aug 2022 15:22:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4303F10E723;
	Sat,  6 Aug 2022 13:22:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2EAFE10EB8B;
 Sat,  6 Aug 2022 13:22:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 24AE2A9932;
 Sat,  6 Aug 2022 13:22:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2602122738066095889=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tomas Winkler" <tomas.winkler@intel.com>
Date: Sat, 06 Aug 2022 13:22:34 -0000
Message-ID: <165979215411.21389.4554231796382590291@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220806122636.43068-1-tomas.winkler@intel.com>
In-Reply-To: <20220806122636.43068-1-tomas.winkler@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgR1ND?=
 =?utf-8?q?_support_for_XeHP_SDV_and_DG2_=28rev2=29?=
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

--===============2602122738066095889==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: GSC support for XeHP SDV and DG2 (rev2)
URL   : https://patchwork.freedesktop.org/series/106638/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11971 -> Patchwork_106638v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): fi-glk-dsi fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_106638v2:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gtt:
    - {bat-dg2-10}:       NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/bat-dg2-10/igt@i915_selftest@live@gtt.html

  
Known issues
------------

  Here are the changes found in Patchwork_106638v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem:
    - fi-pnv-d510:        NOTRUN -> [DMESG-FAIL][2] ([i915#4528])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/fi-pnv-d510/igt@i915_selftest@live@gem.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][3] ([i915#2867]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_module_load@reload:
    - {bat-dg2-10}:       [DMESG-WARN][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-dg2-10/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/bat-dg2-10/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gem_contexts:
    - {bat-dg2-8}:        [INCOMPLETE][7] ([i915#6523]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-dg2-8/igt@i915_selftest@live@gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/bat-dg2-8/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][9] ([i915#4957]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
    - bat-dg1-6:          [DMESG-FAIL][11] ([i915#4494] / [i915#4957]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [DMESG-FAIL][13] ([i915#4528]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - {bat-rpls-1}:       [DMESG-FAIL][15] ([i915#6367]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5087]: https://gitlab.freedesktop.org/drm/intel/issues/5087
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6523]: https://gitlab.freedesktop.org/drm/intel/issues/6523
  [i915#6531]: https://gitlab.freedesktop.org/drm/intel/issues/6531


Build changes
-------------

  * Linux: CI_DRM_11971 -> Patchwork_106638v2

  CI-20190529: 20190529
  CI_DRM_11971: 2bdae66c9988dd0f07633629c0a85383cfc05940 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6614: fbb4a4058b8f4119a079b2fda5c94aaacd850a78 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106638v2: 2bdae66c9988dd0f07633629c0a85383cfc05940 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7cc941f23908 HAX: drm/i915: force INTEL_MEI_GSC on for CI
19d03248de66 drm/i915/gsc: allocate extended operational memory in LMEM
f4f9c475e2bf mei: debugfs: add pxp mode to devstate in debugfs
10243c95c610 mei: gsc: add transition to PXP mode in resume flow
55178e2905c1 mei: gsc: setup gsc extended operational memory
10bca444892b mei: mkhi: add memory ready command
7513b9c9a52e mei: bus: export common mkhi definitions into a separate header
343ffbb1cbcc mei: extend timeouts on slow devices.
a053fcda4210 mei: gsc: wait for reset thread on stop
9e7e39336754 mei: gsc: use polling instead of interrupts
0143b9c0238a drm/i915/gsc: add GSC XeHP SDV platform definition
da235c716118 drm/i915/gsc: add slow_firmware flag to the gsc device definition
d6abe17ce846 mei: add slow_firmware flag to the mei auxiliary device
3bacaf87d8a5 mei: add kdoc for struct mei_aux_device
fd96f7eb5ecc drm/i915/gsc: skip irq initialization if using polling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/index.html

--===============2602122738066095889==
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
<tr><td><b>Series:</b></td><td>GSC support for XeHP SDV and DG2 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/106638/">https://patchwork.freedesktop.org/series/106638/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11971 -&gt; Patchwork_106638v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): fi-glk-dsi fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_106638v2:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gtt:<ul>
<li>{bat-dg2-10}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/bat-dg2-10/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106638v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@gem:<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/fi-pnv-d510/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-dg2-10}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-dg2-10/igt@i915_module_load@reload.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/bat-dg2-10/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-dg2-8/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6523">i915#6523</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/bat-dg2-8/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v2/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11971 -&gt; Patchwork_106638v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11971: 2bdae66c9988dd0f07633629c0a85383cfc05940 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6614: fbb4a4058b8f4119a079b2fda5c94aaacd850a78 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106638v2: 2bdae66c9988dd0f07633629c0a85383cfc05940 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7cc941f23908 HAX: drm/i915: force INTEL_MEI_GSC on for CI<br />
19d03248de66 drm/i915/gsc: allocate extended operational memory in LMEM<br />
f4f9c475e2bf mei: debugfs: add pxp mode to devstate in debugfs<br />
10243c95c610 mei: gsc: add transition to PXP mode in resume flow<br />
55178e2905c1 mei: gsc: setup gsc extended operational memory<br />
10bca444892b mei: mkhi: add memory ready command<br />
7513b9c9a52e mei: bus: export common mkhi definitions into a separate header<br />
343ffbb1cbcc mei: extend timeouts on slow devices.<br />
a053fcda4210 mei: gsc: wait for reset thread on stop<br />
9e7e39336754 mei: gsc: use polling instead of interrupts<br />
0143b9c0238a drm/i915/gsc: add GSC XeHP SDV platform definition<br />
da235c716118 drm/i915/gsc: add slow_firmware flag to the gsc device definition<br />
d6abe17ce846 mei: add slow_firmware flag to the mei auxiliary device<br />
3bacaf87d8a5 mei: add kdoc for struct mei_aux_device<br />
fd96f7eb5ecc drm/i915/gsc: skip irq initialization if using polling</p>

</body>
</html>

--===============2602122738066095889==--
