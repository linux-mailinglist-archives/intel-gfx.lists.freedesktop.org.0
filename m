Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DC62DB08A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 16:53:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A19BF6E405;
	Tue, 15 Dec 2020 15:53:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5032D6E3FE;
 Tue, 15 Dec 2020 15:53:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58FB1A9F66;
 Tue, 15 Dec 2020 15:53:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Tue, 15 Dec 2020 15:53:34 -0000
Message-ID: <160804761434.24784.17400654080805770076@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201215135226.16776-1-anshuman.gupta@intel.com>
In-Reply-To: <20201215135226.16776-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/backlight=3A_RFC_cache_backlight_power_state?=
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
Content-Type: multipart/mixed; boundary="===============1970649659=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1970649659==
Content-Type: multipart/alternative;
 boundary="===============3685513399824706010=="

--===============3685513399824706010==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/backlight: RFC cache backlight power state
URL   : https://patchwork.freedesktop.org/series/84954/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9486 -> Patchwork_19144
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/index.html

Known issues
------------

  Here are the changes found in Patchwork_19144 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@flink-lifetime:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html

  
#### Possible fixes ####

  * igt@kms_psr@primary_mmap_gtt:
    - fi-tgl-y:           [DMESG-WARN][3] ([i915#1982]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/fi-tgl-y/igt@kms_psr@primary_mmap_gtt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/fi-tgl-y/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9486 -> Patchwork_19144

  CI-20190529: 20190529
  CI_DRM_9486: c834ebc78f2719e0b7f4f442b837daf5e29be100 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5901: 565d911f08df697fa211dbd1faefe2fd57066f71 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19144: a7044e521942e99794babf2e65c993158a04682c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a7044e521942 drm/i915/backlight: RFC cache backlight power state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/index.html

--===============3685513399824706010==
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
<tr><td><b>Series:</b></td><td>drm/i915/backlight: RFC cache backlight power state</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84954/">https://patchwork.freedesktop.org/series/84954/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9486 -&gt; Patchwork_19144</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19144 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_flink_basic@flink-lifetime:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/fi-tgl-y/igt@kms_psr@primary_mmap_gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/fi-tgl-y/igt@kms_psr@primary_mmap_gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9486/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19144/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9486 -&gt; Patchwork_19144</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9486: c834ebc78f2719e0b7f4f442b837daf5e29be100 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5901: 565d911f08df697fa211dbd1faefe2fd57066f71 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19144: a7044e521942e99794babf2e65c993158a04682c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a7044e521942 drm/i915/backlight: RFC cache backlight power state</p>

</body>
</html>

--===============3685513399824706010==--

--===============1970649659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1970649659==--
