Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8F530D493
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 09:04:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 192546E9CE;
	Wed,  3 Feb 2021 08:04:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4B04F6E9CD;
 Wed,  3 Feb 2021 08:04:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 458C1A00E6;
 Wed,  3 Feb 2021 08:04:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 03 Feb 2021 08:04:21 -0000
Message-ID: <161233946127.943.7976873167361791315@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210203065350.24476-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210203065350.24476-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gt=3A_Move_engine_set?=
 =?utf-8?q?up_out_of_set=5Fdefault=5Fsubmission?=
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
Content-Type: multipart/mixed; boundary="===============2038210758=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2038210758==
Content-Type: multipart/alternative;
 boundary="===============6459498090417159994=="

--===============6459498090417159994==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/3] drm/i915/gt: Move engine setup out of set_default_submission
URL   : https://patchwork.freedesktop.org/series/86603/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9720 -> Patchwork_19567
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19567 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19567, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19567:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@engines@contexts:
    - fi-byt-j1900:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9720/fi-byt-j1900/igt@gem_exec_parallel@engines@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-byt-j1900/igt@gem_exec_parallel@engines@contexts.html
    - fi-ivb-3770:        [PASS][3] -> [FAIL][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9720/fi-ivb-3770/igt@gem_exec_parallel@engines@contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-ivb-3770/igt@gem_exec_parallel@engines@contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_19567 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@coherency:
    - fi-hsw-4770:        [PASS][5] -> [INCOMPLETE][6] ([i915#1729])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9720/fi-hsw-4770/igt@i915_selftest@live@coherency.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-hsw-4770/igt@i915_selftest@live@coherency.html
    - fi-ivb-3770:        [PASS][7] -> [INCOMPLETE][8] ([i915#1729])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9720/fi-ivb-3770/igt@i915_selftest@live@coherency.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-ivb-3770/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [PASS][9] -> [INCOMPLETE][10] ([i915#2782] / [i915#926])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9720/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-n3050:       [PASS][11] -> [DMESG-FAIL][12] ([i915#2927])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9720/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][13] -> [DMESG-WARN][14] ([i915#402]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9720/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  * igt@runner@aborted:
    - fi-icl-y:           NOTRUN -> [FAIL][15] ([i915#2295] / [i915#2724])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-icl-y/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][16] ([i915#1436])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [DMESG-WARN][17] ([i915#402]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9720/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1729]: https://gitlab.freedesktop.org/drm/intel/issues/1729
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (42 -> 39)
------------------------------

  Missing    (3): fi-jsl-1 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9720 -> Patchwork_19567

  CI-20190529: 20190529
  CI_DRM_9720: 23c0f4460024782c5043dabab4b2966831e4c887 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5988: 4581082c706498cc3afe20e89fc4836a3fc69105 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19567: 56f65e0f085863cd80136de398314be08c37fdc5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

56f65e0f0858 drm/i915/gt: Move CS interrupt handler to the backend
e6dae7cfb111 drm/i915/gt: Move submission_method into intel_gt
28ff2ac4ae49 drm/i915/gt: Move engine setup out of set_default_submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/index.html

--===============6459498090417159994==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/3] drm/i915/gt: Move engine setup out of set_default_submission</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86603/">https://patchwork.freedesktop.org/series/86603/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9720 -&gt; Patchwork_19567</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19567 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19567, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19567:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9720/fi-byt-j1900/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-byt-j1900/igt@gem_exec_parallel@engines@contexts.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9720/fi-ivb-3770/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-ivb-3770/igt@gem_exec_parallel@engines@contexts.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19567 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9720/fi-hsw-4770/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-hsw-4770/igt@i915_selftest@live@coherency.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1729">i915#1729</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9720/fi-ivb-3770/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-ivb-3770/igt@i915_selftest@live@coherency.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1729">i915#1729</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9720/fi-icl-y/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-icl-y/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/926">i915#926</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9720/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9720/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_vgem@basic-gtt:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9720/fi-tgl-y/igt@prime_vgem@basic-gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19567/fi-tgl-y/igt@prime_vgem@basic-gtt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): fi-jsl-1 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9720 -&gt; Patchwork_19567</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9720: 23c0f4460024782c5043dabab4b2966831e4c887 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5988: 4581082c706498cc3afe20e89fc4836a3fc69105 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19567: 56f65e0f085863cd80136de398314be08c37fdc5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>56f65e0f0858 drm/i915/gt: Move CS interrupt handler to the backend<br />
e6dae7cfb111 drm/i915/gt: Move submission_method into intel_gt<br />
28ff2ac4ae49 drm/i915/gt: Move engine setup out of set_default_submission</p>

</body>
</html>

--===============6459498090417159994==--

--===============2038210758==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2038210758==--
