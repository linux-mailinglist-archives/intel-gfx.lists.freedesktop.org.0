Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E895E626AB7
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Nov 2022 17:59:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30FA310E12C;
	Sat, 12 Nov 2022 16:59:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5BE9A10E12C;
 Sat, 12 Nov 2022 16:59:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5634DAAA91;
 Sat, 12 Nov 2022 16:59:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8940402605878445601=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sat, 12 Nov 2022 16:59:17 -0000
Message-ID: <166827235733.14831.11592056164351911058@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Finish_=28de=29gamma_readout_=28rev6=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8940402605878445601==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Finish (de)gamma readout (rev6)
URL   : https://patchwork.freedesktop.org/series/79614/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12372 -> Patchwork_79614v6
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_79614v6 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_79614v6, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v6/index.html

Participating hosts (41 -> 38)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (4): fi-ctg-p8600 bat-rpls-2 fi-bdw-samus fi-tgl-dsi 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_79614v6:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - bat-adlp-4:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v6/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_79614v6 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][3] -> [INCOMPLETE][4] ([i915#4785])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v6/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][5] ([fdo#109271]) +43 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v6/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - bat-adlp-4:         NOTRUN -> [FAIL][6] ([i915#4312])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v6/bat-adlp-4/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][7] ([i915#2867]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v6/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997


Build changes
-------------

  * Linux: CI_DRM_12372 -> Patchwork_79614v6

  CI-20190529: 20190529
  CI_DRM_12372: 2cc304afd4967ceffd14940ff73a8beb31778f90 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7051: 7da9f813cdacb80d4471fc6ddb493bae9c46913d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_79614v6: 2cc304afd4967ceffd14940ff73a8beb31778f90 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

cf8e629ae806 drm/i915: Do state check for color management changes
31e3f4396c2c drm/i915: Add 10bit gamma mode for gen2/3
2adbc2e2d40a drm/i915: Use gamma LUT for RGB limited range compression
f3c9ebec384c drm/i915: Use hw degamma LUT for sw gamma on glk with YCbCr output
1b55616a06bc drm/i915: Rework legacy LUT handling
b873b1ac8220 drm/i915: Finish the LUT state checker
56baae9342a2 drm/i915: Make .read_luts() mandatory
fe09d976f2d3 drm/i915: Make ilk_read_luts() capable of degamma readout
e2fb20358ecf drm/i915: Add gamma/degamma readout for ivb/hsw
710008bf8b14 drm/i915: Add gamma/degamma readout for bdw+
59bb3ba3495f drm/i915: Read out CHV CGM degamma
5a0ea5b840f5 drm/i915: Add glk+ degamma readout
60e1837ea4f3 drm/i915: Fix adl+ degamma LUT size
80a47cfc5f6a drm/i915: Reorder 12.4 lut udw vs. ldw functions
fc304c5ebe53 drm/i915: Clean up chv CGM (de)gamma defines
2a37ec383692 drm/i915: Clean up 12.4bit precision palette defines
06e54473ca28 drm/i915: Clean up 10bit precision palette defines
95afcbff0c10 drm/i915: Clean up legacy palette defines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v6/index.html

--===============8940402605878445601==
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
<tr><td><b>Series:</b></td><td>drm/i915: Finish (de)gamma readout (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79614/">https://patchwork.freedesktop.org/series/79614/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12372 -&gt; Patchwork_79614v6</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_79614v6 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_79614v6, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v6/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (4): fi-ctg-p8600 bat-rpls-2 fi-bdw-samus fi-tgl-dsi </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_79614v6:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_rpm@basic-pci-d3-state:<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v6/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_79614v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v6/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v6/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +43 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v6/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0@smem:<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v6/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12372 -&gt; Patchwork_79614v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12372: 2cc304afd4967ceffd14940ff73a8beb31778f90 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7051: 7da9f813cdacb80d4471fc6ddb493bae9c46913d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_79614v6: 2cc304afd4967ceffd14940ff73a8beb31778f90 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>cf8e629ae806 drm/i915: Do state check for color management changes<br />
31e3f4396c2c drm/i915: Add 10bit gamma mode for gen2/3<br />
2adbc2e2d40a drm/i915: Use gamma LUT for RGB limited range compression<br />
f3c9ebec384c drm/i915: Use hw degamma LUT for sw gamma on glk with YCbCr output<br />
1b55616a06bc drm/i915: Rework legacy LUT handling<br />
b873b1ac8220 drm/i915: Finish the LUT state checker<br />
56baae9342a2 drm/i915: Make .read_luts() mandatory<br />
fe09d976f2d3 drm/i915: Make ilk_read_luts() capable of degamma readout<br />
e2fb20358ecf drm/i915: Add gamma/degamma readout for ivb/hsw<br />
710008bf8b14 drm/i915: Add gamma/degamma readout for bdw+<br />
59bb3ba3495f drm/i915: Read out CHV CGM degamma<br />
5a0ea5b840f5 drm/i915: Add glk+ degamma readout<br />
60e1837ea4f3 drm/i915: Fix adl+ degamma LUT size<br />
80a47cfc5f6a drm/i915: Reorder 12.4 lut udw vs. ldw functions<br />
fc304c5ebe53 drm/i915: Clean up chv CGM (de)gamma defines<br />
2a37ec383692 drm/i915: Clean up 12.4bit precision palette defines<br />
06e54473ca28 drm/i915: Clean up 10bit precision palette defines<br />
95afcbff0c10 drm/i915: Clean up legacy palette defines</p>

</body>
</html>

--===============8940402605878445601==--
