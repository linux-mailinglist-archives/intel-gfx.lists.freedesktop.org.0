Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F16782D735A
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 11:05:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34BAB6ED22;
	Fri, 11 Dec 2020 10:05:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 24B446ED24;
 Fri, 11 Dec 2020 10:05:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1E8AAA41FB;
 Fri, 11 Dec 2020 10:05:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Date: Fri, 11 Dec 2020 10:05:20 -0000
Message-ID: <160768112012.16100.5707797146377634487@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201211090457.32674-1-sean.z.huang@intel.com>
In-Reply-To: <20201211090457.32674-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Intel_PXP_component_-_Mesa_single_session_=28rev8=29?=
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
Content-Type: multipart/mixed; boundary="===============0044190812=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0044190812==
Content-Type: multipart/alternative;
 boundary="===============2969827096236134633=="

--===============2969827096236134633==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Intel PXP component - Mesa single session (rev8)
URL   : https://patchwork.freedesktop.org/series/84620/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9474 -> Patchwork_19122
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19122/index.html

Known issues
------------

  Here are the changes found in Patchwork_19122 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-tgl-y:           [PASS][1] -> [DMESG-FAIL][2] ([i915#2601])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9474/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19122/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9474/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19122/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9474/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19122/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bdw-samus fi-tgl-dsi fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9474 -> Patchwork_19122

  CI-20190529: 20190529
  CI_DRM_9474: f982ee792667f5f2d70901f49a70021415241c07 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5888: c79d4e88f4162905da400360b6fa4940122f3a2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19122: 8e852e077594ab190386c155f4428b35dfd08dbb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8e852e077594 drm/i915/pxp: Enable the PXP ioctl for protected session
bcc9b977b876 mei: pxp: add vtag parameter to mei_pxp_send/receive interface
b6503a960d6a mei: bus: add vtag support
7ec0ed17ce84 drm/i915/pxp: Add PXP-related registers into allowlist
b84477cc8080 drm/i915/pxp: Termiante the session upon app crash
9b1fa8b3b954 drm/i915/pxp: Implement ioctl action to query PXP tag
52012be29790 drm/i915/pxp: Implement ioctl action to send TEE commands
56d25d4e32a4 drm/i915/pxp: Implement ioctl action to terminate the session
cf7bd29b94d9 drm/i915/pxp: Implement ioctl action to set session in play
ec0265ec5383 drm/i915/pxp: Implement ioctl action to reserve session slots
72b03056fdd8 drm/i915/pxp: Add plane decryption support
7cfdaae63c4e drm/i915/pxp: User interface for Protected buffer
6f0f2a9fad54 drm/i915/uapi: introduce drm_i915_gem_create_ext
fe8a87fd99d9 mei: pxp: export pavp client to me client bus
47d3aeafecbe drm/i915/pxp: Expose session state for display protection flip
b96bf7e80a28 drm/i915/pxp: Enable PXP power management
8a0aff60049e drm/i915/pxp: Destroy arb session upon teardown
9db73c188015 drm/i915/pxp: Enable PXP irq worker and callback stub
3e513275f2c4 drm/i915/pxp: Func to send hardware session termination
01a5ed146b56 drm/i915/pxp: Create the arbitrary session after boot
38e3c5114511 drm/i915/pxp: Implement funcs to create the TEE channel
bf809419dacc drm/i915/pxp: set KCR reg init during the boot time
69d2fc1c153b drm/i915/pxp: Introduce Intel PXP component

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19122/index.html

--===============2969827096236134633==
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
<tr><td><b>Series:</b></td><td>Introduce Intel PXP component - Mesa single session (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84620/">https://patchwork.freedesktop.org/series/84620/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19122/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19122/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9474 -&gt; Patchwork_19122</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19122/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19122 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9474/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19122/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_two_bos:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9474/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19122/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_mmap_gtt@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9474/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19122/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bdw-samus fi-tgl-dsi fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9474 -&gt; Patchwork_19122</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9474: f982ee792667f5f2d70901f49a70021415241c07 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5888: c79d4e88f4162905da400360b6fa4940122f3a2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19122: 8e852e077594ab190386c155f4428b35dfd08dbb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8e852e077594 drm/i915/pxp: Enable the PXP ioctl for protected session<br />
bcc9b977b876 mei: pxp: add vtag parameter to mei_pxp_send/receive interface<br />
b6503a960d6a mei: bus: add vtag support<br />
7ec0ed17ce84 drm/i915/pxp: Add PXP-related registers into allowlist<br />
b84477cc8080 drm/i915/pxp: Termiante the session upon app crash<br />
9b1fa8b3b954 drm/i915/pxp: Implement ioctl action to query PXP tag<br />
52012be29790 drm/i915/pxp: Implement ioctl action to send TEE commands<br />
56d25d4e32a4 drm/i915/pxp: Implement ioctl action to terminate the session<br />
cf7bd29b94d9 drm/i915/pxp: Implement ioctl action to set session in play<br />
ec0265ec5383 drm/i915/pxp: Implement ioctl action to reserve session slots<br />
72b03056fdd8 drm/i915/pxp: Add plane decryption support<br />
7cfdaae63c4e drm/i915/pxp: User interface for Protected buffer<br />
6f0f2a9fad54 drm/i915/uapi: introduce drm_i915_gem_create_ext<br />
fe8a87fd99d9 mei: pxp: export pavp client to me client bus<br />
47d3aeafecbe drm/i915/pxp: Expose session state for display protection flip<br />
b96bf7e80a28 drm/i915/pxp: Enable PXP power management<br />
8a0aff60049e drm/i915/pxp: Destroy arb session upon teardown<br />
9db73c188015 drm/i915/pxp: Enable PXP irq worker and callback stub<br />
3e513275f2c4 drm/i915/pxp: Func to send hardware session termination<br />
01a5ed146b56 drm/i915/pxp: Create the arbitrary session after boot<br />
38e3c5114511 drm/i915/pxp: Implement funcs to create the TEE channel<br />
bf809419dacc drm/i915/pxp: set KCR reg init during the boot time<br />
69d2fc1c153b drm/i915/pxp: Introduce Intel PXP component</p>

</body>
</html>

--===============2969827096236134633==--

--===============0044190812==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0044190812==--
