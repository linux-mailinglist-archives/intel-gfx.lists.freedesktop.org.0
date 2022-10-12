Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 819155FC547
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 14:28:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B408E10E471;
	Wed, 12 Oct 2022 12:28:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E4B0810E459;
 Wed, 12 Oct 2022 12:27:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9165AADD2;
 Wed, 12 Oct 2022 12:27:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0200055206559225883=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Wed, 12 Oct 2022 12:27:57 -0000
Message-ID: <166557767784.12984.761707671215478475@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSGFu?=
 =?utf-8?q?dle_BPC_for_HDMI2=2E1_PCON_without_DSC1=2E2_sink_and_other_fixe?=
 =?utf-8?q?s_=28rev4=29?=
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

--===============0200055206559225883==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Handle BPC for HDMI2.1 PCON without DSC1.2 sink and other fixes (rev4)
URL   : https://patchwork.freedesktop.org/series/107550/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12237 -> Patchwork_107550v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/index.html

Participating hosts (44 -> 43)
------------------------------

  Additional (1): bat-atsm-1 
  Missing    (2): fi-ctg-p8600 bat-dg1-5 

Known issues
------------

  Here are the changes found in Patchwork_107550v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][1] -> [INCOMPLETE][2] ([i915#4785])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bsw-nick:        NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/fi-bsw-nick/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - fi-bsw-nick:        NOTRUN -> [SKIP][4] ([fdo#109271])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/fi-bsw-nick/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][5] ([fdo#109271] / [i915#4312] / [i915#5594])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/fi-hsw-4770/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {bat-rpls-2}:       [SKIP][6] ([i915#2582]) -> [PASS][7] +4 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/bat-rpls-2/igt@fbdev@read.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/bat-rpls-2/igt@fbdev@read.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-adlm-1}:       [DMESG-WARN][8] ([i915#2867]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rplp-1}:       [DMESG-WARN][10] ([i915#2867]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [INCOMPLETE][12] ([i915#7120]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hugepages:
    - {bat-rpls-2}:       [DMESG-WARN][14] ([i915#5278]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/bat-rpls-2/igt@i915_selftest@live@hugepages.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/bat-rpls-2/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [DMESG-FAIL][16] ([i915#4983] / [i915#5828]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/bat-rpls-2/igt@i915_selftest@live@reset.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@workarounds:
    - {bat-rpls-1}:       [DMESG-FAIL][18] ([i915#6763]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/bat-rpls-1/igt@i915_selftest@live@workarounds.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/bat-rpls-1/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-3:
    - {bat-dg2-9}:        [DMESG-WARN][20] -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-3.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-3.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3:
    - {bat-dg2-9}:        [FAIL][22] ([fdo#103375]) -> [PASS][23] +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html
    - {bat-dg2-11}:       [FAIL][24] ([i915#6818]) -> [PASS][25] +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#5828]: https://gitlab.freedesktop.org/drm/intel/issues/5828
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559
  [i915#6763]: https://gitlab.freedesktop.org/drm/intel/issues/6763
  [i915#6816]: https://gitlab.freedesktop.org/drm/intel/issues/6816
  [i915#6818]: https://gitlab.freedesktop.org/drm/intel/issues/6818
  [i915#7030]: https://gitlab.freedesktop.org/drm/intel/issues/7030
  [i915#7120]: https://gitlab.freedesktop.org/drm/intel/issues/7120


Build changes
-------------

  * Linux: CI_DRM_12237 -> Patchwork_107550v4

  CI-20190529: 20190529
  CI_DRM_12237: cd40f078a0abae3b7fc7d5702db33915d74a5ec2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7009: cf55acdeea3747c668074a8734029364960e5f5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107550v4: cd40f078a0abae3b7fc7d5702db33915d74a5ec2 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4708fb76f7af drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP
a512cafb6761 drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC
0dd07b4e1f7c drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state sink_format
56acc67eeed1 drm/i915/dp: Use sink_format in dp_is_ycbcr420
7866dee9a06e drm/i915/display: Add new member in intel_dp to store ycbcr420 passthrough cap
fcb832997059 drm/i915/display: Add new member to configure PCON color conversion
1c215c5e55a1 drm/i915/dp: Remove whitespace at the end of function.
fd92269a0aa7 drm/i915/dp: Reset frl trained flag before restarting FRL training

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/index.html

--===============0200055206559225883==
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
<tr><td><b>Series:</b></td><td>Handle BPC for HDMI2.1 PCON without DSC1.2 sink and other fixes (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107550/">https://patchwork.freedesktop.org/series/107550/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12237 -&gt; Patchwork_107550v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Additional (1): bat-atsm-1 <br />
  Missing    (2): fi-ctg-p8600 bat-dg1-5 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107550v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/fi-bsw-nick/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/fi-bsw-nick/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/bat-rpls-2/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7120">i915#7120</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/bat-rpls-2/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5278">i915#5278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/bat-rpls-2/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/bat-rpls-2/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5828">i915#5828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/bat-rpls-1/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6763">i915#6763</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/bat-rpls-1/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-3:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-3.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3:</p>
<ul>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html">PASS</a> +2 similar issues</p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12237/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6818">i915#6818</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v4/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12237 -&gt; Patchwork_107550v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12237: cd40f078a0abae3b7fc7d5702db33915d74a5ec2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7009: cf55acdeea3747c668074a8734029364960e5f5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107550v4: cd40f078a0abae3b7fc7d5702db33915d74a5ec2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4708fb76f7af drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP<br />
a512cafb6761 drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC<br />
0dd07b4e1f7c drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state sink_format<br />
56acc67eeed1 drm/i915/dp: Use sink_format in dp_is_ycbcr420<br />
7866dee9a06e drm/i915/display: Add new member in intel_dp to store ycbcr420 passthrough cap<br />
fcb832997059 drm/i915/display: Add new member to configure PCON color conversion<br />
1c215c5e55a1 drm/i915/dp: Remove whitespace at the end of function.<br />
fd92269a0aa7 drm/i915/dp: Reset frl trained flag before restarting FRL training</p>

</body>
</html>

--===============0200055206559225883==--
