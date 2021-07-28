Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8679A3D9960
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 01:21:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A16046E30C;
	Wed, 28 Jul 2021 23:21:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 052556E30C;
 Wed, 28 Jul 2021 23:21:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0135CA882E;
 Wed, 28 Jul 2021 23:21:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Wed, 28 Jul 2021 23:21:30 -0000
Message-ID: <162751449000.22806.9339442840769697960@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210728211144.15322-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20210728211144.15322-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc/slpc=3A_Enable_GuC_based_power_management_features_?=
 =?utf-8?b?KHJldjIp?=
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
Content-Type: multipart/mixed; boundary="===============0462038116=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0462038116==
Content-Type: multipart/alternative;
 boundary="===============6377436936616963180=="

--===============6377436936616963180==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc/slpc: Enable GuC based power management features (rev2)
URL   : https://patchwork.freedesktop.org/series/93026/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10415 -> Patchwork_20728
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20728/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10415 and Patchwork_20728:

### New IGT tests (1) ###

  * igt@i915_selftest@live@slpc:
    - Statuses : 32 pass(s)
    - Exec time: [0.38, 4.88] s

  

Known issues
------------

  Here are the changes found in Patchwork_20728 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [DMESG-WARN][1] ([i915#1982]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10415/fi-kbl-soraka/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20728/fi-kbl-soraka/igt@i915_module_load@reload.html

  
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982


Participating hosts (43 -> 36)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10415 -> Patchwork_20728

  CI-20190529: 20190529
  CI_DRM_10415: 457209baa84d04e17ce648a12733a32809717494 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6155: 4b51398dcd7559012b85776e7353d516ff1e6ce6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20728: 9919902ac42f45aae50110ddacbe2fe65f6c45fd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9919902ac42f drm/i915/guc/rc: Setup and enable GuCRC feature
b1da62182976 drm/i915/guc/slpc: Add SLPC selftest
abd9676ae450 drm/i915/guc/slpc: Sysfs hooks for SLPC
6bf4805bca11 drm/i915/guc/slpc: Cache platform frequency limits
470442ee287e drm/i915/guc/slpc: Enable ARAT timer interrupt
8956dd5e22d2 drm/i915/guc/slpc: Add debugfs for SLPC info
168aa1ef2826 drm/i915/guc/slpc: Add get max/min freq hooks
749c426248ec drm/i915/guc/slpc: Add methods to set min/max frequency
579e6ad12043 drm/i915/guc/slpc: Remove BUG_ON in guc_submission_disable
be0f6ff88859 drm/i915/guc/slpc: Enable SLPC and add related H2G events
9219a4737eac drm/i915/guc/slpc: Allocate, initialize and release SLPC
2f422e776ca4 drm/i915/guc/slpc: Adding SLPC communication interfaces
78fd70bae974 drm/i915/guc/slpc: Gate Host RPS when SLPC is enabled
401fdd8ee148 drm/i915/guc/slpc: Initial definitions for SLPC

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20728/index.html

--===============6377436936616963180==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc/slpc: Enable GuC based power management features (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93026/">https://patchwork.freedesktop.org/series/93026/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20728/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20728/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10415 -&gt; Patchwork_20728</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20728/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10415 and Patchwork_20728:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>Statuses : 32 pass(s)</li>
<li>Exec time: [0.38, 4.88] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20728 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10415/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20728/fi-kbl-soraka/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 36)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10415 -&gt; Patchwork_20728</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10415: 457209baa84d04e17ce648a12733a32809717494 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6155: 4b51398dcd7559012b85776e7353d516ff1e6ce6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20728: 9919902ac42f45aae50110ddacbe2fe65f6c45fd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9919902ac42f drm/i915/guc/rc: Setup and enable GuCRC feature<br />
b1da62182976 drm/i915/guc/slpc: Add SLPC selftest<br />
abd9676ae450 drm/i915/guc/slpc: Sysfs hooks for SLPC<br />
6bf4805bca11 drm/i915/guc/slpc: Cache platform frequency limits<br />
470442ee287e drm/i915/guc/slpc: Enable ARAT timer interrupt<br />
8956dd5e22d2 drm/i915/guc/slpc: Add debugfs for SLPC info<br />
168aa1ef2826 drm/i915/guc/slpc: Add get max/min freq hooks<br />
749c426248ec drm/i915/guc/slpc: Add methods to set min/max frequency<br />
579e6ad12043 drm/i915/guc/slpc: Remove BUG_ON in guc_submission_disable<br />
be0f6ff88859 drm/i915/guc/slpc: Enable SLPC and add related H2G events<br />
9219a4737eac drm/i915/guc/slpc: Allocate, initialize and release SLPC<br />
2f422e776ca4 drm/i915/guc/slpc: Adding SLPC communication interfaces<br />
78fd70bae974 drm/i915/guc/slpc: Gate Host RPS when SLPC is enabled<br />
401fdd8ee148 drm/i915/guc/slpc: Initial definitions for SLPC</p>

</body>
</html>

--===============6377436936616963180==--

--===============0462038116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0462038116==--
