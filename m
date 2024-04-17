Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 434928A8AF1
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 20:22:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8ABC113737;
	Wed, 17 Apr 2024 18:22:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C961113737;
 Wed, 17 Apr 2024 18:22:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6918145369109392852=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_BXT/GLK_per-lan?=
 =?utf-8?q?e_vswing_and_PHY_reg_cleanup_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Apr 2024 18:22:07 -0000
Message-ID: <171337812744.1482849.14997719345480382947@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
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

--===============6918145369109392852==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: BXT/GLK per-lane vswing and PHY reg cleanup (rev3)
URL   : https://patchwork.freedesktop.org/series/132390/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14597 -> Patchwork_132390v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132390v3/index.html

Participating hosts (38 -> 32)
------------------------------

  Missing    (6): bat-dg1-7 fi-snb-2520m fi-glk-j4005 fi-kbl-8809g bat-dg2-11 bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_132390v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem:
    - bat-dg2-9:          [PASS][1] -> [ABORT][2] ([i915#10366])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14597/bat-dg2-9/igt@i915_selftest@live@gem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132390v3/bat-dg2-9/igt@i915_selftest@live@gem.html

  
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366


Build changes
-------------

  * Linux: CI_DRM_14597 -> Patchwork_132390v3

  CI-20190529: 20190529
  CI_DRM_14597: 64a20aacb61e4ce6d8a0b3dc6e4bff72e316ffa3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7810: 189483744e9ff56ea573e07a049c5365404c7ecb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_132390v3: 64a20aacb61e4ce6d8a0b3dc6e4bff72e316ffa3 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132390v3/index.html

--===============6918145369109392852==
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
<tr><td><b>Series:</b></td><td>drm/i915: BXT/GLK per-lane vswing and PHY reg cleanup (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132390/">https://patchwork.freedesktop.org/series/132390/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132390v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132390v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14597 -&gt; Patchwork_132390v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132390v3/index.html</p>
<h2>Participating hosts (38 -&gt; 32)</h2>
<p>Missing    (6): bat-dg1-7 fi-snb-2520m fi-glk-j4005 fi-kbl-8809g bat-dg2-11 bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132390v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@gem:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14597/bat-dg2-9/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132390v3/bat-dg2-9/igt@i915_selftest@live@gem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14597 -&gt; Patchwork_132390v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14597: 64a20aacb61e4ce6d8a0b3dc6e4bff72e316ffa3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7810: 189483744e9ff56ea573e07a049c5365404c7ecb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_132390v3: 64a20aacb61e4ce6d8a0b3dc6e4bff72e316ffa3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6918145369109392852==--
