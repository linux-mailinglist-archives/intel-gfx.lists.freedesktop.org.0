Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 787013BE2D9
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 07:57:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71C566E063;
	Wed,  7 Jul 2021 05:57:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C756A6E046;
 Wed,  7 Jul 2021 05:57:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6B5FA47E2;
 Wed,  7 Jul 2021 05:57:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Wed, 07 Jul 2021 05:57:41 -0000
Message-ID: <162563746172.30453.18062675652401197123@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210707050645.31043-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210707050645.31043-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQWJz?=
 =?utf-8?q?tract_steppings_for_all_platforms?=
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
Content-Type: multipart/mixed; boundary="===============0781723258=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0781723258==
Content-Type: multipart/alternative;
 boundary="===============1465708758395686160=="

--===============1465708758395686160==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Abstract steppings for all platforms
URL   : https://patchwork.freedesktop.org/series/92257/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10308 -> Patchwork_20540
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20540 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20540, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20540/index.html

Known issues
------------

  Here are the changes found in Patchwork_20540 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][1] ([i915#3718])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20540/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][2] ([fdo#109271]) +5 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20540/fi-bdw-5557u/igt@kms_psr@sprite_plane_onoff.html

  * igt@vgem_basic@unload:
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][3] ([i915#3744])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20540/fi-bdw-5557u/igt@vgem_basic@unload.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bdw-5557u:       [FAIL][4] ([i915#1602] / [i915#2029]) -> [FAIL][5] ([i915#2722])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10308/fi-bdw-5557u/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20540/fi-bdw-5557u/igt@runner@aborted.html

  * igt@vgem_basic@unload:
    - fi-pnv-d510:        [INCOMPLETE][6] ([i915#299]) -> [INCOMPLETE][7] ([i915#299] / [i915#3744])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10308/fi-pnv-d510/igt@vgem_basic@unload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20540/fi-pnv-d510/igt@vgem_basic@unload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718
  [i915#3744]: https://gitlab.freedesktop.org/drm/intel/issues/3744


Participating hosts (38 -> 13)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_20540 prevented too many machines from booting.

  Missing    (25): fi-kbl-soraka fi-icl-u2 fi-apl-guc fi-icl-y fi-skl-6600u fi-cml-u2 fi-bxt-dsi fi-cml-s fi-glk-dsi fi-kbl-7500u fi-tgl-y fi-skl-6700k2 fi-kbl-r fi-tgl-dsi fi-cfl-8700k fi-dg1-1 fi-ehl-2 fi-jsl-1 fi-tgl-1115g4 fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-cfl-8109u fi-kbl-8809g fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10308 -> Patchwork_20540

  CI-20190529: 20190529
  CI_DRM_10308: 9d1b5a9bdfbfb97b6e6b7ee3d863ee373ee9fd9e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6129: 687589e76f787d26ee2b539e551a9be06bd41ce3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20540: 88c5f0df33134278c876ce5b40c02004feb0ab92 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

88c5f0df3313 drm/i915/dg1: s/IS_DG1_REVID/IS_DG1_GT_STEP
3866fe5b236c drm/i915/rkl: s/IS_RKL_REVID/IS_RKL_GT_STEP
c7cb92db916d drm/i915/glk: s/IS_GLK_REVID/IS_GLK_GT_STEP
430701f14cab drm/i915/icl: s/IS_ICL_REVID/IS_ICL_GT_STEP
512ae6c9038f drm/i915/bxt: s/IS_BXT_REVID/IS_BXT_GT_STEP
136910f1ca08 drm/i915/skl: s/IS_SKL_REVID/IS_SKL_GT_STEP
2df22bd709cb drm/i915/dmc: Use RUNTIME_INFO->step for DMC
d2e17a33b144 drm/i915/step: s/<platform>_revid_tbl/<platform>_revids

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20540/index.html

--===============1465708758395686160==
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
<tr><td><b>Series:</b></td><td>Abstract steppings for all platforms</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92257/">https://patchwork.freedesktop.org/series/92257/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20540/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20540/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10308 -&gt; Patchwork_20540</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20540 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20540, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20540/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20540 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20540/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20540/fi-bdw-5557u/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20540/fi-bdw-5557u/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10308/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20540/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10308/fi-pnv-d510/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20540/fi-pnv-d510/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (38 -&gt; 13)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_20540 prevented too many machines from booting.</p>
<p>Missing    (25): fi-kbl-soraka fi-icl-u2 fi-apl-guc fi-icl-y fi-skl-6600u fi-cml-u2 fi-bxt-dsi fi-cml-s fi-glk-dsi fi-kbl-7500u fi-tgl-y fi-skl-6700k2 fi-kbl-r fi-tgl-dsi fi-cfl-8700k fi-dg1-1 fi-ehl-2 fi-jsl-1 fi-tgl-1115g4 fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-cfl-8109u fi-kbl-8809g fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10308 -&gt; Patchwork_20540</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10308: 9d1b5a9bdfbfb97b6e6b7ee3d863ee373ee9fd9e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6129: 687589e76f787d26ee2b539e551a9be06bd41ce3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20540: 88c5f0df33134278c876ce5b40c02004feb0ab92 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>88c5f0df3313 drm/i915/dg1: s/IS_DG1_REVID/IS_DG1_GT_STEP<br />
3866fe5b236c drm/i915/rkl: s/IS_RKL_REVID/IS_RKL_GT_STEP<br />
c7cb92db916d drm/i915/glk: s/IS_GLK_REVID/IS_GLK_GT_STEP<br />
430701f14cab drm/i915/icl: s/IS_ICL_REVID/IS_ICL_GT_STEP<br />
512ae6c9038f drm/i915/bxt: s/IS_BXT_REVID/IS_BXT_GT_STEP<br />
136910f1ca08 drm/i915/skl: s/IS_SKL_REVID/IS_SKL_GT_STEP<br />
2df22bd709cb drm/i915/dmc: Use RUNTIME_INFO-&gt;step for DMC<br />
d2e17a33b144 drm/i915/step: s/<platform>_revid_tbl/<platform>_revids</p>

</body>
</html>

--===============1465708758395686160==--

--===============0781723258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0781723258==--
