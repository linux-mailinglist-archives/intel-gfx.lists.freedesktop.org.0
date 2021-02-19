Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C10D32016A
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Feb 2021 23:40:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 243C16E0CC;
	Fri, 19 Feb 2021 22:40:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7B0ED6E0CB;
 Fri, 19 Feb 2021 22:40:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 621F7A47E2;
 Fri, 19 Feb 2021 22:40:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Fri, 19 Feb 2021 22:40:16 -0000
Message-ID: <161377441637.703.9643932706529372864@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210219215326.2227596-1-lyude@redhat.com>
In-Reply-To: <20210219215326.2227596-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Use_new_DRM_printk_funcs_=28like_drm=5Fdbg=5F*=28=29=29_in_?=
 =?utf-8?q?DP_helpers?=
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
Content-Type: multipart/mixed; boundary="===============0274540102=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0274540102==
Content-Type: multipart/alternative;
 boundary="===============1129451205807142451=="

--===============1129451205807142451==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers
URL   : https://patchwork.freedesktop.org/series/87242/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9790 -> Patchwork_19705
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19705/index.html

Known issues
------------

  Here are the changes found in Patchwork_19705 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9790/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19705/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@blt:
    - fi-snb-2600:        [DMESG-FAIL][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9790/fi-snb-2600/igt@i915_selftest@live@blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19705/fi-snb-2600/igt@i915_selftest@live@blt.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9790/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19705/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (46 -> 40)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-ehl-2 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9790 -> Patchwork_19705

  CI-20190529: 20190529
  CI_DRM_9790: 69dc278989ce4d39a40a29cc678bcf0072e016e0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6009: a4dccf189b34a55338feec9927dac57c467c4100 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19705: 1c0133c9bcf08dc840387bf0c004208062e852cd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1c0133c9bcf0 drm/dp_mst: Convert drm_dp_mst_topology.c to drm_err()/drm_dbg*()
616d97c8c5fb drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using drm_err/drm_dbg_kms()
b215e53e3ce2 drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_*()
14a0b6c29fc7 drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payload_bw()
6fe319f1b8e8 drm/dp_dual_mode: Pass drm_device to drm_lspcon_(get|set)_mode()
b610ae839ecd drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_get_tmds_output()
cdcd6958912f drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_max_tmds_clock()
92e948ca8cba drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_set_tmds_output()
c7df16b9d24e drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()
dec2312b34cc drm/dp: Always print aux channel name in logs
6853812a6368 drm/dp: Pass drm_dp_aux to drm_dp*_link_train_channel_eq_delay()
d1b3270dba59 drm/dp: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()
815fe1b4dd16 drm/print: Fixup DRM_DEBUG_KMS_RATELIMITED()
743613ba9017 drm/dp: Clarify DP AUX registration time
886105588723 drm/dp: Rewrap drm_dp_aux_register()/drm_dp_aux_init() kdocs
89eb0e9ca1fc drm/dp: Add backpointer to drm_device in drm_dp_aux
011332737c0f drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late register/early unregister
f6c80edbe8f6 drm/bridge/analogix/dp_core: Unregister DP AUX channel on error in analogix_dp_probe()
3700184db2e5 drm/bridge/analogix/anx6345: Cleanup on errors in anx6345_bridge_attach()
93ea935d7e82 drm/bridge/analogix/anx6345: Don't link encoder until after connector registration
a791371e1b1f drm/bridge/analogix/anx6345: Add missing drm_dp_aux_unregister() call
95ef631558ad drm/bridge/analogix/anx78xx: Cleanup on error in anx78xx_bridge_attach()
331d6a7a89db drm/bridge/analogix/anx78xx: Setup encoder before registering connector
b69f1f6665a8 drm/bridge/analogix/anx78xx: Add missing drm_dp_aux_unregister() call
bd0cb165e99c drm/bridge/ti-sn65dsi86: (Un)register aux device on bridge attach/detach
466a8724aac1 drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace
4477471e11d3 drm/bridge/tc358767: Don't register DP AUX channel until bridge is attached
76de8b506bb5 drm/tegra: Don't register DP AUX channels before connectors
59ab34a09514 drm/dp: Fixup kernel docs for struct drm_dp_aux
ce207403b6ba drm/dp: Rewrap kdocs for struct drm_dp_aux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19705/index.html

--===============1129451205807142451==
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
<tr><td><b>Series:</b></td><td>drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87242/">https://patchwork.freedesktop.org/series/87242/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19705/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19705/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9790 -&gt; Patchwork_19705</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19705/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19705 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@prime_self_import@basic-with_two_bos:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9790/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19705/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@blt:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9790/fi-snb-2600/igt@i915_selftest@live@blt.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19705/fi-snb-2600/igt@i915_selftest@live@blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9790/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19705/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (46 -&gt; 40)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-ehl-2 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9790 -&gt; Patchwork_19705</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9790: 69dc278989ce4d39a40a29cc678bcf0072e016e0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6009: a4dccf189b34a55338feec9927dac57c467c4100 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19705: 1c0133c9bcf08dc840387bf0c004208062e852cd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1c0133c9bcf0 drm/dp_mst: Convert drm_dp_mst_topology.c to drm_err()/drm_dbg<em>()<br />
616d97c8c5fb drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using drm_err/drm_dbg_kms()<br />
b215e53e3ce2 drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_</em>()<br />
14a0b6c29fc7 drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payload_bw()<br />
6fe319f1b8e8 drm/dp_dual_mode: Pass drm_device to drm_lspcon_(get|set)_mode()<br />
b610ae839ecd drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_get_tmds_output()<br />
cdcd6958912f drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_max_tmds_clock()<br />
92e948ca8cba drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_set_tmds_output()<br />
c7df16b9d24e drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()<br />
dec2312b34cc drm/dp: Always print aux channel name in logs<br />
6853812a6368 drm/dp: Pass drm_dp_aux to drm_dp*_link_train_channel_eq_delay()<br />
d1b3270dba59 drm/dp: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()<br />
815fe1b4dd16 drm/print: Fixup DRM_DEBUG_KMS_RATELIMITED()<br />
743613ba9017 drm/dp: Clarify DP AUX registration time<br />
886105588723 drm/dp: Rewrap drm_dp_aux_register()/drm_dp_aux_init() kdocs<br />
89eb0e9ca1fc drm/dp: Add backpointer to drm_device in drm_dp_aux<br />
011332737c0f drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late register/early unregister<br />
f6c80edbe8f6 drm/bridge/analogix/dp_core: Unregister DP AUX channel on error in analogix_dp_probe()<br />
3700184db2e5 drm/bridge/analogix/anx6345: Cleanup on errors in anx6345_bridge_attach()<br />
93ea935d7e82 drm/bridge/analogix/anx6345: Don't link encoder until after connector registration<br />
a791371e1b1f drm/bridge/analogix/anx6345: Add missing drm_dp_aux_unregister() call<br />
95ef631558ad drm/bridge/analogix/anx78xx: Cleanup on error in anx78xx_bridge_attach()<br />
331d6a7a89db drm/bridge/analogix/anx78xx: Setup encoder before registering connector<br />
b69f1f6665a8 drm/bridge/analogix/anx78xx: Add missing drm_dp_aux_unregister() call<br />
bd0cb165e99c drm/bridge/ti-sn65dsi86: (Un)register aux device on bridge attach/detach<br />
466a8724aac1 drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace<br />
4477471e11d3 drm/bridge/tc358767: Don't register DP AUX channel until bridge is attached<br />
76de8b506bb5 drm/tegra: Don't register DP AUX channels before connectors<br />
59ab34a09514 drm/dp: Fixup kernel docs for struct drm_dp_aux<br />
ce207403b6ba drm/dp: Rewrap kdocs for struct drm_dp_aux</p>

</body>
</html>

--===============1129451205807142451==--

--===============0274540102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0274540102==--
