Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B218CFEDB
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 13:23:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 763A410E242;
	Mon, 27 May 2024 11:23:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3303310E242;
 Mon, 27 May 2024 11:23:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5669848091945227729=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_series_starting_with_=5B1/2?=
 =?utf-8?q?=5D_string=3A_add_mem=5Fis=5Fzero=28=29_helper_to_check_if_memory?=
 =?utf-8?q?_area_is_all_zeros?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2024 11:23:03 -0000
Message-ID: <171680898320.2212026.10001826048131865590@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240527094320.2653177-1-jani.nikula@intel.com>
In-Reply-To: <20240527094320.2653177-1-jani.nikula@intel.com>
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

--===============5669848091945227729==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] string: add mem_is_zero() helper to check if memory area is all zeros
URL   : https://patchwork.freedesktop.org/series/134068/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14821 -> Patchwork_134068v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134068v1/index.html

Participating hosts (42 -> 39)
------------------------------

  Missing    (3): fi-cfl-8109u bat-mtlp-8 fi-elk-e7500 

Known issues
------------

  Here are the changes found in Patchwork_134068v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - bat-adlp-9:         [INCOMPLETE][1] ([i915#9413]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14821/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134068v1/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_busy@basic@modeset:
    - {bat-mtlp-9}:       [DMESG-WARN][3] ([i915#11009]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14821/bat-mtlp-9/igt@kms_busy@basic@modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134068v1/bat-mtlp-9/igt@kms_busy@basic@modeset.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp7:
    - {bat-mtlp-9}:       [FAIL][5] ([i915#6121]) -> [PASS][6] +5 other tests pass
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14821/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134068v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html

  * igt@kms_flip@basic-flip-vs-dpms@c-dp6:
    - {bat-mtlp-9}:       [DMESG-FAIL][7] ([i915#11009]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14821/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp6.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134068v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp6.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580
  [i915#10979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10979
  [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_14821 -> Patchwork_134068v1

  CI-20190529: 20190529
  CI_DRM_14821: b85ab4525f327eceb3ce8df189992582cf5dedef @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7871: 1d7b961235e345db20933c057f265898e2e96fd2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134068v1: b85ab4525f327eceb3ce8df189992582cf5dedef @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134068v1/index.html

--===============5669848091945227729==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] string: add mem_is_zero() helper to check if memory area is all zeros</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134068/">https://patchwork.freedesktop.org/series/134068/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134068v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134068v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14821 -&gt; Patchwork_134068v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134068v1/index.html</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): fi-cfl-8109u bat-mtlp-8 fi-elk-e7500 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134068v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14821/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134068v1/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14821/bat-mtlp-9/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134068v1/bat-mtlp-9/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp7:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14821/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134068v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-dp6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14821/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp6.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134068v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp6.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14821 -&gt; Patchwork_134068v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14821: b85ab4525f327eceb3ce8df189992582cf5dedef @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7871: 1d7b961235e345db20933c057f265898e2e96fd2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134068v1: b85ab4525f327eceb3ce8df189992582cf5dedef @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5669848091945227729==--
