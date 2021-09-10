Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B80D5406E4E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 17:37:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A20B46EA1B;
	Fri, 10 Sep 2021 15:37:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 581876EA1B;
 Fri, 10 Sep 2021 15:37:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53F8BA00FD;
 Fri, 10 Sep 2021 15:37:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2478876111412731214=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai Vehmanen" <kai.vehmanen@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Sep 2021 15:37:44 -0000
Message-ID: <163128826433.14826.3299193037500497243@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210910131916.3782933-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20210910131916.3782933-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_program_audio_CDCLK-TS_for_keepalives?=
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

--===============2478876111412731214==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: program audio CDCLK-TS for keepalives
URL   : https://patchwork.freedesktop.org/series/94551/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10570 -> Patchwork_21013
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/index.html

Known issues
------------

  Here are the changes found in Patchwork_21013 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-n3050:       [PASS][1] -> [DMESG-FAIL][2] ([i915#2373])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
    - fi-rkl-guc:         [PASS][3] -> [DMESG-WARN][4] ([i915#3958])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@runner@aborted:
    - fi-kbl-7500u:       NOTRUN -> [FAIL][5] ([i915#1814] / [i915#3363])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/fi-kbl-7500u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - {fi-hsw-gt1}:       [INCOMPLETE][6] ([i915#151]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-hsw-gt1/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/fi-hsw-gt1/igt@i915_pm_rpm@module-reload.html

  * igt@kms_flip@basic-flip-vs-modeset@c-dp1:
    - fi-cfl-8109u:       [FAIL][8] -> [PASS][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1:
    - fi-bwr-2160:        [FAIL][10] ([i915#2122]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][12] ([i915#295]) -> [PASS][13] +18 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3958]: https://gitlab.freedesktop.org/drm/intel/issues/3958


Participating hosts (44 -> 39)
------------------------------

  Additional (1): fi-kbl-7500u 
  Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 bat-jsl-2 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10570 -> Patchwork_21013

  CI-20190529: 20190529
  CI_DRM_10570: 8ba36ce2437426b91de6f03d30e75629108ea22b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6203: 64452a46b57ca4ef35eb65a547df8ed1b131e8f0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21013: 0bc8f32e2c2653c288d8cd49887c10d40dd44e62 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0bc8f32e2c26 drm/i915/display: program audio CDCLK-TS for keepalives

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/index.html

--===============2478876111412731214==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: program audio CDCLK-TS for keepalives</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94551/">https://patchwork.freedesktop.org/series/94551/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10570 -&gt; Patchwork_21013</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21013 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2373">i915#2373</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3958">i915#3958</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-hsw-gt1/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/151">i915#151</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/fi-hsw-gt1/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dp1:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21013/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> +18 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Additional (1): fi-kbl-7500u <br />
  Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 bat-jsl-2 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10570 -&gt; Patchwork_21013</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10570: 8ba36ce2437426b91de6f03d30e75629108ea22b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6203: 64452a46b57ca4ef35eb65a547df8ed1b131e8f0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21013: 0bc8f32e2c2653c288d8cd49887c10d40dd44e62 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0bc8f32e2c26 drm/i915/display: program audio CDCLK-TS for keepalives</p>

</body>
</html>

--===============2478876111412731214==--
