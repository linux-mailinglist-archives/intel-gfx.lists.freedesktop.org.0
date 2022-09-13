Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 402165B7D1E
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 00:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A59110E5E4;
	Tue, 13 Sep 2022 22:34:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6594310E654;
 Tue, 13 Sep 2022 22:34:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D07DAA3D8;
 Tue, 13 Sep 2022 22:34:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2805339714483058031=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Tue, 13 Sep 2022 22:34:49 -0000
Message-ID: <166310848935.21296.16698846295429811597@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220913005739.798337-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220913005739.798337-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_HuC_loading_for_DG2_=28rev6=29?=
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

--===============2805339714483058031==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: HuC loading for DG2 (rev6)
URL   : https://patchwork.freedesktop.org/series/107477/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12131 -> Patchwork_107477v6
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/index.html

Participating hosts (44 -> 42)
------------------------------

  Missing    (2): fi-ctg-p8600 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107477v6:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-dg2-9}:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
    - {bat-dg2-11}:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/bat-dg2-11/igt@gem_exec_suspend@basic-s0@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/bat-dg2-11/igt@gem_exec_suspend@basic-s0@smem.html

  
Known issues
------------

  Here are the changes found in Patchwork_107477v6 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-5:          [PASS][5] -> [INCOMPLETE][6] ([i915#4418])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/bat-dg1-5/igt@i915_selftest@live@gt_engines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/bat-dg1-5/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][7] -> [DMESG-FAIL][8] ([i915#4528])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-g3258:       NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/fi-hsw-g3258/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-2:
    - fi-icl-u2:          [PASS][10] -> [DMESG-WARN][11] ([i915#4890])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/fi-icl-u2/igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-2.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/fi-icl-u2/igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-2.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2:
    - fi-bdw-5557u:       [PASS][12] -> [INCOMPLETE][13] ([i915#146] / [i915#6598])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/fi-bdw-5557u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/fi-bdw-5557u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html

  * igt@runner@aborted:
    - bat-dg1-5:          NOTRUN -> [FAIL][14] ([i915#4312] / [i915#5257])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/bat-dg1-5/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][15] ([i915#4312] / [i915#6599])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/fi-icl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_huc_copy@huc-copy:
    - {bat-dg2-9}:        [SKIP][16] ([i915#3595]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/bat-dg2-9/igt@gem_huc_copy@huc-copy.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/bat-dg2-9/igt@gem_huc_copy@huc-copy.html
    - {bat-dg2-11}:       [SKIP][18] ([i915#3595]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/bat-dg2-11/igt@gem_huc_copy@huc-copy.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/bat-dg2-11/igt@gem_huc_copy@huc-copy.html
    - {bat-dg2-8}:        [SKIP][20] ([i915#3595]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/bat-dg2-8/igt@gem_huc_copy@huc-copy.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/bat-dg2-8/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [INCOMPLETE][22] ([i915#3303] / [i915#4785]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-1}:       [DMESG-FAIL][24] ([i915#4983]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/bat-rpls-1/igt@i915_selftest@live@reset.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/bat-rpls-1/igt@i915_selftest@live@reset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4890]: https://gitlab.freedesktop.org/drm/intel/issues/4890
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599


Build changes
-------------

  * Linux: CI_DRM_12131 -> Patchwork_107477v6

  CI-20190529: 20190529
  CI_DRM_12131: 3c82566040d2d01a9e98f740d8de4a9e18116818 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6653: 4f927248ebbf11f03f4c1ea2254f011e7575322f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107477v6: 3c82566040d2d01a9e98f740d8de4a9e18116818 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0022ef3ddff1 HAX: drm/i915: force INTEL_MEI_GSC and INTEL_MEI_PXP on for CI
9069e41669b5 drm/i915/huc: define gsc-compatible HuC fw for DG2
381245cb6f33 drm/i915/huc: better define HuC status getparam possible return values.
da23c5930e91 drm/i915/huc: stall media submission until HuC is loaded
a5da7c7277c3 drm/i915/huc: track delayed HuC load with a fence
ea29e6eb384b drm/i915/dg2: setup HuC loading via GSC
74b2661c2098 drm/i915/pxp: add huc authentication and loading command
df91170a1d28 drm/i915/pxp: implement function for sending tee stream command
da642a7f5e94 drm/i915/pxp: load the pxp module when we have a gsc-loaded huc
26e8fc8c30b9 mei: pxp: support matching with a gfx discrete card
19422e958a3d mei: pxp: add command streamer API to the PXP driver
053cca255f77 mei: bus: extend bus API to support command streamer API
7ea7e574bb40 mei: adjust extended header kdocs
d49f56972ea2 mei: bus: enable sending gsc commands
c53c5c80cbca mei: add support to GSC extended header

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/index.html

--===============2805339714483058031==
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
<tr><td><b>Series:</b></td><td>drm/i915: HuC loading for DG2 (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107477/">https://patchwork.freedesktop.org/series/107477/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12131 -&gt; Patchwork_107477v6</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/index.html</p>
<h2>Participating hosts (44 -&gt; 42)</h2>
<p>Missing    (2): fi-ctg-p8600 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_107477v6:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/bat-dg2-11/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/bat-dg2-11/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107477v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/fi-hsw-g3258/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-2:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/fi-icl-u2/igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/fi-icl-u2/igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4890">i915#4890</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/fi-bdw-5557u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/fi-bdw-5557u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/bat-dg2-9/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3595">i915#3595</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/bat-dg2-9/igt@gem_huc_copy@huc-copy.html">PASS</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/bat-dg2-11/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3595">i915#3595</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/bat-dg2-11/igt@gem_huc_copy@huc-copy.html">PASS</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/bat-dg2-8/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3595">i915#3595</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/bat-dg2-8/igt@gem_huc_copy@huc-copy.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/bat-rpls-1/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v6/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12131 -&gt; Patchwork_107477v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12131: 3c82566040d2d01a9e98f740d8de4a9e18116818 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6653: 4f927248ebbf11f03f4c1ea2254f011e7575322f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107477v6: 3c82566040d2d01a9e98f740d8de4a9e18116818 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0022ef3ddff1 HAX: drm/i915: force INTEL_MEI_GSC and INTEL_MEI_PXP on for CI<br />
9069e41669b5 drm/i915/huc: define gsc-compatible HuC fw for DG2<br />
381245cb6f33 drm/i915/huc: better define HuC status getparam possible return values.<br />
da23c5930e91 drm/i915/huc: stall media submission until HuC is loaded<br />
a5da7c7277c3 drm/i915/huc: track delayed HuC load with a fence<br />
ea29e6eb384b drm/i915/dg2: setup HuC loading via GSC<br />
74b2661c2098 drm/i915/pxp: add huc authentication and loading command<br />
df91170a1d28 drm/i915/pxp: implement function for sending tee stream command<br />
da642a7f5e94 drm/i915/pxp: load the pxp module when we have a gsc-loaded huc<br />
26e8fc8c30b9 mei: pxp: support matching with a gfx discrete card<br />
19422e958a3d mei: pxp: add command streamer API to the PXP driver<br />
053cca255f77 mei: bus: extend bus API to support command streamer API<br />
7ea7e574bb40 mei: adjust extended header kdocs<br />
d49f56972ea2 mei: bus: enable sending gsc commands<br />
c53c5c80cbca mei: add support to GSC extended header</p>

</body>
</html>

--===============2805339714483058031==--
