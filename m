Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1B14057DA
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 15:43:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EBF86E877;
	Thu,  9 Sep 2021 13:43:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B33F36E877;
 Thu,  9 Sep 2021 13:43:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AA855A00CC;
 Thu,  9 Sep 2021 13:43:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3564518283286744028=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Sep 2021 13:43:35 -0000
Message-ID: <163119501567.16811.18068974361184235685@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210909122915.971652-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210909122915.971652-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Introduce_Intel_PXP_=28rev6=29?=
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

--===============3564518283286744028==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Introduce Intel PXP (rev6)
URL   : https://patchwork.freedesktop.org/series/90503/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10565 -> Patchwork_21001
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21001/index.html

Known issues
------------

  Here are the changes found in Patchwork_21001 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +27 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21001/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#3718])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21001/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][3] -> [INCOMPLETE][4] ([i915#3921])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21001/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21001/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - {fi-jsl-1}:         [DMESG-FAIL][6] ([i915#1886]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/fi-jsl-1/igt@i915_selftest@live@gt_pm.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21001/fi-jsl-1/igt@i915_selftest@live@gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921


Participating hosts (47 -> 39)
------------------------------

  Missing    (8): fi-ilk-m540 bat-adls-5 bat-dg1-6 fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10565 -> Patchwork_21001

  CI-20190529: 20190529
  CI_DRM_10565: 8c3cd60dcfa81a649b14f0705eb5e5c9336f1881 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6201: be0d02ff0775235ead63ccb1e3a1e8c10f0209cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21001: 9f43a759224fd9b8cc3116ab3b3ab97d72791e01 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9f43a759224f drm/i915/pxp: enable PXP for integrated Gen12
0863fbc2021b drm/i915/pxp: add PXP documentation
f9652eddefaa drm/i915/pxp: add pxp debugfs
87c269e251cd drm/i915/pxp: black pixels on pxp disabled
48584fd7f1e0 drm/i915/pxp: Add plane decryption support
61274982b95b drm/i915/pxp: Enable PXP power management
5f170f70a91c drm/i915/pxp: start the arb session on demand
f2ea2f8e1f45 drm/i915/pxp: interfaces for using protected objects
8098ad3734e4 drm/i915/pxp: Implement PXP irq handler
10e6202ef0ff drm/i915/pxp: Implement arb session teardown
6c57836d2dda drm/i915/pxp: Create the arbitrary session after boot
cc2086cc202f drm/i915/pxp: set KCR reg init
ce029c5228f4 drm/i915/pxp: Implement funcs to create the TEE channel
32d2a598f087 drm/i915/pxp: allocate a vcs context for pxp usage
95ad0c8a1ff6 drm/i915/pxp: define PXP device flag and kconfig
48b326460b6f mei: pxp: export pavp client to me client bus
4b04867d778d drm/i915/pxp: Define PXP component interface

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21001/index.html

--===============3564518283286744028==
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
<tr><td><b>Series:</b></td><td>drm/i915: Introduce Intel PXP (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90503/">https://patchwork.freedesktop.org/series/90503/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21001/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21001/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10565 -&gt; Patchwork_21001</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21001/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21001 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21001/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21001/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21001/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21001/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_pm:<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21001/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (47 -&gt; 39)</h2>
<p>Missing    (8): fi-ilk-m540 bat-adls-5 bat-dg1-6 fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10565 -&gt; Patchwork_21001</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10565: 8c3cd60dcfa81a649b14f0705eb5e5c9336f1881 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6201: be0d02ff0775235ead63ccb1e3a1e8c10f0209cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21001: 9f43a759224fd9b8cc3116ab3b3ab97d72791e01 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9f43a759224f drm/i915/pxp: enable PXP for integrated Gen12<br />
0863fbc2021b drm/i915/pxp: add PXP documentation<br />
f9652eddefaa drm/i915/pxp: add pxp debugfs<br />
87c269e251cd drm/i915/pxp: black pixels on pxp disabled<br />
48584fd7f1e0 drm/i915/pxp: Add plane decryption support<br />
61274982b95b drm/i915/pxp: Enable PXP power management<br />
5f170f70a91c drm/i915/pxp: start the arb session on demand<br />
f2ea2f8e1f45 drm/i915/pxp: interfaces for using protected objects<br />
8098ad3734e4 drm/i915/pxp: Implement PXP irq handler<br />
10e6202ef0ff drm/i915/pxp: Implement arb session teardown<br />
6c57836d2dda drm/i915/pxp: Create the arbitrary session after boot<br />
cc2086cc202f drm/i915/pxp: set KCR reg init<br />
ce029c5228f4 drm/i915/pxp: Implement funcs to create the TEE channel<br />
32d2a598f087 drm/i915/pxp: allocate a vcs context for pxp usage<br />
95ad0c8a1ff6 drm/i915/pxp: define PXP device flag and kconfig<br />
48b326460b6f mei: pxp: export pavp client to me client bus<br />
4b04867d778d drm/i915/pxp: Define PXP component interface</p>

</body>
</html>

--===============3564518283286744028==--
