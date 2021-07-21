Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA423D1848
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 22:42:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B3B6E3E3;
	Wed, 21 Jul 2021 20:42:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F30E96E3E3;
 Wed, 21 Jul 2021 20:42:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EB209A0BCB;
 Wed, 21 Jul 2021 20:42:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Wed, 21 Jul 2021 20:42:44 -0000
Message-ID: <162690016494.767.3600599945317474909@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210721161120.24610-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20210721161120.24610-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Enable_GuC_based_power_management_features?=
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
Content-Type: multipart/mixed; boundary="===============0273899989=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0273899989==
Content-Type: multipart/alternative;
 boundary="===============1443266938097348062=="

--===============1443266938097348062==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Enable GuC based power management features
URL   : https://patchwork.freedesktop.org/series/92831/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10367 -> Patchwork_20666
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10367 and Patchwork_20666:

### New IGT tests (1) ###

  * igt@i915_selftest@live@slpc:
    - Statuses : 30 pass(s)
    - Exec time: [0.41, 3.65] s

  

Known issues
------------

  Here are the changes found in Patchwork_20666 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - {fi-tgl-1115g4}:    [FAIL][1] ([i915#1888]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [DMESG-FAIL][3] ([i915#165]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][5] ([i915#1372]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Participating hosts (38 -> 34)
------------------------------

  Missing    (4): fi-kbl-soraka fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10367 -> Patchwork_20666

  CI-20190529: 20190529
  CI_DRM_10367: 598494d0149b67545593dfb1b5fa60278907749e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6146: 6caef22e4aafed275771f564d4ea4cab09896ebc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20666: bcd75133748eb873eb124c6f853a787a276387f4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bcd75133748e drm/i915/guc/rc: Setup and enable GUCRC feature
0fa84c5a2d74 drm/i915/guc/slpc: Add SLPC selftest
594f425c67e5 drm/i915/guc/slpc: Sysfs hooks for SLPC
e7069c98e8f0 drm/i915/guc/slpc: Cache platform frequency limits
52068180879e drm/i915/guc/slpc: Enable ARAT timer interrupt
6339c9a75332 drm/i915/guc/slpc: Add debugfs for SLPC info
b82a23070169 drm/i915/guc/slpc: Add get max/min freq hooks
299f2bc9111a drm/i915/guc/slpc: Add methods to set min/max frequency
db3c5ca40c59 drm/i915/guc/slpc: Enable SLPC and add related H2G events
16100ce5a83d drm/i915/guc/slpc: Allocate, initialize and release SLPC
3bfae09e3b51 drm/i915/guc/slpc: Adding SLPC communication interfaces
98e6b218685d drm/i915/guc/slpc: Gate Host RPS when SLPC is enabled
b98a3285cad6 drm/i915/guc/slpc: Initial definitions for SLPC
66527a3d83f9 drm/i915/guc: SQUASHED PATCH - DO NOT REVIEW

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/index.html

--===============1443266938097348062==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Enable GuC based power management features</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92831/">https://patchwork.freedesktop.org/series/92831/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10367 -&gt; Patchwork_20666</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10367 and Patchwork_20666:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>Statuses : 30 pass(s)</li>
<li>Exec time: [0.41, 3.65] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20666 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 34)</h2>
<p>Missing    (4): fi-kbl-soraka fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10367 -&gt; Patchwork_20666</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10367: 598494d0149b67545593dfb1b5fa60278907749e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6146: 6caef22e4aafed275771f564d4ea4cab09896ebc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20666: bcd75133748eb873eb124c6f853a787a276387f4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bcd75133748e drm/i915/guc/rc: Setup and enable GUCRC feature<br />
0fa84c5a2d74 drm/i915/guc/slpc: Add SLPC selftest<br />
594f425c67e5 drm/i915/guc/slpc: Sysfs hooks for SLPC<br />
e7069c98e8f0 drm/i915/guc/slpc: Cache platform frequency limits<br />
52068180879e drm/i915/guc/slpc: Enable ARAT timer interrupt<br />
6339c9a75332 drm/i915/guc/slpc: Add debugfs for SLPC info<br />
b82a23070169 drm/i915/guc/slpc: Add get max/min freq hooks<br />
299f2bc9111a drm/i915/guc/slpc: Add methods to set min/max frequency<br />
db3c5ca40c59 drm/i915/guc/slpc: Enable SLPC and add related H2G events<br />
16100ce5a83d drm/i915/guc/slpc: Allocate, initialize and release SLPC<br />
3bfae09e3b51 drm/i915/guc/slpc: Adding SLPC communication interfaces<br />
98e6b218685d drm/i915/guc/slpc: Gate Host RPS when SLPC is enabled<br />
b98a3285cad6 drm/i915/guc/slpc: Initial definitions for SLPC<br />
66527a3d83f9 drm/i915/guc: SQUASHED PATCH - DO NOT REVIEW</p>

</body>
</html>

--===============1443266938097348062==--

--===============0273899989==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0273899989==--
