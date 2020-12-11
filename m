Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 033482D6C05
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 01:05:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66A116E56D;
	Fri, 11 Dec 2020 00:05:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5D8246E56D;
 Fri, 11 Dec 2020 00:05:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4F220A0003;
 Fri, 11 Dec 2020 00:05:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Date: Fri, 11 Dec 2020 00:05:19 -0000
Message-ID: <160764511931.16101.12965877023693632953@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201210223859.23882-1-sean.z.huang@intel.com>
In-Reply-To: <20201210223859.23882-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Intel_PXP_component_-_Mesa_single_session_=28rev6=29?=
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
Content-Type: multipart/mixed; boundary="===============0375988448=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0375988448==
Content-Type: multipart/alternative;
 boundary="===============2321124862484331478=="

--===============2321124862484331478==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Intel PXP component - Mesa single session (rev6)
URL   : https://patchwork.freedesktop.org/series/84620/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9473 -> Patchwork_19118
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19118/index.html

Known issues
------------

  Here are the changes found in Patchwork_19118 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9473/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19118/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-apl-guc:         [DMESG-WARN][3] ([i915#62]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9473/fi-apl-guc/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19118/fi-apl-guc/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-apl-guc:         [DMESG-WARN][5] ([i915#180] / [i915#62]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9473/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19118/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_linear_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9473/fi-tgl-y/igt@gem_linear_blits@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19118/fi-tgl-y/igt@gem_linear_blits@basic.html

  
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9473 -> Patchwork_19118

  CI-20190529: 20190529
  CI_DRM_9473: c64377fd4f00a839c5b25b9e3bae1052fee113b5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5888: c79d4e88f4162905da400360b6fa4940122f3a2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19118: c5cb8520b5e1530d14c42e4b7830e7b53ff2878b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c5cb8520b5e1 drm/i915/pxp: Enable the PXP ioctl for protected session
2d36ea7befb9 drm/i915/pxp: Add PXP-related registers into allowlist
611b466b4273 drm/i915/pxp: Termiante the session upon app crash
e9386b8ba7be drm/i915/pxp: Implement ioctl action to query PXP tag
733af51aac06 drm/i915/pxp: Implement ioctl action to send TEE commands
f2c7fba3da45 drm/i915/pxp: Implement ioctl action to terminate the session
cd05c940fecf drm/i915/pxp: Implement ioctl action to set session in play
717f710b867c drm/i915/pxp: Implement ioctl action to reserve session slots
6b8e71a51390 drm/i915/pxp: Add plane decryption support
9d0636e9498a drm/i915/pxp: User interface for Protected buffer
238291470e9d drm/i915/uapi: introduce drm_i915_gem_create_ext
d2ed1fac0c2c mei: pxp: export pavp client to me client bus
c78a877702c7 drm/i915/pxp: Expose session state for display protection flip
1cc947ef42df drm/i915/pxp: Enable PXP power management
4243dda12065 drm/i915/pxp: Destroy arb session upon teardown
e1072de8779e drm/i915/pxp: Enable PXP irq worker and callback stub
6e0495763e2b drm/i915/pxp: Func to send hardware session termination
1269b2f4bf9b drm/i915/pxp: Create the arbitrary session after boot
cb091c29444b drm/i915/pxp: Implement funcs to create the TEE channel
b12972ae3297 drm/i915/pxp: set KCR reg init during the boot time
483cb19f6248 drm/i915/pxp: Introduce Intel PXP component

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19118/index.html

--===============2321124862484331478==
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
<tr><td><b>Series:</b></td><td>Introduce Intel PXP component - Mesa single session (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84620/">https://patchwork.freedesktop.org/series/84620/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19118/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19118/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9473 -&gt; Patchwork_19118</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19118/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19118 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_mmap_gtt@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9473/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19118/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9473/fi-apl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19118/fi-apl-guc/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9473/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19118/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9473/fi-tgl-y/igt@gem_linear_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19118/fi-tgl-y/igt@gem_linear_blits@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9473 -&gt; Patchwork_19118</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9473: c64377fd4f00a839c5b25b9e3bae1052fee113b5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5888: c79d4e88f4162905da400360b6fa4940122f3a2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19118: c5cb8520b5e1530d14c42e4b7830e7b53ff2878b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c5cb8520b5e1 drm/i915/pxp: Enable the PXP ioctl for protected session<br />
2d36ea7befb9 drm/i915/pxp: Add PXP-related registers into allowlist<br />
611b466b4273 drm/i915/pxp: Termiante the session upon app crash<br />
e9386b8ba7be drm/i915/pxp: Implement ioctl action to query PXP tag<br />
733af51aac06 drm/i915/pxp: Implement ioctl action to send TEE commands<br />
f2c7fba3da45 drm/i915/pxp: Implement ioctl action to terminate the session<br />
cd05c940fecf drm/i915/pxp: Implement ioctl action to set session in play<br />
717f710b867c drm/i915/pxp: Implement ioctl action to reserve session slots<br />
6b8e71a51390 drm/i915/pxp: Add plane decryption support<br />
9d0636e9498a drm/i915/pxp: User interface for Protected buffer<br />
238291470e9d drm/i915/uapi: introduce drm_i915_gem_create_ext<br />
d2ed1fac0c2c mei: pxp: export pavp client to me client bus<br />
c78a877702c7 drm/i915/pxp: Expose session state for display protection flip<br />
1cc947ef42df drm/i915/pxp: Enable PXP power management<br />
4243dda12065 drm/i915/pxp: Destroy arb session upon teardown<br />
e1072de8779e drm/i915/pxp: Enable PXP irq worker and callback stub<br />
6e0495763e2b drm/i915/pxp: Func to send hardware session termination<br />
1269b2f4bf9b drm/i915/pxp: Create the arbitrary session after boot<br />
cb091c29444b drm/i915/pxp: Implement funcs to create the TEE channel<br />
b12972ae3297 drm/i915/pxp: set KCR reg init during the boot time<br />
483cb19f6248 drm/i915/pxp: Introduce Intel PXP component</p>

</body>
</html>

--===============2321124862484331478==--

--===============0375988448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0375988448==--
