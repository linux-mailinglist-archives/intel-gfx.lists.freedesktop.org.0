Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7857344E0DF
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 04:41:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91AD36E862;
	Fri, 12 Nov 2021 03:41:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3F6B26E862;
 Fri, 12 Nov 2021 03:41:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 372E9A00C9;
 Fri, 12 Nov 2021 03:41:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5360872215121354421=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Fri, 12 Nov 2021 03:41:22 -0000
Message-ID: <163668848219.27228.11549659219230582038@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211112025222.61031-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20211112025222.61031-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pmu=3A_Increase_the_live=5Fengine=5Fbusy=5Fstats_sample_p?=
 =?utf-8?q?eriod?=
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

--===============5360872215121354421==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pmu: Increase the live_engine_busy_stats sample period
URL   : https://patchwork.freedesktop.org/series/96840/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10872 -> Patchwork_21568
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21568/index.html

Participating hosts (29 -> 25)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (5): bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-cfl-8700k bat-adlp-4 

Known issues
------------

  Here are the changes found in Patchwork_21568 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_engines:
    - fi-rkl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#4432])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10872/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21568/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][3] ([fdo#109271]) +53 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21568/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][4] ([i915#3928] / [i915#4312])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21568/fi-rkl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3057]: https://gitlab.freedesktop.org/drm/intel/issues/3057
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928
  [i915#3970]: https://gitlab.freedesktop.org/drm/intel/issues/3970
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4432]: https://gitlab.freedesktop.org/drm/intel/issues/4432


Build changes
-------------

  * Linux: CI_DRM_10872 -> Patchwork_21568

  CI-20190529: 20190529
  CI_DRM_10872: 50c74a91cbcff9d1ca50d3774391c4757e9816b8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6279: 1c70b17877974491273ac3fb1de93ba75309df79 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21568: 7fca16cc17fe1761a76af1a6ea49baaccbe07bcd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7fca16cc17fe drm/i915/pmu: Increase the live_engine_busy_stats sample period

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21568/index.html

--===============5360872215121354421==
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
<tr><td><b>Series:</b></td><td>drm/i915/pmu: Increase the live_engine_busy_stats sample period</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96840/">https://patchwork.freedesktop.org/series/96840/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21568/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21568/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10872 -&gt; Patchwork_21568</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21568/index.html</p>
<h2>Participating hosts (29 -&gt; 25)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (5): bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-cfl-8700k bat-adlp-4 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21568 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10872/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21568/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4432">i915#4432</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21568/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +53 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21568/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10872 -&gt; Patchwork_21568</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10872: 50c74a91cbcff9d1ca50d3774391c4757e9816b8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6279: 1c70b17877974491273ac3fb1de93ba75309df79 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21568: 7fca16cc17fe1761a76af1a6ea49baaccbe07bcd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7fca16cc17fe drm/i915/pmu: Increase the live_engine_busy_stats sample period</p>

</body>
</html>

--===============5360872215121354421==--
