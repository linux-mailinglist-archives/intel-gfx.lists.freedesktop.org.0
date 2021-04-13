Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7095F35D7C2
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 08:10:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF8266E222;
	Tue, 13 Apr 2021 06:10:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AAE026E222;
 Tue, 13 Apr 2021 06:10:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0773AA0ED;
 Tue, 13 Apr 2021 06:10:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 13 Apr 2021 06:10:12 -0000
Message-ID: <161829421265.8795.9177729750687598653@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210413051002.92589-1-lucas.demarchi@intel.com>
In-Reply-To: <20210413051002.92589-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Extend_GEN_renames_to_the_rest_of_the_driver_=28rev3?=
 =?utf-8?q?=29?=
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
Content-Type: multipart/mixed; boundary="===============0649655739=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0649655739==
Content-Type: multipart/alternative;
 boundary="===============0384503224495818761=="

--===============0384503224495818761==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Extend GEN renames to the rest of the driver (rev3)
URL   : https://patchwork.freedesktop.org/series/88825/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9962 -> Patchwork_19918
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19918/index.html

Known issues
------------

  Here are the changes found in Patchwork_19918 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +27 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19918/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#2283])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19918/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19918/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283


Participating hosts (47 -> 41)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-icl-y fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9962 -> Patchwork_19918

  CI-20190529: 20190529
  CI_DRM_9962: 2847b855cf291d61694ccfefa4f37d74d61f752b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6063: d3b7f74ce5df6fdea03e490b7c64f0c6bfe76f03 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19918: 387aa72e151b334331ea0fd17725949fd25b0cfb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

387aa72e151b drm/i915: split dgfx features from gen 12
2a9ae3289b71 drm/i915: add media and display versions to device_info print
5f54af83f769 drm/i915: finish removal of gen from intel_device_info
9ca0c826016d drm/i915: eliminate remaining uses of intel_device_info->gen
ebc4cd343cf5 drm/i915: finish removal of gen_mask
155bdc7709bd drm/i915/selftests: eliminate use of gen_mask
d41b73f73091 drm/i915/selftests: replace unused mask with simple version
da39207e3437 drm/i915/gt: replace gen use in intel_engine_cs
87272d4c4a0b drm/i915: add macros for graphics and media versions
a6f37e3b5ecd drm/i915/display: rename display version macros
7503616b85f4 drm/i915: rename display.version to display.ver
8c34aa8e267d drm/i915/display: use DISPLAY_VER() on remaining users

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19918/index.html

--===============0384503224495818761==
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
<tr><td><b>Series:</b></td><td>drm/i915: Extend GEN renames to the rest of the driver (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/88825/">https://patchwork.freedesktop.org/series/88825/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19918/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19918/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9962 -&gt; Patchwork_19918</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19918/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19918 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19918/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19918/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19918/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (47 -&gt; 41)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-icl-y fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9962 -&gt; Patchwork_19918</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9962: 2847b855cf291d61694ccfefa4f37d74d61f752b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6063: d3b7f74ce5df6fdea03e490b7c64f0c6bfe76f03 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19918: 387aa72e151b334331ea0fd17725949fd25b0cfb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>387aa72e151b drm/i915: split dgfx features from gen 12<br />
2a9ae3289b71 drm/i915: add media and display versions to device_info print<br />
5f54af83f769 drm/i915: finish removal of gen from intel_device_info<br />
9ca0c826016d drm/i915: eliminate remaining uses of intel_device_info-&gt;gen<br />
ebc4cd343cf5 drm/i915: finish removal of gen_mask<br />
155bdc7709bd drm/i915/selftests: eliminate use of gen_mask<br />
d41b73f73091 drm/i915/selftests: replace unused mask with simple version<br />
da39207e3437 drm/i915/gt: replace gen use in intel_engine_cs<br />
87272d4c4a0b drm/i915: add macros for graphics and media versions<br />
a6f37e3b5ecd drm/i915/display: rename display version macros<br />
7503616b85f4 drm/i915: rename display.version to display.ver<br />
8c34aa8e267d drm/i915/display: use DISPLAY_VER() on remaining users</p>

</body>
</html>

--===============0384503224495818761==--

--===============0649655739==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0649655739==--
