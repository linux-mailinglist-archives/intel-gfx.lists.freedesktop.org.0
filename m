Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9DE3078CF
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 15:57:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4084489D4D;
	Thu, 28 Jan 2021 14:56:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 136A689C2A;
 Thu, 28 Jan 2021 14:56:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0CCB9A73C7;
 Thu, 28 Jan 2021 14:56:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Thu, 28 Jan 2021 14:56:58 -0000
Message-ID: <161184581804.13618.11235949612639335536@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210128133127.2311-1-tzimmermann@suse.de>
In-Reply-To: <20210128133127.2311-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Move_struct_drm=5Fdevice=2Epdev_to_legacy_=28rev6=29?=
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
Content-Type: multipart/mixed; boundary="===============1163876870=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1163876870==
Content-Type: multipart/alternative;
 boundary="===============0197984661893811208=="

--===============0197984661893811208==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Move struct drm_device.pdev to legacy (rev6)
URL   : https://patchwork.freedesktop.org/series/84205/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9693 -> Patchwork_19528
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19528/index.html

Known issues
------------

  Here are the changes found in Patchwork_19528 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19528/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [PASS][2] -> [DMESG-WARN][3] ([i915#2203])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9693/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19528/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([i915#402]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9693/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19528/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
#### Possible fixes ####

  * igt@fbdev@write:
    - fi-tgl-y:           [DMESG-WARN][6] ([i915#402]) -> [PASS][7] +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9693/fi-tgl-y/igt@fbdev@write.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19528/fi-tgl-y/igt@fbdev@write.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [INCOMPLETE][8] ([i915#2940]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9693/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19528/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bsw-kefka fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9693 -> Patchwork_19528

  CI-20190529: 20190529
  CI_DRM_9693: 0a2c27ba1783f0990c2c448c105682e7885120a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5976: 1d3b7bde430dd7ea946682d1df46a483b6a93272 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19528: 2933fa851410b717c798f8295ca75315796a9b6d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2933fa851410 drm: Move struct drm_device.pdev to legacy section
9de825b1023f drm/i915: Don't assign to struct drm_device.pdev
906e4290b170 drm/i915/gvt: Remove references to struct drm_device.pdev
5e64d79a1a15 drm/i915/gt: Remove references to struct drm_device.pdev
a644eb799832 drm/i915: Remove references to struct drm_device.pdev

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19528/index.html

--===============0197984661893811208==
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
<tr><td><b>Series:</b></td><td>drm: Move struct drm_device.pdev to legacy (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84205/">https://patchwork.freedesktop.org/series/84205/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19528/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19528/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9693 -&gt; Patchwork_19528</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19528/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19528 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19528/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9693/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19528/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_two_bos:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9693/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19528/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9693/fi-tgl-y/igt@fbdev@write.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19528/fi-tgl-y/igt@fbdev@write.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9693/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19528/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bsw-kefka fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9693 -&gt; Patchwork_19528</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9693: 0a2c27ba1783f0990c2c448c105682e7885120a1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5976: 1d3b7bde430dd7ea946682d1df46a483b6a93272 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19528: 2933fa851410b717c798f8295ca75315796a9b6d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2933fa851410 drm: Move struct drm_device.pdev to legacy section<br />
9de825b1023f drm/i915: Don't assign to struct drm_device.pdev<br />
906e4290b170 drm/i915/gvt: Remove references to struct drm_device.pdev<br />
5e64d79a1a15 drm/i915/gt: Remove references to struct drm_device.pdev<br />
a644eb799832 drm/i915: Remove references to struct drm_device.pdev</p>

</body>
</html>

--===============0197984661893811208==--

--===============1163876870==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1163876870==--
