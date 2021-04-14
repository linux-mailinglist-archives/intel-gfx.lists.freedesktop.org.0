Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 910AC35FA0F
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 19:51:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2DC46E4C9;
	Wed, 14 Apr 2021 17:50:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D6BFA6E4C4;
 Wed, 14 Apr 2021 17:50:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0D1AA73C9;
 Wed, 14 Apr 2021 17:50:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 14 Apr 2021 17:50:57 -0000
Message-ID: <161842265785.4307.15782104577206729267@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210414155208.3161335-1-imre.deak@intel.com>
In-Reply-To: <20210414155208.3161335-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/adl=5Fp=3A_Add_support_for_Display_Page_Tables?=
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
Content-Type: multipart/mixed; boundary="===============0606202751=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0606202751==
Content-Type: multipart/alternative;
 boundary="===============7758315446234250969=="

--===============7758315446234250969==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/adl_p: Add support for Display Page Tables
URL   : https://patchwork.freedesktop.org/series/89078/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9971 -> Patchwork_19939
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19939/index.html

Known issues
------------

  Here are the changes found in Patchwork_19939 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bsw-nick:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19939/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [PASS][2] -> [DMESG-FAIL][3] ([i915#165])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9971/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19939/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][4] -> [FAIL][5] ([i915#1372])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9971/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19939/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [INCOMPLETE][6] ([i915#2782] / [i915#2940]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9971/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19939/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][8] ([i915#579]) -> [SKIP][9] ([fdo#109271])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9971/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19939/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (45 -> 41)
------------------------------

  Missing    (4): fi-icl-y fi-ilk-m540 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9971 -> Patchwork_19939

  CI-20190529: 20190529
  CI_DRM_9971: 8f38b366ca75c83434d586430306b9f83499f1b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6064: 48d89e2c65c54883b0776930a884e6d3bcefb45b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19939: a992015218bc03e5ae4315a3c225da2336c2d001 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a992015218bc drm/i915/adl_p: Enable remapping to pad DPT FB strides to POT
a48fcda970df drm/i915/adl_p: Require a minimum of 8 tiles stride for DPT FBs
dd8b2c31734c drm/i915/adl_p: Disable support for 90/270 FB rotation
3ab439b2e61b drm/i915/adl_p: Add stride restriction when using DPT
ae0259160293 drm/i915/xelpd: Support 128k plane stride
c4779e2af5ce drm/i915/xelpd: Fallback to plane stride limitations when using DPT
4a28c5ef22b0 drm/i915/xelpd: First stab at DPT support
9c24583b5bbd drm/i915/adl_p: ADL_P device info enabling
c9f4c699d4b4 drm/i915/adl_p: Add PCI Devices IDs
ee88b73d7f94 drm/i915/xelpd: add XE_LPD display characteristics
fae46e1c4858 drm/i915: Pass intel_framebuffer instad of drm_framebuffer to intel_fill_fb_info()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19939/index.html

--===============7758315446234250969==
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
<tr><td><b>Series:</b></td><td>drm/i915/adl_p: Add support for Display Page Tables</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89078/">https://patchwork.freedesktop.org/series/89078/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19939/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19939/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9971 -&gt; Patchwork_19939</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19939/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19939 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19939/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9971/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19939/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9971/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19939/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9971/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19939/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9971/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19939/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Missing    (4): fi-icl-y fi-ilk-m540 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9971 -&gt; Patchwork_19939</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9971: 8f38b366ca75c83434d586430306b9f83499f1b2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6064: 48d89e2c65c54883b0776930a884e6d3bcefb45b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19939: a992015218bc03e5ae4315a3c225da2336c2d001 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a992015218bc drm/i915/adl_p: Enable remapping to pad DPT FB strides to POT<br />
a48fcda970df drm/i915/adl_p: Require a minimum of 8 tiles stride for DPT FBs<br />
dd8b2c31734c drm/i915/adl_p: Disable support for 90/270 FB rotation<br />
3ab439b2e61b drm/i915/adl_p: Add stride restriction when using DPT<br />
ae0259160293 drm/i915/xelpd: Support 128k plane stride<br />
c4779e2af5ce drm/i915/xelpd: Fallback to plane stride limitations when using DPT<br />
4a28c5ef22b0 drm/i915/xelpd: First stab at DPT support<br />
9c24583b5bbd drm/i915/adl_p: ADL_P device info enabling<br />
c9f4c699d4b4 drm/i915/adl_p: Add PCI Devices IDs<br />
ee88b73d7f94 drm/i915/xelpd: add XE_LPD display characteristics<br />
fae46e1c4858 drm/i915: Pass intel_framebuffer instad of drm_framebuffer to intel_fill_fb_info()</p>

</body>
</html>

--===============7758315446234250969==--

--===============0606202751==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0606202751==--
