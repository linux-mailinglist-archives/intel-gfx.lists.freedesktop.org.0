Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD55F7EBA3F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 00:36:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B56010E4DF;
	Tue, 14 Nov 2023 23:36:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B54810E4DF;
 Tue, 14 Nov 2023 23:36:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2CC75AADDA;
 Tue, 14 Nov 2023 23:36:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2400877274837386987=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Tue, 14 Nov 2023 23:36:52 -0000
Message-ID: <170000501215.29257.15189096726633992644@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231114155229.756100-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20231114155229.756100-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmVz?=
 =?utf-8?q?olve_suspend-resume_racing_with_GuC_destroy-context-worker_=28r?=
 =?utf-8?q?ev6=29?=
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

--===============2400877274837386987==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Resolve suspend-resume racing with GuC destroy-context-worker (rev6)
URL   : https://patchwork.freedesktop.org/series/121916/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13875 -> Patchwork_121916v6
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/index.html

Participating hosts (39 -> 36)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (4): fi-hsw-4770 bat-mtlp-8 fi-snb-2520m bat-dg1-5 

Known issues
------------

  Here are the changes found in Patchwork_121916v6 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-atsm-1:         NOTRUN -> [SKIP][1] ([i915#6645])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html
    - bat-rpls-1:         [PASS][2] -> [ABORT][3] ([i915#7978] / [i915#9631])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-atsm-1:         NOTRUN -> [SKIP][4] ([i915#1836])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][5] ([fdo#109271]) +29 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - bat-atsm-1:         [INCOMPLETE][6] ([i915#9174]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][8] ([i915#5334]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_flip@basic-flip-vs-modeset@d-dp5:
    - bat-adlp-11:        [DMESG-FAIL][10] ([i915#6868]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp5.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp5.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][12] ([i915#8668]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  * igt@kms_psr@primary_mmap_gtt:
    - bat-jsl-1:          [SKIP][14] ([i915#9648]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-jsl-1/igt@kms_psr@primary_mmap_gtt.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/bat-jsl-1/igt@kms_psr@primary_mmap_gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9174]: https://gitlab.freedesktop.org/drm/intel/issues/9174
  [i915#9631]: https://gitlab.freedesktop.org/drm/intel/issues/9631
  [i915#9648]: https://gitlab.freedesktop.org/drm/intel/issues/9648


Build changes
-------------

  * Linux: CI_DRM_13875 -> Patchwork_121916v6

  CI-20190529: 20190529
  CI_DRM_13875: 00536be456cfe5f687c0e782f8dfba7db666d89b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7588: 328c5873b8f061267fdf86ed32cb5ecc611ba081 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_121916v6: 00536be456cfe5f687c0e782f8dfba7db666d89b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d8df17a0efee drm/i915/guc: Close deregister-context race against CT-loss
9acb9d003c2b drm/i915/guc: Flush context destruction worker at suspend

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/index.html

--===============2400877274837386987==
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
<tr><td><b>Series:</b></td><td>Resolve suspend-resume racing with GuC destroy-context-worker (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/121916/">https://patchwork.freedesktop.org/series/121916/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13875 -&gt; Patchwork_121916v6</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/index.html</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (4): fi-hsw-4770 bat-mtlp-8 fi-snb-2520m bat-dg1-5 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_121916v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9631">i915#9631</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1836">i915#1836</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +29 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9174">i915#9174</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-dp5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp5.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-jsl-1/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9648">i915#9648</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v6/bat-jsl-1/igt@kms_psr@primary_mmap_gtt.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13875 -&gt; Patchwork_121916v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13875: 00536be456cfe5f687c0e782f8dfba7db666d89b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7588: 328c5873b8f061267fdf86ed32cb5ecc611ba081 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_121916v6: 00536be456cfe5f687c0e782f8dfba7db666d89b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d8df17a0efee drm/i915/guc: Close deregister-context race against CT-loss<br />
9acb9d003c2b drm/i915/guc: Flush context destruction worker at suspend</p>

</body>
</html>

--===============2400877274837386987==--
