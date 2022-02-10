Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B434B06C5
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 08:01:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6854F10E71E;
	Thu, 10 Feb 2022 07:01:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 361B410E71E;
 Thu, 10 Feb 2022 07:01:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3187FAADD2;
 Thu, 10 Feb 2022 07:01:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7101991159941139197=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 10 Feb 2022 07:01:36 -0000
Message-ID: <164447649616.24636.1947504183622652828@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220210062403.18690-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220210062403.18690-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Futher_optimize_plane_updates_=28rev3=29?=
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

--===============7101991159941139197==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Futher optimize plane updates (rev3)
URL   : https://patchwork.freedesktop.org/series/99149/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11207 -> Patchwork_22234
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22234/index.html

Participating hosts (45 -> 43)
------------------------------

  Additional (1): bat-rpls-1 
  Missing    (3): fi-bsw-cyan fi-icl-u2 shard-tglu 

Known issues
------------

  Here are the changes found in Patchwork_22234 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@bad-flink:
    - fi-skl-6600u:       [PASS][1] -> [FAIL][2] ([i915#4547])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22234/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [PASS][3] -> [DMESG-FAIL][4] ([i915#4494] / [i915#4957])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22234/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-cfl-8109u:       [PASS][5] -> [DMESG-WARN][6] ([i915#295]) +12 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22234/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][7] ([fdo#109271]) -> [FAIL][8] ([i915#3049])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22234/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3049]: https://gitlab.freedesktop.org/drm/intel/issues/3049
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957


Build changes
-------------

  * Linux: CI_DRM_11207 -> Patchwork_22234

  CI-20190529: 20190529
  CI_DRM_11207: 0d650d738ee924dc0c367ff1f33c61237a635933 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6342: 1bd167a3af9e8f6168ac89c64c64b929694d9be7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22234: ebef7e80786343e2bdf985da2212692864327cfc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ebef7e807863 drm/i915: Make pre-skl sprite plane registers unlocked
2afcc45526b7 drm/i915: Make most pre-skl primary plane registers unlocked
a94acb7297ed drm/i915: Make cursor plane registers unlocked
70612125272d drm/i915: Make skl+ universal plane registers unlocked
e88416e136a5 drm/i915: Optimize icl+ universal plane programming

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22234/index.html

--===============7101991159941139197==
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
<tr><td><b>Series:</b></td><td>drm/i915: Futher optimize plane updates (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99149/">https://patchwork.freedesktop.org/series/99149/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22234/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22234/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11207 -&gt; Patchwork_22234</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22234/index.html</p>
<h2>Participating hosts (45 -&gt; 43)</h2>
<p>Additional (1): bat-rpls-1 <br />
  Missing    (3): fi-bsw-cyan fi-icl-u2 shard-tglu </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22234 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22234/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22234/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22234/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) +12 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11207/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22234/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3049">i915#3049</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11207 -&gt; Patchwork_22234</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11207: 0d650d738ee924dc0c367ff1f33c61237a635933 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6342: 1bd167a3af9e8f6168ac89c64c64b929694d9be7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22234: ebef7e80786343e2bdf985da2212692864327cfc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ebef7e807863 drm/i915: Make pre-skl sprite plane registers unlocked<br />
2afcc45526b7 drm/i915: Make most pre-skl primary plane registers unlocked<br />
a94acb7297ed drm/i915: Make cursor plane registers unlocked<br />
70612125272d drm/i915: Make skl+ universal plane registers unlocked<br />
e88416e136a5 drm/i915: Optimize icl+ universal plane programming</p>

</body>
</html>

--===============7101991159941139197==--
