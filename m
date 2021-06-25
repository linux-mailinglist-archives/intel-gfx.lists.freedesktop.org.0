Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C683B4030
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jun 2021 11:19:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9091D6E0E4;
	Fri, 25 Jun 2021 09:19:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 031BD6E0D2;
 Fri, 25 Jun 2021 09:19:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E7CBAA7DFB;
 Fri, 25 Jun 2021 09:19:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Fri, 25 Jun 2021 09:19:31 -0000
Message-ID: <162461277192.13648.465435594325527995@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210625082222.3845-1-tzimmermann@suse.de>
In-Reply-To: <20210625082222.3845-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRGVw?=
 =?utf-8?q?recate_struct_drm=5Fdevice=2Eirq=5Fenabled_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0667756205=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0667756205==
Content-Type: multipart/alternative;
 boundary="===============6503396713329613144=="

--===============6503396713329613144==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Deprecate struct drm_device.irq_enabled (rev2)
URL   : https://patchwork.freedesktop.org/series/91845/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10279 -> Patchwork_20466
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20466/index.html

Known issues
------------

  Here are the changes found in Patchwork_20466 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][1] ([i915#1602] / [i915#2029])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20466/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][2] ([i915#1982] / [k.org#205379]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10279/fi-tgl-dsi/igt@i915_module_load@reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20466/fi-tgl-dsi/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (43 -> 37)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bdw-gvtdvm fi-glk-dsi fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10279 -> Patchwork_20466

  CI-20190529: 20190529
  CI_DRM_10279: a996e82cbdc77fc789d0a385602e02f7e2478a1e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6119: a306810ebbc8984bde38a57ef0c33eea394f4e18 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20466: e1c155287a51ea8b770c774b9f98b77656dc2acc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e1c155287a51 drm/zte: Don't set struct drm_device.irq_enabled
0d788773b4a2 drm/xlnx: Don't set struct drm_device.irq_enabled
6e0450487727 drm/vmwgfx: Don't set struct drm_device.irq_enabled
1a40222c9b06 drm/vkms: Don't set struct drm_device.irq_enabled
5a68258241ce drm/vc4: Don't set struct drm_device.irq_enabled
a1667c37b77a drm/tidss: Don't use struct drm_device.irq_enabled
cdf717450b9f drm/tegra: Don't set struct drm_device.irq_enabled
ff36999c025e drm/sun4i: Don't set struct drm_device.irq_enabled
aeb6c0b29a7e drm/stm: Don't set struct drm_device.irq_enabled
07c0db48dd80 drm/sti: Don't set struct drm_device.irq_enabled
0bc658b72ff7 drm/rockchip: Don't set struct drm_device.irq_enabled
6c146315f78b drm/rcar-du: Don't set struct drm_device.irq_enabled
5192f22d62d4 drm/omapdrm: Track IRQ state in local device state
75ab41cf85ba drm/nouveau: Don't set struct drm_device.irq_enabled
3397b281d304 drm/mediatek: Don't set struct drm_device.irq_enabled
e6112f1649c3 drm/imx/dcss: Don't set struct drm_device.irq_enabled
2653cbdb30bb drm/imx: Don't set struct drm_device.irq_enabled
0e30c8dbb5d4 drm/kirin: Don't set struct drm_device.irq_enabled
55f896d83228 drm/exynos: Don't set struct drm_device.irq_enabled
5aec6c6f8fc4 drm/malidp: Don't set struct drm_device.irq_enabled
99ea1463f8fb drm/komeda: Don't set struct drm_device.irq_enabled
fb1312913e45 drm/i915: Track IRQ state in local device state
feeaf91e136a drm/armada: Don't set struct drm_device.irq_enabled
87185ebf5f0c drm: Don't test for IRQ support in VBLANK ioctls
f1fa91fa0489 drm/radeon: Track IRQ state in local device state
67cea301f9df drm/hibmc: Call drm_irq_uninstall() unconditionally
3045cc2d3cf2 drm/amdgpu: Track IRQ state in local device state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20466/index.html

--===============6503396713329613144==
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
<tr><td><b>Series:</b></td><td>Deprecate struct drm_device.irq_enabled (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91845/">https://patchwork.freedesktop.org/series/91845/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20466/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20466/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10279 -&gt; Patchwork_20466</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20466/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20466 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20466/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10279/fi-tgl-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20466/fi-tgl-dsi/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 37)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bdw-gvtdvm fi-glk-dsi fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10279 -&gt; Patchwork_20466</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10279: a996e82cbdc77fc789d0a385602e02f7e2478a1e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6119: a306810ebbc8984bde38a57ef0c33eea394f4e18 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20466: e1c155287a51ea8b770c774b9f98b77656dc2acc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e1c155287a51 drm/zte: Don't set struct drm_device.irq_enabled<br />
0d788773b4a2 drm/xlnx: Don't set struct drm_device.irq_enabled<br />
6e0450487727 drm/vmwgfx: Don't set struct drm_device.irq_enabled<br />
1a40222c9b06 drm/vkms: Don't set struct drm_device.irq_enabled<br />
5a68258241ce drm/vc4: Don't set struct drm_device.irq_enabled<br />
a1667c37b77a drm/tidss: Don't use struct drm_device.irq_enabled<br />
cdf717450b9f drm/tegra: Don't set struct drm_device.irq_enabled<br />
ff36999c025e drm/sun4i: Don't set struct drm_device.irq_enabled<br />
aeb6c0b29a7e drm/stm: Don't set struct drm_device.irq_enabled<br />
07c0db48dd80 drm/sti: Don't set struct drm_device.irq_enabled<br />
0bc658b72ff7 drm/rockchip: Don't set struct drm_device.irq_enabled<br />
6c146315f78b drm/rcar-du: Don't set struct drm_device.irq_enabled<br />
5192f22d62d4 drm/omapdrm: Track IRQ state in local device state<br />
75ab41cf85ba drm/nouveau: Don't set struct drm_device.irq_enabled<br />
3397b281d304 drm/mediatek: Don't set struct drm_device.irq_enabled<br />
e6112f1649c3 drm/imx/dcss: Don't set struct drm_device.irq_enabled<br />
2653cbdb30bb drm/imx: Don't set struct drm_device.irq_enabled<br />
0e30c8dbb5d4 drm/kirin: Don't set struct drm_device.irq_enabled<br />
55f896d83228 drm/exynos: Don't set struct drm_device.irq_enabled<br />
5aec6c6f8fc4 drm/malidp: Don't set struct drm_device.irq_enabled<br />
99ea1463f8fb drm/komeda: Don't set struct drm_device.irq_enabled<br />
fb1312913e45 drm/i915: Track IRQ state in local device state<br />
feeaf91e136a drm/armada: Don't set struct drm_device.irq_enabled<br />
87185ebf5f0c drm: Don't test for IRQ support in VBLANK ioctls<br />
f1fa91fa0489 drm/radeon: Track IRQ state in local device state<br />
67cea301f9df drm/hibmc: Call drm_irq_uninstall() unconditionally<br />
3045cc2d3cf2 drm/amdgpu: Track IRQ state in local device state</p>

</body>
</html>

--===============6503396713329613144==--

--===============0667756205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0667756205==--
