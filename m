Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD882E0D52
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 17:26:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EAFE6E413;
	Tue, 22 Dec 2020 16:26:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82D376E405;
 Tue, 22 Dec 2020 16:26:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7D8C7AA916;
 Tue, 22 Dec 2020 16:26:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 22 Dec 2020 16:26:19 -0000
Message-ID: <160865437948.27825.10565519160394457831@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1608648128.git.jani.nikula@intel.com>
In-Reply-To: <cover.1608648128.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_split_out_pps_and_aux?=
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
Content-Type: multipart/mixed; boundary="===============0854295824=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0854295824==
Content-Type: multipart/alternative;
 boundary="===============1099267483555002591=="

--===============1099267483555002591==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: split out pps and aux
URL   : https://patchwork.freedesktop.org/series/85167/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9513 -> Patchwork_19198
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19198/index.html

Known issues
------------

  Here are the changes found in Patchwork_19198 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bsw-nick:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19198/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][2] -> [DMESG-FAIL][3] ([i915#2291] / [i915#541])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9513/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19198/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([i915#402])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9513/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19198/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][6] ([i915#402]) -> [PASS][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9513/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19198/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-bsw-nick:        [INCOMPLETE][8] ([i915#2369]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9513/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19198/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hugepages:
    - fi-bsw-nick:        [DMESG-WARN][10] ([i915#2826]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9513/fi-bsw-nick/igt@i915_selftest@live@hugepages.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19198/fi-bsw-nick/igt@i915_selftest@live@hugepages.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2826]: https://gitlab.freedesktop.org/drm/intel/issues/2826
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9513 -> Patchwork_19198

  CI-20190529: 20190529
  CI_DRM_9513: 983dd11753c6e853d43cd82b3a9e28d9ca84e972 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5916: 2100c6efd2de767a876977ae1a8a6366e4beb643 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19198: 72d1cd92309524f5dbd7ec79fdfc9d54309c271b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

72d1cd923095 drm/i915/dp: split out aux functionality to intel_dp_aux.c
438af86b0216 drm/i915/pps: rename vlv_init_panel_power_sequencer to vlv_pps_init
1c7a761d30cc drm/i915/pps: add locked intel_pps_wait_power_cycle
21d5787f6bf8 drm/i915/pps: rename intel_power_sequencer_reset to intel_pps_reset_all
ae78e7086fd8 drm/i915/pps: rename intel_dp_check_edp to intel_pps_check_power_unlocked
9240c60d4690 drm/i915/pps: abstract intel_pps_reinit()
857aa036bd25 drm/i915/pps: add higher level intel_pps_init() call
dbfb9a73ee69 drm/i915/pps: abstract intel_pps_vdd_off_sync
7ba0bb014e1c drm/i915/pps: rename edp_panel_* to intel_pps_*_unlocked
3eb2eaf1f0f6 drm/i915/pps: rename intel_edp_panel_* to intel_pps_*
2e71006628ff drm/i915/pps: rename intel_edp_backlight_* to intel_pps_backlight_*
9a2c6754aeaf drm/i915/pps: rename pps_{, un}lock -> intel_pps_{, un}lock
45bed4116194 drm/i915/pps: abstract panel power sequencer from intel_dp.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19198/index.html

--===============1099267483555002591==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: split out pps and aux</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85167/">https://patchwork.freedesktop.org/series/85167/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19198/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19198/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9513 -&gt; Patchwork_19198</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19198/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19198 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19198/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9513/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19198/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_two_bos:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9513/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19198/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9513/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19198/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9513/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19198/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9513/fi-bsw-nick/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2826">i915#2826</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19198/fi-bsw-nick/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9513 -&gt; Patchwork_19198</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9513: 983dd11753c6e853d43cd82b3a9e28d9ca84e972 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5916: 2100c6efd2de767a876977ae1a8a6366e4beb643 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19198: 72d1cd92309524f5dbd7ec79fdfc9d54309c271b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>72d1cd923095 drm/i915/dp: split out aux functionality to intel_dp_aux.c<br />
438af86b0216 drm/i915/pps: rename vlv_init_panel_power_sequencer to vlv_pps_init<br />
1c7a761d30cc drm/i915/pps: add locked intel_pps_wait_power_cycle<br />
21d5787f6bf8 drm/i915/pps: rename intel_power_sequencer_reset to intel_pps_reset_all<br />
ae78e7086fd8 drm/i915/pps: rename intel_dp_check_edp to intel_pps_check_power_unlocked<br />
9240c60d4690 drm/i915/pps: abstract intel_pps_reinit()<br />
857aa036bd25 drm/i915/pps: add higher level intel_pps_init() call<br />
dbfb9a73ee69 drm/i915/pps: abstract intel_pps_vdd_off_sync<br />
7ba0bb014e1c drm/i915/pps: rename edp_panel_<em> to intel_pps_</em><em>unlocked<br />
3eb2eaf1f0f6 drm/i915/pps: rename intel_edp_panel</em><em> to intel_pps_</em><br />
2e71006628ff drm/i915/pps: rename intel_edp_backlight_<em> to intel_pps_backlight_</em><br />
9a2c6754aeaf drm/i915/pps: rename pps_{, un}lock -&gt; intel_pps_{, un}lock<br />
45bed4116194 drm/i915/pps: abstract panel power sequencer from intel_dp.c</p>

</body>
</html>

--===============1099267483555002591==--

--===============0854295824==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0854295824==--
