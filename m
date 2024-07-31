Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE60943531
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 19:53:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EC3810E64D;
	Wed, 31 Jul 2024 17:53:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A394210E4A7;
 Wed, 31 Jul 2024 17:53:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8112882756497515313=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915=3A_struct_intel=5F?=
 =?utf-8?q?display_conversions?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 31 Jul 2024 17:53:40 -0000
Message-ID: <172244842066.468889.14674114500420930166@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1722444150.git.jani.nikula@intel.com>
In-Reply-To: <cover.1722444150.git.jani.nikula@intel.com>
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

--===============8112882756497515313==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: struct intel_display conversions
URL   : https://patchwork.freedesktop.org/series/136758/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15162 -> Patchwork_136758v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_136758v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_136758v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/index.html

Participating hosts (37 -> 32)
------------------------------

  Additional (1): bat-arlh-3 
  Missing    (6): fi-kbl-7567u fi-bsw-n3050 fi-snb-2520m fi-glk-j4005 fi-kbl-8809g fi-elk-e7500 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_136758v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_mocs:
    - bat-twl-2:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15162/bat-twl-2/igt@i915_selftest@live@gt_mocs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/bat-twl-2/igt@i915_selftest@live@gt_mocs.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@guc:
    - {bat-arlh-3}:       NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/bat-arlh-3/igt@i915_selftest@live@guc.html

  
Known issues
------------

  Here are the changes found in Patchwork_136758v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-1:         [PASS][4] -> [DMESG-WARN][5] ([i915#11349] / [i915#11378])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15162/bat-arls-1/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/bat-arls-1/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@late_gt_pm:
    - bat-arls-2:         [PASS][6] -> [DMESG-FAIL][7] ([i915#10262]) +4 other tests dmesg-fail
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15162/bat-arls-2/igt@i915_selftest@live@late_gt_pm.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/bat-arls-2/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@perf:
    - bat-arls-2:         [PASS][8] -> [DMESG-WARN][9] ([i915#11378])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15162/bat-arls-2/igt@i915_selftest@live@perf.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/bat-arls-2/igt@i915_selftest@live@perf.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_migrate:
    - bat-arlh-2:         [INCOMPLETE][10] ([i915#11598]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15162/bat-arlh-2/igt@i915_selftest@live@gem_migrate.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/bat-arlh-2/igt@i915_selftest@live@gem_migrate.html

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-2:         [DMESG-WARN][12] ([i915#11349] / [i915#11378]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15162/bat-arls-2/igt@i915_selftest@live@hangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/bat-arls-2/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10196
  [i915#10262]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262
  [i915#11343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343
  [i915#11346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#11378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378
  [i915#11598]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11598
  [i915#11666]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666
  [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723
  [i915#11724]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724
  [i915#11725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725
  [i915#11726]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_15162 -> Patchwork_136758v1

  CI-20190529: 20190529
  CI_DRM_15162: 91efc68883cbff0e7e453d1828c8e84d9959c458 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7947: 6b46cef93ce2c2f821bfcaa3c3a111e1cf5c76fc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_136758v1: 91efc68883cbff0e7e453d1828c8e84d9959c458 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/index.html

--===============8112882756497515313==
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
<tr><td><b>Series:</b></td><td>drm/i915: struct intel_display conversions</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/136758/">https://patchwork.freedesktop.org/series/136758/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15162 -&gt; Patchwork_136758v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_136758v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_136758v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/index.html</p>
<h2>Participating hosts (37 -&gt; 32)</h2>
<p>Additional (1): bat-arlh-3 <br />
  Missing    (6): fi-kbl-7567u fi-bsw-n3050 fi-snb-2520m fi-glk-j4005 fi-kbl-8809g fi-elk-e7500 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_136758v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_mocs:<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15162/bat-twl-2/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/bat-twl-2/igt@i915_selftest@live@gt_mocs.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@guc:<ul>
<li>{bat-arlh-3}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/bat-arlh-3/igt@i915_selftest@live@guc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136758v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15162/bat-arls-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/bat-arls-1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378">i915#11378</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15162/bat-arls-2/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/bat-arls-2/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262">i915#10262</a>) +4 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15162/bat-arls-2/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/bat-arls-2/igt@i915_selftest@live@perf.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378">i915#11378</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_migrate:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15162/bat-arlh-2/igt@i915_selftest@live@gem_migrate.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11598">i915#11598</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/bat-arlh-2/igt@i915_selftest@live@gem_migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15162/bat-arls-2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378">i915#11378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136758v1/bat-arls-2/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15162 -&gt; Patchwork_136758v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15162: 91efc68883cbff0e7e453d1828c8e84d9959c458 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7947: 6b46cef93ce2c2f821bfcaa3c3a111e1cf5c76fc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_136758v1: 91efc68883cbff0e7e453d1828c8e84d9959c458 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8112882756497515313==--
