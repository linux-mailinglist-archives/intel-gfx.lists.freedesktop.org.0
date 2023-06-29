Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A527427C1
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jun 2023 15:54:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48A8610E3CC;
	Thu, 29 Jun 2023 13:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4C66610E3CC;
 Thu, 29 Jun 2023 13:54:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 456FFAADE8;
 Thu, 29 Jun 2023 13:54:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5953464897686858734=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 29 Jun 2023 13:54:16 -0000
Message-ID: <168804685627.28965.15335810988419540463@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230629122534.8815-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230629122534.8815-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fail_if_DSC_compression_requirement_is_less_than_platf?=
 =?utf-8?q?orm_supports_=28rev3=29?=
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

--===============5953464897686858734==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fail if DSC compression requirement is less than platform supports (rev3)
URL   : https://patchwork.freedesktop.org/series/119848/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13335 -> Patchwork_119848v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v3/index.html

Participating hosts (42 -> 39)
------------------------------

  Missing    (3): fi-kbl-soraka bat-dg2-11 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_119848v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - bat-adlp-11:        NOTRUN -> [ABORT][1] ([i915#8011])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v3/bat-adlp-11/igt@core_auth@basic-auth.html

  * igt@i915_selftest@live@guc:
    - bat-rpls-1:         [PASS][2] -> [DMESG-WARN][3] ([i915#7852])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13335/bat-rpls-1/igt@i915_selftest@live@guc.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v3/bat-rpls-1/igt@i915_selftest@live@guc.html

  * igt@i915_selftest@live@slpc:
    - bat-mtlp-8:         [PASS][4] -> [DMESG-WARN][5] ([i915#6367])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13335/bat-mtlp-8/igt@i915_selftest@live@slpc.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v3/bat-mtlp-8/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [PASS][6] -> [DMESG-FAIL][7] ([i915#6763])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13335/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v3/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-adlp-11:        [ABORT][8] ([i915#4423]) -> [DMESG-WARN][9] ([i915#4423])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13335/bat-adlp-11/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v3/bat-adlp-11/igt@i915_module_load@load.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-rplp-1:         [SKIP][10] ([i915#1072]) -> [ABORT][11] ([i915#8442] / [i915#8712])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13335/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v3/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6763]: https://gitlab.freedesktop.org/drm/intel/issues/6763
  [i915#7852]: https://gitlab.freedesktop.org/drm/intel/issues/7852
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8712]: https://gitlab.freedesktop.org/drm/intel/issues/8712


Build changes
-------------

  * Linux: CI_DRM_13335 -> Patchwork_119848v3

  CI-20190529: 20190529
  CI_DRM_13335: 04656782151e5cdeaf6fc43496754fcfdeb0aecf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7355: 3b43a7f5376c7dd570d5a8b439bf06e36488e961 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119848v3: 04656782151e5cdeaf6fc43496754fcfdeb0aecf @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0a723278eeff drm/i915: Fail if DSC compression requirement is less than platform supports

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v3/index.html

--===============5953464897686858734==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fail if DSC compression requirement is less than platform supports (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119848/">https://patchwork.freedesktop.org/series/119848/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13335 -&gt; Patchwork_119848v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v3/index.html</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): fi-kbl-soraka bat-dg2-11 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119848v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v3/bat-adlp-11/igt@core_auth@basic-auth.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13335/bat-rpls-1/igt@i915_selftest@live@guc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v3/bat-rpls-1/igt@i915_selftest@live@guc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7852">i915#7852</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13335/bat-mtlp-8/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v3/bat-mtlp-8/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13335/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v3/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6763">i915#6763</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13335/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v3/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13335/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v3/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8712">i915#8712</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13335 -&gt; Patchwork_119848v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13335: 04656782151e5cdeaf6fc43496754fcfdeb0aecf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7355: 3b43a7f5376c7dd570d5a8b439bf06e36488e961 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119848v3: 04656782151e5cdeaf6fc43496754fcfdeb0aecf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0a723278eeff drm/i915: Fail if DSC compression requirement is less than platform supports</p>

</body>
</html>

--===============5953464897686858734==--
