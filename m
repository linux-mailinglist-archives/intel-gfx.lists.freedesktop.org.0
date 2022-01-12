Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5107F48C776
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 16:44:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96B4210E4E0;
	Wed, 12 Jan 2022 15:44:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3FDD410E2ED;
 Wed, 12 Jan 2022 15:44:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 331E6AA01E;
 Wed, 12 Jan 2022 15:44:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7548947987052469298=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Wed, 12 Jan 2022 15:44:01 -0000
Message-ID: <164200224118.21760.6159000024078272491@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220112130601.2955-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220112130601.2955-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Recalculate_CDCLK_if_plane_scaling_ratio_changes_=28re?=
 =?utf-8?b?djIp?=
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

--===============7548947987052469298==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Recalculate CDCLK if plane scaling ratio changes (rev2)
URL   : https://patchwork.freedesktop.org/series/98750/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11073 -> Patchwork_21983
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21983/index.html

Participating hosts (44 -> 43)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (2): fi-bsw-cyan fi-icl-u2 

Known issues
------------

  Here are the changes found in Patchwork_21983 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][1] ([fdo#109271]) +57 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21983/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-ilk-650:         [DMESG-WARN][2] ([i915#164]) -> [PASS][3] +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21983/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rpls-1}:       [INCOMPLETE][4] ([i915#4898]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21983/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  
#### Warnings ####

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       [FAIL][6] ([i915#4547]) -> [INCOMPLETE][7] ([i915#4838])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/fi-skl-6600u/igt@kms_psr@primary_page_flip.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21983/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#164]: https://gitlab.freedesktop.org/drm/intel/issues/164
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4838]: https://gitlab.freedesktop.org/drm/intel/issues/4838
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898


Build changes
-------------

  * Linux: CI_DRM_11073 -> Patchwork_21983

  CI-20190529: 20190529
  CI_DRM_11073: 1b0b054967d58d23d1621487a1b1995787371d23 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6326: ec75f64fcbcf4aac58fbf1bf629e8f59b19db4ce @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21983: 48211c7b206690aba45014130a76055bdb1b52fc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

48211c7b2066 drm/i915: Recalculate CDCLK if plane scaling ratio changes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21983/index.html

--===============7548947987052469298==
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
<tr><td><b>Series:</b></td><td>drm/i915: Recalculate CDCLK if plane scaling ratio changes (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98750/">https://patchwork.freedesktop.org/series/98750/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21983/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21983/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11073 -&gt; Patchwork_21983</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21983/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (2): fi-bsw-cyan fi-icl-u2 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21983 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@prime_vgem@basic-userptr:<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21983/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/164">i915#164</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21983/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4898">i915#4898</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21983/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@primary_page_flip:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21983/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4838">i915#4838</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11073 -&gt; Patchwork_21983</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11073: 1b0b054967d58d23d1621487a1b1995787371d23 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6326: ec75f64fcbcf4aac58fbf1bf629e8f59b19db4ce @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21983: 48211c7b206690aba45014130a76055bdb1b52fc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>48211c7b2066 drm/i915: Recalculate CDCLK if plane scaling ratio changes</p>

</body>
</html>

--===============7548947987052469298==--
