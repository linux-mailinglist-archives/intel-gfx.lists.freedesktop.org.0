Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B849F32025B
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Feb 2021 02:01:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3F196E8BB;
	Sat, 20 Feb 2021 01:01:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 10C426E120;
 Sat, 20 Feb 2021 01:01:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 09B3CA41FB;
 Sat, 20 Feb 2021 01:01:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Sat, 20 Feb 2021 01:01:27 -0000
Message-ID: <161378288701.24212.13387902023901832153@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210219215326.2227596-1-lyude@redhat.com>
In-Reply-To: <20210219215326.2227596-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Use_new_DRM_printk_funcs_=28like_drm=5Fdbg=5F*=28=29=29_in_?=
 =?utf-8?q?DP_helpers_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============2127768124=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2127768124==
Content-Type: multipart/alternative;
 boundary="===============5122283808287597753=="

--===============5122283808287597753==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers (rev2)
URL   : https://patchwork.freedesktop.org/series/87242/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9790 -> Patchwork_19706
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/index.html

Known issues
------------

  Here are the changes found in Patchwork_19706 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [PASS][1] -> [INCOMPLETE][2] ([i915#142] / [i915#2405])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9790/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][3] -> [INCOMPLETE][4] ([i915#2940])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9790/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9790/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@runner@aborted:
    - fi-byt-j1900:       NOTRUN -> [FAIL][7] ([i915#1814] / [i915#2505])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/fi-byt-j1900/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][8] ([i915#1436])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@blt:
    - fi-snb-2600:        [DMESG-FAIL][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9790/fi-snb-2600/igt@i915_selftest@live@blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/fi-snb-2600/igt@i915_selftest@live@blt.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [DMESG-WARN][11] ([i915#402]) -> [PASS][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9790/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (46 -> 40)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-apl-guc fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9790 -> Patchwork_19706

  CI-20190529: 20190529
  CI_DRM_9790: 69dc278989ce4d39a40a29cc678bcf0072e016e0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6009: a4dccf189b34a55338feec9927dac57c467c4100 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19706: 222c03341b341a3aebb9a7ee0b9635e50d280c34 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

222c03341b34 drm/dp_mst: Convert drm_dp_mst_topology.c to drm_err()/drm_dbg*()
b2be68664eda drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using drm_err/drm_dbg_kms()
194a493c5b7f drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_*()
de6f1d8c3401 drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payload_bw()
47d3136d3a5b drm/dp_dual_mode: Pass drm_device to drm_lspcon_(get|set)_mode()
b9dc820145fe drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_get_tmds_output()
5d7b1f94cad4 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_max_tmds_clock()
4f788c3e7ee9 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_set_tmds_output()
6c6c14e703d2 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()
336c34cfa9bc drm/dp: Always print aux channel name in logs
4f02b339d731 drm/dp: Pass drm_dp_aux to drm_dp*_link_train_channel_eq_delay()
974c1ef66f86 drm/dp: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()
792d8a99cee0 drm/print: Fixup DRM_DEBUG_KMS_RATELIMITED()
929d221431fe drm/dp: Clarify DP AUX registration time
4abb0f9466cf drm/dp: Rewrap drm_dp_aux_register()/drm_dp_aux_init() kdocs
b4f490e26caf drm/dp: Add backpointer to drm_device in drm_dp_aux
afe30b2db23b drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late register/early unregister
97ea41708a5c drm/bridge/analogix/dp_core: Unregister DP AUX channel on error in analogix_dp_probe()
956e9e041e4f drm/bridge/analogix/anx6345: Cleanup on errors in anx6345_bridge_attach()
c16e486032a9 drm/bridge/analogix/anx6345: Don't link encoder until after connector registration
10a994e19166 drm/bridge/analogix/anx6345: Add missing drm_dp_aux_unregister() call
4ccade9381d1 drm/bridge/analogix/anx78xx: Cleanup on error in anx78xx_bridge_attach()
7cd6e3c0d3b4 drm/bridge/analogix/anx78xx: Setup encoder before registering connector
0cb48941ab95 drm/bridge/analogix/anx78xx: Add missing drm_dp_aux_unregister() call
3101c201d6a8 drm/bridge/ti-sn65dsi86: (Un)register aux device on bridge attach/detach
677d32a7cff2 drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace
dd60e381b29d drm/bridge/tc358767: Don't register DP AUX channel until bridge is attached
33e9a50b217b drm/tegra: Don't register DP AUX channels before connectors
2c3cb32ffa61 drm/dp: Fixup kernel docs for struct drm_dp_aux
428923af2258 drm/dp: Rewrap kdocs for struct drm_dp_aux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/index.html

--===============5122283808287597753==
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
<tr><td><b>Series:</b></td><td>drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87242/">https://patchwork.freedesktop.org/series/87242/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9790 -&gt; Patchwork_19706</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19706 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9790/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9790/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9790/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/fi-byt-j1900/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@blt:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9790/fi-snb-2600/igt@i915_selftest@live@blt.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/fi-snb-2600/igt@i915_selftest@live@blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9790/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19706/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (46 -&gt; 40)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-apl-guc fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9790 -&gt; Patchwork_19706</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9790: 69dc278989ce4d39a40a29cc678bcf0072e016e0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6009: a4dccf189b34a55338feec9927dac57c467c4100 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19706: 222c03341b341a3aebb9a7ee0b9635e50d280c34 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>222c03341b34 drm/dp_mst: Convert drm_dp_mst_topology.c to drm_err()/drm_dbg<em>()<br />
b2be68664eda drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using drm_err/drm_dbg_kms()<br />
194a493c5b7f drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_</em>()<br />
de6f1d8c3401 drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payload_bw()<br />
47d3136d3a5b drm/dp_dual_mode: Pass drm_device to drm_lspcon_(get|set)_mode()<br />
b9dc820145fe drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_get_tmds_output()<br />
5d7b1f94cad4 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_max_tmds_clock()<br />
4f788c3e7ee9 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_set_tmds_output()<br />
6c6c14e703d2 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()<br />
336c34cfa9bc drm/dp: Always print aux channel name in logs<br />
4f02b339d731 drm/dp: Pass drm_dp_aux to drm_dp*_link_train_channel_eq_delay()<br />
974c1ef66f86 drm/dp: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()<br />
792d8a99cee0 drm/print: Fixup DRM_DEBUG_KMS_RATELIMITED()<br />
929d221431fe drm/dp: Clarify DP AUX registration time<br />
4abb0f9466cf drm/dp: Rewrap drm_dp_aux_register()/drm_dp_aux_init() kdocs<br />
b4f490e26caf drm/dp: Add backpointer to drm_device in drm_dp_aux<br />
afe30b2db23b drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late register/early unregister<br />
97ea41708a5c drm/bridge/analogix/dp_core: Unregister DP AUX channel on error in analogix_dp_probe()<br />
956e9e041e4f drm/bridge/analogix/anx6345: Cleanup on errors in anx6345_bridge_attach()<br />
c16e486032a9 drm/bridge/analogix/anx6345: Don't link encoder until after connector registration<br />
10a994e19166 drm/bridge/analogix/anx6345: Add missing drm_dp_aux_unregister() call<br />
4ccade9381d1 drm/bridge/analogix/anx78xx: Cleanup on error in anx78xx_bridge_attach()<br />
7cd6e3c0d3b4 drm/bridge/analogix/anx78xx: Setup encoder before registering connector<br />
0cb48941ab95 drm/bridge/analogix/anx78xx: Add missing drm_dp_aux_unregister() call<br />
3101c201d6a8 drm/bridge/ti-sn65dsi86: (Un)register aux device on bridge attach/detach<br />
677d32a7cff2 drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace<br />
dd60e381b29d drm/bridge/tc358767: Don't register DP AUX channel until bridge is attached<br />
33e9a50b217b drm/tegra: Don't register DP AUX channels before connectors<br />
2c3cb32ffa61 drm/dp: Fixup kernel docs for struct drm_dp_aux<br />
428923af2258 drm/dp: Rewrap kdocs for struct drm_dp_aux</p>

</body>
</html>

--===============5122283808287597753==--

--===============2127768124==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2127768124==--
