Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D57E54E1D4
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 15:24:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B75B910E2B2;
	Thu, 16 Jun 2022 13:24:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2F61410E1B3;
 Thu, 16 Jun 2022 13:24:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 248DEA00CC;
 Thu, 16 Jun 2022 13:24:13 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8812859239888517131=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 16 Jun 2022 13:24:13 -0000
Message-ID: <165538585311.17456.4413868683887178356@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1655372759.git.jani.nikula@intel.com>
In-Reply-To: <cover.1655372759.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_drm/i915/display=3A_split_out_verification=2C_hw_reado?=
 =?utf-8?q?ut_and_dump_from_intel=5Fdisplay=2Ec?=
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

--===============8812859239888517131==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: drm/i915/display: split out verification, hw readout and dump from intel_display.c
URL   : https://patchwork.freedesktop.org/series/105220/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11767 -> Patchwork_105220v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/index.html

Participating hosts (42 -> 42)
------------------------------

  Additional (2): bat-adlm-1 bat-atsm-1 
  Missing    (2): fi-kbl-soraka fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_105220v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2] ([i915#1888] / [i915#62])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11767/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [PASS][3] -> [DMESG-FAIL][4] ([i915#4528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11767/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - bat-adlp-4:         [PASS][5] -> [DMESG-WARN][6] ([i915#3576])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11767/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
    - fi-tgl-u2:          [PASS][7] -> [DMESG-WARN][8] ([i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11767/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-cfl-8109u:       [PASS][9] -> [DMESG-WARN][10] ([i915#62]) +15 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11767/fi-cfl-8109u/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][11] ([i915#4494] / [i915#4957]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11767/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][13] ([i915#3576]) -> [PASS][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11767/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - bat-adlp-4:         [DMESG-WARN][15] ([i915#3576]) -> [PASS][16] +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11767/bat-adlp-4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/bat-adlp-4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#6103]: https://gitlab.freedesktop.org/drm/intel/issues/6103
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6244]: https://gitlab.freedesktop.org/drm/intel/issues/6244


Build changes
-------------

  * Linux: CI_DRM_11767 -> Patchwork_105220v1

  CI-20190529: 20190529
  CI_DRM_11767: 822a8442835012ce405080cb40f6317ef1e854ac @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6533: 6b5107d91827962808441db6b98e478aa9e67bdb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105220v1: 822a8442835012ce405080cb40f6317ef1e854ac @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0beb94edef12 drm/i915/display: convert modeset setup to struct drm_i915_private *i915
afb90dc7cc3c drm/i915/display: some struct drm_i915_private *i915 conversions
14862dd9c28d drm/i915/display: split out hw state readout and sanitize
07649d13b56d drm/i915/display: rename dev_priv -> i915 in crtc state dump
51cbfeafca41 drm/i915/display: change who adds [] around crtc state dump context string
4df5ac8be996 drm/i915/display: split out crtc state dump to a separate file
4b5cf8b359c4 drm/i915/display: split out modeset verification code
b1fa5b079924 drm/i915/mpllb: move mpllb state check to intel_snps_phy.c
6b760249d4d5 drm/i915/mpllb: use I915_STATE_WARN() for state mismatch warnings
7973e5603a12 drm/i915/dpll: move shared dpll state verification to intel_dpll_mgr.c
b8f53ec1f446 drm/i915/wm: move wm state verification to intel_pm.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/index.html

--===============8812859239888517131==
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
<tr><td><b>Series:</b></td><td>drm/i915: drm/i915/display: split out verification, hw readout and dump from intel_display.c</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105220/">https://patchwork.freedesktop.org/series/105220/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11767 -&gt; Patchwork_105220v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/index.html</p>
<h2>Participating hosts (42 -&gt; 42)</h2>
<p>Additional (2): bat-adlm-1 bat-atsm-1 <br />
  Missing    (2): fi-kbl-soraka fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105220v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11767/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11767/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11767/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11767/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11767/fi-cfl-8109u/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) +15 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11767/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11767/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11767/bat-adlp-4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105220v1/bat-adlp-4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11767 -&gt; Patchwork_105220v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11767: 822a8442835012ce405080cb40f6317ef1e854ac @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6533: 6b5107d91827962808441db6b98e478aa9e67bdb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105220v1: 822a8442835012ce405080cb40f6317ef1e854ac @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0beb94edef12 drm/i915/display: convert modeset setup to struct drm_i915_private <em>i915<br />
afb90dc7cc3c drm/i915/display: some struct drm_i915_private </em>i915 conversions<br />
14862dd9c28d drm/i915/display: split out hw state readout and sanitize<br />
07649d13b56d drm/i915/display: rename dev_priv -&gt; i915 in crtc state dump<br />
51cbfeafca41 drm/i915/display: change who adds [] around crtc state dump context string<br />
4df5ac8be996 drm/i915/display: split out crtc state dump to a separate file<br />
4b5cf8b359c4 drm/i915/display: split out modeset verification code<br />
b1fa5b079924 drm/i915/mpllb: move mpllb state check to intel_snps_phy.c<br />
6b760249d4d5 drm/i915/mpllb: use I915_STATE_WARN() for state mismatch warnings<br />
7973e5603a12 drm/i915/dpll: move shared dpll state verification to intel_dpll_mgr.c<br />
b8f53ec1f446 drm/i915/wm: move wm state verification to intel_pm.c</p>

</body>
</html>

--===============8812859239888517131==--
