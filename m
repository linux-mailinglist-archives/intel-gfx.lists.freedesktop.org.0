Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A984301229
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 03:01:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57E616EA25;
	Sat, 23 Jan 2021 02:01:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6DB8C6EA25;
 Sat, 23 Jan 2021 02:01:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 67F65A882F;
 Sat, 23 Jan 2021 02:01:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sat, 23 Jan 2021 02:01:48 -0000
Message-ID: <161136730839.14870.11216412170432027443@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210122205633.18492-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210122205633.18492-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remainder_of_dbuf_state_stuff_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============0172252467=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0172252467==
Content-Type: multipart/alternative;
 boundary="===============2821902706725393003=="

--===============2821902706725393003==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remainder of dbuf state stuff (rev3)
URL   : https://patchwork.freedesktop.org/series/83114/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9671 -> Patchwork_19469
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19469/index.html

Known issues
------------

  Here are the changes found in Patchwork_19469 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#1982] / [i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9671/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19469/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9671/fi-tgl-y/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19469/fi-tgl-y/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  
#### Possible fixes ####

  * igt@fbdev@write:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9671/fi-tgl-y/igt@fbdev@write.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19469/fi-tgl-y/igt@fbdev@write.html

  * igt@i915_module_load@reload:
    - fi-kbl-7500u:       [DMESG-WARN][7] ([i915#2605]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9671/fi-kbl-7500u/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19469/fi-kbl-7500u/igt@i915_module_load@reload.html

  
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (40 -> 36)
------------------------------

  Missing    (4): fi-byt-j1900 fi-ilk-m540 fi-bsw-cyan fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9671 -> Patchwork_19469

  CI-20190529: 20190529
  CI_DRM_9671: b91884d8aeac7dbad7ec084e4de0a5b2f596233b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5964: 0949766cb9846d7d55fac9cdf31d3d8e8ed1d0c6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19469: 1ab0168d4457ed5a8ca3837b94e9c616213d1465 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1ab0168d4457 drm/i915: Do a bit more initial readout for dbuf
a2e058af9aff drm/i915: Encapsulate dbuf state handling harder
c1606ef4d078 drm/i915: Extract intel_crtc_dbuf_weights()
18e3afb430ed drm/i915: Add pipe ddb entries into the dbuf state
5fd6292b07a2 drm/i915: Introduce skl_ddb_entry_for_slices()
e2ee6fe81124 drm/i915: Introduce intel_dbuf_slice_size()
f8f4731253f8 drm/i915: Pass the crtc to skl_compute_dbuf_slices()
f49e0164bdf9 drm/i915: Extract intel_crtc_ddb_weight()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19469/index.html

--===============2821902706725393003==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remainder of dbuf state stuff (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83114/">https://patchwork.freedesktop.org/series/83114/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19469/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19469/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9671 -&gt; Patchwork_19469</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19469/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19469 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9671/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19469/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9671/fi-tgl-y/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19469/fi-tgl-y/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9671/fi-tgl-y/igt@fbdev@write.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19469/fi-tgl-y/igt@fbdev@write.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9671/fi-kbl-7500u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19469/fi-kbl-7500u/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 36)</h2>
<p>Missing    (4): fi-byt-j1900 fi-ilk-m540 fi-bsw-cyan fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9671 -&gt; Patchwork_19469</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9671: b91884d8aeac7dbad7ec084e4de0a5b2f596233b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5964: 0949766cb9846d7d55fac9cdf31d3d8e8ed1d0c6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19469: 1ab0168d4457ed5a8ca3837b94e9c616213d1465 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1ab0168d4457 drm/i915: Do a bit more initial readout for dbuf<br />
a2e058af9aff drm/i915: Encapsulate dbuf state handling harder<br />
c1606ef4d078 drm/i915: Extract intel_crtc_dbuf_weights()<br />
18e3afb430ed drm/i915: Add pipe ddb entries into the dbuf state<br />
5fd6292b07a2 drm/i915: Introduce skl_ddb_entry_for_slices()<br />
e2ee6fe81124 drm/i915: Introduce intel_dbuf_slice_size()<br />
f8f4731253f8 drm/i915: Pass the crtc to skl_compute_dbuf_slices()<br />
f49e0164bdf9 drm/i915: Extract intel_crtc_ddb_weight()</p>

</body>
</html>

--===============2821902706725393003==--

--===============0172252467==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0172252467==--
