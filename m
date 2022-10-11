Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C78E5FBC94
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 23:00:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E240F10E87E;
	Tue, 11 Oct 2022 21:00:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F0D1A10E87E;
 Tue, 11 Oct 2022 21:00:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84B9CAA01E;
 Tue, 11 Oct 2022 21:00:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1970999352266240178=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 11 Oct 2022 21:00:04 -0000
Message-ID: <166552200451.5541.4480303244660679378@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_ELD_precompute_and_readout?=
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

--===============1970999352266240178==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: ELD precompute and readout
URL   : https://patchwork.freedesktop.org/series/109592/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12234 -> Patchwork_109592v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_109592v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109592v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/index.html

Participating hosts (44 -> 42)
------------------------------

  Additional (1): bat-atsm-1 
  Missing    (3): fi-ctg-p8600 fi-hsw-4770 fi-icl-u2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109592v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic@modeset:
    - fi-hsw-g3258:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/fi-hsw-g3258/igt@kms_busy@basic@modeset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/fi-hsw-g3258/igt@kms_busy@basic@modeset.html

  
Known issues
------------

  Here are the changes found in Patchwork_109592v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bsw-nick:        NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/fi-bsw-nick/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - fi-bsw-nick:        NOTRUN -> [SKIP][4] ([fdo#109271])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/fi-bsw-nick/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2:
    - fi-bdw-5557u:       [PASS][5] -> [INCOMPLETE][6] ([i915#146])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/fi-bdw-5557u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/fi-bdw-5557u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html

  * igt@runner@aborted:
    - fi-hsw-g3258:       NOTRUN -> [FAIL][7] ([i915#4312])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {fi-tgl-mst}:       [DMESG-WARN][8] ([i915#5122]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/fi-tgl-mst/igt@gem_exec_suspend@basic-s0@smem.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/fi-tgl-mst/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-adlm-1}:       [DMESG-WARN][10] ([i915#2867]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - {bat-dg2-8}:        [FAIL][12] ([i915#7029]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/bat-dg2-8/igt@gem_huc_copy@huc-copy.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/bat-dg2-8/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@load:
    - {bat-dg2-8}:        [DMESG-WARN][14] ([i915#7031]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/bat-dg2-8/igt@i915_module_load@load.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/bat-dg2-8/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - {fi-tgl-mst}:       [WARN][16] ([i915#6596]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/fi-tgl-mst/igt@i915_module_load@reload.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/fi-tgl-mst/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [INCOMPLETE][18] ([i915#6972] / [i915#7120]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_pm:
    - {bat-rpls-2}:       [DMESG-FAIL][20] ([i915#4258]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@slpc:
    - {bat-rpls-1}:       [DMESG-FAIL][22] ([i915#6367]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3:
    - {bat-dg2-11}:       [FAIL][24] ([i915#6818]) -> [PASS][25] +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6596]: https://gitlab.freedesktop.org/drm/intel/issues/6596
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6816]: https://gitlab.freedesktop.org/drm/intel/issues/6816
  [i915#6818]: https://gitlab.freedesktop.org/drm/intel/issues/6818
  [i915#6972]: https://gitlab.freedesktop.org/drm/intel/issues/6972
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
  [i915#7030]: https://gitlab.freedesktop.org/drm/intel/issues/7030
  [i915#7031]: https://gitlab.freedesktop.org/drm/intel/issues/7031
  [i915#7120]: https://gitlab.freedesktop.org/drm/intel/issues/7120


Build changes
-------------

  * Linux: CI_DRM_12234 -> Patchwork_109592v1

  CI-20190529: 20190529
  CI_DRM_12234: e4a9f2a2d42b1cce6015d4397360c63c01a8ed35 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7009: cf55acdeea3747c668074a8734029364960e5f5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109592v1: e4a9f2a2d42b1cce6015d4397360c63c01a8ed35 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a2da7324a255 hax: drm/i915/audio: Make HSW hardware ELD buffer sort of work
c06fadad0489 drm/i915/audio: Include ELD in the state dump
e7f17a9aacd0 drm/i915/audio: Hook up ELD into the state checker
ee822851869a drm/i915/sdvo: Do ELD hardware readout
ec81bee2dc81 drm/i915/sdvo: Precompute the ELD
5a37a0600196 drm/i915/sdvo: Extract intel_sdvo_has_audio()
b86049543556 drm/i915/audio: Hardware ELD readout
4f03d7bffec7 drm/i915/audio: Precompute the ELD
02e88ed32241 drm/i915/audio: Do the vblank waits
b3ba690658a9 drm/i915/audio: Split "ELD valid" vs. audio PD on hsw+
6c32195b6ea0 drm/i915/audio: Use intel_de_rmw() for most audio registers
df3f81d21b4c drm/i915/audio: Use u32* for ELD
1e4e001d7315 drm/i915/audio: Make sure we write the whole ELD buffer
800020019ce3 drm/i915/audio: Read ELD buffer size from hardware
8327fd415661 drm/i915/audio: Nuke intel_eld_uptodate()
2ccd30e523ac drm/i915/audio: Protect singleton register with a lock
da617ce0538f drm/i915/audio: Unify register bit naming
ae6c6d38c3e2 drm/i915/audio: Use REG_BIT() & co.
5e7e22f54963 drm/i915/audio: Exract struct ilk_audio_regs
087a34819201 drm/i915/audio: Remove CL/BLC audio stuff
04596eb4658a drm/i915/audio: Nuke leftover ROUNDING_FACTOR
f7bfe291741b drm/i915/audio: s/dev_priv/i915/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/index.html

--===============1970999352266240178==
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
<tr><td><b>Series:</b></td><td>drm/i915: ELD precompute and readout</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/109592/">https://patchwork.freedesktop.org/series/109592/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12234 -&gt; Patchwork_109592v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_109592v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_109592v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/index.html</p>
<h2>Participating hosts (44 -&gt; 42)</h2>
<p>Additional (1): bat-atsm-1 <br />
  Missing    (3): fi-ctg-p8600 fi-hsw-4770 fi-icl-u2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_109592v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_busy@basic@modeset:<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/fi-hsw-g3258/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/fi-hsw-g3258/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109592v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/fi-bsw-nick/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/fi-bsw-nick/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/fi-bdw-5557u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/fi-bdw-5557u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{fi-tgl-mst}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/fi-tgl-mst/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5122">i915#5122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/fi-tgl-mst/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/bat-dg2-8/igt@gem_huc_copy@huc-copy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7029">i915#7029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/bat-dg2-8/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/bat-dg2-8/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7031">i915#7031</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/bat-dg2-8/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{fi-tgl-mst}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/fi-tgl-mst/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/fi-tgl-mst/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6972">i915#6972</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7120">i915#7120</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6818">i915#6818</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109592v1/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12234 -&gt; Patchwork_109592v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12234: e4a9f2a2d42b1cce6015d4397360c63c01a8ed35 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7009: cf55acdeea3747c668074a8734029364960e5f5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109592v1: e4a9f2a2d42b1cce6015d4397360c63c01a8ed35 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a2da7324a255 hax: drm/i915/audio: Make HSW hardware ELD buffer sort of work<br />
c06fadad0489 drm/i915/audio: Include ELD in the state dump<br />
e7f17a9aacd0 drm/i915/audio: Hook up ELD into the state checker<br />
ee822851869a drm/i915/sdvo: Do ELD hardware readout<br />
ec81bee2dc81 drm/i915/sdvo: Precompute the ELD<br />
5a37a0600196 drm/i915/sdvo: Extract intel_sdvo_has_audio()<br />
b86049543556 drm/i915/audio: Hardware ELD readout<br />
4f03d7bffec7 drm/i915/audio: Precompute the ELD<br />
02e88ed32241 drm/i915/audio: Do the vblank waits<br />
b3ba690658a9 drm/i915/audio: Split "ELD valid" vs. audio PD on hsw+<br />
6c32195b6ea0 drm/i915/audio: Use intel_de_rmw() for most audio registers<br />
df3f81d21b4c drm/i915/audio: Use u32* for ELD<br />
1e4e001d7315 drm/i915/audio: Make sure we write the whole ELD buffer<br />
800020019ce3 drm/i915/audio: Read ELD buffer size from hardware<br />
8327fd415661 drm/i915/audio: Nuke intel_eld_uptodate()<br />
2ccd30e523ac drm/i915/audio: Protect singleton register with a lock<br />
da617ce0538f drm/i915/audio: Unify register bit naming<br />
ae6c6d38c3e2 drm/i915/audio: Use REG_BIT() &amp; co.<br />
5e7e22f54963 drm/i915/audio: Exract struct ilk_audio_regs<br />
087a34819201 drm/i915/audio: Remove CL/BLC audio stuff<br />
04596eb4658a drm/i915/audio: Nuke leftover ROUNDING_FACTOR<br />
f7bfe291741b drm/i915/audio: s/dev_priv/i915/</p>

</body>
</html>

--===============1970999352266240178==--
