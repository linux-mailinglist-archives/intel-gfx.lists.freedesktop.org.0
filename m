Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1F32D5744
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 10:34:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12F4C6EA54;
	Thu, 10 Dec 2020 09:34:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A59D06EA51;
 Thu, 10 Dec 2020 09:34:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 946A2A0009;
 Thu, 10 Dec 2020 09:34:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Date: Thu, 10 Dec 2020 09:34:09 -0000
Message-ID: <160759284958.19115.1263794194971379914@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201210085203.14422-1-sean.z.huang@intel.com>
In-Reply-To: <20201210085203.14422-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Intel_PXP_component_-_Mesa_single_session_=28rev5=29?=
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
Content-Type: multipart/mixed; boundary="===============1248093610=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1248093610==
Content-Type: multipart/alternative;
 boundary="===============0168982091823664096=="

--===============0168982091823664096==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Intel PXP component - Mesa single session (rev5)
URL   : https://patchwork.freedesktop.org/series/84620/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9468 -> Patchwork_19108
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19108/index.html

Known issues
------------

  Here are the changes found in Patchwork_19108 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-7500u:       [PASS][1] -> [DMESG-WARN][2] ([i915#2605])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9468/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19108/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html

  * igt@fbdev@read:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9468/fi-tgl-y/igt@fbdev@read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19108/fi-tgl-y/igt@fbdev@read.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-tgl-y:           [PASS][5] -> [DMESG-FAIL][6] ([i915#2601])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9468/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19108/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [PASS][7] -> [DMESG-WARN][8] ([i915#165]) +15 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9468/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19108/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
#### Possible fixes ####

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [DMESG-WARN][9] ([i915#402]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9468/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19108/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 40)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9468 -> Patchwork_19108

  CI-20190529: 20190529
  CI_DRM_9468: b7b601789c54389ad15a5a3fd68e6988bb47631e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5887: 7d87d0f1a22544e6a78dc0920b3f54b64144a029 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19108: 30b7044179788d5a565a9d74c0d730f8658d5dff @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

30b704417978 drm/i915/pxp: Enable the PXP ioctl for protected session
6dac969f5857 drm/i915/pxp: Add PXP-related registers into allowlist
b19e2df7c277 drm/i915/pxp: Termiante the session upon app crash
a3a0458018b8 drm/i915/pxp: Implement ioctl action to query PXP tag
a5e79d395c0b drm/i915/pxp: Implement ioctl action to send TEE commands
949bf122347c drm/i915/pxp: Implement ioctl action to terminate the session
115ceaf569f9 drm/i915/pxp: Implement ioctl action to set session in play
2b8c63db2fd5 drm/i915/pxp: Implement ioctl action to reserve session slots
bba3509d4de2 drm/i915/pxp: Add plane decryption support
4d3e71aebd48 drm/i915/pxp: User interface for Protected buffer
280757987ae3 drm/i915/uapi: introduce drm_i915_gem_create_ext
ac45e57d9780 mei: pxp: export pavp client to me client bus
b53c3b4b2b57 drm/i915/pxp: Expose session state for display protection flip
d3ceaa600beb drm/i915/pxp: Enable PXP power management
58f42b15a1a9 drm/i915/pxp: Destroy arb session upon teardown
a0977e83d5ac drm/i915/pxp: Enable PXP irq worker and callback stub
5b0b63e69209 drm/i915/pxp: Func to send hardware session termination
a5754a1b1061 drm/i915/pxp: Create the arbitrary session after boot
2473e936a077 drm/i915/pxp: Implement funcs to create the TEE channel
876545c569e0 drm/i915/pxp: set KCR reg init during the boot time
5bf0d56055a9 drm/i915/pxp: Introduce Intel PXP component

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19108/index.html

--===============0168982091823664096==
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
<tr><td><b>Series:</b></td><td>Introduce Intel PXP component - Mesa single session (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84620/">https://patchwork.freedesktop.org/series/84620/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19108/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19108/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9468 -&gt; Patchwork_19108</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19108/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19108 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9468/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19108/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9468/fi-tgl-y/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19108/fi-tgl-y/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9468/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19108/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9468/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19108/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) +15 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_vgem@basic-fence-flip:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9468/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19108/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9468 -&gt; Patchwork_19108</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9468: b7b601789c54389ad15a5a3fd68e6988bb47631e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5887: 7d87d0f1a22544e6a78dc0920b3f54b64144a029 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19108: 30b7044179788d5a565a9d74c0d730f8658d5dff @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>30b704417978 drm/i915/pxp: Enable the PXP ioctl for protected session<br />
6dac969f5857 drm/i915/pxp: Add PXP-related registers into allowlist<br />
b19e2df7c277 drm/i915/pxp: Termiante the session upon app crash<br />
a3a0458018b8 drm/i915/pxp: Implement ioctl action to query PXP tag<br />
a5e79d395c0b drm/i915/pxp: Implement ioctl action to send TEE commands<br />
949bf122347c drm/i915/pxp: Implement ioctl action to terminate the session<br />
115ceaf569f9 drm/i915/pxp: Implement ioctl action to set session in play<br />
2b8c63db2fd5 drm/i915/pxp: Implement ioctl action to reserve session slots<br />
bba3509d4de2 drm/i915/pxp: Add plane decryption support<br />
4d3e71aebd48 drm/i915/pxp: User interface for Protected buffer<br />
280757987ae3 drm/i915/uapi: introduce drm_i915_gem_create_ext<br />
ac45e57d9780 mei: pxp: export pavp client to me client bus<br />
b53c3b4b2b57 drm/i915/pxp: Expose session state for display protection flip<br />
d3ceaa600beb drm/i915/pxp: Enable PXP power management<br />
58f42b15a1a9 drm/i915/pxp: Destroy arb session upon teardown<br />
a0977e83d5ac drm/i915/pxp: Enable PXP irq worker and callback stub<br />
5b0b63e69209 drm/i915/pxp: Func to send hardware session termination<br />
a5754a1b1061 drm/i915/pxp: Create the arbitrary session after boot<br />
2473e936a077 drm/i915/pxp: Implement funcs to create the TEE channel<br />
876545c569e0 drm/i915/pxp: set KCR reg init during the boot time<br />
5bf0d56055a9 drm/i915/pxp: Introduce Intel PXP component</p>

</body>
</html>

--===============0168982091823664096==--

--===============1248093610==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1248093610==--
