Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC962EC73D
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 01:16:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 638E96E3A0;
	Thu,  7 Jan 2021 00:16:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 93BFE6E3A0;
 Thu,  7 Jan 2021 00:16:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8AAA1A8831;
 Thu,  7 Jan 2021 00:16:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Date: Thu, 07 Jan 2021 00:16:23 -0000
Message-ID: <160997858353.21182.730262125837100141@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210106231223.8323-1-sean.z.huang@intel.com>
In-Reply-To: <20210106231223.8323-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Intel_PXP_component_-_Mesa_single_session_=28rev19=29?=
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
Content-Type: multipart/mixed; boundary="===============1623773373=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1623773373==
Content-Type: multipart/alternative;
 boundary="===============7102605224761076384=="

--===============7102605224761076384==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Intel PXP component - Mesa single session (rev19)
URL   : https://patchwork.freedesktop.org/series/84620/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9554 -> Patchwork_19276
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19276/index.html

Known issues
------------

  Here are the changes found in Patchwork_19276 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-u2:          [PASS][1] -> [FAIL][2] ([i915#1161] / [i915#262])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19276/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19276/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [FAIL][5] ([i915#579]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19276/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@vgem_basic@dmabuf-fence:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19276/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9554 -> Patchwork_19276

  CI-20190529: 20190529
  CI_DRM_9554: 4786f2a4c7e280974d0b46ca9e30a156eb528d59 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5945: f0ad1a564956d6796d9ff09182c48d78fb00eefe @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19276: 7ce48b165a123c9c6834a1078ea167d09912ed16 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7ce48b165a12 drm/i915/pxp: Add plane decryption support
ae1f0edf901f drm/i915/pxp: User interface for Protected buffer
5ed5ea72d630 drm/i915/uapi: introduce drm_i915_gem_create_ext
ed1733ee9985 mei: pxp: export pavp client to me client bus
f45f6bf27787 drm/i915/pxp: Expose session state for display protection flip
f74cff978a9a drm/i915/pxp: Enable PXP power management
2b451866410d drm/i915/pxp: Destroy arb session upon teardown
e06c62d5fd8d drm/i915/pxp: Enable PXP irq worker and callback stub
60d904942ebb drm/i915/pxp: Func to send hardware session termination
e77ddc43854a drm/i915/pxp: Create the arbitrary session after boot
20c2f538fd26 drm/i915/pxp: Implement funcs to create the TEE channel
fdb764188c85 drm/i915/pxp: set KCR reg init during the boot time
fbdd4e2e287d drm/i915/pxp: Introduce Intel PXP component

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19276/index.html

--===============7102605224761076384==
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
<tr><td><b>Series:</b></td><td>Introduce Intel PXP component - Mesa single session (rev19)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84620/">https://patchwork.freedesktop.org/series/84620/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19276/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19276/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9554 -&gt; Patchwork_19276</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19276/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19276 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19276/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19276/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19276/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-fence:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19276/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9554 -&gt; Patchwork_19276</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9554: 4786f2a4c7e280974d0b46ca9e30a156eb528d59 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5945: f0ad1a564956d6796d9ff09182c48d78fb00eefe @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19276: 7ce48b165a123c9c6834a1078ea167d09912ed16 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7ce48b165a12 drm/i915/pxp: Add plane decryption support<br />
ae1f0edf901f drm/i915/pxp: User interface for Protected buffer<br />
5ed5ea72d630 drm/i915/uapi: introduce drm_i915_gem_create_ext<br />
ed1733ee9985 mei: pxp: export pavp client to me client bus<br />
f45f6bf27787 drm/i915/pxp: Expose session state for display protection flip<br />
f74cff978a9a drm/i915/pxp: Enable PXP power management<br />
2b451866410d drm/i915/pxp: Destroy arb session upon teardown<br />
e06c62d5fd8d drm/i915/pxp: Enable PXP irq worker and callback stub<br />
60d904942ebb drm/i915/pxp: Func to send hardware session termination<br />
e77ddc43854a drm/i915/pxp: Create the arbitrary session after boot<br />
20c2f538fd26 drm/i915/pxp: Implement funcs to create the TEE channel<br />
fdb764188c85 drm/i915/pxp: set KCR reg init during the boot time<br />
fbdd4e2e287d drm/i915/pxp: Introduce Intel PXP component</p>

</body>
</html>

--===============7102605224761076384==--

--===============1623773373==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1623773373==--
