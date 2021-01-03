Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6752E8B2F
	for <lists+intel-gfx@lfdr.de>; Sun,  3 Jan 2021 07:38:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9A3B899B3;
	Sun,  3 Jan 2021 06:38:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 270CC89950;
 Sun,  3 Jan 2021 06:38:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1C11AA73C9;
 Sun,  3 Jan 2021 06:38:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Date: Sun, 03 Jan 2021 06:38:03 -0000
Message-ID: <160965588309.24673.3589695329490054812@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210103054134.10148-1-sean.z.huang@intel.com>
In-Reply-To: <20210103054134.10148-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW50?=
 =?utf-8?q?roduce_Intel_PXP_component_-_Mesa_single_session_=28rev17=29?=
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
Content-Type: multipart/mixed; boundary="===============1578297595=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1578297595==
Content-Type: multipart/alternative;
 boundary="===============2392692200357865328=="

--===============2392692200357865328==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Intel PXP component - Mesa single session (rev17)
URL   : https://patchwork.freedesktop.org/series/84620/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9539 -> Patchwork_19241
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19241 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19241, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19241:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-u2:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9539/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9539/fi-tgl-y/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/fi-tgl-y/igt@core_hotunplug@unbind-rebind.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_hotunplug@unbind-rebind:
    - {fi-tgl-dsi}:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9539/fi-tgl-dsi/igt@core_hotunplug@unbind-rebind.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/fi-tgl-dsi/igt@core_hotunplug@unbind-rebind.html

  
Known issues
------------

  Here are the changes found in Patchwork_19241 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ringfill@basic-all:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([i915#402]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9539/fi-tgl-y/igt@gem_ringfill@basic-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/fi-tgl-y/igt@gem_ringfill@basic-all.html

  * igt@runner@aborted:
    - fi-tgl-y:           NOTRUN -> [FAIL][9] ([i915#1602])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/fi-tgl-y/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][10] ([i915#2029])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/fi-bdw-5557u/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][11] ([i915#1602])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/fi-tgl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [DMESG-WARN][12] ([i915#402]) -> [PASS][13] +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9539/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (40 -> 35)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9539 -> Patchwork_19241

  CI-20190529: 20190529
  CI_DRM_9539: e0847c28677acaf85f76d986c5fd4fe63a38b353 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5937: 2198d8d6759614b2bff5ea01190bf5efb3415f4c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19241: f84c07c8704ad955cbe3e636d5cf23ac3c0adacb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f84c07c8704a drm/i915/pxp: Add plane decryption support
0e08c6750790 drm/i915/pxp: User interface for Protected buffer
293606286682 drm/i915/uapi: introduce drm_i915_gem_create_ext
e23f66cafb18 mei: pxp: export pavp client to me client bus
58d65aba41b5 drm/i915/pxp: Expose session state for display protection flip
30dca1d70c28 drm/i915/pxp: Enable PXP power management
dfe1b609f657 drm/i915/pxp: Destroy arb session upon teardown
336fbee5c73c drm/i915/pxp: Enable PXP irq worker and callback stub
574d8bce8f22 drm/i915/pxp: Func to send hardware session termination
61874f2bad44 drm/i915/pxp: Create the arbitrary session after boot
4714cc90f9fa drm/i915/pxp: Implement funcs to create the TEE channel
9abc7e513ca7 drm/i915/pxp: set KCR reg init during the boot time
643a1efc5af0 drm/i915/pxp: Introduce Intel PXP component

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/index.html

--===============2392692200357865328==
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
<tr><td><b>Series:</b></td><td>Introduce Intel PXP component - Mesa single session (rev17)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84620/">https://patchwork.freedesktop.org/series/84620/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9539 -&gt; Patchwork_19241</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19241 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19241, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19241:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9539/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9539/fi-tgl-y/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/fi-tgl-y/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9539/fi-tgl-dsi/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/fi-tgl-dsi/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19241 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9539/fi-tgl-y/igt@gem_ringfill@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/fi-tgl-y/igt@gem_ringfill@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/fi-tgl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_self_import@basic-with_one_bo_two_files:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9539/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19241/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (40 -&gt; 35)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9539 -&gt; Patchwork_19241</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9539: e0847c28677acaf85f76d986c5fd4fe63a38b353 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5937: 2198d8d6759614b2bff5ea01190bf5efb3415f4c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19241: f84c07c8704ad955cbe3e636d5cf23ac3c0adacb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f84c07c8704a drm/i915/pxp: Add plane decryption support<br />
0e08c6750790 drm/i915/pxp: User interface for Protected buffer<br />
293606286682 drm/i915/uapi: introduce drm_i915_gem_create_ext<br />
e23f66cafb18 mei: pxp: export pavp client to me client bus<br />
58d65aba41b5 drm/i915/pxp: Expose session state for display protection flip<br />
30dca1d70c28 drm/i915/pxp: Enable PXP power management<br />
dfe1b609f657 drm/i915/pxp: Destroy arb session upon teardown<br />
336fbee5c73c drm/i915/pxp: Enable PXP irq worker and callback stub<br />
574d8bce8f22 drm/i915/pxp: Func to send hardware session termination<br />
61874f2bad44 drm/i915/pxp: Create the arbitrary session after boot<br />
4714cc90f9fa drm/i915/pxp: Implement funcs to create the TEE channel<br />
9abc7e513ca7 drm/i915/pxp: set KCR reg init during the boot time<br />
643a1efc5af0 drm/i915/pxp: Introduce Intel PXP component</p>

</body>
</html>

--===============2392692200357865328==--

--===============1578297595==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1578297595==--
