Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C903E2FBE
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Aug 2021 21:15:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F21E76EC24;
	Fri,  6 Aug 2021 19:15:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D67C76EC24;
 Fri,  6 Aug 2021 19:15:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D16A4AA0EA;
 Fri,  6 Aug 2021 19:15:13 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8874317445414123908=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 06 Aug 2021 19:15:13 -0000
Message-ID: <162827731385.27546.16557755958775049398@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210806174130.1058960-1-matthew.d.roper@intel.com>
In-Reply-To: <20210806174130.1058960-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Only_access_SFC=5FDONE_when_media_domain_is_not_fused_?=
 =?utf-8?q?off?=
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

--===============8874317445414123908==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Only access SFC_DONE when media domain is not fused off
URL   : https://patchwork.freedesktop.org/series/93468/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10457 -> Patchwork_20782
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20782/index.html

Known issues
------------

  Here are the changes found in Patchwork_20782 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-7500u:       [PASS][1] -> [FAIL][2] ([i915#3449])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10457/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20782/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][3] ([i915#1888]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10457/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20782/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-u2:          [DMESG-FAIL][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10457/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20782/fi-icl-u2/igt@i915_selftest@live@hangcheck.html

  
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#3449]: https://gitlab.freedesktop.org/drm/intel/issues/3449


Participating hosts (37 -> 34)
------------------------------

  Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10457 -> Patchwork_20782

  CI-20190529: 20190529
  CI_DRM_10457: 7700f858b68060307b0a7d94377a5d8f64000e5d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6162: 2f32b9e0da5f1ac9529318dd5b836c8cf4d3c441 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20782: 0e9d9b7275f5382258a63683599e60f68ccb1e31 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0e9d9b7275f5 drm/i915: Only access SFC_DONE when media domain is not fused off

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20782/index.html

--===============8874317445414123908==
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
<tr><td><b>Series:</b></td><td>drm/i915: Only access SFC_DONE when media domain is not fused off</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93468/">https://patchwork.freedesktop.org/series/93468/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20782/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20782/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10457 -&gt; Patchwork_20782</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20782/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20782 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_chamelium@hdmi-edid-read:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10457/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20782/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3449">i915#3449</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10457/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20782/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10457/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20782/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10457 -&gt; Patchwork_20782</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10457: 7700f858b68060307b0a7d94377a5d8f64000e5d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6162: 2f32b9e0da5f1ac9529318dd5b836c8cf4d3c441 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20782: 0e9d9b7275f5382258a63683599e60f68ccb1e31 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0e9d9b7275f5 drm/i915: Only access SFC_DONE when media domain is not fused off</p>

</body>
</html>

--===============8874317445414123908==--
