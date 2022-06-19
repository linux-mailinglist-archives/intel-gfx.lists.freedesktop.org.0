Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EBB550B20
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Jun 2022 16:15:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39E2510E305;
	Sun, 19 Jun 2022 14:15:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CDEA410E24A;
 Sun, 19 Jun 2022 14:15:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C5A1FA882E;
 Sun, 19 Jun 2022 14:15:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6517352590215140244=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Date: Sun, 19 Jun 2022 14:15:14 -0000
Message-ID: <165564811477.17164.15403616403086753131@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220619133721.523546-1-alexander.usyskin@intel.com>
In-Reply-To: <20220619133721.523546-1-alexander.usyskin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgR1ND?=
 =?utf-8?q?_support_for_XeHP_SDV_and_DG2_platforms_=28rev3=29?=
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

--===============6517352590215140244==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: GSC support for XeHP SDV and DG2 platforms (rev3)
URL   : https://patchwork.freedesktop.org/series/102339/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11776 -> Patchwork_102339v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v3/index.html

Participating hosts (35 -> 33)
------------------------------

  Missing    (2): fi-bdw-samus fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_102339v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [PASS][1] -> [INCOMPLETE][2] ([i915#5982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11776/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v3/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-4770:        NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v3/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][4] ([i915#3303] / [i915#4785]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11776/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v3/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982


Build changes
-------------

  * Linux: CI_DRM_11776 -> Patchwork_102339v3

  CI-20190529: 20190529
  CI_DRM_11776: ac17a5249380aaabe5d1eaebd9b3a2eedc08ccdc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6536: e3de4d32b7a509635fbff4d5131c05a7767699f7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102339v3: ac17a5249380aaabe5d1eaebd9b3a2eedc08ccdc @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

cd963cb15b09 drm/i915/gsc: allocate extended operational memory in LMEM
6a5c51a39276 mei: debugfs: add pxp mode to devstate in debugfs
cc182a4943f3 mei: gsc: add transition to PXP mode in resume flow
35d5a9da665d mei: gsc: setup gsc extended operational memory
dd3e42864f73 mei: mkhi: add memory ready command
5fa199fc65b2 mei: bus: export common mkhi definitions into a separate header
1d030bf0f8fa mei: extend timeouts on slow devices.
48bd92728d5f mei: gsc: wait for reset thread on stop
20fe6e41e955 mei: gsc: use polling instead of interrupts
a8f15615ec88 drm/i915/gsc: add GSC XeHP SDV platform definition
4d98a818e3aa drm/i915/gsc: add slow_fw flag to the gsc device definition
0e52ed97f21a drm/i915/gsc: add slow_fw flag to the mei auxiliary device
05396d161b2d drm/i915/gsc: skip irq initialization if using polling
9e2e60e98008 HAX: drm/i915: force INTEL_MEI_GSC on for CI

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v3/index.html

--===============6517352590215140244==
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
<tr><td><b>Series:</b></td><td>GSC support for XeHP SDV and DG2 platforms (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102339/">https://patchwork.freedesktop.org/series/102339/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11776 -&gt; Patchwork_102339v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v3/index.html</p>
<h2>Participating hosts (35 -&gt; 33)</h2>
<p>Missing    (2): fi-bdw-samus fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102339v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11776/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v3/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982">i915#5982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v3/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11776/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102339v3/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11776 -&gt; Patchwork_102339v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11776: ac17a5249380aaabe5d1eaebd9b3a2eedc08ccdc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6536: e3de4d32b7a509635fbff4d5131c05a7767699f7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102339v3: ac17a5249380aaabe5d1eaebd9b3a2eedc08ccdc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>cd963cb15b09 drm/i915/gsc: allocate extended operational memory in LMEM<br />
6a5c51a39276 mei: debugfs: add pxp mode to devstate in debugfs<br />
cc182a4943f3 mei: gsc: add transition to PXP mode in resume flow<br />
35d5a9da665d mei: gsc: setup gsc extended operational memory<br />
dd3e42864f73 mei: mkhi: add memory ready command<br />
5fa199fc65b2 mei: bus: export common mkhi definitions into a separate header<br />
1d030bf0f8fa mei: extend timeouts on slow devices.<br />
48bd92728d5f mei: gsc: wait for reset thread on stop<br />
20fe6e41e955 mei: gsc: use polling instead of interrupts<br />
a8f15615ec88 drm/i915/gsc: add GSC XeHP SDV platform definition<br />
4d98a818e3aa drm/i915/gsc: add slow_fw flag to the gsc device definition<br />
0e52ed97f21a drm/i915/gsc: add slow_fw flag to the mei auxiliary device<br />
05396d161b2d drm/i915/gsc: skip irq initialization if using polling<br />
9e2e60e98008 HAX: drm/i915: force INTEL_MEI_GSC on for CI</p>

</body>
</html>

--===============6517352590215140244==--
