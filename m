Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D158D4E9A
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2024 17:03:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 919E010E40F;
	Thu, 30 May 2024 15:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C20B210EB8A;
 Thu, 30 May 2024 15:03:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3395484460887166423=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm=3A_move_Intel_drm_heade?=
 =?utf-8?q?rs_to_a_subdirectory_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 30 May 2024 15:03:09 -0000
Message-ID: <171708138979.2238285.5040692200347759038@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1717075103.git.jani.nikula@intel.com>
In-Reply-To: <cover.1717075103.git.jani.nikula@intel.com>
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

--===============3395484460887166423==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: move Intel drm headers to a subdirectory (rev4)
URL   : https://patchwork.freedesktop.org/series/132264/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14852 -> Patchwork_132264v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132264v4/index.html

Participating hosts (41 -> 38)
------------------------------

  Missing    (3): fi-kbl-8809g bat-jsl-1 fi-bsw-n3050 

Known issues
------------

  Here are the changes found in Patchwork_132264v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - bat-arls-3:         [PASS][1] -> [ABORT][2] ([i915#11041])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14852/bat-arls-3/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132264v4/bat-arls-3/igt@i915_module_load@load.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-11:         [DMESG-FAIL][3] ([i915#9840]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14852/bat-dg2-11/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132264v4/bat-dg2-11/igt@i915_selftest@live@hangcheck.html

  
  [i915#11041]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11041
  [i915#9840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9840


Build changes
-------------

  * Linux: CI_DRM_14852 -> Patchwork_132264v4

  CI-20190529: 20190529
  CI_DRM_14852: bdab4dd15a635eedc4b4d95be9d4155be46e5e4b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7873: b9bcded9123ac56ce05748de6c4870fb49451b87 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_132264v4: bdab4dd15a635eedc4b4d95be9d4155be46e5e4b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132264v4/index.html

--===============3395484460887166423==
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
<tr><td><b>Series:</b></td><td>drm: move Intel drm headers to a subdirectory (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132264/">https://patchwork.freedesktop.org/series/132264/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132264v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132264v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14852 -&gt; Patchwork_132264v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132264v4/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): fi-kbl-8809g bat-jsl-1 fi-bsw-n3050 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132264v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14852/bat-arls-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132264v4/bat-arls-3/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11041">i915#11041</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14852/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9840">i915#9840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132264v4/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14852 -&gt; Patchwork_132264v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14852: bdab4dd15a635eedc4b4d95be9d4155be46e5e4b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7873: b9bcded9123ac56ce05748de6c4870fb49451b87 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_132264v4: bdab4dd15a635eedc4b4d95be9d4155be46e5e4b @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3395484460887166423==--
