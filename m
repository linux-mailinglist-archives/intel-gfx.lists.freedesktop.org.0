Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D87254EF4B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 04:23:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9384811A653;
	Fri, 17 Jun 2022 02:22:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 660CB11A50C;
 Fri, 17 Jun 2022 02:22:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F849A00A0;
 Fri, 17 Jun 2022 02:22:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3962832411398372551=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 17 Jun 2022 02:22:56 -0000
Message-ID: <165543257636.20135.3141147561320565339@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220616224943.830393-1-lucas.demarchi@intel.com>
In-Reply-To: <20220616224943.830393-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_agp/intel=3A_Rename_intel-gtt_symbo?=
 =?utf-8?q?ls?=
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

--===============3962832411398372551==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] agp/intel: Rename intel-gtt symbols
URL   : https://patchwork.freedesktop.org/series/105261/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11773 -> Patchwork_105261v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105261v1/index.html

Participating hosts (35 -> 32)
------------------------------

  Missing    (3): fi-bdw-samus fi-snb-2520m fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_105261v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-n3050:       [DMESG-FAIL][1] ([i915#2373]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11773/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105261v1/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html

  
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373


Build changes
-------------

  * Linux: CI_DRM_11773 -> Patchwork_105261v1

  CI-20190529: 20190529
  CI_DRM_11773: 8025a295b7aa707f64c7984b7781c6f25e22a901 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6533: 6b5107d91827962808441db6b98e478aa9e67bdb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105261v1: 8025a295b7aa707f64c7984b7781c6f25e22a901 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0ccd88c50693 drm/i915/gt: Re-do the intel-gtt split
8a9df0f87182 agp/intel: Rename intel-gtt symbols

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105261v1/index.html

--===============3962832411398372551==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] agp/intel: Rename intel-gtt symbols</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105261/">https://patchwork.freedesktop.org/series/105261/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105261v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105261v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11773 -&gt; Patchwork_105261v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105261v1/index.html</p>
<h2>Participating hosts (35 -&gt; 32)</h2>
<p>Missing    (3): fi-bdw-samus fi-snb-2520m fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105261v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_lrc:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11773/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2373">i915#2373</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105261v1/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11773 -&gt; Patchwork_105261v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11773: 8025a295b7aa707f64c7984b7781c6f25e22a901 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6533: 6b5107d91827962808441db6b98e478aa9e67bdb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105261v1: 8025a295b7aa707f64c7984b7781c6f25e22a901 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0ccd88c50693 drm/i915/gt: Re-do the intel-gtt split<br />
8a9df0f87182 agp/intel: Rename intel-gtt symbols</p>

</body>
</html>

--===============3962832411398372551==--
