Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC8731CEA2
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Feb 2021 18:08:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C0476E450;
	Tue, 16 Feb 2021 17:08:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9B2F489DEC;
 Tue, 16 Feb 2021 17:07:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 94718A3ECB;
 Tue, 16 Feb 2021 17:07:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chen Lin" <chen45464546@163.com>
Date: Tue, 16 Feb 2021 17:07:59 -0000
Message-ID: <161349527958.32284.3308713640818714201@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1613388619-3276-1-git-send-email-chen45464546@163.com>
In-Reply-To: <1613388619-3276-1-git-send-email-chen45464546@163.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_unused_function_pointer_typedef_long=5Fpulse=5F?=
 =?utf-8?q?detect=5Ffunc_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1963502337=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1963502337==
Content-Type: multipart/alternative;
 boundary="===============9219796718874792141=="

--===============9219796718874792141==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove unused function pointer typedef long_pulse_detect_func (rev2)
URL   : https://patchwork.freedesktop.org/series/87119/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9779 -> Patchwork_19686
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19686/index.html

Known issues
------------

  Here are the changes found in Patchwork_19686 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19686/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live@gt_pm:
    - fi-icl-y:           [PASS][3] -> [DMESG-FAIL][4] ([i915#2291])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/fi-icl-y/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19686/fi-icl-y/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][5] -> [FAIL][6] ([i915#1161])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19686/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19686/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (45 -> 40)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9779 -> Patchwork_19686

  CI-20190529: 20190529
  CI_DRM_9779: 775dbe8d5e041442fcadf63894468a63582a87a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6004: fe9ac2aeffc1828c6d61763a611a44fbd450aa96 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19686: 3a7104d966523ead73202d73d9543f1e51ee601a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3a7104d96652 drm/i915: Use function pointer typedef long_pulse_detect_func in intel_get_hpd_pins

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19686/index.html

--===============9219796718874792141==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove unused function pointer typedef long_pulse_detect_func (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87119/">https://patchwork.freedesktop.org/series/87119/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19686/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19686/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9779 -&gt; Patchwork_19686</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19686/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19686 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19686/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/fi-icl-y/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19686/fi-icl-y/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19686/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_vgem@basic-fence-flip:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19686/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 40)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9779 -&gt; Patchwork_19686</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9779: 775dbe8d5e041442fcadf63894468a63582a87a2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6004: fe9ac2aeffc1828c6d61763a611a44fbd450aa96 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19686: 3a7104d966523ead73202d73d9543f1e51ee601a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3a7104d96652 drm/i915: Use function pointer typedef long_pulse_detect_func in intel_get_hpd_pins</p>

</body>
</html>

--===============9219796718874792141==--

--===============1963502337==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1963502337==--
