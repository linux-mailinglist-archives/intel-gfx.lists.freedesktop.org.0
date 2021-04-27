Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9B936CEB2
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 00:42:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 543D66E9FA;
	Tue, 27 Apr 2021 22:41:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7242C6E9F8;
 Tue, 27 Apr 2021 22:41:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6915BA008A;
 Tue, 27 Apr 2021 22:41:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Tue, 27 Apr 2021 22:41:56 -0000
Message-ID: <161956331639.17488.15966357013376567069@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210427214913.46956-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20210427214913.46956-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_support_for_querying_engine_cycles?=
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
Content-Type: multipart/mixed; boundary="===============1857452163=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1857452163==
Content-Type: multipart/alternative;
 boundary="===============1617796350805277662=="

--===============1617796350805277662==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add support for querying engine cycles
URL   : https://patchwork.freedesktop.org/series/89560/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10018 -> Patchwork_20008
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20008/index.html

Known issues
------------

  Here are the changes found in Patchwork_20008 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [FAIL][1] ([i915#1888]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10018/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20008/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-tgl-y:           [DMESG-FAIL][3] ([i915#541]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10018/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20008/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html

  
#### Warnings ####

  * igt@kms_chamelium@vga-edid-read:
    - fi-icl-u2:          [SKIP][5] -> [SKIP][6] ([fdo#109309]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10018/fi-icl-u2/igt@kms_chamelium@vga-edid-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20008/fi-icl-u2/igt@kms_chamelium@vga-edid-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (47 -> 41)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-icl-y fi-bdw-samus 


Build changes
-------------

  * IGT: IGT_6076 -> IGTPW_5757
  * Linux: CI_DRM_10018 -> Patchwork_20008

  CI-20190529: 20190529
  CI_DRM_10018: 929a4fa94d31990066fd8be6a02f1a6c2b9f1d2d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_5757: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5757/index.html
  IGT_6076: 9ab0820dbd07781161c1ace6973ea222fd24e53a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20008: 043ae82f7a388989581edb393cd22ff6fb2fde02 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

043ae82f7a38 i915/query: Correlate engine and cpu timestamps with better accuracy

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20008/index.html

--===============1617796350805277662==
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
<tr><td><b>Series:</b></td><td>Add support for querying engine cycles</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89560/">https://patchwork.freedesktop.org/series/89560/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20008/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20008/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10018 -&gt; Patchwork_20008</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20008/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20008 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10018/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20008/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10018/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20008/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_chamelium@vga-edid-read:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10018/fi-icl-u2/igt@kms_chamelium@vga-edid-read.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20008/fi-icl-u2/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109309">fdo#109309</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (47 -&gt; 41)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-icl-y fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6076 -&gt; IGTPW_5757</li>
<li>Linux: CI_DRM_10018 -&gt; Patchwork_20008</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10018: 929a4fa94d31990066fd8be6a02f1a6c2b9f1d2d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_5757: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5757/index.html<br />
  IGT_6076: 9ab0820dbd07781161c1ace6973ea222fd24e53a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20008: 043ae82f7a388989581edb393cd22ff6fb2fde02 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>043ae82f7a38 i915/query: Correlate engine and cpu timestamps with better accuracy</p>

</body>
</html>

--===============1617796350805277662==--

--===============1857452163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1857452163==--
