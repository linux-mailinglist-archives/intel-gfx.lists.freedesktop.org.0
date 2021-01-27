Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBD130621A
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 18:34:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EED316E832;
	Wed, 27 Jan 2021 17:34:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E512A6E832;
 Wed, 27 Jan 2021 17:34:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DF59AA9932;
 Wed, 27 Jan 2021 17:34:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juston Li" <juston.li@intel.com>
Date: Wed, 27 Jan 2021 17:34:24 -0000
Message-ID: <161176886488.11911.8277280583464952023@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210127065034.2501119-1-juston.li@intel.com>
In-Reply-To: <20210127065034.2501119-1-juston.li@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/4=5D_drm/i915/hdcp=3A_Disable_the_Q?=
 =?utf-8?q?SES_check_for_HDCP_1=2E4_over_MST?=
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
Content-Type: multipart/mixed; boundary="===============1206839730=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1206839730==
Content-Type: multipart/alternative;
 boundary="===============4143197121429476544=="

--===============4143197121429476544==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/4] drm/i915/hdcp: Disable the QSES check for HDCP 1.4 over MST
URL   : https://patchwork.freedesktop.org/series/86325/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9686 -> Patchwork_19513
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19513/index.html

Known issues
------------

  Here are the changes found in Patchwork_19513 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19513/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_selftest@live@hangcheck:
    - fi-bxt-dsi:         [PASS][3] -> [INCOMPLETE][4] ([i915#2895])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/fi-bxt-dsi/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19513/fi-bxt-dsi/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-bxt-dsi:         NOTRUN -> [FAIL][5] ([i915#2426])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19513/fi-bxt-dsi/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_create@basic:
    - fi-tgl-y:           [DMESG-WARN][6] ([i915#402]) -> [PASS][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/fi-tgl-y/igt@gem_exec_create@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19513/fi-tgl-y/igt@gem_exec_create@basic.html

  
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2895]: https://gitlab.freedesktop.org/drm/intel/issues/2895
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-jsl-2 


Build changes
-------------

  * Linux: CI_DRM_9686 -> Patchwork_19513

  CI-20190529: 20190529
  CI_DRM_9686: 8de0436dc0e777bbd5490d56134a838da4c19121 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5973: 7ae3d0d68e6bf4c5e404c87b570773d1b3173d47 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19513: cf90167ec8d878cf7739b728e49fd65c5203ac32 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cf90167ec8d8 drm/i915/hdcp: disable the QSES check for HDCP2.2 over MST
0f5367aacba6 drm/i915/hdcp: read RxInfo once when reading Send_Pairing_Info
c03a6673e642 drm/i915/hdcp: update cp_irq_count_cached in intel_dp_hdcp2_read_msg()
69e116124dea drm/i915/hdcp: Disable the QSES check for HDCP 1.4 over MST

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19513/index.html

--===============4143197121429476544==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/4] drm/i915/hdcp: Disable the QSES check for HDCP 1.4 over MST</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86325/">https://patchwork.freedesktop.org/series/86325/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19513/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19513/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9686 -&gt; Patchwork_19513</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19513/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19513 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19513/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/fi-bxt-dsi/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19513/fi-bxt-dsi/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2895">i915#2895</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19513/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_create@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9686/fi-tgl-y/igt@gem_exec_create@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19513/fi-tgl-y/igt@gem_exec_create@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-jsl-2 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9686 -&gt; Patchwork_19513</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9686: 8de0436dc0e777bbd5490d56134a838da4c19121 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5973: 7ae3d0d68e6bf4c5e404c87b570773d1b3173d47 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19513: cf90167ec8d878cf7739b728e49fd65c5203ac32 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>cf90167ec8d8 drm/i915/hdcp: disable the QSES check for HDCP2.2 over MST<br />
0f5367aacba6 drm/i915/hdcp: read RxInfo once when reading Send_Pairing_Info<br />
c03a6673e642 drm/i915/hdcp: update cp_irq_count_cached in intel_dp_hdcp2_read_msg()<br />
69e116124dea drm/i915/hdcp: Disable the QSES check for HDCP 1.4 over MST</p>

</body>
</html>

--===============4143197121429476544==--

--===============1206839730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1206839730==--
