Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8467D2DA5F2
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 03:08:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1B8B89BFE;
	Tue, 15 Dec 2020 02:08:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1AC2389BFC;
 Tue, 15 Dec 2020 02:08:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 147E7A8169;
 Tue, 15 Dec 2020 02:08:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Date: Tue, 15 Dec 2020 02:08:07 -0000
Message-ID: <160799808707.24781.8497053818388238906@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201215010726.15898-1-sean.z.huang@intel.com>
In-Reply-To: <20201215010726.15898-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW50?=
 =?utf-8?q?roduce_Intel_PXP_component_-_Mesa_single_session_=28rev9=29?=
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
Content-Type: multipart/mixed; boundary="===============0201623139=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0201623139==
Content-Type: multipart/alternative;
 boundary="===============5587553386290394352=="

--===============5587553386290394352==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Intel PXP component - Mesa single session (rev9)
URL   : https://patchwork.freedesktop.org/series/84620/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9482 -> Patchwork_19141
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19141 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19141, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19141:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-snb-2600:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9482/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html

  
Known issues
------------

  Here are the changes found in Patchwork_19141 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271]) +26 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_basic@userptr:
    - fi-byt-j1900:       NOTRUN -> [SKIP][4] ([fdo#109271]) +17 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][5] ([i915#2283])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [PASS][6] -> [DMESG-WARN][7] ([i915#2411] / [i915#402])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9482/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][8] -> [DMESG-WARN][9] ([i915#402]) +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9482/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][10] -> [DMESG-FAIL][11] ([i915#2291] / [i915#541])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9482/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@runner@aborted:
    - fi-snb-2600:        NOTRUN -> [FAIL][13] ([i915#698])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-snb-2600/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [INCOMPLETE][14] ([i915#142] / [i915#2405]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9482/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@vgem_basic@create:
    - fi-tgl-y:           [DMESG-WARN][16] ([i915#402]) -> [PASS][17] +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9482/fi-tgl-y/igt@vgem_basic@create.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-tgl-y/igt@vgem_basic@create.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#698]: https://gitlab.freedesktop.org/drm/intel/issues/698


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9482 -> Patchwork_19141

  CI-20190529: 20190529
  CI_DRM_9482: 279e4ca8a7117e617c498833deaa287b797e7d09 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5894: a668d5c148ec3c1d3958f660a146a88676aac25d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19141: 2ef214b613825ab216db325165a8aba4a9c3fc87 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2ef214b61382 drm/i915/pxp: Enable the PXP ioctl for protected session
b6e69de09984 mei: pxp: add vtag parameter to mei_pxp_send/receive interface
f5dd23fa8e44 mei: bus: add vtag support
c1bed68ad38c drm/i915/pxp: Add PXP-related registers into allowlist
713326f8ee89 drm/i915/pxp: Termiante the session upon app crash
e5de6f6bc36d drm/i915/pxp: Implement ioctl action to query PXP tag
f1ec94927f56 drm/i915/pxp: Implement ioctl action to send TEE commands
7283461e1827 drm/i915/pxp: Implement ioctl action to terminate the session
0aad847ac03a drm/i915/pxp: Implement ioctl action to set session in play
61e2d59046ef drm/i915/pxp: Implement ioctl action to reserve session slots
2d4ceab335b8 drm/i915/pxp: Add plane decryption support
0109d81526e7 drm/i915/pxp: User interface for Protected buffer
8607613cdc3c drm/i915/uapi: introduce drm_i915_gem_create_ext
13c18d614250 mei: pxp: export pavp client to me client bus
3aca4c717f0f drm/i915/pxp: Expose session state for display protection flip
5f961b501516 drm/i915/pxp: Enable PXP power management
b1930d67ee22 drm/i915/pxp: Destroy arb session upon teardown
949c9444c351 drm/i915/pxp: Enable PXP irq worker and callback stub
eaa6e13dfc23 drm/i915/pxp: Func to send hardware session termination
ad29af959bfd drm/i915/pxp: Create the arbitrary session after boot
5bc3bc0efc8f drm/i915/pxp: Implement funcs to create the TEE channel
e51f062056e5 drm/i915/pxp: set KCR reg init during the boot time
9cc153390294 drm/i915/pxp: Introduce Intel PXP component

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/index.html

--===============5587553386290394352==
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
<tr><td><b>Series:</b></td><td>Introduce Intel PXP component - Mesa single session (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84620/">https://patchwork.freedesktop.org/series/84620/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9482 -&gt; Patchwork_19141</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19141 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19141, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19141:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9482/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19141 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@userptr:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9482/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9482/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9482/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/698">i915#698</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9482/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@create:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9482/fi-tgl-y/igt@vgem_basic@create.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19141/fi-tgl-y/igt@vgem_basic@create.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9482 -&gt; Patchwork_19141</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9482: 279e4ca8a7117e617c498833deaa287b797e7d09 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5894: a668d5c148ec3c1d3958f660a146a88676aac25d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19141: 2ef214b613825ab216db325165a8aba4a9c3fc87 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2ef214b61382 drm/i915/pxp: Enable the PXP ioctl for protected session<br />
b6e69de09984 mei: pxp: add vtag parameter to mei_pxp_send/receive interface<br />
f5dd23fa8e44 mei: bus: add vtag support<br />
c1bed68ad38c drm/i915/pxp: Add PXP-related registers into allowlist<br />
713326f8ee89 drm/i915/pxp: Termiante the session upon app crash<br />
e5de6f6bc36d drm/i915/pxp: Implement ioctl action to query PXP tag<br />
f1ec94927f56 drm/i915/pxp: Implement ioctl action to send TEE commands<br />
7283461e1827 drm/i915/pxp: Implement ioctl action to terminate the session<br />
0aad847ac03a drm/i915/pxp: Implement ioctl action to set session in play<br />
61e2d59046ef drm/i915/pxp: Implement ioctl action to reserve session slots<br />
2d4ceab335b8 drm/i915/pxp: Add plane decryption support<br />
0109d81526e7 drm/i915/pxp: User interface for Protected buffer<br />
8607613cdc3c drm/i915/uapi: introduce drm_i915_gem_create_ext<br />
13c18d614250 mei: pxp: export pavp client to me client bus<br />
3aca4c717f0f drm/i915/pxp: Expose session state for display protection flip<br />
5f961b501516 drm/i915/pxp: Enable PXP power management<br />
b1930d67ee22 drm/i915/pxp: Destroy arb session upon teardown<br />
949c9444c351 drm/i915/pxp: Enable PXP irq worker and callback stub<br />
eaa6e13dfc23 drm/i915/pxp: Func to send hardware session termination<br />
ad29af959bfd drm/i915/pxp: Create the arbitrary session after boot<br />
5bc3bc0efc8f drm/i915/pxp: Implement funcs to create the TEE channel<br />
e51f062056e5 drm/i915/pxp: set KCR reg init during the boot time<br />
9cc153390294 drm/i915/pxp: Introduce Intel PXP component</p>

</body>
</html>

--===============5587553386290394352==--

--===============0201623139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0201623139==--
