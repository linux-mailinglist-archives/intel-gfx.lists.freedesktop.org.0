Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8003E9467
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Aug 2021 17:17:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 207E36E151;
	Wed, 11 Aug 2021 15:17:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B66286E151;
 Wed, 11 Aug 2021 15:17:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6B18A8169;
 Wed, 11 Aug 2021 15:17:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4243749672085825470=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juston Li" <juston.li@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Aug 2021 15:17:26 -0000
Message-ID: <162869504667.27219.9268350747470216188@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210810235212.138721-1-juston.li@intel.com>
In-Reply-To: <20210810235212.138721-1-juston.li@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_HDCP2=2E2_MST_dock_fixes_=28rev4=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============4243749672085825470==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdcp: HDCP2.2 MST dock fixes (rev4)
URL   : https://patchwork.freedesktop.org/series/93570/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10467 -> Patchwork_20798
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20798/index.html

Known issues
------------

  Here are the changes found in Patchwork_20798 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10467/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20798/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Participating hosts (43 -> 37)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10467 -> Patchwork_20798

  CI-20190529: 20190529
  CI_DRM_10467: d95ddee6978de14a77d0632f90394bf6299fcf44 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6170: d4ff2b4ab88d62a1888cb0316e70a1729fe4a685 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20798: 32408da567cc9dd2e9270d25ca895d08ee712736 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

32408da567cc drm/i915/hdcp: reuse rx_info for mst stream type1 capability check
be0935c3b616 drm/i915/hdcp: read RxInfo once when reading RepeaterAuth_Send_ReceiverID_List
c9dcca1f2d4e drm/i915/hdcp: update cp_irq_count_cached in intel_dp_hdcp2_read_msg()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20798/index.html

--===============4243749672085825470==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdcp: HDCP2.2 MST dock fixes (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93570/">https://patchwork.freedesktop.org/series/93570/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20798/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20798/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10467 -&gt; Patchwork_20798</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20798/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20798 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10467/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20798/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 37)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10467 -&gt; Patchwork_20798</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10467: d95ddee6978de14a77d0632f90394bf6299fcf44 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6170: d4ff2b4ab88d62a1888cb0316e70a1729fe4a685 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20798: 32408da567cc9dd2e9270d25ca895d08ee712736 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>32408da567cc drm/i915/hdcp: reuse rx_info for mst stream type1 capability check<br />
be0935c3b616 drm/i915/hdcp: read RxInfo once when reading RepeaterAuth_Send_ReceiverID_List<br />
c9dcca1f2d4e drm/i915/hdcp: update cp_irq_count_cached in intel_dp_hdcp2_read_msg()</p>

</body>
</html>

--===============4243749672085825470==--
