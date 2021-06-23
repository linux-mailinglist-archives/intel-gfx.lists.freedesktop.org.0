Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9683B16FD
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 11:35:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09A446E89D;
	Wed, 23 Jun 2021 09:35:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E9E056E0A8;
 Wed, 23 Jun 2021 09:35:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DA307A73C9;
 Wed, 23 Jun 2021 09:35:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Takashi Iwai" <tiwai@suse.de>
Date: Wed, 23 Jun 2021 09:35:22 -0000
Message-ID: <162444092286.30471.2198896643991060717@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210621174415.1721198-1-imre.deak@intel.com>
In-Reply-To: <20210621174415.1721198-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQUxT?=
 =?utf-8?q?A=3A_hda=3A_Release_display_power_reference_during_shutdown/reb?=
 =?utf-8?q?oot_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1751753041=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1751753041==
Content-Type: multipart/alternative;
 boundary="===============1738676665692912047=="

--===============1738676665692912047==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: ALSA: hda: Release display power reference during shutdown/reboot (rev3)
URL   : https://patchwork.freedesktop.org/series/91742/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10266 -> Patchwork_20436
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20436/index.html

Known issues
------------

  Here are the changes found in Patchwork_20436 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20436/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [DMESG-WARN][2] ([i915#1982]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10266/fi-kbl-soraka/igt@i915_module_load@reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20436/fi-kbl-soraka/igt@i915_module_load@reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982


Participating hosts (42 -> 38)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10266 -> Patchwork_20436

  CI-20190529: 20190529
  CI_DRM_10266: 186513ad0e0c815f0afeda3ffe748dca3e4a5be7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20436: bf84d7730b887e10914ff66fb428d494bb38e4bf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bf84d7730b88 ALSA: hda: Release display power reference during shutdown/reboot

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20436/index.html

--===============1738676665692912047==
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
<tr><td><b>Series:</b></td><td>ALSA: hda: Release display power reference during shutdown/reboot (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91742/">https://patchwork.freedesktop.org/series/91742/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20436/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20436/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10266 -&gt; Patchwork_20436</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20436/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20436 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@amdgpu/amd_cs_nop@sync-fork-compute0:<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20436/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10266/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20436/fi-kbl-soraka/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10266 -&gt; Patchwork_20436</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10266: 186513ad0e0c815f0afeda3ffe748dca3e4a5be7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20436: bf84d7730b887e10914ff66fb428d494bb38e4bf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bf84d7730b88 ALSA: hda: Release display power reference during shutdown/reboot</p>

</body>
</html>

--===============1738676665692912047==--

--===============1751753041==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1751753041==--
