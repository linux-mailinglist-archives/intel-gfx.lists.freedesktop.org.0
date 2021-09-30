Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B688A41DD01
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 17:09:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1E766E424;
	Thu, 30 Sep 2021 15:08:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B34386E413;
 Thu, 30 Sep 2021 15:08:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A93A3AA914;
 Thu, 30 Sep 2021 15:08:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4078063745897602445=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Sep 2021 15:08:57 -0000
Message-ID: <163301453765.18253.8949716546617869723@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1633000838.git.jani.nikula@intel.com>
In-Reply-To: <cover.1633000838.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_incidental_-EPERM_considered_harmful?=
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

--===============4078063745897602445==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: incidental -EPERM considered harmful
URL   : https://patchwork.freedesktop.org/series/95268/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10666 -> Patchwork_21202
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21202 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21202, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21202/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21202:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_self_import@basic-llseek-size:
    - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10666/fi-kbl-soraka/igt@prime_self_import@basic-llseek-size.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21202/fi-kbl-soraka/igt@prime_self_import@basic-llseek-size.html

  
Known issues
------------

  Here are the changes found in Patchwork_21202 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21202/fi-kbl-soraka/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][4] ([fdo#109271]) +17 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21202/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@i915_selftest@live@gt_pm:
    - fi-icl-y:           [PASS][5] -> [DMESG-FAIL][6] ([i915#2291])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10666/fi-icl-y/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21202/fi-icl-y/igt@i915_selftest@live@gt_pm.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [INCOMPLETE][7] ([i915#2940]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10666/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21202/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-tgl-dsi}:       [DMESG-FAIL][9] ([i915#541]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10666/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21202/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (33 -> 28)
------------------------------

  Missing    (5): bat-dg1-6 fi-tgl-u2 fi-bsw-cyan bat-adlp-4 bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10666 -> Patchwork_21202

  CI-20190529: 20190529
  CI_DRM_10666: fb718bc531fbe5ccecf5a100280860ce07c25476 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6228: 22643ce4014a0b2dc52ce7916b2f657e2a7757c3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21202: 9c52dbb7bd2f2b92f482936efea57a82f48c021c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9c52dbb7bd2f drm/i915/dram: return -ENOENT instead of -1
c77dc11d31bb drm/i915/drv: return -EIO instead of -1
180581891ff5 drm/i915/hdmi: return -EINVAL instead of -1
f8a8844c9041 drm/i915/dsi: return -EBUSY instead of -1
fac006917113 drm/i915/dsi: fuse dsi_send_pkt_payld() and add_payld_to_queue()
92633cc846a3 drm/i915/dsi: pass struct mipi_dsi_packet pointer, not the entire struct

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21202/index.html

--===============4078063745897602445==
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
<tr><td><b>Series:</b></td><td>drm/i915: incidental -EPERM considered harmful</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95268/">https://patchwork.freedesktop.org/series/95268/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21202/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21202/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10666 -&gt; Patchwork_21202</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21202 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21202, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21202/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21202:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@prime_self_import@basic-llseek-size:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10666/fi-kbl-soraka/igt@prime_self_import@basic-llseek-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21202/fi-kbl-soraka/igt@prime_self_import@basic-llseek-size.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21202 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21202/fi-kbl-soraka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21202/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10666/fi-icl-y/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21202/fi-icl-y/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10666/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21202/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10666/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21202/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (33 -&gt; 28)</h2>
<p>Missing    (5): bat-dg1-6 fi-tgl-u2 fi-bsw-cyan bat-adlp-4 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10666 -&gt; Patchwork_21202</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10666: fb718bc531fbe5ccecf5a100280860ce07c25476 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6228: 22643ce4014a0b2dc52ce7916b2f657e2a7757c3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21202: 9c52dbb7bd2f2b92f482936efea57a82f48c021c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9c52dbb7bd2f drm/i915/dram: return -ENOENT instead of -1<br />
c77dc11d31bb drm/i915/drv: return -EIO instead of -1<br />
180581891ff5 drm/i915/hdmi: return -EINVAL instead of -1<br />
f8a8844c9041 drm/i915/dsi: return -EBUSY instead of -1<br />
fac006917113 drm/i915/dsi: fuse dsi_send_pkt_payld() and add_payld_to_queue()<br />
92633cc846a3 drm/i915/dsi: pass struct mipi_dsi_packet pointer, not the entire struct</p>

</body>
</html>

--===============4078063745897602445==--
