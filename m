Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBAB3E1B00
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 20:11:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B25D26E860;
	Thu,  5 Aug 2021 18:11:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 86AA86E3EB;
 Thu,  5 Aug 2021 18:11:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7CE11A47EB;
 Thu,  5 Aug 2021 18:11:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7684221601548508403=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 05 Aug 2021 18:11:01 -0000
Message-ID: <162818706147.30835.12377503594249917635@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210805163647.801064-1-matthew.d.roper@intel.com>
In-Reply-To: <20210805163647.801064-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQmVn?=
 =?utf-8?q?in_enabling_Xe=5FHP_SDV_and_DG2_platforms_=28rev9=29?=
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

--===============7684221601548508403==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Begin enabling Xe_HP SDV and DG2 platforms (rev9)
URL   : https://patchwork.freedesktop.org/series/92135/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10451 -> Patchwork_20776
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20776/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20776:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_timelines:
    - {fi-ehl-2}:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10451/fi-ehl-2/igt@i915_selftest@live@gt_timelines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20776/fi-ehl-2/igt@i915_selftest@live@gt_timelines.html

  
Known issues
------------

  Here are the changes found in Patchwork_20776 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [DMESG-WARN][3] ([i915#2203] / [i915#2868]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10451/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20776/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2868]: https://gitlab.freedesktop.org/drm/intel/issues/2868


Participating hosts (40 -> 34)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10451 -> Patchwork_20776

  CI-20190529: 20190529
  CI_DRM_10451: 3bea0ad83735904d380d83bcca30557268acf887 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6160: 4287344dd6a39d9036c5fb9a047a7d8f10bee981 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20776: e8ef3eecff4fdf295eeb9d88287bd5fe99f1ad11 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e8ef3eecff4f drm/i915/dg2: Configure PCON in DP pre-enable path
af46376d4b74 drm/i915/dg2: Maintain backward-compatible nested batch behavior
de625d7a0adc drm/i915/dg2: Add new LRI reg offsets
7c5f8a298512 drm/i915/xehpsdv: Read correct RP_STATE_CAP register
f61fbc6c1d71 drm/i915/xehpsdv: factor out function to read RP_STATE_CAP
0b355c3ad3ca drm/i915/xehpsdv: Add compute DSS type
8b84974c7782 drm/i915/dg2: Report INSTDONE_GEOM values in error state
b8058f4b6221 drm/i915/xehp: Loop over all gslices for INSTDONE processing
515352629f0e drm/i915/dg2: Add support for new DG2-G11 revid 0x5

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20776/index.html

--===============7684221601548508403==
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
<tr><td><b>Series:</b></td><td>Begin enabling Xe_HP SDV and DG2 platforms (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92135/">https://patchwork.freedesktop.org/series/92135/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20776/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20776/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10451 -&gt; Patchwork_20776</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20776/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20776:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gt_timelines:<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10451/fi-ehl-2/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20776/fi-ehl-2/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20776 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_chamelium@hdmi-hpd-fast:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10451/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2868">i915#2868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20776/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (40 -&gt; 34)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10451 -&gt; Patchwork_20776</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10451: 3bea0ad83735904d380d83bcca30557268acf887 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6160: 4287344dd6a39d9036c5fb9a047a7d8f10bee981 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20776: e8ef3eecff4fdf295eeb9d88287bd5fe99f1ad11 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e8ef3eecff4f drm/i915/dg2: Configure PCON in DP pre-enable path<br />
af46376d4b74 drm/i915/dg2: Maintain backward-compatible nested batch behavior<br />
de625d7a0adc drm/i915/dg2: Add new LRI reg offsets<br />
7c5f8a298512 drm/i915/xehpsdv: Read correct RP_STATE_CAP register<br />
f61fbc6c1d71 drm/i915/xehpsdv: factor out function to read RP_STATE_CAP<br />
0b355c3ad3ca drm/i915/xehpsdv: Add compute DSS type<br />
8b84974c7782 drm/i915/dg2: Report INSTDONE_GEOM values in error state<br />
b8058f4b6221 drm/i915/xehp: Loop over all gslices for INSTDONE processing<br />
515352629f0e drm/i915/dg2: Add support for new DG2-G11 revid 0x5</p>

</body>
</html>

--===============7684221601548508403==--
