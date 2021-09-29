Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F9F41C66E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 16:11:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D3896E1B8;
	Wed, 29 Sep 2021 14:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3F8196E1B8;
 Wed, 29 Sep 2021 14:11:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 37379A7E03;
 Wed, 29 Sep 2021 14:11:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0325807037499382911=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Sep 2021 14:11:39 -0000
Message-ID: <163292469919.27097.2446802213022934595@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210921002313.1132357-1-imre.deak@intel.com>
In-Reply-To: <20210921002313.1132357-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tc=3A_Fix_TypeC_connect/disconnect_sequences_=28rev8=29?=
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

--===============0325807037499382911==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/tc: Fix TypeC connect/disconnect sequences (rev8)
URL   : https://patchwork.freedesktop.org/series/94878/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10660 -> Patchwork_21189
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/index.html

Known issues
------------

  Here are the changes found in Patchwork_21189 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888


Participating hosts (33 -> 29)
------------------------------

  Missing    (4): fi-bsw-cyan bat-jsl-1 bat-dg1-6 bat-adlp-4 


Build changes
-------------

  * Linux: CI_DRM_10660 -> Patchwork_21189

  CI-20190529: 20190529
  CI_DRM_10660: 05888a7b7b4aec560d6692e5e9173adc7e76c0df @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6227: 6ac2da7fd6b13f04f9aa0ec10f86b831d2756946 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21189: 6e3ad889b1c988e7dcb7b3604f73e458576f928a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6e3ad889b1c9 drm/i915/tc: Fix system hang on ADL-P during TypeC PHY disconnect
76ecfcf236e0 drm/i915/tc: Drop extra TC cold blocking from intel_tc_port_connected()
e39e52ba5422 drm/i915/tc: Fix TypeC PHY connect/disconnect logic on ADL-P
aa72ab7dada7 drm/i915/icl/tc: Remove the ICL special casing during TC-cold blocking
43107536a80f drm/i915/tc: Avoid using legacy AUX PW in TBT mode
9868a17a5a37 drm/i915/tc: Refactor TC-cold block/unblock helpers
980d79eb09d2 drm/i915/tc: Add a mode for the TypeC PHY's disconnected state
560710f22702 drm/i915/tc: Don't keep legacy TypeC ports in connected state w/o a sink
03ba5a3c3391 drm/i915/tc: Add/use helpers to retrieve TypeC port properties
adb7ecaceb9b drm/i915/tc: Check for DP-alt, legacy sinks before taking PHY ownership
606f377a7dcc drm/i915/tc: Remove waiting for PHY complete during releasing ownership
c01091513a71 drm/i915/adlp/tc: Fix PHY connected check for Thunderbolt mode
7a1594f1ced8 drm/i915/tc: Fix TypeC port init/resume time sanitization

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/index.html

--===============0325807037499382911==
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
<tr><td><b>Series:</b></td><td>drm/i915/tc: Fix TypeC connect/disconnect sequences (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94878/">https://patchwork.freedesktop.org/series/94878/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10660 -&gt; Patchwork_21189</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21189 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (33 -&gt; 29)</h2>
<p>Missing    (4): fi-bsw-cyan bat-jsl-1 bat-dg1-6 bat-adlp-4 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10660 -&gt; Patchwork_21189</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10660: 05888a7b7b4aec560d6692e5e9173adc7e76c0df @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6227: 6ac2da7fd6b13f04f9aa0ec10f86b831d2756946 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21189: 6e3ad889b1c988e7dcb7b3604f73e458576f928a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6e3ad889b1c9 drm/i915/tc: Fix system hang on ADL-P during TypeC PHY disconnect<br />
76ecfcf236e0 drm/i915/tc: Drop extra TC cold blocking from intel_tc_port_connected()<br />
e39e52ba5422 drm/i915/tc: Fix TypeC PHY connect/disconnect logic on ADL-P<br />
aa72ab7dada7 drm/i915/icl/tc: Remove the ICL special casing during TC-cold blocking<br />
43107536a80f drm/i915/tc: Avoid using legacy AUX PW in TBT mode<br />
9868a17a5a37 drm/i915/tc: Refactor TC-cold block/unblock helpers<br />
980d79eb09d2 drm/i915/tc: Add a mode for the TypeC PHY's disconnected state<br />
560710f22702 drm/i915/tc: Don't keep legacy TypeC ports in connected state w/o a sink<br />
03ba5a3c3391 drm/i915/tc: Add/use helpers to retrieve TypeC port properties<br />
adb7ecaceb9b drm/i915/tc: Check for DP-alt, legacy sinks before taking PHY ownership<br />
606f377a7dcc drm/i915/tc: Remove waiting for PHY complete during releasing ownership<br />
c01091513a71 drm/i915/adlp/tc: Fix PHY connected check for Thunderbolt mode<br />
7a1594f1ced8 drm/i915/tc: Fix TypeC port init/resume time sanitization</p>

</body>
</html>

--===============0325807037499382911==--
