Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1EC3EA4C3
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 14:37:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 685446E088;
	Thu, 12 Aug 2021 12:37:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B980B6E088;
 Thu, 12 Aug 2021 12:37:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B0841A0099;
 Thu, 12 Aug 2021 12:37:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3567451601680905542=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Aug 2021 12:37:45 -0000
Message-ID: <162877186568.21762.12955495913039459614@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210729020106.18346-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210729020106.18346-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Introduce_Intel_PXP_=28rev4=29?=
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

--===============3567451601680905542==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Introduce Intel PXP (rev4)
URL   : https://patchwork.freedesktop.org/series/90503/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10474 -> Patchwork_20802
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20802/index.html

Known issues
------------

  Here are the changes found in Patchwork_20802 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-icl-u2:          [PASS][1] -> [DMESG-FAIL][2] ([i915#2291] / [i915#541])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-icl-u2/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20802/fi-icl-u2/igt@i915_selftest@live@gt_heartbeat.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [DMESG-FAIL][3] ([i915#1993]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-icl-y/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20802/fi-icl-y/igt@i915_selftest@live@execlists.html

  
  [i915#1993]: https://gitlab.freedesktop.org/drm/intel/issues/1993
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (39 -> 35)
------------------------------

  Missing    (4): fi-bdw-samus fi-bsw-cyan bat-jsl-1 fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10474 -> Patchwork_20802

  CI-20190529: 20190529
  CI_DRM_10474: 046552fb86ff8adbcff75775fa5f407139cc8507 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6172: ffda3a23ee9c108f17147a05c321f32ae1f25132 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20802: 3fffe5731ae99181964d2eb3d58c35797e15c753 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3fffe5731ae9 drm/i915/pxp: enable PXP for integrated Gen12
44da0d1d6f69 drm/i915/pxp: black pixels on pxp disabled
acfc177b569e drm/i915/pxp: Add plane decryption support
6c338ff4035f drm/i915/pxp: Enable PXP power management
5d5cf83b00a6 drm/i915/pxp: start the arb session on demand
c5a878193242 drm/i915/pxp: interfaces for using protected objects
8bb9f3f77bad drm/i915/pxp: Implement PXP irq handler
389286854a1d drm/i915/pxp: Implement arb session teardown
6ee365ff48d6 drm/i915/pxp: Create the arbitrary session after boot
231491eefcc7 drm/i915/pxp: set KCR reg init
9d3aaae13dbd drm/i915/pxp: Implement funcs to create the TEE channel
9ad093624bbe drm/i915/pxp: allocate a vcs context for pxp usage
bfb4bf081281 drm/i915/pxp: define PXP device flag and kconfig
2d8e564a00c6 mei: pxp: export pavp client to me client bus
65c355279252 drm/i915/pxp: Define PXP component interface

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20802/index.html

--===============3567451601680905542==
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
<tr><td><b>Series:</b></td><td>drm/i915: Introduce Intel PXP (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90503/">https://patchwork.freedesktop.org/series/90503/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20802/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20802/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10474 -&gt; Patchwork_20802</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20802/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20802 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-icl-u2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20802/fi-icl-u2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10474/fi-icl-y/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1993">i915#1993</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20802/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 35)</h2>
<p>Missing    (4): fi-bdw-samus fi-bsw-cyan bat-jsl-1 fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10474 -&gt; Patchwork_20802</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10474: 046552fb86ff8adbcff75775fa5f407139cc8507 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6172: ffda3a23ee9c108f17147a05c321f32ae1f25132 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20802: 3fffe5731ae99181964d2eb3d58c35797e15c753 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3fffe5731ae9 drm/i915/pxp: enable PXP for integrated Gen12<br />
44da0d1d6f69 drm/i915/pxp: black pixels on pxp disabled<br />
acfc177b569e drm/i915/pxp: Add plane decryption support<br />
6c338ff4035f drm/i915/pxp: Enable PXP power management<br />
5d5cf83b00a6 drm/i915/pxp: start the arb session on demand<br />
c5a878193242 drm/i915/pxp: interfaces for using protected objects<br />
8bb9f3f77bad drm/i915/pxp: Implement PXP irq handler<br />
389286854a1d drm/i915/pxp: Implement arb session teardown<br />
6ee365ff48d6 drm/i915/pxp: Create the arbitrary session after boot<br />
231491eefcc7 drm/i915/pxp: set KCR reg init<br />
9d3aaae13dbd drm/i915/pxp: Implement funcs to create the TEE channel<br />
9ad093624bbe drm/i915/pxp: allocate a vcs context for pxp usage<br />
bfb4bf081281 drm/i915/pxp: define PXP device flag and kconfig<br />
2d8e564a00c6 mei: pxp: export pavp client to me client bus<br />
65c355279252 drm/i915/pxp: Define PXP component interface</p>

</body>
</html>

--===============3567451601680905542==--
