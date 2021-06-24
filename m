Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 443EC3B2A42
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 10:21:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FBC26EABF;
	Thu, 24 Jun 2021 08:21:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 560EA6EA89;
 Thu, 24 Jun 2021 08:21:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4D07BAA0EB;
 Thu, 24 Jun 2021 08:21:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Thu, 24 Jun 2021 08:21:26 -0000
Message-ID: <162452288629.1851.5106098870420904708@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210624072916.27703-1-tzimmermann@suse.de>
In-Reply-To: <20210624072916.27703-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRGVw?=
 =?utf-8?q?recate_struct_drm=5Fdevice=2Eirq=5Fenabled?=
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
Content-Type: multipart/mixed; boundary="===============1912850775=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1912850775==
Content-Type: multipart/alternative;
 boundary="===============5374520620245620982=="

--===============5374520620245620982==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Deprecate struct drm_device.irq_enabled
URL   : https://patchwork.freedesktop.org/series/91845/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10271 -> Patchwork_20450
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20450/index.html

Known issues
------------

  Here are the changes found in Patchwork_20450 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20450/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bsw-nick:        NOTRUN -> [SKIP][2] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20450/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-bsw-nick:        NOTRUN -> [SKIP][3] ([fdo#109271]) +63 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20450/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827


Participating hosts (41 -> 37)
------------------------------

  Missing    (4): fi-skl-guc fi-ilk-m540 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10271 -> Patchwork_20450

  CI-20190529: 20190529
  CI_DRM_10271: 7a4a01d6716339c418394dbeb9a20d55bbb9a9ba @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20450: d42ce5ef965c1c78dfc296da3acbb342d4ac4d4b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d42ce5ef965c drm/zte: Don't set struct drm_device.irq_enabled
6373373903c7 drm/xlnx: Don't set struct drm_device.irq_enabled
fcfbcb2e09b0 drm/vmwgfx: Don't set struct drm_device.irq_enabled
e4c301b14b3a drm/vkms: Don't set struct drm_device.irq_enabled
e24755e0074a drm/vc4: Don't set struct drm_device.irq_enabled
46ddcc26dbc7 drm/tidss: Don't use struct drm_device.irq_enabled
1c8a70ef5545 drm/tegra: Don't set struct drm_device.irq_enabled
9301579c5ef1 drm/sun4i: Don't set struct drm_device.irq_enabled
8871c398118c drm/stm: Don't set struct drm_device.irq_enabled
3a205c191fa2 drm/sti: Don't set struct drm_device.irq_enabled
c0c1d7a37c87 drm/rockchip: Don't set struct drm_device.irq_enabled
7af8e5991a16 drm/rcar-du: Don't set struct drm_device.irq_enabled
72d4c49bb4dc drm/omapdrm: Track IRQ state in local device state
7b4f8ee0acba drm/nouveau: Don't set struct drm_device.irq_enabled
64f52f7b8a3e drm/mediatek: Don't set struct drm_device.irq_enabled
4a88efe9db38 drm/imx/dcss: Don't set struct drm_device.irq_enabled
cbaab88d0e2f drm/imx: Don't set struct drm_device.irq_enabled
3c52f688ee13 drm/kirin: Don't set struct drm_device.irq_enabled
dc686169f377 drm/exynos: Don't set struct drm_device.irq_enabled
e95bfbbca4c8 drm/malidp: Don't set struct drm_device.irq_enabled
5c2c66c6eab0 drm/komeda: Don't set struct drm_device.irq_enabled
d612b0fe70b3 drm/i915: Track IRQ state in local device state
ae9d335be636 drm/armada: Don't set struct drm_device.irq_enabled
0f1cc7795ded drm: Don't test for IRQ support in VBLANK ioctls
d0d52ba63904 drm/radeon: Track IRQ state in local device state
5a2f7ec2c996 drm/hibmc: Call drm_irq_uninstall() unconditionally
7e81b48893e1 drm/amdgpu: Track IRQ state in local device state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20450/index.html

--===============5374520620245620982==
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
<tr><td><b>Series:</b></td><td>Deprecate struct drm_device.irq_enabled</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91845/">https://patchwork.freedesktop.org/series/91845/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20450/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20450/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10271 -&gt; Patchwork_20450</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20450/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20450 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20450/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20450/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20450/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +63 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 37)</h2>
<p>Missing    (4): fi-skl-guc fi-ilk-m540 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10271 -&gt; Patchwork_20450</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10271: 7a4a01d6716339c418394dbeb9a20d55bbb9a9ba @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20450: d42ce5ef965c1c78dfc296da3acbb342d4ac4d4b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d42ce5ef965c drm/zte: Don't set struct drm_device.irq_enabled<br />
6373373903c7 drm/xlnx: Don't set struct drm_device.irq_enabled<br />
fcfbcb2e09b0 drm/vmwgfx: Don't set struct drm_device.irq_enabled<br />
e4c301b14b3a drm/vkms: Don't set struct drm_device.irq_enabled<br />
e24755e0074a drm/vc4: Don't set struct drm_device.irq_enabled<br />
46ddcc26dbc7 drm/tidss: Don't use struct drm_device.irq_enabled<br />
1c8a70ef5545 drm/tegra: Don't set struct drm_device.irq_enabled<br />
9301579c5ef1 drm/sun4i: Don't set struct drm_device.irq_enabled<br />
8871c398118c drm/stm: Don't set struct drm_device.irq_enabled<br />
3a205c191fa2 drm/sti: Don't set struct drm_device.irq_enabled<br />
c0c1d7a37c87 drm/rockchip: Don't set struct drm_device.irq_enabled<br />
7af8e5991a16 drm/rcar-du: Don't set struct drm_device.irq_enabled<br />
72d4c49bb4dc drm/omapdrm: Track IRQ state in local device state<br />
7b4f8ee0acba drm/nouveau: Don't set struct drm_device.irq_enabled<br />
64f52f7b8a3e drm/mediatek: Don't set struct drm_device.irq_enabled<br />
4a88efe9db38 drm/imx/dcss: Don't set struct drm_device.irq_enabled<br />
cbaab88d0e2f drm/imx: Don't set struct drm_device.irq_enabled<br />
3c52f688ee13 drm/kirin: Don't set struct drm_device.irq_enabled<br />
dc686169f377 drm/exynos: Don't set struct drm_device.irq_enabled<br />
e95bfbbca4c8 drm/malidp: Don't set struct drm_device.irq_enabled<br />
5c2c66c6eab0 drm/komeda: Don't set struct drm_device.irq_enabled<br />
d612b0fe70b3 drm/i915: Track IRQ state in local device state<br />
ae9d335be636 drm/armada: Don't set struct drm_device.irq_enabled<br />
0f1cc7795ded drm: Don't test for IRQ support in VBLANK ioctls<br />
d0d52ba63904 drm/radeon: Track IRQ state in local device state<br />
5a2f7ec2c996 drm/hibmc: Call drm_irq_uninstall() unconditionally<br />
7e81b48893e1 drm/amdgpu: Track IRQ state in local device state</p>

</body>
</html>

--===============5374520620245620982==--

--===============1912850775==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1912850775==--
