Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5120C34B164
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 22:34:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6087A6F48F;
	Fri, 26 Mar 2021 21:34:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8DB786F489;
 Fri, 26 Mar 2021 21:34:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84AE7A8169;
 Fri, 26 Mar 2021 21:34:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Fri, 26 Mar 2021 21:34:29 -0000
Message-ID: <161679446951.10687.1151750367286052508@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210326203807.105754-1-lyude@redhat.com>
In-Reply-To: <20210326203807.105754-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Use_new_DRM_printk_funcs_=28like_drm=5Fdbg=5F*=28=29=29_in_?=
 =?utf-8?q?DP_helpers_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1166211881=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1166211881==
Content-Type: multipart/alternative;
 boundary="===============4981687943797833911=="

--===============4981687943797833911==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers (rev3)
URL   : https://patchwork.freedesktop.org/series/87242/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9908 -> Patchwork_19868
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19868 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19868, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19868:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bwr-2160:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9908/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html

  
Known issues
------------

  Here are the changes found in Patchwork_19868 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@fork-gfx0:
    - fi-icl-u2:          NOTRUN -> [SKIP][3] ([fdo#109315]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html

  * igt@gem_flink_basic@basic:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([i915#402]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9908/fi-tgl-y/igt@gem_flink_basic@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/fi-tgl-y/igt@gem_flink_basic@basic.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [PASS][6] -> [FAIL][7] ([i915#1372])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9908/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][8] ([i915#402]) -> [PASS][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9908/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live@hangcheck:
    - fi-byt-j1900:       [DMESG-WARN][10] ([i915#3303]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9908/fi-byt-j1900/igt@i915_selftest@live@hangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/fi-byt-j1900/igt@i915_selftest@live@hangcheck.html
    - fi-icl-u2:          [INCOMPLETE][12] ([i915#2782]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9908/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/fi-icl-u2/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (47 -> 41)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-bsw-cyan fi-icl-y fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9908 -> Patchwork_19868

  CI-20190529: 20190529
  CI_DRM_9908: f9b2ef29876b765eb53cdc179f94ad6c850a8df6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6047: 3887134e739f480cefe1dc7f13eb54f7bf3ca27f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19868: 1aeac5ad99e398c055853b95e09eff24d03b986f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1aeac5ad99e3 drm/dp_mst: Convert drm_dp_mst_topology.c to drm_err()/drm_dbg*()
edbf4e8c8f9c drm/dp_mst: Drop DRM_ERROR() on kzalloc() fail in drm_dp_mst_handle_up_req()
c3615ff14e87 drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using drm_err/drm_dbg_kms()
fb3e3ab3dd3a drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_*()
e6c68efe1df9 drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payload_bw()
305de2390da1 drm/dp_dual_mode: Pass drm_device to drm_lspcon_(get|set)_mode()
511100ab2bac drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_get_tmds_output()
a0a55d6c24d3 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_max_tmds_clock()
5b5f15710623 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_set_tmds_output()
1ac2bba3323f drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()
c8f171451ef2 drm/dp: Always print aux channel name in logs
ee690943af24 drm/dp: Pass drm_dp_aux to drm_dp*_link_train_channel_eq_delay()
ecff1efa6edc drm/dp: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()
618c5f0980b8 drm/print: Fixup DRM_DEBUG_KMS_RATELIMITED()
5e2e0bdc1f63 drm/dp: Clarify DP AUX registration time
58c50c356f92 drm/dp: Add backpointer to drm_device in drm_dp_aux
2dfefec80949 drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late register/early unregister
7c88b7808d84 drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace
e5b211145259 drm/tegra: Don't register DP AUX channels before connectors
0fa59ff4dbac drm/dp: Fixup kernel docs for struct drm_dp_aux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/index.html

--===============4981687943797833911==
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
<tr><td><b>Series:</b></td><td>drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87242/">https://patchwork.freedesktop.org/series/87242/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9908 -&gt; Patchwork_19868</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19868 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19868, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19868:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9908/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19868 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9908/fi-tgl-y/igt@gem_flink_basic@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/fi-tgl-y/igt@gem_flink_basic@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9908/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9908/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9908/fi-byt-j1900/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/fi-byt-j1900/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9908/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19868/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (47 -&gt; 41)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-bsw-cyan fi-icl-y fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9908 -&gt; Patchwork_19868</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9908: f9b2ef29876b765eb53cdc179f94ad6c850a8df6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6047: 3887134e739f480cefe1dc7f13eb54f7bf3ca27f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19868: 1aeac5ad99e398c055853b95e09eff24d03b986f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1aeac5ad99e3 drm/dp_mst: Convert drm_dp_mst_topology.c to drm_err()/drm_dbg<em>()<br />
edbf4e8c8f9c drm/dp_mst: Drop DRM_ERROR() on kzalloc() fail in drm_dp_mst_handle_up_req()<br />
c3615ff14e87 drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using drm_err/drm_dbg_kms()<br />
fb3e3ab3dd3a drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_</em>()<br />
e6c68efe1df9 drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payload_bw()<br />
305de2390da1 drm/dp_dual_mode: Pass drm_device to drm_lspcon_(get|set)_mode()<br />
511100ab2bac drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_get_tmds_output()<br />
a0a55d6c24d3 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_max_tmds_clock()<br />
5b5f15710623 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_set_tmds_output()<br />
1ac2bba3323f drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()<br />
c8f171451ef2 drm/dp: Always print aux channel name in logs<br />
ee690943af24 drm/dp: Pass drm_dp_aux to drm_dp*_link_train_channel_eq_delay()<br />
ecff1efa6edc drm/dp: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()<br />
618c5f0980b8 drm/print: Fixup DRM_DEBUG_KMS_RATELIMITED()<br />
5e2e0bdc1f63 drm/dp: Clarify DP AUX registration time<br />
58c50c356f92 drm/dp: Add backpointer to drm_device in drm_dp_aux<br />
2dfefec80949 drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late register/early unregister<br />
7c88b7808d84 drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace<br />
e5b211145259 drm/tegra: Don't register DP AUX channels before connectors<br />
0fa59ff4dbac drm/dp: Fixup kernel docs for struct drm_dp_aux</p>

</body>
</html>

--===============4981687943797833911==--

--===============1166211881==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1166211881==--
