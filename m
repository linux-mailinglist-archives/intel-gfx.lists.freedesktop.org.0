Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB4B48C4D3
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 14:30:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BAA4112735;
	Wed, 12 Jan 2022 13:30:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 49A99112B77;
 Wed, 12 Jan 2022 13:30:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A948A8836;
 Wed, 12 Jan 2022 13:30:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6843702056683099076=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 12 Jan 2022 13:30:00 -0000
Message-ID: <164199420029.21761.16483296858359558384@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220112110319.1172110-1-jani.nikula@intel.com>
In-Reply-To: <20220112110319.1172110-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BRESEND=2C1/7=5D_drm/i915/mst=3A_fix_intel?=
 =?utf-8?b?X2RwX21zdF9ocGRfaXJxKCkgaW5kZW50YXRpb24=?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6843702056683099076==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [RESEND,1/7] drm/i915/mst: fix intel_dp_mst_hpd_irq() indentation
URL   : https://patchwork.freedesktop.org/series/98788/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11073 -> Patchwork_21979
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21979/index.html

Participating hosts (44 -> 42)
------------------------------

  Missing    (2): fi-bsw-cyan fi-icl-u2 

Known issues
------------

  Here are the changes found in Patchwork_21979 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [PASS][1] -> [DMESG-FAIL][2] ([i915#4494])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21979/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-ilk-650:         [DMESG-WARN][3] ([i915#164]) -> [PASS][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21979/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-tgl-1115g4:      [FAIL][5] ([i915#1888]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0@smem.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21979/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][7] ([i915#4494]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21979/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  
  [i915#164]: https://gitlab.freedesktop.org/drm/intel/issues/164
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494


Build changes
-------------

  * Linux: CI_DRM_11073 -> Patchwork_21979

  CI-20190529: 20190529
  CI_DRM_11073: 1b0b054967d58d23d1621487a1b1995787371d23 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6326: ec75f64fcbcf4aac58fbf1bf629e8f59b19db4ce @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21979: eeacb56fd6220ea050080f201d23975e55e7a0a0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

eeacb56fd622 drm/i915/mst: only ack the ESI we actually handled
23e3a8dc6287 drm/i915/mst: ack sink irq ESI for link status changes
2d07b7ba976f drm/i915/mst: read link status only when requested by sink in ESI
bda1b109d4af drm/i915/mst: abstract handling of link status in DP MST
630d0d7a80ed drm/i915/mst: debug log 4 bytes of ESI right after reading
303157057c5f drm/i915/mst: abstract intel_dp_ack_sink_irq_esi()
3484ba1b6a75 drm/i915/mst: fix intel_dp_mst_hpd_irq() indentation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21979/index.html

--===============6843702056683099076==
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
<tr><td><b>Series:</b></td><td>series starting with [RESEND,1/7] drm/i915/mst: fix intel_dp_mst_hpd_irq() indentation</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98788/">https://patchwork.freedesktop.org/series/98788/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21979/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21979/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11073 -&gt; Patchwork_21979</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21979/index.html</p>
<h2>Participating hosts (44 -&gt; 42)</h2>
<p>Missing    (2): fi-bsw-cyan fi-icl-u2 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21979 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21979/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/164">i915#164</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21979/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0@smem.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21979/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21979/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11073 -&gt; Patchwork_21979</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11073: 1b0b054967d58d23d1621487a1b1995787371d23 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6326: ec75f64fcbcf4aac58fbf1bf629e8f59b19db4ce @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21979: eeacb56fd6220ea050080f201d23975e55e7a0a0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>eeacb56fd622 drm/i915/mst: only ack the ESI we actually handled<br />
23e3a8dc6287 drm/i915/mst: ack sink irq ESI for link status changes<br />
2d07b7ba976f drm/i915/mst: read link status only when requested by sink in ESI<br />
bda1b109d4af drm/i915/mst: abstract handling of link status in DP MST<br />
630d0d7a80ed drm/i915/mst: debug log 4 bytes of ESI right after reading<br />
303157057c5f drm/i915/mst: abstract intel_dp_ack_sink_irq_esi()<br />
3484ba1b6a75 drm/i915/mst: fix intel_dp_mst_hpd_irq() indentation</p>

</body>
</html>

--===============6843702056683099076==--
