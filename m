Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D873D3DE0
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 18:50:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1B2C6E996;
	Fri, 23 Jul 2021 16:50:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AF9246E88D;
 Fri, 23 Jul 2021 16:50:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1136A7DFC;
 Fri, 23 Jul 2021 16:50:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 23 Jul 2021 16:50:53 -0000
Message-ID: <162705905363.3042.16591851702463145875@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210723113405.427004-1-matthew.auld@intel.com>
In-Reply-To: <20210723113405.427004-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/userptr=3A_Probe_existence_of_backing_struct_pages_upon_c?=
 =?utf-8?q?reation?=
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
Content-Type: multipart/mixed; boundary="===============0928476271=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0928476271==
Content-Type: multipart/alternative;
 boundary="===============8535638153327910055=="

--===============8535638153327910055==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/userptr: Probe existence of backing struct pages upon creation
URL   : https://patchwork.freedesktop.org/series/92948/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10379 -> Patchwork_20695
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20695/index.html

Known issues
------------

  Here are the changes found in Patchwork_20695 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20695/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] ([i915#3449])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20695/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#3449]: https://gitlab.freedesktop.org/drm/intel/issues/3449


Participating hosts (43 -> 36)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adls-4 fi-ctg-p8600 bat-adls-3 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10379 -> Patchwork_20695

  CI-20190529: 20190529
  CI_DRM_10379: 4f3e66252fc1d20871b7d187d719b82d7b3d102d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6149: 34ff2cf2bc352dce691593db803389fe0eb2be03 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20695: 89a6ddd95d00e54dad61c31d34bab04f9e484fd1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

89a6ddd95d00 drm/i915/userptr: Probe existence of backing struct pages upon creation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20695/index.html

--===============8535638153327910055==
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
<tr><td><b>Series:</b></td><td>drm/i915/userptr: Probe existence of backing struct pages upon creation</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92948/">https://patchwork.freedesktop.org/series/92948/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20695/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20695/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10379 -&gt; Patchwork_20695</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20695/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20695 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20695/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20695/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3449">i915#3449</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 36)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adls-4 fi-ctg-p8600 bat-adls-3 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10379 -&gt; Patchwork_20695</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10379: 4f3e66252fc1d20871b7d187d719b82d7b3d102d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6149: 34ff2cf2bc352dce691593db803389fe0eb2be03 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20695: 89a6ddd95d00e54dad61c31d34bab04f9e484fd1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>89a6ddd95d00 drm/i915/userptr: Probe existence of backing struct pages upon creation</p>

</body>
</html>

--===============8535638153327910055==--

--===============0928476271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0928476271==--
