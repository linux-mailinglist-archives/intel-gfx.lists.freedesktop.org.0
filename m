Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A44973F0319
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 13:58:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62F166E55C;
	Wed, 18 Aug 2021 11:58:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9DABB6E563;
 Wed, 18 Aug 2021 11:57:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4EB44A8830;
 Wed, 18 Aug 2021 11:57:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8266403146828211854=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Aug 2021 11:57:41 -0000
Message-ID: <162928786129.16675.420968192530129923@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1629281426.git.jani.nikula@intel.com>
In-Reply-To: <cover.1629281426.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_header_cleanups?=
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

--===============8266403146828211854==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: header cleanups
URL   : https://patchwork.freedesktop.org/series/93777/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10493 -> Patchwork_20843
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20843/index.html

Known issues
------------

  Here are the changes found in Patchwork_20843 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20843/fi-kbl-soraka/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-cml-u2:          [PASS][2] -> [DMESG-WARN][3] ([i915#95])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10493/fi-cml-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20843/fi-cml-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - {fi-tgl-dsi}:       [DMESG-FAIL][4] ([i915#1993]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10493/fi-tgl-dsi/igt@i915_selftest@live@execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20843/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [DMESG-WARN][6] ([i915#3958]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10493/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20843/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1993]: https://gitlab.freedesktop.org/drm/intel/issues/1993
  [i915#3958]: https://gitlab.freedesktop.org/drm/intel/issues/3958
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (35 -> 33)
------------------------------

  Missing    (2): fi-dg1-1 fi-bsw-cyan 


Build changes
-------------

  * Linux: CI_DRM_10493 -> Patchwork_20843

  CI-20190529: 20190529
  CI_DRM_10493: 188dd5885be3b1ac44f60212bddd74e2583db32d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6178: 146260200f9a6d4536e48a195e2ab49a07d4f0c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20843: bd3b1339d1754162404b52d259af080bcdf738af @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bd3b1339d175 drm/i915/fdi: move intel_fdi_link_freq() to intel_fdi.[ch]
33cd75959166 drm/i915/panel: move intel_panel_use_ssc() out of headers
95ad020b21a2 drm/i915/pm: use forward declaration to remove an include
e2382f06ea1f drm/i915: intel_runtime_pm.h does not actually need intel_display.h
ddebfe5d1496 drm/i915/irq: reduce inlines to reduce header dependencies

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20843/index.html

--===============8266403146828211854==
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
<tr><td><b>Series:</b></td><td>drm/i915: header cleanups</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93777/">https://patchwork.freedesktop.org/series/93777/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20843/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20843/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10493 -&gt; Patchwork_20843</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20843/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20843 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20843/fi-kbl-soraka/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10493/fi-cml-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20843/fi-cml-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10493/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1993">i915#1993</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20843/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10493/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3958">i915#3958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20843/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (35 -&gt; 33)</h2>
<p>Missing    (2): fi-dg1-1 fi-bsw-cyan </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10493 -&gt; Patchwork_20843</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10493: 188dd5885be3b1ac44f60212bddd74e2583db32d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6178: 146260200f9a6d4536e48a195e2ab49a07d4f0c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20843: bd3b1339d1754162404b52d259af080bcdf738af @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bd3b1339d175 drm/i915/fdi: move intel_fdi_link_freq() to intel_fdi.[ch]<br />
33cd75959166 drm/i915/panel: move intel_panel_use_ssc() out of headers<br />
95ad020b21a2 drm/i915/pm: use forward declaration to remove an include<br />
e2382f06ea1f drm/i915: intel_runtime_pm.h does not actually need intel_display.h<br />
ddebfe5d1496 drm/i915/irq: reduce inlines to reduce header dependencies</p>

</body>
</html>

--===============8266403146828211854==--
