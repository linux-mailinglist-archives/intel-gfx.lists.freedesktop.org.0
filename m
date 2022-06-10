Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3098E546B99
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 19:22:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 791EC10E905;
	Fri, 10 Jun 2022 17:22:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BAB6E10E1AC;
 Fri, 10 Jun 2022 17:22:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1CEDAA0EB;
 Fri, 10 Jun 2022 17:22:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3908688231747081588=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Fri, 10 Jun 2022 17:22:32 -0000
Message-ID: <165488175271.16747.15662317194071713309@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220610085429.52935-1-jouni.hogander@intel.com>
In-Reply-To: <20220610085429.52935-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRGlz?=
 =?utf-8?q?able_connector_polling_for_a_headless_sku_=28rev3=29?=
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

--===============3908688231747081588==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Disable connector polling for a headless sku (rev3)
URL   : https://patchwork.freedesktop.org/series/104711/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11753 -> Patchwork_104711v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104711v3/index.html

Participating hosts (42 -> 42)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_104711v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-adlp-4:         [PASS][1] -> [DMESG-WARN][2] ([i915#3576])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/bat-adlp-4/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104711v3/bat-adlp-4/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {fi-ehl-2}:         [DMESG-WARN][3] ([i915#5122]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104711v3/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@gem:
    - {bat-dg2-9}:        [DMESG-WARN][5] ([i915#5763]) -> [PASS][6] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/bat-dg2-9/igt@i915_selftest@live@gem.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104711v3/bat-dg2-9/igt@i915_selftest@live@gem.html

  * igt@kms_busy@basic@flip:
    - bat-adlp-4:         [DMESG-WARN][7] ([i915#3576]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/bat-adlp-4/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104711v3/bat-adlp-4/igt@kms_busy@basic@flip.html
    - {bat-adlp-6}:       [DMESG-WARN][9] ([i915#3576]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/bat-adlp-6/igt@kms_busy@basic@flip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104711v3/bat-adlp-6/igt@kms_busy@basic@flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5270]: https://gitlab.freedesktop.org/drm/intel/issues/5270
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5885]: https://gitlab.freedesktop.org/drm/intel/issues/5885


Build changes
-------------

  * Linux: CI_DRM_11753 -> Patchwork_104711v3

  CI-20190529: 20190529
  CI_DRM_11753: cb89eb64792fd1a78c5ffc473f7e208b88e62fad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6518: 0189ca288f7188e60f5eda356b190040bf8ec704 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104711v3: cb89eb64792fd1a78c5ffc473f7e208b88e62fad @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

80a59ec60f85 drm/i915: Do not start connector polling on headless sku
ba1d44c8e682 drm/i915: Do not start connector polling if display is disabled
3a60d0d8810f drm/i915/opregion: add function to check if headless sku

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104711v3/index.html

--===============3908688231747081588==
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
<tr><td><b>Series:</b></td><td>Disable connector polling for a headless sku (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104711/">https://patchwork.freedesktop.org/series/104711/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104711v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104711v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11753 -&gt; Patchwork_104711v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104711v3/index.html</p>
<h2>Participating hosts (42 -&gt; 42)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104711v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/bat-adlp-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104711v3/bat-adlp-4/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5122">i915#5122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104711v3/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/bat-dg2-9/igt@i915_selftest@live@gem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5763">i915#5763</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104711v3/bat-dg2-9/igt@i915_selftest@live@gem.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/bat-adlp-4/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104711v3/bat-adlp-4/igt@kms_busy@basic@flip.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104711v3/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11753 -&gt; Patchwork_104711v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11753: cb89eb64792fd1a78c5ffc473f7e208b88e62fad @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6518: 0189ca288f7188e60f5eda356b190040bf8ec704 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104711v3: cb89eb64792fd1a78c5ffc473f7e208b88e62fad @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>80a59ec60f85 drm/i915: Do not start connector polling on headless sku<br />
ba1d44c8e682 drm/i915: Do not start connector polling if display is disabled<br />
3a60d0d8810f drm/i915/opregion: add function to check if headless sku</p>

</body>
</html>

--===============3908688231747081588==--
