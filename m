Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0503467AE3A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 10:40:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE49B10E0DB;
	Wed, 25 Jan 2023 09:40:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7D60C10E0DB;
 Wed, 25 Jan 2023 09:40:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 749A6A00CC;
 Wed, 25 Jan 2023 09:40:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6111336874511642199=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Wed, 25 Jan 2023 09:40:08 -0000
Message-ID: <167463960843.5512.4148204152283089300@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230125082637.118970-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20230125082637.118970-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pxp=3A_Add_missing_cleanup_steps_for_PXP_global-teardown?=
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

--===============6111336874511642199==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pxp: Add missing cleanup steps for PXP global-teardown
URL   : https://patchwork.freedesktop.org/series/113307/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12631 -> Patchwork_113307v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113307v1/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-bsw-kefka 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_113307v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@hangcheck:
    - {bat-dg2-11}:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12631/bat-dg2-11/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113307v1/bat-dg2-11/igt@i915_selftest@live@hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_113307v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-soraka:      [PASS][3] -> [INCOMPLETE][4] ([i915#7156])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12631/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113307v1/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][5] -> [DMESG-FAIL][6] ([i915#5334] / [i915#7872])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12631/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113307v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-soraka:      [DMESG-WARN][7] ([i915#1982]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12631/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113307v1/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][9] ([i915#7229]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12631/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113307v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077
  [i915#7156]: https://gitlab.freedesktop.org/drm/intel/issues/7156
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#7625]: https://gitlab.freedesktop.org/drm/intel/issues/7625
  [i915#7852]: https://gitlab.freedesktop.org/drm/intel/issues/7852
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872


Build changes
-------------

  * Linux: CI_DRM_12631 -> Patchwork_113307v1

  CI-20190529: 20190529
  CI_DRM_12631: 6bcfacd291ed6ff1ff50a295f970c98d54eabe05 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7136: 31b6af91747ad8c705399c9006cdb81cb1864146 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113307v1: 6bcfacd291ed6ff1ff50a295f970c98d54eabe05 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a259f16897e5 drm/i915/pxp: Pxp hw init should be in resume_complete
74910a99f6e6 drm/i915/pxp: Trigger the global teardown for before suspending
e5620c32f8eb drm/i915/pxp: Invalidate all PXP fw sessions during teardown
f42de747c091 mei: clean pending read with vtag on bus
05cbd443c390 drm/i915/pxp: add device link between i915 and mei_pxp
5ba50836c244 mei: mei-me: resume device in prepare

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113307v1/index.html

--===============6111336874511642199==
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
<tr><td><b>Series:</b></td><td>drm/i915/pxp: Add missing cleanup steps for PXP global-teardown</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113307/">https://patchwork.freedesktop.org/series/113307/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113307v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113307v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12631 -&gt; Patchwork_113307v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113307v1/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-bsw-kefka </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_113307v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12631/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113307v1/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113307v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12631/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113307v1/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7156">i915#7156</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12631/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113307v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12631/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113307v1/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12631/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113307v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12631 -&gt; Patchwork_113307v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12631: 6bcfacd291ed6ff1ff50a295f970c98d54eabe05 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7136: 31b6af91747ad8c705399c9006cdb81cb1864146 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113307v1: 6bcfacd291ed6ff1ff50a295f970c98d54eabe05 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a259f16897e5 drm/i915/pxp: Pxp hw init should be in resume_complete<br />
74910a99f6e6 drm/i915/pxp: Trigger the global teardown for before suspending<br />
e5620c32f8eb drm/i915/pxp: Invalidate all PXP fw sessions during teardown<br />
f42de747c091 mei: clean pending read with vtag on bus<br />
05cbd443c390 drm/i915/pxp: add device link between i915 and mei_pxp<br />
5ba50836c244 mei: mei-me: resume device in prepare</p>

</body>
</html>

--===============6111336874511642199==--
