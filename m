Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9835A2A98
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 17:11:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CF8E10E882;
	Fri, 26 Aug 2022 15:11:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8356110E996;
 Fri, 26 Aug 2022 15:11:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B0AEAADDC;
 Fri, 26 Aug 2022 15:11:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0014099033468701265=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Fri, 26 Aug 2022 15:11:29 -0000
Message-ID: <166152668947.30040.8010230697507848707@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220826141929.189681-1-andrzej.hajda@intel.com>
In-Reply-To: <20220826141929.189681-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_stop_HPD_workers_before_display_driver_unregis?=
 =?utf-8?q?ter_=28rev15=29?=
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

--===============0014099033468701265==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: stop HPD workers before display driver unregister (rev15)
URL   : https://patchwork.freedesktop.org/series/105557/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12034 -> Patchwork_105557v15
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/index.html

Participating hosts (40 -> 35)
------------------------------

  Additional (2): fi-kbl-soraka fi-pnv-d510 
  Missing    (7): fi-rkl-11600 fi-hsw-4200u bat-dg2-8 fi-ctg-p8600 fi-hsw-4770 bat-dg2-10 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105557v15:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_lrc:
    - {bat-dg2-9}:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/bat-dg2-9/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/bat-dg2-9/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@slpc:
    - {bat-rpls-1}:       NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
Known issues
------------

  Here are the changes found in Patchwork_105557v15 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          NOTRUN -> [DMESG-FAIL][4] ([i915#4494] / [i915#4957])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        NOTRUN -> [DMESG-FAIL][5] ([i915#4528])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-dg1-6:          NOTRUN -> [INCOMPLETE][6] ([i915#6011])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/bat-dg1-6/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][7] ([fdo#109271]) +42 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][8] ([fdo#109271] / [i915#2403] / [i915#4312])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/fi-pnv-d510/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][9] ([i915#6219])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/fi-kbl-soraka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rplp-1}:       [DMESG-WARN][10] ([i915#2867]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          [INCOMPLETE][12] ([i915#4418]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/bat-dg1-6/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][14] ([i915#4494] / [i915#4957]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-1}:       [DMESG-FAIL][16] ([i915#4983]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/bat-rpls-1/igt@i915_selftest@live@reset.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [DMESG-WARN][18] ([i915#62]) -> [PASS][19] +13 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2:
    - fi-bdw-5557u:       [INCOMPLETE][20] ([i915#146] / [i915#6598]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/fi-bdw-5557u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/fi-bdw-5557u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6219]: https://gitlab.freedesktop.org/drm/intel/issues/6219
  [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598


Build changes
-------------

  * Linux: CI_DRM_12034 -> Patchwork_105557v15

  CI-20190529: 20190529
  CI_DRM_12034: b34ca8196b34f318d0d46cb282fd44fc748d5bbf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105557v15: b34ca8196b34f318d0d46cb282fd44fc748d5bbf @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0448643b593a drm/i915/fbdev: do not create fbdev if HPD is suspended
74476b2d7669 drm/i915/fbdev: suspend HPD before fbdev unregistration
d4d395803b27 drm/i915/hpd: suspend MST at the end of intel_modeset_driver_remove

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/index.html

--===============0014099033468701265==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: stop HPD workers before display driver unregister (rev15)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105557/">https://patchwork.freedesktop.org/series/105557/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12034 -&gt; Patchwork_105557v15</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/index.html</p>
<h2>Participating hosts (40 -&gt; 35)</h2>
<p>Additional (2): fi-kbl-soraka fi-pnv-d510 <br />
  Missing    (7): fi-rkl-11600 fi-hsw-4200u bat-dg2-8 fi-ctg-p8600 fi-hsw-4770 bat-dg2-10 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_105557v15:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/bat-dg2-9/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/bat-dg2-9/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-rpls-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/bat-rpls-1/igt@i915_selftest@live@slpc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105557v15 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/bat-dg1-6/igt@i915_suspend@basic-s2idle-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6011">i915#6011</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/bat-rpls-1/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/fi-bdw-5557u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/fi-bdw-5557u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12034 -&gt; Patchwork_105557v15</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12034: b34ca8196b34f318d0d46cb282fd44fc748d5bbf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105557v15: b34ca8196b34f318d0d46cb282fd44fc748d5bbf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0448643b593a drm/i915/fbdev: do not create fbdev if HPD is suspended<br />
74476b2d7669 drm/i915/fbdev: suspend HPD before fbdev unregistration<br />
d4d395803b27 drm/i915/hpd: suspend MST at the end of intel_modeset_driver_remove</p>

</body>
</html>

--===============0014099033468701265==--
