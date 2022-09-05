Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1005ACE82
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 11:07:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C49AD10E218;
	Mon,  5 Sep 2022 09:07:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3F6A110E218;
 Mon,  5 Sep 2022 09:07:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E50EEA7DFF;
 Mon,  5 Sep 2022 09:07:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5660806339715603457=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Mon, 05 Sep 2022 09:07:11 -0000
Message-ID: <166236883190.1951.7111638705639485913@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220905080500.213330-1-andrzej.hajda@intel.com>
In-Reply-To: <20220905080500.213330-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_do_not_reset_PLANE=5FSURF_on_plane_disable_on_older_ge?=
 =?utf-8?q?ns?=
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

--===============5660806339715603457==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: do not reset PLANE_SURF on plane disable on older gens
URL   : https://patchwork.freedesktop.org/series/108133/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12070 -> Patchwork_108133v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108133v1/index.html

Participating hosts (36 -> 34)
------------------------------

  Missing    (2): bat-rpls-2 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_108133v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_hotunplug@unbind-rebind:
    - {fi-jsl-1}:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12070/fi-jsl-1/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108133v1/fi-jsl-1/igt@core_hotunplug@unbind-rebind.html

  
Known issues
------------

  Here are the changes found in Patchwork_108133v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [DMESG-FAIL][3] ([i915#62]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12070/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108133v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-1}:       [DMESG-FAIL][5] ([i915#4983] / [i915#5828]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12070/bat-rpls-1/igt@i915_selftest@live@reset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108133v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@ring_submission:
    - fi-cfl-8109u:       [DMESG-WARN][7] ([i915#5904]) -> [PASS][8] +30 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12070/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108133v1/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-cfl-8109u:       [DMESG-WARN][9] ([i915#5904] / [i915#62]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12070/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108133v1/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [DMESG-WARN][11] ([i915#62]) -> [PASS][12] +12 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12070/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108133v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5828]: https://gitlab.freedesktop.org/drm/intel/issues/5828
  [i915#5904]: https://gitlab.freedesktop.org/drm/intel/issues/5904
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Build changes
-------------

  * Linux: CI_DRM_12070 -> Patchwork_108133v1

  CI-20190529: 20190529
  CI_DRM_12070: 6f924a2ec43ac35516136a77b1adad0b6d8f8faa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6643: 9b2970a6d495ddd9ceb2487fc289105bf05812df @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108133v1: 6f924a2ec43ac35516136a77b1adad0b6d8f8faa @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4a298447c67b drm/i915: do not reset PLANE_SURF on plane disable on older gens

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108133v1/index.html

--===============5660806339715603457==
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
<tr><td><b>Series:</b></td><td>drm/i915: do not reset PLANE_SURF on plane disable on older gens</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108133/">https://patchwork.freedesktop.org/series/108133/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108133v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108133v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12070 -&gt; Patchwork_108133v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108133v1/index.html</p>
<h2>Participating hosts (36 -&gt; 34)</h2>
<p>Missing    (2): bat-rpls-2 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_108133v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12070/fi-jsl-1/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108133v1/fi-jsl-1/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108133v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12070/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108133v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12070/bat-rpls-1/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5828">i915#5828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108133v1/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12070/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108133v1/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html">PASS</a> +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12070/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108133v1/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12070/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108133v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> +12 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12070 -&gt; Patchwork_108133v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12070: 6f924a2ec43ac35516136a77b1adad0b6d8f8faa @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6643: 9b2970a6d495ddd9ceb2487fc289105bf05812df @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108133v1: 6f924a2ec43ac35516136a77b1adad0b6d8f8faa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4a298447c67b drm/i915: do not reset PLANE_SURF on plane disable on older gens</p>

</body>
</html>

--===============5660806339715603457==--
