Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D78F31184F
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 03:36:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BC9F6F558;
	Sat,  6 Feb 2021 02:36:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BDD886F551;
 Sat,  6 Feb 2021 02:36:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B02ECA00E6;
 Sat,  6 Feb 2021 02:36:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Sat, 06 Feb 2021 02:36:24 -0000
Message-ID: <161257898469.3572.12477755757492886276@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210205234515.1216538-1-lyude@redhat.com>
In-Reply-To: <20210205234515.1216538-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Extract_DPCD_backlight_helpers_from_i915=2C_add_support_in_?=
 =?utf-8?q?nouveau_=28rev5=29?=
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
Content-Type: multipart/mixed; boundary="===============0497992536=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0497992536==
Content-Type: multipart/alternative;
 boundary="===============5147016335260010598=="

--===============5147016335260010598==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Extract DPCD backlight helpers from i915, add support in nouveau (rev5)
URL   : https://patchwork.freedesktop.org/series/84754/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9741 -> Patchwork_19615
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/index.html

Known issues
------------

  Here are the changes found in Patchwork_19615 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-glk-dsi:         [PASS][1] -> [DMESG-WARN][2] ([i915#2943])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-glk-dsi/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/fi-glk-dsi/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live@hangcheck:
    - fi-bxt-dsi:         [PASS][3] -> [INCOMPLETE][4] ([i915#2895])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-bxt-dsi/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/fi-bxt-dsi/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][5] -> [FAIL][6] ([i915#1372])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([i915#402])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  * igt@runner@aborted:
    - fi-bxt-dsi:         NOTRUN -> [FAIL][9] ([i915#2426])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/fi-bxt-dsi/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][10] ([i915#402]) -> [PASS][11] +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [FAIL][12] -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-tgl-u2/igt@i915_module_load@reload.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/fi-tgl-u2/igt@i915_module_load@reload.html

  
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2895]: https://gitlab.freedesktop.org/drm/intel/issues/2895
  [i915#2943]: https://gitlab.freedesktop.org/drm/intel/issues/2943
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 37)
------------------------------

  Missing    (7): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9741 -> Patchwork_19615

  CI-20190529: 20190529
  CI_DRM_9741: 439ad4a70b3d6663de543ee56478d64b16cca1cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5994: 53268fc5e5dde45a16e7185023a42296e3599e6e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19615: da4a690db4b7aefda5e83942348688dfc37f117f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

da4a690db4b7 drm/dp: Extract i915's eDP backlight code into DRM helpers
9a5a96645e75 drm/i915/dpcd_bl: Print return codes for VESA backlight failures
bb9ab8c80a61 drm/i915/dpcd_bl: Return early in vesa_calc_max_backlight if we can't read PWMGEN_BIT_COUNT
d023a0b271b0 drm/i915/dpcd_bl: Move VESA backlight enabling code closer together
8e101f1fa419 drm/i915/dpcd_bl: Cache some backlight capabilities in intel_panel.backlight
e9190019cd99 drm/i915/dpcd_bl: Cleanup intel_dp_aux_vesa_enable_backlight() a bit
c05e38fb6b81 drm/i915/dpcd_bl: Handle drm_dpcd_read/write() return values correctly
948c71628815 drm/i915/dpcd_bl: Remove redundant AUX backlight frequency calculations
755b16f66afc drm/nouveau/kms: Don't probe eDP connectors more then once
990b106df931 drm/nouveau/kms/nv40-/backlight: Assign prop type once

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/index.html

--===============5147016335260010598==
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
<tr><td><b>Series:</b></td><td>drm: Extract DPCD backlight helpers from i915, add support in nouveau (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84754/">https://patchwork.freedesktop.org/series/84754/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9741 -&gt; Patchwork_19615</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19615 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-glk-dsi/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/fi-glk-dsi/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2943">i915#2943</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-bxt-dsi/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/fi-bxt-dsi/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2895">i915#2895</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9741/fi-tgl-u2/igt@i915_module_load@reload.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19615/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 37)</h2>
<p>Missing    (7): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9741 -&gt; Patchwork_19615</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9741: 439ad4a70b3d6663de543ee56478d64b16cca1cf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5994: 53268fc5e5dde45a16e7185023a42296e3599e6e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19615: da4a690db4b7aefda5e83942348688dfc37f117f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>da4a690db4b7 drm/dp: Extract i915's eDP backlight code into DRM helpers<br />
9a5a96645e75 drm/i915/dpcd_bl: Print return codes for VESA backlight failures<br />
bb9ab8c80a61 drm/i915/dpcd_bl: Return early in vesa_calc_max_backlight if we can't read PWMGEN_BIT_COUNT<br />
d023a0b271b0 drm/i915/dpcd_bl: Move VESA backlight enabling code closer together<br />
8e101f1fa419 drm/i915/dpcd_bl: Cache some backlight capabilities in intel_panel.backlight<br />
e9190019cd99 drm/i915/dpcd_bl: Cleanup intel_dp_aux_vesa_enable_backlight() a bit<br />
c05e38fb6b81 drm/i915/dpcd_bl: Handle drm_dpcd_read/write() return values correctly<br />
948c71628815 drm/i915/dpcd_bl: Remove redundant AUX backlight frequency calculations<br />
755b16f66afc drm/nouveau/kms: Don't probe eDP connectors more then once<br />
990b106df931 drm/nouveau/kms/nv40-/backlight: Assign prop type once</p>

</body>
</html>

--===============5147016335260010598==--

--===============0497992536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0497992536==--
