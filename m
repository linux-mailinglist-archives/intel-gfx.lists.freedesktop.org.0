Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65572364E96
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 01:25:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E1756E4A1;
	Mon, 19 Apr 2021 23:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8AB856E466;
 Mon, 19 Apr 2021 23:25:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A398A00CC;
 Mon, 19 Apr 2021 23:25:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Mon, 19 Apr 2021 23:25:17 -0000
Message-ID: <161887471746.27827.6587761246133636159@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210419225523.184856-1-lyude@redhat.com>
In-Reply-To: <20210419225523.184856-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Use_new_DRM_printk_funcs_=28like_drm=5Fdbg=5F*=28=29=29_in_?=
 =?utf-8?q?DP_helpers_=28rev6=29?=
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
Content-Type: multipart/mixed; boundary="===============1333227966=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1333227966==
Content-Type: multipart/alternative;
 boundary="===============0381766241434385148=="

--===============0381766241434385148==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers (rev6)
URL   : https://patchwork.freedesktop.org/series/87242/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9983 -> Patchwork_19953
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19953 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19953, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19953:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-apl-guc:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-apl-guc/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-apl-guc/boot.html
    - fi-kbl-8809g:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-kbl-8809g/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-kbl-8809g/boot.html
    - fi-snb-2520m:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-snb-2520m/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-snb-2520m/boot.html
    - fi-bsw-nick:        [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-bsw-nick/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-bsw-nick/boot.html
    - fi-icl-u2:          [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-icl-u2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-icl-u2/boot.html
    - fi-cfl-8109u:       [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-cfl-8109u/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-cfl-8109u/boot.html
    - fi-cfl-8700k:       [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-cfl-8700k/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-cfl-8700k/boot.html
    - fi-bxt-dsi:         [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-bxt-dsi/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-bxt-dsi/boot.html
    - fi-cml-u2:          [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-cml-u2/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-cml-u2/boot.html
    - fi-ilk-650:         [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-ilk-650/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-ilk-650/boot.html
    - fi-tgl-u2:          [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-tgl-u2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-tgl-u2/boot.html
    - fi-hsw-4770:        [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-hsw-4770/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-hsw-4770/boot.html
    - fi-cfl-guc:         [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-cfl-guc/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-cfl-guc/boot.html
    - fi-kbl-soraka:      [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-kbl-soraka/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-kbl-soraka/boot.html
    - fi-cml-s:           [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-cml-s/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-cml-s/boot.html
    - fi-elk-e7500:       [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-elk-e7500/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-elk-e7500/boot.html
    - fi-glk-dsi:         [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-glk-dsi/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-glk-dsi/boot.html
    - fi-snb-2600:        [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-snb-2600/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-snb-2600/boot.html
    - fi-tgl-y:           [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-tgl-y/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-tgl-y/boot.html
    - fi-kbl-guc:         [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-kbl-guc/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-kbl-guc/boot.html
    - fi-kbl-x1275:       [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-kbl-x1275/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-kbl-x1275/boot.html
    - fi-bdw-gvtdvm:      [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-bdw-gvtdvm/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-bdw-gvtdvm/boot.html
    - fi-kbl-7500u:       [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-kbl-7500u/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-kbl-7500u/boot.html
    - fi-bdw-5557u:       [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-bdw-5557u/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-bdw-5557u/boot.html
    - fi-kbl-r:           [PASS][49] -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-kbl-r/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-kbl-r/boot.html
    - fi-kbl-7567u:       [PASS][51] -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-kbl-7567u/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-kbl-7567u/boot.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * boot:
    - {fi-tgl-dsi}:       [PASS][53] -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-tgl-dsi/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-tgl-dsi/boot.html
    - {fi-hsw-gt1}:       [PASS][55] -> [FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-hsw-gt1/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-hsw-gt1/boot.html
    - {fi-jsl-1}:         [PASS][57] -> [FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-jsl-1/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-jsl-1/boot.html
    - {fi-ehl-1}:         [PASS][59] -> [FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-ehl-1/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-ehl-1/boot.html
    - {fi-rkl-11500t}:    [PASS][61] -> [FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-rkl-11500t/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-rkl-11500t/boot.html
    - {fi-ehl-2}:         [PASS][63] -> [FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-ehl-2/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-ehl-2/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_19953 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-skl-6600u:       [PASS][65] -> [FAIL][66] ([i915#3174])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-skl-6600u/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-skl-6600u/boot.html
    - fi-skl-6700k2:      [PASS][67] -> [FAIL][68] ([i915#3174])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-skl-6700k2/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-skl-6700k2/boot.html
    - fi-skl-guc:         [PASS][69] -> [FAIL][70] ([i915#3174])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-skl-guc/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-skl-guc/boot.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3174]: https://gitlab.freedesktop.org/drm/intel/issues/3174


Participating hosts (42 -> 38)
------------------------------

  Missing    (4): fi-icl-y fi-bsw-cyan fi-bsw-kefka fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9983 -> Patchwork_19953

  CI-20190529: 20190529
  CI_DRM_9983: 03ed13adf40fd6827c888186a9f356a537237c3f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6070: 907705f0c3f6b5ae6358a4822434dd6d7a070cff @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19953: 4d85fbc4cd3fcfecee0f4ea8d2cc5f7f3d29985c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4d85fbc4cd3f drm/dp_mst: Convert drm_dp_mst_topology.c to drm_err()/drm_dbg*()
2cdf118000c8 drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using drm_err/drm_dbg_kms()
8529dfa260fc drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_*()
fa4bf5cbb3bb drm/print: Handle potentially NULL drm_devices in drm_dbg_*
ce547d2b0cb9 drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payload_bw()
c4f143e80afd drm/dp_dual_mode: Pass drm_device to drm_lspcon_(get|set)_mode()
70e25b343fb6 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_get_tmds_output()
91c92d211983 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_max_tmds_clock()
8947ebf4721c drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_set_tmds_output()
37dae984861b drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()
33109c79827e drm/dp: Always print aux channel name in logs
a12a22656307 drm/dp: Pass drm_dp_aux to drm_dp*_link_train_channel_eq_delay()
764073b4a508 drm/dp: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()
d52ff25d184a drm/dp: Clarify DP AUX registration time
057f5073ee57 drm/dp: Add backpointer to drm_device in drm_dp_aux
b05faee9e18d drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late register/early unregister
0f2070c3486f drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace
6b4b8b73edda drm/dp: Move i2c init to drm_dp_aux_init, add __must_check and fini
996c7d026bb9 drm/dp: Add __no_check to drm_dp_aux_register()
fffba1b63bf6 drm/amdgpu: Add error handling to amdgpu_dm_initialize_dp_connector()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/index.html

--===============0381766241434385148==
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
<tr><td><b>Series:</b></td><td>drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87242/">https://patchwork.freedesktop.org/series/87242/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9983 -&gt; Patchwork_19953</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19953 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19953, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19953:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-apl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-kbl-8809g/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-kbl-8809g/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-snb-2520m/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-snb-2520m/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-bsw-nick/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-bsw-nick/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-icl-u2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-icl-u2/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-cfl-8109u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-cfl-8700k/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-cfl-8700k/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-bxt-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-bxt-dsi/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-cml-u2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-cml-u2/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-ilk-650/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-ilk-650/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-tgl-u2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-tgl-u2/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-hsw-4770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-hsw-4770/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-cfl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-cfl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-kbl-soraka/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-kbl-soraka/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-cml-s/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-cml-s/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-elk-e7500/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-elk-e7500/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-glk-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-glk-dsi/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-snb-2600/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-snb-2600/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-tgl-y/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-tgl-y/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-kbl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-kbl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-kbl-x1275/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-kbl-x1275/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-bdw-gvtdvm/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-bdw-gvtdvm/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-kbl-7500u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-kbl-7500u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-bdw-5557u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-bdw-5557u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-kbl-r/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-kbl-r/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-kbl-7567u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-kbl-7567u/boot.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-tgl-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-tgl-dsi/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-hsw-gt1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-hsw-gt1/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-jsl-1/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-ehl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-ehl-1/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-rkl-11500t/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-rkl-11500t/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-ehl-2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-ehl-2/boot.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19953 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-skl-6600u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-skl-6600u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3174">i915#3174</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-skl-6700k2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-skl-6700k2/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3174">i915#3174</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-skl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-skl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3174">i915#3174</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Missing    (4): fi-icl-y fi-bsw-cyan fi-bsw-kefka fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9983 -&gt; Patchwork_19953</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9983: 03ed13adf40fd6827c888186a9f356a537237c3f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6070: 907705f0c3f6b5ae6358a4822434dd6d7a070cff @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19953: 4d85fbc4cd3fcfecee0f4ea8d2cc5f7f3d29985c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4d85fbc4cd3f drm/dp_mst: Convert drm_dp_mst_topology.c to drm_err()/drm_dbg<em>()<br />
2cdf118000c8 drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using drm_err/drm_dbg_kms()<br />
8529dfa260fc drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_</em>()<br />
fa4bf5cbb3bb drm/print: Handle potentially NULL drm_devices in drm_dbg_<em><br />
ce547d2b0cb9 drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payload_bw()<br />
c4f143e80afd drm/dp_dual_mode: Pass drm_device to drm_lspcon_(get|set)_mode()<br />
70e25b343fb6 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_get_tmds_output()<br />
91c92d211983 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_max_tmds_clock()<br />
8947ebf4721c drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_set_tmds_output()<br />
37dae984861b drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()<br />
33109c79827e drm/dp: Always print aux channel name in logs<br />
a12a22656307 drm/dp: Pass drm_dp_aux to drm_dp</em>_link_train_channel_eq_delay()<br />
764073b4a508 drm/dp: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()<br />
d52ff25d184a drm/dp: Clarify DP AUX registration time<br />
057f5073ee57 drm/dp: Add backpointer to drm_device in drm_dp_aux<br />
b05faee9e18d drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late register/early unregister<br />
0f2070c3486f drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace<br />
6b4b8b73edda drm/dp: Move i2c init to drm_dp_aux_init, add __must_check and fini<br />
996c7d026bb9 drm/dp: Add __no_check to drm_dp_aux_register()<br />
fffba1b63bf6 drm/amdgpu: Add error handling to amdgpu_dm_initialize_dp_connector()</p>

</body>
</html>

--===============0381766241434385148==--

--===============1333227966==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1333227966==--
