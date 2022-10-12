Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D32F15FCEB8
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 01:03:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ED0210E231;
	Wed, 12 Oct 2022 23:03:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0627F10E236;
 Wed, 12 Oct 2022 23:03:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F1B02A73C7;
 Wed, 12 Oct 2022 23:03:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4368123094606150414=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Wed, 12 Oct 2022 23:03:25 -0000
Message-ID: <166561580598.12987.13406662110578589527@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_DG2_OA_support_=28rev6=29?=
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

--===============4368123094606150414==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add DG2 OA support (rev6)
URL   : https://patchwork.freedesktop.org/series/107584/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12238 -> Patchwork_107584v6
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_107584v6 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107584v6, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v6/index.html

Participating hosts (45 -> 12)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_107584v6 prevented too many machines from booting.

  Missing    (33): fi-rkl-11600 fi-rkl-guc fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-snb-2520m fi-pnv-d510 fi-blb-e6850 fi-skl-6600u fi-snb-2600 fi-bxt-dsi fi-bdw-5557u fi-adl-ddr5 fi-hsw-g3258 fi-ilk-650 fi-ctg-p8600 fi-hsw-4770 bat-atsm-1 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-skl-6700k2 fi-tgl-mst fi-kbl-7567u fi-skl-guc fi-cfl-8700k fi-glk-j4005 fi-ehl-2 fi-jsl-1 fi-cfl-guc fi-kbl-guc fi-cfl-8109u fi-kbl-8809g 

Known issues
------------

  Here are the changes found in Patchwork_107584v6 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rpls-2}:       [DMESG-WARN][1] ([i915#6434]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12238/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v6/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s3@lmem0:
    - {bat-dg2-11}:       [DMESG-WARN][3] ([i915#6816]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12238/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v6/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html

  * igt@gem_huc_copy@huc-copy:
    - {bat-dg2-8}:        [FAIL][5] ([i915#7029]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12238/bat-dg2-8/igt@gem_huc_copy@huc-copy.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v6/bat-dg2-8/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@load:
    - {bat-dg2-8}:        [DMESG-WARN][7] ([i915#7031]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12238/bat-dg2-8/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v6/bat-dg2-8/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - {bat-rpls-2}:       [DMESG-WARN][9] ([i915#5537]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12238/bat-rpls-2/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v6/bat-rpls-2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-rte:
    - {bat-rplp-1}:       [DMESG-WARN][11] ([i915#7077]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12238/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v6/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6816]: https://gitlab.freedesktop.org/drm/intel/issues/6816
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
  [i915#7031]: https://gitlab.freedesktop.org/drm/intel/issues/7031
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077


Build changes
-------------

  * IGT: IGT_7012 -> IGTPW_7832
  * Linux: CI_DRM_12238 -> Patchwork_107584v6

  CI-20190529: 20190529
  CI_DRM_12238: 87844a66c86d81ccc88314bd68b9f7292d6b32a5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_7832: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7832/index.html
  IGT_7012: ca6f5bdd537d26692c4b1ca011b8c4f227d95703 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107584v6: 87844a66c86d81ccc88314bd68b9f7292d6b32a5 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

dc4d509eacc2 drm/i915/perf: Enable OA for DG2
ad9961613d57 drm/i915/perf: complete programming whitelisting for XEHPSDV
1abaa3c7cf1d drm/i915/guc: Support OA when Wa_16011777198 is enabled
0c10ab21f0ca drm/i915/perf: Save/restore EU flex counters across reset
7edf5a50a432 drm/i915/perf: Apply Wa_18013179988
d2eb679e065f drm/i915/perf: Add Wa_1508761755:dg2
f18e6f9554b5 drm/i915/perf: Store a pointer to oa_format in oa_buffer
a3cbc3a8586b drm/i915/perf: Use gt-specific ggtt for OA and noa-wait buffers
b25358d6c3c9 drm/i915/perf: Replace gt->perf.lock with stream->lock for file ops
516ec42c2804 drm/i915/perf: Move gt-specific data from i915->perf to gt->perf
80426c1b41fd drm/i915/perf: Simply use stream->ctx
e59be7d4442f drm/i915/perf: Enable bytes per clock reporting in OA
01761dd8a3a6 drm/i915/perf: Determine gen12 oa ctx offset at runtime
b384d35d4b60 drm/i915/perf: Fix noa wait predication for DG2
7934a7851efc drm/i915/perf: Add 32-bit OAG and OAR formats for DG2
e408d2a55c17 drm/i915/perf: Fix OA filtering logic for GuC mode

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v6/index.html

--===============4368123094606150414==
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
<tr><td><b>Series:</b></td><td>Add DG2 OA support (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107584/">https://patchwork.freedesktop.org/series/107584/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12238 -&gt; Patchwork_107584v6</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_107584v6 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_107584v6, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v6/index.html</p>
<h2>Participating hosts (45 -&gt; 12)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_107584v6 prevented too many machines from booting.</p>
<p>Missing    (33): fi-rkl-11600 fi-rkl-guc fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-snb-2520m fi-pnv-d510 fi-blb-e6850 fi-skl-6600u fi-snb-2600 fi-bxt-dsi fi-bdw-5557u fi-adl-ddr5 fi-hsw-g3258 fi-ilk-650 fi-ctg-p8600 fi-hsw-4770 bat-atsm-1 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-skl-6700k2 fi-tgl-mst fi-kbl-7567u fi-skl-guc fi-cfl-8700k fi-glk-j4005 fi-ehl-2 fi-jsl-1 fi-cfl-guc fi-kbl-guc fi-cfl-8109u fi-kbl-8809g </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107584v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12238/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6434">i915#6434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v6/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@lmem0:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12238/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6816">i915#6816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v6/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12238/bat-dg2-8/igt@gem_huc_copy@huc-copy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7029">i915#7029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v6/bat-dg2-8/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12238/bat-dg2-8/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7031">i915#7031</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v6/bat-dg2-8/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12238/bat-rpls-2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5537">i915#5537</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v6/bat-rpls-2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12238/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7077">i915#7077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v6/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7012 -&gt; IGTPW_7832</li>
<li>Linux: CI_DRM_12238 -&gt; Patchwork_107584v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12238: 87844a66c86d81ccc88314bd68b9f7292d6b32a5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_7832: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7832/index.html<br />
  IGT_7012: ca6f5bdd537d26692c4b1ca011b8c4f227d95703 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107584v6: 87844a66c86d81ccc88314bd68b9f7292d6b32a5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>dc4d509eacc2 drm/i915/perf: Enable OA for DG2<br />
ad9961613d57 drm/i915/perf: complete programming whitelisting for XEHPSDV<br />
1abaa3c7cf1d drm/i915/guc: Support OA when Wa_16011777198 is enabled<br />
0c10ab21f0ca drm/i915/perf: Save/restore EU flex counters across reset<br />
7edf5a50a432 drm/i915/perf: Apply Wa_18013179988<br />
d2eb679e065f drm/i915/perf: Add Wa_1508761755:dg2<br />
f18e6f9554b5 drm/i915/perf: Store a pointer to oa_format in oa_buffer<br />
a3cbc3a8586b drm/i915/perf: Use gt-specific ggtt for OA and noa-wait buffers<br />
b25358d6c3c9 drm/i915/perf: Replace gt-&gt;perf.lock with stream-&gt;lock for file ops<br />
516ec42c2804 drm/i915/perf: Move gt-specific data from i915-&gt;perf to gt-&gt;perf<br />
80426c1b41fd drm/i915/perf: Simply use stream-&gt;ctx<br />
e59be7d4442f drm/i915/perf: Enable bytes per clock reporting in OA<br />
01761dd8a3a6 drm/i915/perf: Determine gen12 oa ctx offset at runtime<br />
b384d35d4b60 drm/i915/perf: Fix noa wait predication for DG2<br />
7934a7851efc drm/i915/perf: Add 32-bit OAG and OAR formats for DG2<br />
e408d2a55c17 drm/i915/perf: Fix OA filtering logic for GuC mode</p>

</body>
</html>

--===============4368123094606150414==--
