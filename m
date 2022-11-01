Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7641A615474
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 22:52:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44AE610E429;
	Tue,  1 Nov 2022 21:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9E23310E428;
 Tue,  1 Nov 2022 21:51:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 95B73AA01E;
 Tue,  1 Nov 2022 21:51:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0128735952906931565=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mchehab@kernel.org>
Date: Tue, 01 Nov 2022 21:51:56 -0000
Message-ID: <166733951658.13548.1548090452147226209@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <e7ace6f673b10898c8b5401aaca466e8105cbc1c.1667320524.git.mchehab@kernel.org>
In-Reply-To: <e7ace6f673b10898c8b5401aaca466e8105cbc1c.1667320524.git.mchehab@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_allow_running_mock_selftests_via_Kunit?=
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

--===============0128735952906931565==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: allow running mock selftests via Kunit
URL   : https://patchwork.freedesktop.org/series/110383/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12328 -> Patchwork_110383v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110383v1/index.html

Participating hosts (39 -> 29)
------------------------------

  Additional (1): fi-tgl-dsi 
  Missing    (11): bat-dg2-8 bat-adlm-1 fi-icl-u2 bat-dg2-9 bat-adlp-6 bat-adlp-4 bat-adln-1 bat-rplp-1 bat-rpls-2 bat-dg2-11 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110383v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110383v1/fi-tgl-dsi/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_110383v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-g3258:       NOTRUN -> [SKIP][2] ([fdo#109271] / [fdo#111827])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110383v1/fi-hsw-g3258/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@gem_tiled_blits@basic:
    - fi-pnv-d510:        [SKIP][3] ([fdo#109271]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12328/fi-pnv-d510/igt@gem_tiled_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110383v1/fi-pnv-d510/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [INCOMPLETE][5] ([i915#3303] / [i915#4785]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12328/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110383v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@mman:
    - fi-rkl-guc:         [INCOMPLETE][7] ([i915#6794]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12328/fi-rkl-guc/igt@i915_selftest@live@mman.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110383v1/fi-rkl-guc/igt@i915_selftest@live@mman.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
  [i915#7058]: https://gitlab.freedesktop.org/drm/intel/issues/7058


Build changes
-------------

  * Linux: CI_DRM_12328 -> Patchwork_110383v1

  CI-20190529: 20190529
  CI_DRM_12328: 8fe2bb19cad133f82e04b45f3e2ada6bb1179e48 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7037: 6a25c53624502fc85cec3cf0a0bf244a2346e30f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110383v1: 8fe2bb19cad133f82e04b45f3e2ada6bb1179e48 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

fbfc0f0a12e1 drm/i915: allow running mock selftests via Kunit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110383v1/index.html

--===============0128735952906931565==
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
<tr><td><b>Series:</b></td><td>drm/i915: allow running mock selftests via Kunit</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110383/">https://patchwork.freedesktop.org/series/110383/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110383v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110383v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12328 -&gt; Patchwork_110383v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110383v1/index.html</p>
<h2>Participating hosts (39 -&gt; 29)</h2>
<p>Additional (1): fi-tgl-dsi <br />
  Missing    (11): bat-dg2-8 bat-adlm-1 fi-icl-u2 bat-dg2-9 bat-adlp-6 bat-adlp-4 bat-adln-1 bat-rplp-1 bat-rpls-2 bat-dg2-11 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_110383v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@runner@aborted:<ul>
<li>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110383v1/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110383v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_chamelium@common-hpd-after-suspend:<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110383v1/fi-hsw-g3258/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12328/fi-pnv-d510/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110383v1/fi-pnv-d510/igt@gem_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12328/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110383v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12328/fi-rkl-guc/igt@i915_selftest@live@mman.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110383v1/fi-rkl-guc/igt@i915_selftest@live@mman.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12328 -&gt; Patchwork_110383v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12328: 8fe2bb19cad133f82e04b45f3e2ada6bb1179e48 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7037: 6a25c53624502fc85cec3cf0a0bf244a2346e30f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110383v1: 8fe2bb19cad133f82e04b45f3e2ada6bb1179e48 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>fbfc0f0a12e1 drm/i915: allow running mock selftests via Kunit</p>

</body>
</html>

--===============0128735952906931565==--
