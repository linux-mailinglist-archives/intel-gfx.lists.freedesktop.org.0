Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 113704AEECD
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 11:00:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87B6810E6EB;
	Wed,  9 Feb 2022 10:00:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A163810E329;
 Wed,  9 Feb 2022 10:00:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5FED9A66C9;
 Wed,  9 Feb 2022 10:00:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1601854529948776051=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 09 Feb 2022 10:00:07 -0000
Message-ID: <164440080734.23775.6488925014143913940@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220209091928.14766-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220209091928.14766-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/atomic=3A_Don=27t_pollute_crtc?=
 =?utf-8?q?=5Fstate-=3Emode=5Fblob_with_error_pointers?=
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

--===============1601854529948776051==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/atomic: Don't pollute crtc_state->mode_blob with error pointers
URL   : https://patchwork.freedesktop.org/series/99891/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11206 -> Patchwork_22219
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22219/index.html

Participating hosts (45 -> 43)
------------------------------

  Missing    (2): fi-bsw-cyan shard-tglu 

Known issues
------------

  Here are the changes found in Patchwork_22219 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - fi-skl-6600u:       NOTRUN -> [FAIL][1] ([i915#4547])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22219/fi-skl-6600u/igt@i915_selftest@live.html

  * igt@runner@aborted:
    - fi-skl-6600u:       NOTRUN -> [FAIL][2] ([i915#1436] / [i915#4312])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22219/fi-skl-6600u/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][3] ([i915#2426] / [i915#4312])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22219/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-kbl-soraka:      [DMESG-WARN][4] ([i915#4391]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11206/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22219/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][6] ([i915#4494] / [i915#4957]) -> [DMESG-FAIL][7] ([i915#4957])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11206/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22219/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957


Build changes
-------------

  * Linux: CI_DRM_11206 -> Patchwork_22219

  CI-20190529: 20190529
  CI_DRM_11206: c506a5dedeb5dd0a7a6cdce55cc4a09beb9c39ce @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6341: a96674e747ea2f2431bbf8813156adc44ec3162a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22219: a49cdac0dbbf94c53051b3341ceff5c3468adf89 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a49cdac0dbbf drm/modes: Fix drm_mode_copy() docs
96608b660f2b drm/atomic: Don't pollute crtc_state->mode_blob with error pointers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22219/index.html

--===============1601854529948776051==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/atomic: Don&#39;t pollute crtc_state-&gt;mode_blob with error pointers</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99891/">https://patchwork.freedesktop.org/series/99891/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22219/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22219/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11206 -&gt; Patchwork_22219</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22219/index.html</p>
<h2>Participating hosts (45 -&gt; 43)</h2>
<p>Missing    (2): fi-bsw-cyan shard-tglu </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22219 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22219/fi-skl-6600u/igt@i915_selftest@live.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22219/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22219/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gem_contexts:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11206/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22219/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11206/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22219/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11206 -&gt; Patchwork_22219</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11206: c506a5dedeb5dd0a7a6cdce55cc4a09beb9c39ce @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6341: a96674e747ea2f2431bbf8813156adc44ec3162a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22219: a49cdac0dbbf94c53051b3341ceff5c3468adf89 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a49cdac0dbbf drm/modes: Fix drm_mode_copy() docs<br />
96608b660f2b drm/atomic: Don't pollute crtc_state-&gt;mode_blob with error pointers</p>

</body>
</html>

--===============1601854529948776051==--
