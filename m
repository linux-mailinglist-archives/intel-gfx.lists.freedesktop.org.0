Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 114C42D71CA
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 09:34:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D0206ECC3;
	Fri, 11 Dec 2020 08:34:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 994236ECC2;
 Fri, 11 Dec 2020 08:34:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 945B9A9F66;
 Fri, 11 Dec 2020 08:34:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Date: Fri, 11 Dec 2020 08:34:25 -0000
Message-ID: <160767566560.16101.10937242886652586740@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201211072911.27403-1-sean.z.huang@intel.com>
In-Reply-To: <20201211072911.27403-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Intel_PXP_component_-_Mesa_single_session_=28rev7=29?=
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
Content-Type: multipart/mixed; boundary="===============1125881668=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1125881668==
Content-Type: multipart/alternative;
 boundary="===============2416894008618950888=="

--===============2416894008618950888==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Intel PXP component - Mesa single session (rev7)
URL   : https://patchwork.freedesktop.org/series/84620/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9474 -> Patchwork_19121
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19121/index.html

Known issues
------------

  Here are the changes found in Patchwork_19121 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][1] -> [DMESG-FAIL][2] ([i915#2291] / [i915#541])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9474/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19121/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9474/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19121/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9474/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19121/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (43 -> 40)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9474 -> Patchwork_19121

  CI-20190529: 20190529
  CI_DRM_9474: f982ee792667f5f2d70901f49a70021415241c07 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5888: c79d4e88f4162905da400360b6fa4940122f3a2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19121: 63f42b42ce407214d20b297e07627187eaeabd60 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

63f42b42ce40 drm/i915/pxp: Enable the PXP ioctl for protected session
e028d175a7c7 drm/i915/pxp: Add PXP-related registers into allowlist
4be1ba306da5 drm/i915/pxp: Termiante the session upon app crash
2c9895acb3e8 drm/i915/pxp: Implement ioctl action to query PXP tag
a6dab9f61328 drm/i915/pxp: Implement ioctl action to send TEE commands
cb65109b3532 drm/i915/pxp: Implement ioctl action to terminate the session
75aee5d55b35 drm/i915/pxp: Implement ioctl action to set session in play
b25888532795 drm/i915/pxp: Implement ioctl action to reserve session slots
458c4c5f7dc7 drm/i915/pxp: Add plane decryption support
75b529bb0ead drm/i915/pxp: User interface for Protected buffer
51ca8ba239da drm/i915/uapi: introduce drm_i915_gem_create_ext
e30b264e9b24 mei: pxp: export pavp client to me client bus
4e1693650a95 drm/i915/pxp: Expose session state for display protection flip
4051452e1385 drm/i915/pxp: Enable PXP power management
924b2bb0f32c drm/i915/pxp: Destroy arb session upon teardown
8ec5e8ce209a drm/i915/pxp: Enable PXP irq worker and callback stub
5e4cfcfc2516 drm/i915/pxp: Func to send hardware session termination
d1465e75c54a drm/i915/pxp: Create the arbitrary session after boot
b3f4fa4690f9 drm/i915/pxp: Implement funcs to create the TEE channel
f5f3e07588f6 drm/i915/pxp: set KCR reg init during the boot time
0cae6c13cf00 drm/i915/pxp: Introduce Intel PXP component

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19121/index.html

--===============2416894008618950888==
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
<tr><td><b>Series:</b></td><td>Introduce Intel PXP component - Mesa single session (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84620/">https://patchwork.freedesktop.org/series/84620/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19121/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19121/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9474 -&gt; Patchwork_19121</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19121/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19121 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9474/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19121/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9474/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19121/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_mmap_gtt@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9474/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19121/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9474 -&gt; Patchwork_19121</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9474: f982ee792667f5f2d70901f49a70021415241c07 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5888: c79d4e88f4162905da400360b6fa4940122f3a2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19121: 63f42b42ce407214d20b297e07627187eaeabd60 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>63f42b42ce40 drm/i915/pxp: Enable the PXP ioctl for protected session<br />
e028d175a7c7 drm/i915/pxp: Add PXP-related registers into allowlist<br />
4be1ba306da5 drm/i915/pxp: Termiante the session upon app crash<br />
2c9895acb3e8 drm/i915/pxp: Implement ioctl action to query PXP tag<br />
a6dab9f61328 drm/i915/pxp: Implement ioctl action to send TEE commands<br />
cb65109b3532 drm/i915/pxp: Implement ioctl action to terminate the session<br />
75aee5d55b35 drm/i915/pxp: Implement ioctl action to set session in play<br />
b25888532795 drm/i915/pxp: Implement ioctl action to reserve session slots<br />
458c4c5f7dc7 drm/i915/pxp: Add plane decryption support<br />
75b529bb0ead drm/i915/pxp: User interface for Protected buffer<br />
51ca8ba239da drm/i915/uapi: introduce drm_i915_gem_create_ext<br />
e30b264e9b24 mei: pxp: export pavp client to me client bus<br />
4e1693650a95 drm/i915/pxp: Expose session state for display protection flip<br />
4051452e1385 drm/i915/pxp: Enable PXP power management<br />
924b2bb0f32c drm/i915/pxp: Destroy arb session upon teardown<br />
8ec5e8ce209a drm/i915/pxp: Enable PXP irq worker and callback stub<br />
5e4cfcfc2516 drm/i915/pxp: Func to send hardware session termination<br />
d1465e75c54a drm/i915/pxp: Create the arbitrary session after boot<br />
b3f4fa4690f9 drm/i915/pxp: Implement funcs to create the TEE channel<br />
f5f3e07588f6 drm/i915/pxp: set KCR reg init during the boot time<br />
0cae6c13cf00 drm/i915/pxp: Introduce Intel PXP component</p>

</body>
</html>

--===============2416894008618950888==--

--===============1125881668==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1125881668==--
