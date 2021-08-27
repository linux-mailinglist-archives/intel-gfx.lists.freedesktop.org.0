Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D443F9866
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Aug 2021 13:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19DAC6E922;
	Fri, 27 Aug 2021 11:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6BFB06E921;
 Fri, 27 Aug 2021 11:21:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6585FAA0EA;
 Fri, 27 Aug 2021 11:21:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6874959433605314175=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Aug 2021 11:21:20 -0000
Message-ID: <163006328038.12590.12483502223272775254@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210827103843.527-1-jani.nikula@intel.com>
In-Reply-To: <20210827103843.527-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_UHBR_tables_added_for_pll_programming?=
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

--===============6874959433605314175==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: UHBR tables added for pll programming
URL   : https://patchwork.freedesktop.org/series/94100/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10530 -> Patchwork_20908
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20908/index.html

Known issues
------------

  Here are the changes found in Patchwork_20908 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2] ([i915#155])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10530/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20908/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html

  
#### Possible fixes ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [DMESG-WARN][3] ([i915#2203] / [i915#2868]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10530/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20908/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2868]: https://gitlab.freedesktop.org/drm/intel/issues/2868


Participating hosts (38 -> 32)
------------------------------

  Missing    (6): fi-ilk-m540 bat-adls-5 fi-bsw-cyan fi-kbl-7500u fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10530 -> Patchwork_20908

  CI-20190529: 20190529
  CI_DRM_10530: 63bca765c920120bd9746d9093190d82c4ace341 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6187: 1afd52c1471dafdf521eae431f3e228826de6de2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20908: 37a3cc965a3b884bb5ca84f4a645c08fa6c68ead @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

37a3cc965a3b drm/i915/dg2: UHBR tables added for pll programming

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20908/index.html

--===============6874959433605314175==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: UHBR tables added for pll programming</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94100/">https://patchwork.freedesktop.org/series/94100/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20908/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20908/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10530 -&gt; Patchwork_20908</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20908/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20908 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10530/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20908/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_chamelium@hdmi-hpd-fast:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10530/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2868">i915#2868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20908/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (38 -&gt; 32)</h2>
<p>Missing    (6): fi-ilk-m540 bat-adls-5 fi-bsw-cyan fi-kbl-7500u fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10530 -&gt; Patchwork_20908</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10530: 63bca765c920120bd9746d9093190d82c4ace341 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6187: 1afd52c1471dafdf521eae431f3e228826de6de2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20908: 37a3cc965a3b884bb5ca84f4a645c08fa6c68ead @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>37a3cc965a3b drm/i915/dg2: UHBR tables added for pll programming</p>

</body>
</html>

--===============6874959433605314175==--
