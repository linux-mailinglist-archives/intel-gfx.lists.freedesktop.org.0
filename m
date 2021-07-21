Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5A43D15F3
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 20:12:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E95B96E25B;
	Wed, 21 Jul 2021 18:12:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1CAD96E187;
 Wed, 21 Jul 2021 18:12:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1442AA77A5;
 Wed, 21 Jul 2021 18:12:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christoph Hellwig" <hch@lst.de>
Date: Wed, 21 Jul 2021 18:12:04 -0000
Message-ID: <162689112405.767.8884151653418426253@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210721155355.173183-1-hch@lst.de>
In-Reply-To: <20210721155355.173183-1-hch@lst.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/21=5D_drm/i915/gvt=3A_integrate_into_th?=
 =?utf-8?q?e_main_Makefile?=
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
Content-Type: multipart/mixed; boundary="===============2100420419=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2100420419==
Content-Type: multipart/alternative;
 boundary="===============4285471834604288464=="

--===============4285471834604288464==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/21] drm/i915/gvt: integrate into the main Makefile
URL   : https://patchwork.freedesktop.org/series/92829/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10366 -> Patchwork_20665
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20665/index.html

Known issues
------------

  Here are the changes found in Patchwork_20665 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][1] ([i915#1602] / [i915#2029])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20665/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-jsl-1}:         [INCOMPLETE][2] -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10366/fi-jsl-1/igt@i915_selftest@live@hangcheck.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20665/fi-jsl-1/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029


Participating hosts (38 -> 35)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10366 -> Patchwork_20665

  CI-20190529: 20190529
  CI_DRM_10366: d3aa39a7c367b272a467428fb921eec1610c6155 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6146: 6caef22e4aafed275771f564d4ea4cab09896ebc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20665: 2c36e1260150346ecc6f8edaffa5835926325a02 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2c36e1260150 drm/i915/gvt: remove struct intel_gvt_mpt
a93f04904e69 drm/i915/gvt: devirtualize dma_pin_guest_page
35d7761f42d7 drm/i915/gvt: devirtualize ->dma_{, un}map_guest_page
6cd11c2afa9d drm/i915/gvt: devirtualize ->{enable, disable}_page_track
16963db2e084 drm/i915/gvt: devirtualize ->gfn_to_mfn
5d78c64848e6 drm/i915/gvt: devirtualize ->is_valid_gfn
ecb0f9df6783 drm/i915/gvt: devirtualize ->inject_msi
81a08bb01447 drm/i915/gvt: devirtualize ->detach_vgpu
d36971595ad1 drm/i915/gvt: devirtualize ->set_edid and ->set_opregion
e0e73ad94224 drm/i915/gvt: devirtualize ->{get, put}_vfio_device
24f596a8d272 drm/i915/gvt: devirtualize ->{read, write}_gpa
c033dc22a0e6 drm/i915/gvt: remove vgpu->handle
462f7fb6be15 drm/i915/gvt: merge struct kvmgt_guest_info into strut intel_vgpu
47581e8b69e6 drm/i915/gvt: merge struct kvmgt_vdev into struct intel_vgpu
b9000b54cb4f drm/i915/gvt: remove the unused from_virt_to_mfn op
17f9380f85ac drm/i915/gvt: remove the map_gfn_to_mfn and set_trap_area ops
4a9718b0e2cd drm/i915/gvt: remove intel_gvt_ops
4a615848a361 drm/i915/gvt: move the gvt code into kvmgt.ko
ab572add6f55 drm/i915/gvt: remove enum hypervisor_type
db6b61277669 drm/i915/gvt: remove module refcounting in intel_gvt_{, un}register_hypervisor
fb4910938868 drm/i915/gvt: integrate into the main Makefile

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20665/index.html

--===============4285471834604288464==
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
<tr><td><b>Series:</b></td><td>series starting with [01/21] drm/i915/gvt: integrate into the main Makefile</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92829/">https://patchwork.freedesktop.org/series/92829/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20665/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20665/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10366 -&gt; Patchwork_20665</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20665/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20665 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20665/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10366/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20665/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10366 -&gt; Patchwork_20665</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10366: d3aa39a7c367b272a467428fb921eec1610c6155 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6146: 6caef22e4aafed275771f564d4ea4cab09896ebc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20665: 2c36e1260150346ecc6f8edaffa5835926325a02 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2c36e1260150 drm/i915/gvt: remove struct intel_gvt_mpt<br />
a93f04904e69 drm/i915/gvt: devirtualize dma_pin_guest_page<br />
35d7761f42d7 drm/i915/gvt: devirtualize -&gt;dma_{, un}map_guest_page<br />
6cd11c2afa9d drm/i915/gvt: devirtualize -&gt;{enable, disable}<em>page_track<br />
16963db2e084 drm/i915/gvt: devirtualize -&gt;gfn_to_mfn<br />
5d78c64848e6 drm/i915/gvt: devirtualize -&gt;is_valid_gfn<br />
ecb0f9df6783 drm/i915/gvt: devirtualize -&gt;inject_msi<br />
81a08bb01447 drm/i915/gvt: devirtualize -&gt;detach_vgpu<br />
d36971595ad1 drm/i915/gvt: devirtualize -&gt;set_edid and -&gt;set_opregion<br />
e0e73ad94224 drm/i915/gvt: devirtualize -&gt;{get, put}_vfio_device<br />
24f596a8d272 drm/i915/gvt: devirtualize -&gt;{read, write}_gpa<br />
c033dc22a0e6 drm/i915/gvt: remove vgpu-&gt;handle<br />
462f7fb6be15 drm/i915/gvt: merge struct kvmgt_guest_info into strut intel_vgpu<br />
47581e8b69e6 drm/i915/gvt: merge struct kvmgt_vdev into struct intel_vgpu<br />
b9000b54cb4f drm/i915/gvt: remove the unused from_virt_to_mfn op<br />
17f9380f85ac drm/i915/gvt: remove the map_gfn_to_mfn and set_trap_area ops<br />
4a9718b0e2cd drm/i915/gvt: remove intel_gvt_ops<br />
4a615848a361 drm/i915/gvt: move the gvt code into kvmgt.ko<br />
ab572add6f55 drm/i915/gvt: remove enum hypervisor_type<br />
db6b61277669 drm/i915/gvt: remove module refcounting in intel_gvt</em>{, un}register_hypervisor<br />
fb4910938868 drm/i915/gvt: integrate into the main Makefile</p>

</body>
</html>

--===============4285471834604288464==--

--===============2100420419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2100420419==--
