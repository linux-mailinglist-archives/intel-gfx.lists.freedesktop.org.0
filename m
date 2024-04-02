Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F259A895AA4
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 19:26:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52A9210FED2;
	Tue,  2 Apr 2024 17:26:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0826C10FED1;
 Tue,  2 Apr 2024 17:26:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2738555176737001409=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm=3A_ensure_drm_headers_a?=
 =?utf-8?q?re_self-contained_and_pass_kernel-doc?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 02 Apr 2024 17:26:05 -0000
Message-ID: <171207876503.1155666.18348208122200969449@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240402140136.1722533-1-jani.nikula@intel.com>
In-Reply-To: <20240402140136.1722533-1-jani.nikula@intel.com>
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

--===============2738555176737001409==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: ensure drm headers are self-contained and pass kernel-doc
URL   : https://patchwork.freedesktop.org/series/131944/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14516 -> Patchwork_131944v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131944v1/index.html

Participating hosts (37 -> 35)
------------------------------

  Additional (1): fi-cfl-8109u 
  Missing    (3): bat-dg1-7 fi-bsw-nick fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_131944v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131944v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][2] ([i915#4613]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131944v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [PASS][3] -> [DMESG-FAIL][4] ([i915#9500])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131944v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  * igt@kms_pm_rpm@basic-rte:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][5] +14 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131944v1/fi-cfl-8109u/igt@kms_pm_rpm@basic-rte.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10435]: https://gitlab.freedesktop.org/drm/intel/issues/10435
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#9157]: https://gitlab.freedesktop.org/drm/intel/issues/9157
  [i915#9500]: https://gitlab.freedesktop.org/drm/intel/issues/9500


Build changes
-------------

  * Linux: CI_DRM_14516 -> Patchwork_131944v1

  CI-20190529: 20190529
  CI_DRM_14516: 5100fcc57dc5d45b246a0aeb068f4f8062d29b09 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7796: 2cfed18f6aa776c1593d7cc328d23225dd61bdf9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131944v1: 5100fcc57dc5d45b246a0aeb068f4f8062d29b09 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

126cd9eac05a drm: ensure drm headers are self-contained and pass kernel-doc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131944v1/index.html

--===============2738555176737001409==
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
<tr><td><b>Series:</b></td><td>drm: ensure drm headers are self-contained and pass kernel-doc</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131944/">https://patchwork.freedesktop.org/series/131944/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131944v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131944v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14516 -&gt; Patchwork_131944v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131944v1/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Additional (1): fi-cfl-8109u <br />
  Missing    (3): bat-dg1-7 fi-bsw-nick fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131944v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131944v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131944v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131944v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9500">i915#9500</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-rte:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131944v1/fi-cfl-8109u/igt@kms_pm_rpm@basic-rte.html">SKIP</a> +14 other tests skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14516 -&gt; Patchwork_131944v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14516: 5100fcc57dc5d45b246a0aeb068f4f8062d29b09 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7796: 2cfed18f6aa776c1593d7cc328d23225dd61bdf9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131944v1: 5100fcc57dc5d45b246a0aeb068f4f8062d29b09 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>126cd9eac05a drm: ensure drm headers are self-contained and pass kernel-doc</p>

</body>
</html>

--===============2738555176737001409==--
