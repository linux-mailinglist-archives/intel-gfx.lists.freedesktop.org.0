Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE04592B72
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Aug 2022 12:33:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19A619BF40;
	Mon, 15 Aug 2022 10:33:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1BC62A2C7;
 Mon, 15 Aug 2022 10:33:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DAAF2AADD3;
 Mon, 15 Aug 2022 10:33:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1863957374678427321=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 15 Aug 2022 10:33:32 -0000
Message-ID: <166055961286.13798.11487393974372460382@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220815094838.3511723-1-jani.nikula@intel.com>
In-Reply-To: <20220815094838.3511723-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/backlight=3A_split_out_backlight_registers_to_a_separate_?=
 =?utf-8?q?file?=
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

--===============1863957374678427321==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/backlight: split out backlight registers to a separate file
URL   : https://patchwork.freedesktop.org/series/107270/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11988 -> Patchwork_107270v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/index.html

Participating hosts (28 -> 28)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_107270v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-g3258:       NOTRUN -> [SKIP][1] ([fdo#109271] / [fdo#111827])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/fi-hsw-g3258/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [DMESG-FAIL][2] ([i915#62]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11988/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_pm:
    - {fi-jsl-1}:         [DMESG-FAIL][4] ([i915#1886]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11988/fi-jsl-1/igt@i915_selftest@live@gt_pm.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/fi-jsl-1/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [INCOMPLETE][6] ([i915#3303] / [i915#4785]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11988/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@ring_submission:
    - fi-cfl-8109u:       [DMESG-WARN][8] ([i915#5904]) -> [PASS][9] +30 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11988/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-cfl-8109u:       [DMESG-WARN][10] ([i915#5904] / [i915#62]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11988/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [DMESG-WARN][12] ([i915#62]) -> [PASS][13] +12 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11988/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5904]: https://gitlab.freedesktop.org/drm/intel/issues/5904
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Build changes
-------------

  * Linux: CI_DRM_11988 -> Patchwork_107270v1

  CI-20190529: 20190529
  CI_DRM_11988: a707ffeb65d1883ae1c1aec2b5ed447187781ad1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6625: d47beef9b01595f721c584070940c95be1cf11e8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107270v1: a707ffeb65d1883ae1c1aec2b5ed447187781ad1 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a9ad31ce8100 drm/i915/backlight: split out backlight registers to a separate file

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/index.html

--===============1863957374678427321==
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
<tr><td><b>Series:</b></td><td>drm/i915/backlight: split out backlight registers to a separate file</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107270/">https://patchwork.freedesktop.org/series/107270/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11988 -&gt; Patchwork_107270v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/index.html</p>
<h2>Participating hosts (28 -&gt; 28)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107270v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_chamelium@common-hpd-after-suspend:<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/fi-hsw-g3258/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11988/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11988/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11988/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11988/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html">PASS</a> +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11988/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11988/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107270v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> +12 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11988 -&gt; Patchwork_107270v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11988: a707ffeb65d1883ae1c1aec2b5ed447187781ad1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6625: d47beef9b01595f721c584070940c95be1cf11e8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107270v1: a707ffeb65d1883ae1c1aec2b5ed447187781ad1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a9ad31ce8100 drm/i915/backlight: split out backlight registers to a separate file</p>

</body>
</html>

--===============1863957374678427321==--
