Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0208B5D55
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 17:20:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 112DA10E2E3;
	Mon, 29 Apr 2024 15:20:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB30B10E190;
 Mon, 29 Apr 2024 15:20:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7475895531992222383=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/color=3A_first_bat?=
 =?utf-8?q?ch_of_implicit_dev=5Fpriv_removals?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Apr 2024 15:20:28 -0000
Message-ID: <171440402883.1756580.2213647879630986357@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1714399071.git.jani.nikula@intel.com>
In-Reply-To: <cover.1714399071.git.jani.nikula@intel.com>
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

--===============7475895531992222383==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/color: first batch of implicit dev_priv removals
URL   : https://patchwork.freedesktop.org/series/133024/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14673 -> Patchwork_133024v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133024v1/index.html

Participating hosts (37 -> 33)
------------------------------

  Missing    (4): fi-kbl-8809g fi-bsw-n3050 fi-snb-2520m bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_133024v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-8:          [PASS][1] -> [FAIL][2] ([i915#10378])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14673/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133024v1/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html

  
#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-11:         [FAIL][3] ([i915#10378]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14673/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133024v1/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
  [i915#10436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10436


Build changes
-------------

  * Linux: CI_DRM_14673 -> Patchwork_133024v1

  CI-20190529: 20190529
  CI_DRM_14673: c90b2a6c278edd586b8a5c57880d62852356184d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7826: ce6ce0f60dd1a6c0df93a01ad71a31964158a2cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133024v1: c90b2a6c278edd586b8a5c57880d62852356184d @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133024v1/index.html

--===============7475895531992222383==
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
<tr><td><b>Series:</b></td><td>drm/i915/color: first batch of implicit dev_priv removals</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133024/">https://patchwork.freedesktop.org/series/133024/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133024v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133024v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14673 -&gt; Patchwork_133024v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133024v1/index.html</p>
<h2>Participating hosts (37 -&gt; 33)</h2>
<p>Missing    (4): fi-kbl-8809g fi-bsw-n3050 fi-snb-2520m bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133024v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_lmem_swapping@basic@lmem0:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14673/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133024v1/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_lmem_swapping@basic@lmem0:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14673/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133024v1/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14673 -&gt; Patchwork_133024v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14673: c90b2a6c278edd586b8a5c57880d62852356184d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7826: ce6ce0f60dd1a6c0df93a01ad71a31964158a2cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133024v1: c90b2a6c278edd586b8a5c57880d62852356184d @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7475895531992222383==--
