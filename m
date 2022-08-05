Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C20E58AF28
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Aug 2022 19:50:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9494FB9373;
	Fri,  5 Aug 2022 17:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4871BB9758;
 Fri,  5 Aug 2022 17:41:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 416ACAADD2;
 Fri,  5 Aug 2022 17:41:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8565907764614169262=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Piorkowski, Piotr" <piotr.piorkowski@intel.com>
Date: Fri, 05 Aug 2022 17:41:38 -0000
Message-ID: <165972129824.21185.15994720755028174389@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220805155959.1983584-1-piotr.piorkowski@intel.com>
In-Reply-To: <20220805155959.1983584-1-piotr.piorkowski@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgU2Fu?=
 =?utf-8?q?itycheck_PCI_BARs_=28rev2=29?=
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

--===============8565907764614169262==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Sanitycheck PCI BARs (rev2)
URL   : https://patchwork.freedesktop.org/series/106927/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11971 -> Patchwork_106927v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_106927v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_106927v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): bat-dg2-8 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_106927v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@guc_hang:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-cfl-8109u/igt@i915_selftest@live@guc_hang.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/fi-cfl-8109u/igt@i915_selftest@live@guc_hang.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-dg2-10}:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-dg2-10/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/bat-dg2-10/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_106927v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [PASS][5] -> [DMESG-FAIL][6] ([i915#62])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-cfl-8109u:       [PASS][7] -> [DMESG-WARN][8] ([i915#5904]) +29 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-cfl-8109u:       [PASS][9] -> [DMESG-WARN][10] ([i915#5904] / [i915#62])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-bdw-5557u:       [PASS][11] -> [INCOMPLETE][12] ([i915#146])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [PASS][13] -> [DMESG-WARN][14] ([i915#62]) +12 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][15] ([i915#2867]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@slpc:
    - {bat-rpls-1}:       [DMESG-FAIL][17] ([i915#6367]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][19] ([i915#4957]) -> [DMESG-FAIL][20] ([i915#4494] / [i915#4957])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
    - bat-dg1-6:          [DMESG-FAIL][21] ([i915#4494] / [i915#4957]) -> [DMESG-FAIL][22] ([i915#4957])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5904]: https://gitlab.freedesktop.org/drm/intel/issues/5904
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367


Build changes
-------------

  * Linux: CI_DRM_11971 -> Patchwork_106927v2

  CI-20190529: 20190529
  CI_DRM_11971: 2bdae66c9988dd0f07633629c0a85383cfc05940 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6614: fbb4a4058b8f4119a079b2fda5c94aaacd850a78 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106927v2: 2bdae66c9988dd0f07633629c0a85383cfc05940 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4e46a15b7ddf drm/i915: Sanitycheck PCI BARs
79faae70c394 drm/i915: Use of BARs names instead of numbers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/index.html

--===============8565907764614169262==
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
<tr><td><b>Series:</b></td><td>Sanitycheck PCI BARs (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/106927/">https://patchwork.freedesktop.org/series/106927/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11971 -&gt; Patchwork_106927v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_106927v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_106927v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): bat-dg2-8 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_106927v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@guc_hang:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-cfl-8109u/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/fi-cfl-8109u/igt@i915_selftest@live@guc_hang.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>{bat-dg2-10}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-dg2-10/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/bat-dg2-10/igt@i915_module_load@load.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106927v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a>) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) +12 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11971 -&gt; Patchwork_106927v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11971: 2bdae66c9988dd0f07633629c0a85383cfc05940 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6614: fbb4a4058b8f4119a079b2fda5c94aaacd850a78 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106927v2: 2bdae66c9988dd0f07633629c0a85383cfc05940 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4e46a15b7ddf drm/i915: Sanitycheck PCI BARs<br />
79faae70c394 drm/i915: Use of BARs names instead of numbers</p>

</body>
</html>

--===============8565907764614169262==--
