Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 940DE69D57C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 22:01:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F7C010E7B0;
	Mon, 20 Feb 2023 21:01:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8833210E7B3;
 Mon, 20 Feb 2023 21:01:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 80533AADD5;
 Mon, 20 Feb 2023 21:01:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5975308572099169120=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 20 Feb 2023 21:01:11 -0000
Message-ID: <167692687148.31318.8760602028675123537@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Init_DDI_ports_in_VBT_order?=
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

--===============5975308572099169120==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Init DDI ports in VBT order
URL   : https://patchwork.freedesktop.org/series/114200/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12763 -> Patchwork_114200v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_114200v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_114200v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v1/index.html

Participating hosts (37 -> 35)
------------------------------

  Missing    (2): fi-snb-2520m bat-adlp-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_114200v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-skl-6600u:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12763/fi-skl-6600u/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v1/fi-skl-6600u/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_114200v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         NOTRUN -> [DMESG-FAIL][3] ([i915#6367])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v1/bat-rpls-1/igt@i915_selftest@live@slpc.html
    - bat-rplp-1:         [PASS][4] -> [DMESG-FAIL][5] ([i915#6367] / [i915#7913])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12763/bat-rplp-1/igt@i915_selftest@live@slpc.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v1/bat-rplp-1/igt@i915_selftest@live@slpc.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-rpls-1:         NOTRUN -> [SKIP][6] ([i915#7828])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v1/bat-rpls-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-rpls-1:         NOTRUN -> [SKIP][7] ([i915#1845])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v1/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [ABORT][8] ([i915#4983] / [i915#7981]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12763/bat-rpls-1/igt@i915_selftest@live@reset.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7981]: https://gitlab.freedesktop.org/drm/intel/issues/7981


Build changes
-------------

  * Linux: CI_DRM_12763 -> Patchwork_114200v1

  CI-20190529: 20190529
  CI_DRM_12763: 205c062ab01e006382e54e699678a50463ffe438 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7167: fdaac15d525635c9ce8cdba4dac55550553f1a65 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114200v1: 205c062ab01e006382e54e699678a50463ffe438 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1da8081491d4 drm/i915: Convert HSW/BDW to use VBT driven DDI probe
b04f6cda7dcf drm/i915: Try to initialize DDI/ICL+ DSI ports for every VBT child device
e9d7263826dc drm/i915: Init DDI outputs based on port_mask on skl+
cf6beb372d65 drm/i915: Beef up SDVO/HDMI port checks
d19765d0c3bf drm/i915: Assert that the port being initialized is valid
86acbd5ec2aa drm/i915: Assert that device info bitmasks have enough bits
1c89c635e1cc drm/i915: Introduce device info port_mask
3a66e626dda0 drm/i915: Remove bogus DDI-F from hsw/bdw output init
7f52ed831005 drm/i915: Nuke intel_bios_is_port_dp_dual_mode()
a2e1b5bbc40d drm/i915: Flip VBT DDC pin maps around
ee4ab5800b8e drm/i915: Split map_aux_ch() into per-platform arrays
cec1f6cc3c3f drm/i915: Sanitize child devices later
017f630a4108 drm/i915: Check HPD live state during eDP probe
f84c17596e72 drm/i915: Introduce intel_hpd_detection()
a9fab0e7712b drm/i915: Introduce <platoform>_hotplug_mask()
2e9fc6575702 drm/i915: Get rid of the gm45 HPD live state nonsense
b49bbdf3b3fe drm/i915: Populate dig_port->connected() before connector init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v1/index.html

--===============5975308572099169120==
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
<tr><td><b>Series:</b></td><td>drm/i915: Init DDI ports in VBT order</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114200/">https://patchwork.freedesktop.org/series/114200/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12763 -&gt; Patchwork_114200v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_114200v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_114200v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v1/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): fi-snb-2520m bat-adlp-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_114200v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12763/fi-skl-6600u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v1/fi-skl-6600u/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114200v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12763/bat-rplp-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v1/bat-rplp-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v1/bat-rpls-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v1/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@reset:<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12763/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7981">i915#7981</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v1/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12763 -&gt; Patchwork_114200v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12763: 205c062ab01e006382e54e699678a50463ffe438 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7167: fdaac15d525635c9ce8cdba4dac55550553f1a65 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114200v1: 205c062ab01e006382e54e699678a50463ffe438 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1da8081491d4 drm/i915: Convert HSW/BDW to use VBT driven DDI probe<br />
b04f6cda7dcf drm/i915: Try to initialize DDI/ICL+ DSI ports for every VBT child device<br />
e9d7263826dc drm/i915: Init DDI outputs based on port_mask on skl+<br />
cf6beb372d65 drm/i915: Beef up SDVO/HDMI port checks<br />
d19765d0c3bf drm/i915: Assert that the port being initialized is valid<br />
86acbd5ec2aa drm/i915: Assert that device info bitmasks have enough bits<br />
1c89c635e1cc drm/i915: Introduce device info port_mask<br />
3a66e626dda0 drm/i915: Remove bogus DDI-F from hsw/bdw output init<br />
7f52ed831005 drm/i915: Nuke intel_bios_is_port_dp_dual_mode()<br />
a2e1b5bbc40d drm/i915: Flip VBT DDC pin maps around<br />
ee4ab5800b8e drm/i915: Split map_aux_ch() into per-platform arrays<br />
cec1f6cc3c3f drm/i915: Sanitize child devices later<br />
017f630a4108 drm/i915: Check HPD live state during eDP probe<br />
f84c17596e72 drm/i915: Introduce intel_hpd_detection()<br />
a9fab0e7712b drm/i915: Introduce <platoform>_hotplug_mask()<br />
2e9fc6575702 drm/i915: Get rid of the gm45 HPD live state nonsense<br />
b49bbdf3b3fe drm/i915: Populate dig_port-&gt;connected() before connector init</p>

</body>
</html>

--===============5975308572099169120==--
