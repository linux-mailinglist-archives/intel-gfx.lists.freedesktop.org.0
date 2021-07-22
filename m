Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E69C13D1E54
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 08:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B8356EA3A;
	Thu, 22 Jul 2021 06:37:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 415A16EA3A;
 Thu, 22 Jul 2021 06:37:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3A90CA0BCB;
 Thu, 22 Jul 2021 06:37:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Thu, 22 Jul 2021 06:37:03 -0000
Message-ID: <162693582321.30344.4163897029023386988@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210722054338.12891-1-jose.souza@intel.com>
In-Reply-To: <20210722054338.12891-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/10=5D_drm/i915/bios=3A_Allow_DSI_ports_?=
 =?utf-8?q?to_be_parsed_by_parse=5Fddi=5Fport=28=29?=
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
Content-Type: multipart/mixed; boundary="===============0007913982=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0007913982==
Content-Type: multipart/alternative;
 boundary="===============3622749435479499221=="

--===============3622749435479499221==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/10] drm/i915/bios: Allow DSI ports to be parsed by parse_ddi_port()
URL   : https://patchwork.freedesktop.org/series/92874/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10368 -> Patchwork_20674
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20674 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20674, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20674/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20674:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20674/fi-bdw-5557u/igt@i915_pm_rpm@basic-rte.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-1115g4}:    NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20674/fi-tgl-1115g4/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20674 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271]) +25 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20674/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][4] ([i915#3718])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20674/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (38 -> 34)
------------------------------

  Missing    (4): fi-ilk-m540 fi-hsw-4200u fi-bdw-samus fi-bsw-n3050 


Build changes
-------------

  * Linux: CI_DRM_10368 -> Patchwork_20674

  CI-20190529: 20190529
  CI_DRM_10368: e7afa0ebe24f6a74724bad8bbefbefce534e466d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6146: 6caef22e4aafed275771f564d4ea4cab09896ebc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20674: a5f2d0e409e5e3b15e9385a11d7066ba6ee14c44 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a5f2d0e409e5 drm/i915/display/tgl+: Use PPS index from vbt
21a00d8eda0f drm/i915/bios: Only use opregion panel index for display ver 8 and older
e67425c8c664 drm/i915/bios: Nuke panel_type
d0240aa5ff78 drm/i915/bios: Enable parse of two DSI panels data
9df5a76395bd drm/i915/bios: Enable parse of two integrated panels PSR data
03d0b525ccb2 drm/i915/bios: Enable parse of two integrated panels eDP data
96c1d64222e0 drm/i915/bios: Enable parse of two integrated panels backlight data
4498348e6a41 drm/i915/bios: Enable parse of two integrated panels timing data
602973f70dd6 drm/i915/bios: Start to support two integrated panels
ef88c9c5b742 drm/i915/bios: Allow DSI ports to be parsed by parse_ddi_port()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20674/index.html

--===============3622749435479499221==
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
<tr><td><b>Series:</b></td><td>series starting with [01/10] drm/i915/bios: Allow DSI ports to be parsed by parse_ddi_port()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92874/">https://patchwork.freedesktop.org/series/92874/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20674/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20674/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10368 -&gt; Patchwork_20674</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20674 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20674, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20674/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20674:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20674/fi-bdw-5557u/igt@i915_pm_rpm@basic-rte.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@runner@aborted:<ul>
<li>{fi-tgl-1115g4}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20674/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20674 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20674/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20674/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 34)</h2>
<p>Missing    (4): fi-ilk-m540 fi-hsw-4200u fi-bdw-samus fi-bsw-n3050 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10368 -&gt; Patchwork_20674</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10368: e7afa0ebe24f6a74724bad8bbefbefce534e466d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6146: 6caef22e4aafed275771f564d4ea4cab09896ebc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20674: a5f2d0e409e5e3b15e9385a11d7066ba6ee14c44 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a5f2d0e409e5 drm/i915/display/tgl+: Use PPS index from vbt<br />
21a00d8eda0f drm/i915/bios: Only use opregion panel index for display ver 8 and older<br />
e67425c8c664 drm/i915/bios: Nuke panel_type<br />
d0240aa5ff78 drm/i915/bios: Enable parse of two DSI panels data<br />
9df5a76395bd drm/i915/bios: Enable parse of two integrated panels PSR data<br />
03d0b525ccb2 drm/i915/bios: Enable parse of two integrated panels eDP data<br />
96c1d64222e0 drm/i915/bios: Enable parse of two integrated panels backlight data<br />
4498348e6a41 drm/i915/bios: Enable parse of two integrated panels timing data<br />
602973f70dd6 drm/i915/bios: Start to support two integrated panels<br />
ef88c9c5b742 drm/i915/bios: Allow DSI ports to be parsed by parse_ddi_port()</p>

</body>
</html>

--===============3622749435479499221==--

--===============0007913982==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0007913982==--
