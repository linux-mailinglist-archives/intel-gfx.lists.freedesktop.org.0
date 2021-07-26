Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F413D5422
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 09:27:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21ACE6E7E6;
	Mon, 26 Jul 2021 07:27:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 000426E7DD;
 Mon, 26 Jul 2021 07:27:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED03AA7DFB;
 Mon, 26 Jul 2021 07:27:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Mon, 26 Jul 2021 07:27:01 -0000
Message-ID: <162728442196.2613.5006496527949901002@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210723070548.29315-1-shawn.c.lee@intel.com>
In-Reply-To: <20210723070548.29315-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTUlQ?=
 =?utf-8?q?I_DSI_driver_enhancements_=28rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============2098127701=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2098127701==
Content-Type: multipart/alternative;
 boundary="===============7296643016092694128=="

--===============7296643016092694128==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: MIPI DSI driver enhancements (rev4)
URL   : https://patchwork.freedesktop.org/series/92695/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10392 -> Patchwork_20703
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20703/index.html

Known issues
------------

  Here are the changes found in Patchwork_20703 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-apl-guc:         NOTRUN -> [SKIP][1] ([fdo#109271]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20703/fi-apl-guc/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@i915_hangman@error-state-basic:
    - fi-apl-guc:         NOTRUN -> [DMESG-WARN][2] ([i915#1610])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20703/fi-apl-guc/igt@i915_hangman@error-state-basic.html

  * igt@runner@aborted:
    - fi-apl-guc:         NOTRUN -> [FAIL][3] ([i915#2426] / [i915#3363])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20703/fi-apl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gtt:
    - {fi-tgl-dsi}:       [DMESG-FAIL][4] ([i915#2927]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10392/fi-tgl-dsi/igt@i915_selftest@live@gtt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20703/fi-tgl-dsi/igt@i915_selftest@live@gtt.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [DMESG-FAIL][6] ([i915#165]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10392/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20703/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (40 -> 35)
------------------------------

  Additional (1): fi-apl-guc 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adls-4 bat-adls-3 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10392 -> Patchwork_20703

  CI-20190529: 20190529
  CI_DRM_10392: 5ed997f5d0de6cbd2379499e7c132410df93922d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6149: 34ff2cf2bc352dce691593db803389fe0eb2be03 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20703: 4956eeca561c8f9feffd3ed5bd56d4037e4ab432 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4956eeca561c drm/i915/dsi: Send proper brightness value via MIPI DCS command
b62bfc065334 drm/i915/dsi: Retrieve max brightness level from VBT.
fef2d31a1c41 drm/i915: Get proper min cdclk if vDSC enabled
cb2493d12c0d drm/i915/dsi: refine send MIPI DCS command sequence
4a2d5040a99d drm/i915/dsi: wait for header and payload credit available
1994193a9893 drm/i915/jsl: program DSI panel GPIOs
77529e9e348e drm/i915/dsi: send correct gpio_number on gen11 platform

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20703/index.html

--===============7296643016092694128==
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
<tr><td><b>Series:</b></td><td>MIPI DSI driver enhancements (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92695/">https://patchwork.freedesktop.org/series/92695/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20703/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20703/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10392 -&gt; Patchwork_20703</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20703/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20703 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20703/fi-apl-guc/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20703/fi-apl-guc/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20703/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10392/fi-tgl-dsi/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20703/fi-tgl-dsi/igt@i915_selftest@live@gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10392/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20703/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (40 -&gt; 35)</h2>
<p>Additional (1): fi-apl-guc <br />
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adls-4 bat-adls-3 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10392 -&gt; Patchwork_20703</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10392: 5ed997f5d0de6cbd2379499e7c132410df93922d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6149: 34ff2cf2bc352dce691593db803389fe0eb2be03 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20703: 4956eeca561c8f9feffd3ed5bd56d4037e4ab432 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4956eeca561c drm/i915/dsi: Send proper brightness value via MIPI DCS command<br />
b62bfc065334 drm/i915/dsi: Retrieve max brightness level from VBT.<br />
fef2d31a1c41 drm/i915: Get proper min cdclk if vDSC enabled<br />
cb2493d12c0d drm/i915/dsi: refine send MIPI DCS command sequence<br />
4a2d5040a99d drm/i915/dsi: wait for header and payload credit available<br />
1994193a9893 drm/i915/jsl: program DSI panel GPIOs<br />
77529e9e348e drm/i915/dsi: send correct gpio_number on gen11 platform</p>

</body>
</html>

--===============7296643016092694128==--

--===============2098127701==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2098127701==--
