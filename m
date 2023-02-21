Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D05169D789
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 01:33:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4772B10E04E;
	Tue, 21 Feb 2023 00:33:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E774510E04E;
 Tue, 21 Feb 2023 00:33:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB8F2A0099;
 Tue, 21 Feb 2023 00:33:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6003249715015289719=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 21 Feb 2023 00:33:52 -0000
Message-ID: <167693963273.16438.17172509710277880931@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230220234046.29716-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230220234046.29716-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Init_DDI_ports_in_VBT_order_=28rev2=29?=
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

--===============6003249715015289719==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Init DDI ports in VBT order (rev2)
URL   : https://patchwork.freedesktop.org/series/114200/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12764 -> Patchwork_114200v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_114200v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-1:         NOTRUN -> [ABORT][1] ([i915#6687] / [i915#7978])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-kbl-soraka:      [PASS][2] -> [INCOMPLETE][3] ([i915#7913])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12764/fi-kbl-soraka/igt@i915_selftest@live@hangcheck.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/fi-kbl-soraka/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-9:         [PASS][4] -> [DMESG-FAIL][5] ([i915#7699])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12764/bat-adlp-9/igt@i915_selftest@live@migrate.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/bat-adlp-9/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         NOTRUN -> [DMESG-FAIL][6] ([i915#6367] / [i915#7996])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][7] ([i915#5354]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-adlp-9:         NOTRUN -> [SKIP][8] ([i915#3546])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [ABORT][9] ([i915#4983]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12764/bat-rpls-1/igt@i915_selftest@live@reset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/bat-rpls-1/igt@i915_selftest@live@reset.html

  
#### Warnings ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         [DMESG-FAIL][11] ([i915#6367]) -> [DMESG-FAIL][12] ([i915#6367] / [i915#7996])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12764/bat-rpls-2/igt@i915_selftest@live@slpc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/bat-rpls-2/igt@i915_selftest@live@slpc.html

  
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996


Build changes
-------------

  * Linux: CI_DRM_12764 -> Patchwork_114200v2

  CI-20190529: 20190529
  CI_DRM_12764: 524f0906b0545c68847018324aaee2bb677ebe64 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7167: fdaac15d525635c9ce8cdba4dac55550553f1a65 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114200v2: 524f0906b0545c68847018324aaee2bb677ebe64 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

3fda8e287aa8 drm/i915: Convert HSW/BDW to use VBT driven DDI probe
8740cd90854f drm/i915: Try to initialize DDI/ICL+ DSI ports for every VBT child device
9c70853258a6 drm/i915: Init DDI outputs based on port_mask on skl+
57f43e1a6558 drm/i915: Beef up SDVO/HDMI port checks
9148f26e1ff6 drm/i915: Assert that the port being initialized is valid
add0ceaef47e drm/i915: Assert that device info bitmasks have enough bits
f710584f1b38 drm/i915: Introduce device info port_mask
66373f399255 drm/i915: Remove bogus DDI-F from hsw/bdw output init
1731518b0239 drm/i915: Nuke intel_bios_is_port_dp_dual_mode()
57561b790481 drm/i915: Flip VBT DDC pin maps around
8c027dd1b662 drm/i915: Split map_aux_ch() into per-platform arrays
a359adc6be42 drm/i915: Sanitize child devices later
70b57413e89c drm/i915: Check HPD live state during eDP probe
fd56e2b9eb0f drm/i915: Introduce intel_hpd_detection()
abfc337f2e1b drm/i915: Introduce <platoform>_hotplug_mask()
5382bb392c7b drm/i915: Get rid of the gm45 HPD live state nonsense
9c57f67d860f drm/i915: Fix SKL DDI A digital port .connected()
a6046e296bdc drm/i915: Populate dig_port->connected() before connector init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/index.html

--===============6003249715015289719==
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
<tr><td><b>Series:</b></td><td>drm/i915: Init DDI ports in VBT order (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114200/">https://patchwork.freedesktop.org/series/114200/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12764 -&gt; Patchwork_114200v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114200v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12764/fi-kbl-soraka/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/fi-kbl-soraka/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12764/bat-adlp-9/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/bat-adlp-9/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7996">i915#7996</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@reset:<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12764/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12764/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v2/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7996">i915#7996</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12764 -&gt; Patchwork_114200v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12764: 524f0906b0545c68847018324aaee2bb677ebe64 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7167: fdaac15d525635c9ce8cdba4dac55550553f1a65 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114200v2: 524f0906b0545c68847018324aaee2bb677ebe64 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>3fda8e287aa8 drm/i915: Convert HSW/BDW to use VBT driven DDI probe<br />
8740cd90854f drm/i915: Try to initialize DDI/ICL+ DSI ports for every VBT child device<br />
9c70853258a6 drm/i915: Init DDI outputs based on port_mask on skl+<br />
57f43e1a6558 drm/i915: Beef up SDVO/HDMI port checks<br />
9148f26e1ff6 drm/i915: Assert that the port being initialized is valid<br />
add0ceaef47e drm/i915: Assert that device info bitmasks have enough bits<br />
f710584f1b38 drm/i915: Introduce device info port_mask<br />
66373f399255 drm/i915: Remove bogus DDI-F from hsw/bdw output init<br />
1731518b0239 drm/i915: Nuke intel_bios_is_port_dp_dual_mode()<br />
57561b790481 drm/i915: Flip VBT DDC pin maps around<br />
8c027dd1b662 drm/i915: Split map_aux_ch() into per-platform arrays<br />
a359adc6be42 drm/i915: Sanitize child devices later<br />
70b57413e89c drm/i915: Check HPD live state during eDP probe<br />
fd56e2b9eb0f drm/i915: Introduce intel_hpd_detection()<br />
abfc337f2e1b drm/i915: Introduce <platoform>_hotplug_mask()<br />
5382bb392c7b drm/i915: Get rid of the gm45 HPD live state nonsense<br />
9c57f67d860f drm/i915: Fix SKL DDI A digital port .connected()<br />
a6046e296bdc drm/i915: Populate dig_port-&gt;connected() before connector init</p>

</body>
</html>

--===============6003249715015289719==--
