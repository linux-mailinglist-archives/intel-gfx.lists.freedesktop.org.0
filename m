Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0696E6482F7
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 14:51:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 913FA10E535;
	Fri,  9 Dec 2022 13:51:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E18DB10E535;
 Fri,  9 Dec 2022 13:51:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8A17A0078;
 Fri,  9 Dec 2022 13:51:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1753884586969177929=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 09 Dec 2022 13:51:19 -0000
Message-ID: <167059387984.9709.1210072669598707012@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221202122844.428006-1-matthew.auld@intel.com>
In-Reply-To: <20221202122844.428006-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv6=2C1/3=5D_drm/i915/migrate=3A_Account_fo?=
 =?utf-8?q?r_the_reserved=5Fspace_=28rev2=29?=
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

--===============1753884586969177929==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v6,1/3] drm/i915/migrate: Account for the reserved_space (rev2)
URL   : https://patchwork.freedesktop.org/series/111583/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12489 -> Patchwork_111583v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v2/index.html

Participating hosts (25 -> 25)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_111583v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [PASS][1] -> [INCOMPLETE][2] ([i915#4817])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12489/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v2/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - {bat-rpls-2}:       [WARN][3] ([i915#7346]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12489/bat-rpls-2/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v2/bat-rpls-2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-jsl-1}:         [INCOMPLETE][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12489/fi-jsl-1/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v2/fi-jsl-1/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#7346]: https://gitlab.freedesktop.org/drm/intel/issues/7346


Build changes
-------------

  * Linux: CI_DRM_12489 -> Patchwork_111583v2

  CI-20190529: 20190529
  CI_DRM_12489: 88ce885700bc3fad08382b83f408ac47abad7f3b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7089: f8a4a0b59ab9f0e408cb0817e440f63e7859917e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111583v2: 88ce885700bc3fad08382b83f408ac47abad7f3b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ed587b9e5322 drm/i915/selftests: exercise emit_pte() with nearly full ring
8422ba167a5c drm/i915/selftests: use live_subtests for live_migrate
ab6b5695bfc3 drm/i915/migrate: Account for the reserved_space

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v2/index.html

--===============1753884586969177929==
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
<tr><td><b>Series:</b></td><td>series starting with [v6,1/3] drm/i915/migrate: Account for the reserved_space (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111583/">https://patchwork.freedesktop.org/series/111583/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12489 -&gt; Patchwork_111583v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v2/index.html</p>
<h2>Participating hosts (25 -&gt; 25)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111583v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12489/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v2/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12489/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7346">i915#7346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v2/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12489/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v2/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12489 -&gt; Patchwork_111583v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12489: 88ce885700bc3fad08382b83f408ac47abad7f3b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7089: f8a4a0b59ab9f0e408cb0817e440f63e7859917e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111583v2: 88ce885700bc3fad08382b83f408ac47abad7f3b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ed587b9e5322 drm/i915/selftests: exercise emit_pte() with nearly full ring<br />
8422ba167a5c drm/i915/selftests: use live_subtests for live_migrate<br />
ab6b5695bfc3 drm/i915/migrate: Account for the reserved_space</p>

</body>
</html>

--===============1753884586969177929==--
