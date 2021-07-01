Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4863B947E
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 18:03:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 508AE6EB54;
	Thu,  1 Jul 2021 16:03:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E4B46EB50;
 Thu,  1 Jul 2021 16:03:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25FE6A8836;
 Thu,  1 Jul 2021 16:03:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 01 Jul 2021 16:03:53 -0000
Message-ID: <162515543312.15054.15532567654363299762@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210701151019.1103315-1-matthew.auld@intel.com>
In-Reply-To: <20210701151019.1103315-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/3=5D_drm/i915=3A_use_consistent_CPU?=
 =?utf-8?q?_mappings_for_pin=5Fmap_users?=
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
Content-Type: multipart/mixed; boundary="===============0899160740=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0899160740==
Content-Type: multipart/alternative;
 boundary="===============6303131230633159856=="

--===============6303131230633159856==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/3] drm/i915: use consistent CPU mappings for pin_map users
URL   : https://patchwork.freedesktop.org/series/92114/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10297 -> Patchwork_20509
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20509/index.html

Known issues
------------

  Here are the changes found in Patchwork_20509 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20509/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][2] -> [FAIL][3] ([i915#2203])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20509/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][4] -> [FAIL][5] ([i915#1372])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20509/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717


Participating hosts (37 -> 35)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10297 -> Patchwork_20509

  CI-20190529: 20190529
  CI_DRM_10297: 96c7ad60de68518bdcd0d0e6381a2359034a0226 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6125: 5bb62cb290fa32777934de4b39e107ccd282f7e8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20509: 11c689134982034df96812e0fd3c64a73845ff7b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

11c689134982 drm/i915/uapi: reject set_domain for discrete
cf29b90656be drm/i915/uapi: reject caching ioctls for discrete
c99f7340de54 drm/i915: use consistent CPU mappings for pin_map users

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20509/index.html

--===============6303131230633159856==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/3] drm/i915: use consistent CPU mappings for pin_map users</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92114/">https://patchwork.freedesktop.org/series/92114/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20509/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20509/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10297 -&gt; Patchwork_20509</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20509/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20509 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20509/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20509/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10297/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20509/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10297 -&gt; Patchwork_20509</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10297: 96c7ad60de68518bdcd0d0e6381a2359034a0226 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6125: 5bb62cb290fa32777934de4b39e107ccd282f7e8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20509: 11c689134982034df96812e0fd3c64a73845ff7b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>11c689134982 drm/i915/uapi: reject set_domain for discrete<br />
cf29b90656be drm/i915/uapi: reject caching ioctls for discrete<br />
c99f7340de54 drm/i915: use consistent CPU mappings for pin_map users</p>

</body>
</html>

--===============6303131230633159856==--

--===============0899160740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0899160740==--
