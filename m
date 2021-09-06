Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF1F4015C7
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 06:51:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6652D895B5;
	Mon,  6 Sep 2021 04:51:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBB72895B5;
 Mon,  6 Sep 2021 04:51:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CC584A9932;
 Mon,  6 Sep 2021 04:51:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7354421975688000345=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 06 Sep 2021 04:51:45 -0000
Message-ID: <163090390580.30428.12970387479916865258@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210906034356.2946530-1-airlied@gmail.com>
In-Reply-To: <20210906034356.2946530-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgcmVm?=
 =?utf-8?q?actor_display_structs_a_little_bit?=
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

--===============7354421975688000345==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: refactor display structs a little bit
URL   : https://patchwork.freedesktop.org/series/94367/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10551 -> Patchwork_20963
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20963/index.html

Known issues
------------

  Here are the changes found in Patchwork_20963 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][1] ([i915#1602] / [i915#2029])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20963/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [DMESG-WARN][2] ([i915#1982]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10551/fi-kbl-soraka/igt@i915_module_load@reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20963/fi-kbl-soraka/igt@i915_module_load@reload.html

  
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029


Participating hosts (46 -> 39)
------------------------------

  Missing    (7): bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10551 -> Patchwork_20963

  CI-20190529: 20190529
  CI_DRM_10551: 2b58e5151c7043a45a02238d63f7e17cf5cad46a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20963: bc448a9d147ac1f59962f69c2e22ccc012f93256 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bc448a9d147a drm/i915/display: move fbc into display struct
abfd2f3e84da drm/i915/display: move drrs into display struct
00d5669bd6e9 drm/i915/drrs: just use some local vars to simplify drrs code
f924c533b785 drm/i915/display: move pps_mmio_base to display struct
6ce1abe08452 drm/i915/display: move mipi_mmio_base to display struct
bb277479cb80 drm/i915/display: move intel_dmc into display struct
38bff6053be9 drm/i915/display: move gmbus into display struct
7b219ea05311 drm/i915: move more pll/clocks into display struct.
76dc91485857 drm/i915/display: move cdclk info into display
f4fbd6000df1 drm/i915: move display funcs into a display struct.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20963/index.html

--===============7354421975688000345==
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
<tr><td><b>Series:</b></td><td>refactor display structs a little bit</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94367/">https://patchwork.freedesktop.org/series/94367/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20963/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20963/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10551 -&gt; Patchwork_20963</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20963/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20963 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20963/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10551/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20963/fi-kbl-soraka/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (46 -&gt; 39)</h2>
<p>Missing    (7): bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10551 -&gt; Patchwork_20963</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10551: 2b58e5151c7043a45a02238d63f7e17cf5cad46a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20963: bc448a9d147ac1f59962f69c2e22ccc012f93256 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bc448a9d147a drm/i915/display: move fbc into display struct<br />
abfd2f3e84da drm/i915/display: move drrs into display struct<br />
00d5669bd6e9 drm/i915/drrs: just use some local vars to simplify drrs code<br />
f924c533b785 drm/i915/display: move pps_mmio_base to display struct<br />
6ce1abe08452 drm/i915/display: move mipi_mmio_base to display struct<br />
bb277479cb80 drm/i915/display: move intel_dmc into display struct<br />
38bff6053be9 drm/i915/display: move gmbus into display struct<br />
7b219ea05311 drm/i915: move more pll/clocks into display struct.<br />
76dc91485857 drm/i915/display: move cdclk info into display<br />
f4fbd6000df1 drm/i915: move display funcs into a display struct.</p>

</body>
</html>

--===============7354421975688000345==--
