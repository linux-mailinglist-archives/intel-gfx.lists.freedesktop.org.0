Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC79D705BD1
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 02:08:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C4610E380;
	Wed, 17 May 2023 00:08:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0253C10E380;
 Wed, 17 May 2023 00:08:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED497AADE0;
 Wed, 17 May 2023 00:08:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6579804996779963199=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Wed, 17 May 2023 00:08:35 -0000
Message-ID: <168428211596.6590.6322513868102333261@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230516220334.3737951-1-andrzej.hajda@intel.com>
In-Reply-To: <20230516220334.3737951-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2CDO=5FNOT=5FMERGE=2C1/2=5D_drm/i915/mt?=
 =?utf-8?q?l=3A_do_not_enable_render_power-gating_on_MTL?=
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

--===============6579804996779963199==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,DO_NOT_MERGE,1/2] drm/i915/mtl: do not enable render power-gating on MTL
URL   : https://patchwork.freedesktop.org/series/117839/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13154 -> Patchwork_117839v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117839v1/index.html

Participating hosts (38 -> 36)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_117839v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@basic-rte:
    - {bat-mtlp-8}:       [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-mtlp-8/igt@i915_pm_rpm@basic-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117839v1/bat-mtlp-8/igt@i915_pm_rpm@basic-rte.html

  
Known issues
------------

  Here are the changes found in Patchwork_117839v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-tgl-1115g4:      [PASS][3] -> [ABORT][4] ([i915#8189] / [i915#8213])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/fi-tgl-1115g4/igt@i915_suspend@basic-s2idle-without-i915.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117839v1/fi-tgl-1115g4/igt@i915_suspend@basic-s2idle-without-i915.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [DMESG-WARN][5] ([i915#7699]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117839v1/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@requests:
    - {bat-mtlp-8}:       [ABORT][7] ([i915#4983] / [i915#7920]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117839v1/bat-mtlp-8/igt@i915_selftest@live@requests.html
    - {bat-mtlp-6}:       [ABORT][9] ([i915#4983] / [i915#7920]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-mtlp-6/igt@i915_selftest@live@requests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117839v1/bat-mtlp-6/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#8189]: https://gitlab.freedesktop.org/drm/intel/issues/8189
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213


Build changes
-------------

  * Linux: CI_DRM_13154 -> Patchwork_117839v1

  CI-20190529: 20190529
  CI_DRM_13154: d04e82f5245c285e7ae36955d89c4d217d04d664 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7292: 9d9475ffd3b5ae18fd8ec120595385f6c562f249 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117839v1: d04e82f5245c285e7ae36955d89c4d217d04d664 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

6e6a565e8ee5 drm/i915/gt: do not enable render and media power-gating on RPL-S
bc12366471fe drm/i915/mtl: do not enable render power-gating on MTL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117839v1/index.html

--===============6579804996779963199==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,DO_NOT_MERGE,1/2] drm/i915/mtl: do not enable render power-gating on MTL</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117839/">https://patchwork.freedesktop.org/series/117839/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117839v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117839v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13154 -&gt; Patchwork_117839v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117839v1/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_117839v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-mtlp-8/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117839v1/bat-mtlp-8/igt@i915_pm_rpm@basic-rte.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117839v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_suspend@basic-s2idle-without-i915:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/fi-tgl-1115g4/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117839v1/fi-tgl-1115g4/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117839v1/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117839v1/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
<li>
<p>{bat-mtlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-mtlp-6/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117839v1/bat-mtlp-6/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13154 -&gt; Patchwork_117839v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13154: d04e82f5245c285e7ae36955d89c4d217d04d664 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7292: 9d9475ffd3b5ae18fd8ec120595385f6c562f249 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117839v1: d04e82f5245c285e7ae36955d89c4d217d04d664 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>6e6a565e8ee5 drm/i915/gt: do not enable render and media power-gating on RPL-S<br />
bc12366471fe drm/i915/mtl: do not enable render power-gating on MTL</p>

</body>
</html>

--===============6579804996779963199==--
