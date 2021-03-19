Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F348E3420C0
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 16:20:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7A4B6EA4C;
	Fri, 19 Mar 2021 15:20:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 730926EA4C;
 Fri, 19 Mar 2021 15:20:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6C084A47E8;
 Fri, 19 Mar 2021 15:20:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 19 Mar 2021 15:20:36 -0000
Message-ID: <161616723641.8631.12712187678240202315@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210319143021.21823-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210319143021.21823-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Read_C0DRB3/C1DRB3_as_1?=
 =?utf-8?q?6_bits_again?=
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
Content-Type: multipart/mixed; boundary="===============1050057061=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1050057061==
Content-Type: multipart/alternative;
 boundary="===============4876148137907313809=="

--===============4876148137907313809==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915: Read C0DRB3/C1DRB3 as 16 bits again
URL   : https://patchwork.freedesktop.org/series/88179/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9875 -> Patchwork_19813
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/index.html

Known issues
------------

  Here are the changes found in Patchwork_19813 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [PASS][1] -> [TIMEOUT][2] ([i915#3145])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html

  
#### Possible fixes ####

  * igt@gem_tiled_fence_blits@basic:
    - fi-kbl-8809g:       [TIMEOUT][3] ([i915#3145]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9875 -> Patchwork_19813

  CI-20190529: 20190529
  CI_DRM_9875: 218e09274103c3117d90167bb3ee0ba3a0a63f84 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6039: 8c4a2cda2a92bdd87797969ef299ad7f6e8e993b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19813: c35c909f75ea9d3aae766c504f3b8b22f11a38d9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c35c909f75ea drm/i915: Rewrite CL/CTG L-shaped memory detection
af7440d572e7 drm/i915: Give C0DRB3/C1DRB3 a _BW suffix
d2e294c19d15 drm/i915: Read C0DRB3/C1DRB3 as 16 bits again

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/index.html

--===============4876148137907313809==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915: Read C0DRB3/C1DRB3 as 16 bits again</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/88179/">https://patchwork.freedesktop.org/series/88179/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9875 -&gt; Patchwork_19813</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19813 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_gttfill@basic:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_tiled_fence_blits@basic:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9875 -&gt; Patchwork_19813</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9875: 218e09274103c3117d90167bb3ee0ba3a0a63f84 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6039: 8c4a2cda2a92bdd87797969ef299ad7f6e8e993b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19813: c35c909f75ea9d3aae766c504f3b8b22f11a38d9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c35c909f75ea drm/i915: Rewrite CL/CTG L-shaped memory detection<br />
af7440d572e7 drm/i915: Give C0DRB3/C1DRB3 a _BW suffix<br />
d2e294c19d15 drm/i915: Read C0DRB3/C1DRB3 as 16 bits again</p>

</body>
</html>

--===============4876148137907313809==--

--===============1050057061==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1050057061==--
