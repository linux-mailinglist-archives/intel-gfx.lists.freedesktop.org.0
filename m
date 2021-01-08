Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7984A2EF868
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 20:52:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D0E6E8BB;
	Fri,  8 Jan 2021 19:52:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E54F76E8BA;
 Fri,  8 Jan 2021 19:52:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2F78A8836;
 Fri,  8 Jan 2021 19:52:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 08 Jan 2021 19:52:26 -0000
Message-ID: <161013554692.333.16803259132283742499@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1610127741.git.jani.nikula@intel.com>
In-Reply-To: <cover.1610127741.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_split_out_pps_and_aux_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0703517572=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0703517572==
Content-Type: multipart/alternative;
 boundary="===============7985313672920090870=="

--===============7985313672920090870==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: split out pps and aux (rev2)
URL   : https://patchwork.freedesktop.org/series/85167/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9567 -> Patchwork_19296
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19296/index.html

Known issues
------------

  Here are the changes found in Patchwork_19296 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19296/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@amdgpu/amd_cs_nop@nop-compute0:
    - fi-tgl-y:           NOTRUN -> [SKIP][2] ([fdo#109315] / [i915#2575]) +8 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19296/fi-tgl-y/igt@amdgpu/amd_cs_nop@nop-compute0.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9567/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19296/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9567/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19296/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live@gem:
    - fi-kbl-soraka:      [DMESG-FAIL][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9567/fi-kbl-soraka/igt@i915_selftest@live@gem.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19296/fi-kbl-soraka/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@reset:
    - fi-kbl-soraka:      [SKIP][9] ([fdo#109271]) -> [PASS][10] +12 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9567/fi-kbl-soraka/igt@i915_selftest@live@reset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19296/fi-kbl-soraka/igt@i915_selftest@live@reset.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9567 -> Patchwork_19296

  CI-20190529: 20190529
  CI_DRM_9567: 9fc1f6dac2ec9339e390931322768a0286f01f71 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5951: fec3b9c7d88357144f0d7a1447b9316a1c81da1a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19296: d6be48f109873e9857af7afab7f34224b92f57b0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d6be48f10987 drm/i915/dp: split out aux functionality to intel_dp_aux.c
d7a14085a159 drm/i915/dp: abstract struct intel_dp pps members to a sub-struct
d50dad330043 drm/i915/pps: move pps code over from intel_display.c and refactor
f57fa5d3bb5d drm/i915/pps: refactor init abstractions
ca6b78cc5788 drm/i915/pps: rename intel_dp_init_panel_power_sequencer* functions
eaad3ef82888 drm/i915/pps: rename vlv_init_panel_power_sequencer to vlv_pps_init
cb6cf18c5623 drm/i915/pps: add locked intel_pps_wait_power_cycle
4c5d95f01d72 drm/i915/pps: rename intel_power_sequencer_reset to intel_pps_reset_all
46024084caf5 drm/i915/pps: rename intel_dp_check_edp to intel_pps_check_power_unlocked
fcd60022bd6d drm/i915/pps: abstract intel_pps_encoder_reset()
b0c7e08de7bc drm/i915/pps: add higher level intel_pps_init() call
13979e877fa3 drm/i915/pps: abstract intel_pps_vdd_off_sync
4c39d047e6a5 drm/i915/pps: rename edp_panel_* to intel_pps_*_unlocked
67bedb793872 drm/i915/pps: rename intel_edp_panel_* to intel_pps_*
9de69e6f8cbd drm/i915/pps: rename intel_edp_backlight_* to intel_pps_backlight_*
84bd85deaf0b drm/i915/pps: rename pps_{, un}lock -> intel_pps_{, un}lock
1d7a1bfde18c drm/i915/pps: abstract panel power sequencer from intel_dp.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19296/index.html

--===============7985313672920090870==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: split out pps and aux (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85167/">https://patchwork.freedesktop.org/series/85167/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19296/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19296/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9567 -&gt; Patchwork_19296</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19296/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19296 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19296/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-compute0:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19296/fi-tgl-y/igt@amdgpu/amd_cs_nop@nop-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9567/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19296/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9567/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19296/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9567/fi-kbl-soraka/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19296/fi-kbl-soraka/igt@i915_selftest@live@gem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9567/fi-kbl-soraka/igt@i915_selftest@live@reset.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19296/fi-kbl-soraka/igt@i915_selftest@live@reset.html">PASS</a> +12 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9567 -&gt; Patchwork_19296</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9567: 9fc1f6dac2ec9339e390931322768a0286f01f71 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5951: fec3b9c7d88357144f0d7a1447b9316a1c81da1a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19296: d6be48f109873e9857af7afab7f34224b92f57b0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d6be48f10987 drm/i915/dp: split out aux functionality to intel_dp_aux.c<br />
d7a14085a159 drm/i915/dp: abstract struct intel_dp pps members to a sub-struct<br />
d50dad330043 drm/i915/pps: move pps code over from intel_display.c and refactor<br />
f57fa5d3bb5d drm/i915/pps: refactor init abstractions<br />
ca6b78cc5788 drm/i915/pps: rename intel_dp_init_panel_power_sequencer<em> functions<br />
eaad3ef82888 drm/i915/pps: rename vlv_init_panel_power_sequencer to vlv_pps_init<br />
cb6cf18c5623 drm/i915/pps: add locked intel_pps_wait_power_cycle<br />
4c5d95f01d72 drm/i915/pps: rename intel_power_sequencer_reset to intel_pps_reset_all<br />
46024084caf5 drm/i915/pps: rename intel_dp_check_edp to intel_pps_check_power_unlocked<br />
fcd60022bd6d drm/i915/pps: abstract intel_pps_encoder_reset()<br />
b0c7e08de7bc drm/i915/pps: add higher level intel_pps_init() call<br />
13979e877fa3 drm/i915/pps: abstract intel_pps_vdd_off_sync<br />
4c39d047e6a5 drm/i915/pps: rename edp_panel_</em> to intel_pps_<em><em>unlocked<br />
67bedb793872 drm/i915/pps: rename intel_edp_panel</em></em> to intel_pps_<em><br />
9de69e6f8cbd drm/i915/pps: rename intel_edp_backlight_</em> to intel_pps_backlight_*<br />
84bd85deaf0b drm/i915/pps: rename pps_{, un}lock -&gt; intel_pps_{, un}lock<br />
1d7a1bfde18c drm/i915/pps: abstract panel power sequencer from intel_dp.c</p>

</body>
</html>

--===============7985313672920090870==--

--===============0703517572==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0703517572==--
