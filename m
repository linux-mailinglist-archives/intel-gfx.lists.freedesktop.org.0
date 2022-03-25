Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B19F4E740E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 14:17:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F8D910EB8D;
	Fri, 25 Mar 2022 13:17:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CBA0E10EB8D;
 Fri, 25 Mar 2022 13:17:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C871CA0099;
 Fri, 25 Mar 2022 13:17:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3964273931577610402=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chuansheng Liu" <chuansheng.liu@intel.com>
Date: Fri, 25 Mar 2022 13:17:02 -0000
Message-ID: <164821422278.24039.14036053171937459186@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220325010328.32963-1-chuansheng.liu@intel.com>
In-Reply-To: <20220325010328.32963-1-chuansheng.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_fix_one_mem_leak_in_mmap=5Foffset=5Fattach=28=29_=28re?=
 =?utf-8?b?djYp?=
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

--===============3964273931577610402==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: fix one mem leak in mmap_offset_attach() (rev6)
URL   : https://patchwork.freedesktop.org/series/100532/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11404 -> Patchwork_22681
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/index.html

Participating hosts (43 -> 43)
------------------------------

  Additional (2): bat-adlm-1 fi-pnv-d510 
  Missing    (2): fi-bsw-cyan shard-tglu 

Known issues
------------

  Here are the changes found in Patchwork_22681 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          NOTRUN -> [DMESG-FAIL][1] ([i915#4494] / [i915#4957])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-pnv-d510:        NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#5341])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][3] ([fdo#109271]) +57 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - {fi-rkl-11600}:     [INCOMPLETE][4] ([i915#5127]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_pm_rpm@module-reload:
    - {bat-rpls-2}:       [INCOMPLETE][6] ([i915#5414]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/bat-rpls-2/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/bat-rpls-2/igt@i915_pm_rpm@module-reload.html
    - {bat-adlp-6}:       [DMESG-WARN][8] ([i915#3576]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/bat-adlp-6/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          [INCOMPLETE][10] ([i915#4418]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/bat-dg1-6/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-g3258}:     [INCOMPLETE][12] ([i915#3303] / [i915#4785]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5339]: https://gitlab.freedesktop.org/drm/intel/issues/5339
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5342]: https://gitlab.freedesktop.org/drm/intel/issues/5342
  [i915#5401]: https://gitlab.freedesktop.org/drm/intel/issues/5401
  [i915#5414]: https://gitlab.freedesktop.org/drm/intel/issues/5414


Build changes
-------------

  * Linux: CI_DRM_11404 -> Patchwork_22681

  CI-20190529: 20190529
  CI_DRM_11404: 8df936777bab46f640732d755138b42dad779c15 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6393: 1d267ea1b829fa10b31a37ccf6b4a970f032784a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22681: dc0216ae5a53939db1a9690e1389e9d7228a7126 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

dc0216ae5a53 drm/i915: fix one mem leak in mmap_offset_attach()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/index.html

--===============3964273931577610402==
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
<tr><td><b>Series:</b></td><td>drm/i915: fix one mem leak in mmap_offset_attach() (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100532/">https://patchwork.freedesktop.org/series/100532/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11404 -&gt; Patchwork_22681</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/index.html</p>
<h2>Participating hosts (43 -&gt; 43)</h2>
<p>Additional (2): bat-adlm-1 fi-pnv-d510 <br />
  Missing    (2): fi-bsw-cyan shard-tglu </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22681 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{fi-rkl-11600}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5414">i915#5414</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">PASS</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-hsw-g3258}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11404/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22681/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11404 -&gt; Patchwork_22681</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11404: 8df936777bab46f640732d755138b42dad779c15 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6393: 1d267ea1b829fa10b31a37ccf6b4a970f032784a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22681: dc0216ae5a53939db1a9690e1389e9d7228a7126 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>dc0216ae5a53 drm/i915: fix one mem leak in mmap_offset_attach()</p>

</body>
</html>

--===============3964273931577610402==--
