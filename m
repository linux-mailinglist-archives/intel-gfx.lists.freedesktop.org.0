Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E29E234D61C
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Mar 2021 19:35:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 352496E462;
	Mon, 29 Mar 2021 17:35:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C63E589EAE;
 Mon, 29 Mar 2021 17:35:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4964AA912;
 Mon, 29 Mar 2021 17:35:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Mon, 29 Mar 2021 17:35:05 -0000
Message-ID: <161703930573.26033.3669257803863707838@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210326203807.105754-1-lyude@redhat.com>
In-Reply-To: <20210326203807.105754-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Use_new_DRM_printk_funcs_=28like_drm=5Fdbg=5F*=28=29=29_in_?=
 =?utf-8?q?DP_helpers_=28rev5=29?=
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
Content-Type: multipart/mixed; boundary="===============1997846781=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1997846781==
Content-Type: multipart/alternative;
 boundary="===============1420186588459539917=="

--===============1420186588459539917==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers (rev5)
URL   : https://patchwork.freedesktop.org/series/87242/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9912 -> Patchwork_19877
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19877/index.html

Known issues
------------

  Here are the changes found in Patchwork_19877 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#2411] / [i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9912/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19877/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_flink_basic@flink-lifetime:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9912/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19877/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-skl-6600u:       [PASS][5] -> [FAIL][6] ([i915#3239])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9912/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19877/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html

  
#### Possible fixes ####

  * igt@gem_flink_basic@bad-open:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9912/fi-tgl-y/igt@gem_flink_basic@bad-open.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19877/fi-tgl-y/igt@gem_flink_basic@bad-open.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#3239]: https://gitlab.freedesktop.org/drm/intel/issues/3239
  [i915#3278]: https://gitlab.freedesktop.org/drm/intel/issues/3278
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9912 -> Patchwork_19877

  CI-20190529: 20190529
  CI_DRM_9912: b402d48c2c4f33ad87bb5f705391ce40a0ac84ce @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6047: 3887134e739f480cefe1dc7f13eb54f7bf3ca27f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19877: 9d5f0920a15c7f4a6e3a5f8440508b957827088a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9d5f0920a15c drm/dp_mst: Convert drm_dp_mst_topology.c to drm_err()/drm_dbg*()
b2d015ac690b drm/dp_mst: Drop DRM_ERROR() on kzalloc() fail in drm_dp_mst_handle_up_req()
b9be426b1780 drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using drm_err/drm_dbg_kms()
ba8bae46721f drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_*()
1d63db551fb3 drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payload_bw()
16c557b58ef7 drm/dp_dual_mode: Pass drm_device to drm_lspcon_(get|set)_mode()
258564408ec2 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_get_tmds_output()
f984ed4ae0c0 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_max_tmds_clock()
c58df253994f drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_set_tmds_output()
06e85c3fd3bf drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()
646bab4a5c01 drm/dp: Always print aux channel name in logs
217fd40ba10c drm/dp: Pass drm_dp_aux to drm_dp*_link_train_channel_eq_delay()
7fdb9e238b5b drm/dp: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()
10f0bfad3306 drm/print: Fixup DRM_DEBUG_KMS_RATELIMITED()
2b41e7dca3d1 drm/dp: Clarify DP AUX registration time
e5ba922cf19c drm/dp: Add backpointer to drm_device in drm_dp_aux
b19a751a21d5 drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late register/early unregister
a517b2ef8d3c drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace
1aaf16c813ff drm/tegra: Don't register DP AUX channels before connectors
6ae29065652a drm/dp: Fixup kernel docs for struct drm_dp_aux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19877/index.html

--===============1420186588459539917==
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
<tr><td><b>Series:</b></td><td>drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87242/">https://patchwork.freedesktop.org/series/87242/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19877/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19877/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9912 -&gt; Patchwork_19877</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19877/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19877 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9912/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19877/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@flink-lifetime:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9912/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19877/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9912/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19877/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3239">i915#3239</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_flink_basic@bad-open:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9912/fi-tgl-y/igt@gem_flink_basic@bad-open.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19877/fi-tgl-y/igt@gem_flink_basic@bad-open.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9912 -&gt; Patchwork_19877</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9912: b402d48c2c4f33ad87bb5f705391ce40a0ac84ce @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6047: 3887134e739f480cefe1dc7f13eb54f7bf3ca27f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19877: 9d5f0920a15c7f4a6e3a5f8440508b957827088a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9d5f0920a15c drm/dp_mst: Convert drm_dp_mst_topology.c to drm_err()/drm_dbg<em>()<br />
b2d015ac690b drm/dp_mst: Drop DRM_ERROR() on kzalloc() fail in drm_dp_mst_handle_up_req()<br />
b9be426b1780 drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using drm_err/drm_dbg_kms()<br />
ba8bae46721f drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_</em>()<br />
1d63db551fb3 drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payload_bw()<br />
16c557b58ef7 drm/dp_dual_mode: Pass drm_device to drm_lspcon_(get|set)_mode()<br />
258564408ec2 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_get_tmds_output()<br />
f984ed4ae0c0 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_max_tmds_clock()<br />
c58df253994f drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_set_tmds_output()<br />
06e85c3fd3bf drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()<br />
646bab4a5c01 drm/dp: Always print aux channel name in logs<br />
217fd40ba10c drm/dp: Pass drm_dp_aux to drm_dp*_link_train_channel_eq_delay()<br />
7fdb9e238b5b drm/dp: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()<br />
10f0bfad3306 drm/print: Fixup DRM_DEBUG_KMS_RATELIMITED()<br />
2b41e7dca3d1 drm/dp: Clarify DP AUX registration time<br />
e5ba922cf19c drm/dp: Add backpointer to drm_device in drm_dp_aux<br />
b19a751a21d5 drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late register/early unregister<br />
a517b2ef8d3c drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace<br />
1aaf16c813ff drm/tegra: Don't register DP AUX channels before connectors<br />
6ae29065652a drm/dp: Fixup kernel docs for struct drm_dp_aux</p>

</body>
</html>

--===============1420186588459539917==--

--===============1997846781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1997846781==--
