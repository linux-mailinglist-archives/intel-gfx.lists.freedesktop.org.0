Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE323E2170
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Aug 2021 04:22:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2C6A6E9BD;
	Fri,  6 Aug 2021 02:22:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 83D836E99F;
 Fri,  6 Aug 2021 02:22:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4F78CA0078;
 Fri,  6 Aug 2021 02:22:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4102090858949784147=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Gunthorpe" <jgg@nvidia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 06 Aug 2021 02:22:04 -0000
Message-ID: <162821652429.27549.16778156151386710122@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <0-v4-9ea22c5e6afb+1adf-vfio_reflck_jgg@nvidia.com>
In-Reply-To: <0-v4-9ea22c5e6afb+1adf-vfio_reflck_jgg@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUHJv?=
 =?utf-8?q?vide_core_infrastructure_for_managing_open/release_=28rev9=29?=
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

--===============4102090858949784147==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Provide core infrastructure for managing open/release (rev9)
URL   : https://patchwork.freedesktop.org/series/92556/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10453 -> Patchwork_20778
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20778 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20778, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20778:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rps@basic-api:
    - fi-rkl-guc:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10453/fi-rkl-guc/igt@i915_pm_rps@basic-api.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-rkl-guc/igt@i915_pm_rps@basic-api.html

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-rkl-guc/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20778 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-sdma:
    - fi-kbl-7500u:       NOTRUN -> [SKIP][4] ([fdo#109271]) +30 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-7500u/igt@amdgpu/amd_basic@cs-sdma.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][5] ([fdo#109271]) +26 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-7500u:       NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-7500u/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-7500u:       NOTRUN -> [FAIL][8] ([i915#579])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-7500u/igt@i915_pm_rpm@basic-rte.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][9] ([i915#579])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][10] ([i915#1886] / [i915#2291])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][11] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-7500u:       NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#533])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-7500u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#533])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][14] ([i915#3303]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10453/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (35 -> 34)
------------------------------

  Additional (2): fi-kbl-soraka fi-kbl-7500u 
  Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10453 -> Patchwork_20778

  CI-20190529: 20190529
  CI_DRM_10453: 4c897440c12f1db41678fe4d83a979bf9375424a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6160: 4287344dd6a39d9036c5fb9a047a7d8f10bee981 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20778: 16a862df1e076a03a3124c4cdff558c494e5dbb6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

16a862df1e07 vfio: Remove struct vfio_device_ops open/release
b75c4b452009 vfio/gvt: Fix open/close when multiple device FDs are open
486294d2c582 vfio/ap, ccw: Fix open/close when multiple device FDs are open
c5854ee895cf vfio/mbochs: Fix close when multiple device FDs are open
1309c4bd1733 vfio/pci: Reorganize VFIO_DEVICE_PCI_HOT_RESET to use the device set
1d22f1ed155e vfio/pci: Change vfio_pci_try_bus_reset() to use the dev_set
aaf4591d0469 vfio/pci: Move to the device set infrastructure
d06f6c571ebe vfio/platform: Use open_device() instead of open coding a refcnt scheme
5d682856d46f vfio/fsl: Move to the device set infrastructure
abe0ffd61cfa vfio/samples: Delete useless open/close
2085f40d11f9 vfio: Provide better generic support for open/release vfio_device_ops
14a1353260e5 vfio: Introduce a vfio_uninit_group_dev() API call
fb9d431ac9b4 vfio/mbochs: Fix missing error unwind of mbochs_used_mbytes
5d99eb3c1b1c vfio/samples: Remove module get/put

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/index.html

--===============4102090858949784147==
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
<tr><td><b>Series:</b></td><td>Provide core infrastructure for managing open/release (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92556/">https://patchwork.freedesktop.org/series/92556/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10453 -&gt; Patchwork_20778</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20778 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20778, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20778:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10453/fi-rkl-guc/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-rkl-guc/igt@i915_pm_rps@basic-api.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-rkl-guc/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20778 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-sdma:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-7500u/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-7500u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-7500u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-7500u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10453/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20778/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Additional (2): fi-kbl-soraka fi-kbl-7500u <br />
  Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10453 -&gt; Patchwork_20778</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10453: 4c897440c12f1db41678fe4d83a979bf9375424a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6160: 4287344dd6a39d9036c5fb9a047a7d8f10bee981 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20778: 16a862df1e076a03a3124c4cdff558c494e5dbb6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>16a862df1e07 vfio: Remove struct vfio_device_ops open/release<br />
b75c4b452009 vfio/gvt: Fix open/close when multiple device FDs are open<br />
486294d2c582 vfio/ap, ccw: Fix open/close when multiple device FDs are open<br />
c5854ee895cf vfio/mbochs: Fix close when multiple device FDs are open<br />
1309c4bd1733 vfio/pci: Reorganize VFIO_DEVICE_PCI_HOT_RESET to use the device set<br />
1d22f1ed155e vfio/pci: Change vfio_pci_try_bus_reset() to use the dev_set<br />
aaf4591d0469 vfio/pci: Move to the device set infrastructure<br />
d06f6c571ebe vfio/platform: Use open_device() instead of open coding a refcnt scheme<br />
5d682856d46f vfio/fsl: Move to the device set infrastructure<br />
abe0ffd61cfa vfio/samples: Delete useless open/close<br />
2085f40d11f9 vfio: Provide better generic support for open/release vfio_device_ops<br />
14a1353260e5 vfio: Introduce a vfio_uninit_group_dev() API call<br />
fb9d431ac9b4 vfio/mbochs: Fix missing error unwind of mbochs_used_mbytes<br />
5d99eb3c1b1c vfio/samples: Remove module get/put</p>

</body>
</html>

--===============4102090858949784147==--
