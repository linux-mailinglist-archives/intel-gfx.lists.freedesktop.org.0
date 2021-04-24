Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A30369E37
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Apr 2021 02:55:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB57A6EC73;
	Sat, 24 Apr 2021 00:55:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB3C26EC6D;
 Sat, 24 Apr 2021 00:55:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B8D6EA8830;
 Sat, 24 Apr 2021 00:55:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Sat, 24 Apr 2021 00:55:23 -0000
Message-ID: <161922572372.2855.13932806391157724576@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210423184309.207645-1-lyude@redhat.com>
In-Reply-To: <20210423184309.207645-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Use_new_DRM_printk_funcs_=28like_drm=5Fdbg=5F*=28=29=29_in_?=
 =?utf-8?q?DP_helpers_=28rev8=29?=
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
Content-Type: multipart/mixed; boundary="===============2080365478=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2080365478==
Content-Type: multipart/alternative;
 boundary="===============0340513626085556398=="

--===============0340513626085556398==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers (rev8)
URL   : https://patchwork.freedesktop.org/series/87242/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10005 -> Patchwork_19985
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19985/index.html

Known issues
------------

  Here are the changes found in Patchwork_19985 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3276]: https://gitlab.freedesktop.org/drm/intel/issues/3276
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (43 -> 38)
------------------------------

  Additional (1): fi-rkl-11500t 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-bdw-gvtdvm fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10005 -> Patchwork_19985

  CI-20190529: 20190529
  CI_DRM_10005: 7a27cb7ac19a95d801c391044cea5274677e7744 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6074: 3f43ae9fd22dc5a517786b984dc3aa717997664f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19985: 18086bb86f43e015c1ff45266995fee4c2034b35 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

18086bb86f43 drm/dp_mst: Convert drm_dp_mst_topology.c to drm_err()/drm_dbg*()
0e8fa6d106da drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using drm_err/drm_dbg_kms()
119b6434fa27 drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_*()
924d34615f12 drm/print: Handle potentially NULL drm_devices in drm_dbg_*
c32bf6ea1150 drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payload_bw()
e322360fb7e0 drm/dp_dual_mode: Pass drm_device to drm_lspcon_(get|set)_mode()
00efde3156e4 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_get_tmds_output()
2cc459bf0450 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_max_tmds_clock()
ef2e8dc38bf1 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_set_tmds_output()
88bfc3241a28 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()
2175cbb92c1e drm/dp: Always print aux channel name in logs
cffbd1f6e43b drm/dp: Pass drm_dp_aux to drm_dp*_link_train_channel_eq_delay()
40f235bd28c2 drm/dp: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()
bfe721a5548a drm/dp: Clarify DP AUX registration time
52f1071aa1f8 drm/dp: Add backpointer to drm_device in drm_dp_aux
1f891e39631b drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late register/early unregister
f6110c1805b3 drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19985/index.html

--===============0340513626085556398==
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
<tr><td><b>Series:</b></td><td>drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87242/">https://patchwork.freedesktop.org/series/87242/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19985/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19985/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10005 -&gt; Patchwork_19985</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19985/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19985 that come from known issues:</p>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Additional (1): fi-rkl-11500t <br />
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-bdw-gvtdvm fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10005 -&gt; Patchwork_19985</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10005: 7a27cb7ac19a95d801c391044cea5274677e7744 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6074: 3f43ae9fd22dc5a517786b984dc3aa717997664f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19985: 18086bb86f43e015c1ff45266995fee4c2034b35 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>18086bb86f43 drm/dp_mst: Convert drm_dp_mst_topology.c to drm_err()/drm_dbg<em>()<br />
0e8fa6d106da drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using drm_err/drm_dbg_kms()<br />
119b6434fa27 drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_</em>()<br />
924d34615f12 drm/print: Handle potentially NULL drm_devices in drm_dbg_<em><br />
c32bf6ea1150 drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payload_bw()<br />
e322360fb7e0 drm/dp_dual_mode: Pass drm_device to drm_lspcon_(get|set)_mode()<br />
00efde3156e4 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_get_tmds_output()<br />
2cc459bf0450 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_max_tmds_clock()<br />
ef2e8dc38bf1 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_set_tmds_output()<br />
88bfc3241a28 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()<br />
2175cbb92c1e drm/dp: Always print aux channel name in logs<br />
cffbd1f6e43b drm/dp: Pass drm_dp_aux to drm_dp</em>_link_train_channel_eq_delay()<br />
40f235bd28c2 drm/dp: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()<br />
bfe721a5548a drm/dp: Clarify DP AUX registration time<br />
52f1071aa1f8 drm/dp: Add backpointer to drm_device in drm_dp_aux<br />
1f891e39631b drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late register/early unregister<br />
f6110c1805b3 drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace</p>

</body>
</html>

--===============0340513626085556398==--

--===============2080365478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2080365478==--
