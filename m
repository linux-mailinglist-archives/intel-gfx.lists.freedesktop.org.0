Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C6D42F673
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 17:00:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32F686EDCA;
	Fri, 15 Oct 2021 15:00:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 16BDB6EDCA;
 Fri, 15 Oct 2021 15:00:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0E87DAA0EA;
 Fri, 15 Oct 2021 15:00:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1974854228431824765=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 15:00:26 -0000
Message-ID: <163431002602.29319.10695159407218459099@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_up_DP_DFP_4=3A2=3A0_handling_more?=
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

--===============1974854228431824765==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix up DP DFP 4:2:0 handling more
URL   : https://patchwork.freedesktop.org/series/95881/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10743 -> Patchwork_21355
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/index.html

Known issues
------------

  Here are the changes found in Patchwork_21355 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][1] -> [INCOMPLETE][2] ([i915#3921])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10743/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][3] ([fdo#109271]) +48 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@userptr:
    - fi-pnv-d510:        [INCOMPLETE][4] ([i915#299]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10743/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html

  * igt@kms_flip@basic-flip-vs-modeset@c-dp1:
    - fi-cfl-8109u:       [FAIL][6] ([i915#4165]) -> [PASS][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10743/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html

  * igt@kms_flip@basic-plain-flip@c-dp2:
    - fi-cfl-8109u:       [DMESG-WARN][8] ([i915#295]) -> [PASS][9] +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10743/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][10] ([i915#4269]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10743/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@kms_flip@basic-plain-flip@c-dp1:
    - fi-cfl-8109u:       [DMESG-WARN][12] ([i915#295]) -> [FAIL][13] ([i915#4165])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10743/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4165]: https://gitlab.freedesktop.org/drm/intel/issues/4165
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269


Participating hosts (39 -> 34)
------------------------------

  Missing    (5): fi-jsl-1 fi-bdw-5557u bat-dg1-6 fi-hsw-4200u fi-bsw-cyan 


Build changes
-------------

  * Linux: CI_DRM_10743 -> Patchwork_21355

  CI-20190529: 20190529
  CI_DRM_10743: 12c88a23f431212268d7d4d16d313f1d8661c7e5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6250: 3c2ac88757f0d0ac9450487d314fcaceebc8bc26 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21355: 87eef2b6e776be70f6074713edc4f492afa4bb38 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

87eef2b6e776 drm/i915/dp: Disable DFP RGB->YCbCr conversion for now
5cb79817652f drm/i915/dp: Fix DFP rgb->ycbcr conversion matrix
691f4682d81c drm/i915/dp: Duplicate native HDMI TMDS clock limit handling for DP HDMI DFPs
4fa9d8219ec9 drm/i915/dp: Add support for "4:2:0 also" modes for DP
ec45d7b88657 drm/i915/dp: Rework HDMI DFP TMDS clock handling
86076600d89d drm/i915/dp: Make intel_dp_output_format() usable for "4:2:0 also" modes
d1f3604570ee drm/i915/dp: Pass around intel_connector rather than drm_connector
77d2c530f843 drm/i915/dp: Reorder intel_dp_compute_config() a bit
759fa68f70a0 drm/i915/dp: s/intel_dp_hdmi_ycbcr420/intel_dp_is_ycbcr420/
04ab0ef5104e drm/i915/dp: Extract intel_dp_has_audio()
3c125fcf5842 drm/i915/dp: Respect the sink's max TMDS clock when dealing with DP->HDMI DFPs
b20dd4ac5782 drm/i915/dp: Extract intel_dp_tmds_clock_valid()
a2ebf755d8ec drm/i915/dp: Reuse intel_hdmi_tmds_clock()
c1aab421454c drm/i915/hdmi: Simplify intel_hdmi_mode_clock_valid()
5300f80e58b7 drm/i915/hdmi: Clean up TMDS clock limit exceeding user mode handling
cfdd62a9b76f drm/i915/hdmi: Extract intel_hdmi_output_format()
2f30c6c7e076 drm/i915/hdmi: Unify "4:2:0 also" logic between .mode_valid() and .compute_config()
7d2c8095b108 drm/i915/hdmi: Introduce intel_hdmi_tmds_clock()
070dfafd959a drm/i915/hdmi: Introduce intel_hdmi_is_ycbr420()
da10a92856b4 drm/i915/hdmi: Split intel_hdmi_bpc_possible() to source vs. sink pair

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/index.html

--===============1974854228431824765==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix up DP DFP 4:2:0 handling more</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95881/">https://patchwork.freedesktop.org/series/95881/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10743 -&gt; Patchwork_21355</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21355 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10743/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +48 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10743/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dp1:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10743/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4165">i915#4165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp2:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10743/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10743/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_flip@basic-plain-flip@c-dp1:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10743/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21355/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4165">i915#4165</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 34)</h2>
<p>Missing    (5): fi-jsl-1 fi-bdw-5557u bat-dg1-6 fi-hsw-4200u fi-bsw-cyan </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10743 -&gt; Patchwork_21355</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10743: 12c88a23f431212268d7d4d16d313f1d8661c7e5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6250: 3c2ac88757f0d0ac9450487d314fcaceebc8bc26 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21355: 87eef2b6e776be70f6074713edc4f492afa4bb38 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>87eef2b6e776 drm/i915/dp: Disable DFP RGB-&gt;YCbCr conversion for now<br />
5cb79817652f drm/i915/dp: Fix DFP rgb-&gt;ycbcr conversion matrix<br />
691f4682d81c drm/i915/dp: Duplicate native HDMI TMDS clock limit handling for DP HDMI DFPs<br />
4fa9d8219ec9 drm/i915/dp: Add support for "4:2:0 also" modes for DP<br />
ec45d7b88657 drm/i915/dp: Rework HDMI DFP TMDS clock handling<br />
86076600d89d drm/i915/dp: Make intel_dp_output_format() usable for "4:2:0 also" modes<br />
d1f3604570ee drm/i915/dp: Pass around intel_connector rather than drm_connector<br />
77d2c530f843 drm/i915/dp: Reorder intel_dp_compute_config() a bit<br />
759fa68f70a0 drm/i915/dp: s/intel_dp_hdmi_ycbcr420/intel_dp_is_ycbcr420/<br />
04ab0ef5104e drm/i915/dp: Extract intel_dp_has_audio()<br />
3c125fcf5842 drm/i915/dp: Respect the sink's max TMDS clock when dealing with DP-&gt;HDMI DFPs<br />
b20dd4ac5782 drm/i915/dp: Extract intel_dp_tmds_clock_valid()<br />
a2ebf755d8ec drm/i915/dp: Reuse intel_hdmi_tmds_clock()<br />
c1aab421454c drm/i915/hdmi: Simplify intel_hdmi_mode_clock_valid()<br />
5300f80e58b7 drm/i915/hdmi: Clean up TMDS clock limit exceeding user mode handling<br />
cfdd62a9b76f drm/i915/hdmi: Extract intel_hdmi_output_format()<br />
2f30c6c7e076 drm/i915/hdmi: Unify "4:2:0 also" logic between .mode_valid() and .compute_config()<br />
7d2c8095b108 drm/i915/hdmi: Introduce intel_hdmi_tmds_clock()<br />
070dfafd959a drm/i915/hdmi: Introduce intel_hdmi_is_ycbr420()<br />
da10a92856b4 drm/i915/hdmi: Split intel_hdmi_bpc_possible() to source vs. sink pair</p>

</body>
</html>

--===============1974854228431824765==--
