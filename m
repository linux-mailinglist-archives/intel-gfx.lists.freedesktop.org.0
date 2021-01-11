Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 031152F1C35
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 18:23:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D77FE89BC2;
	Mon, 11 Jan 2021 17:23:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C821589BC2;
 Mon, 11 Jan 2021 17:23:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C147AA8835;
 Mon, 11 Jan 2021 17:23:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 11 Jan 2021 17:23:07 -0000
Message-ID: <161038578776.25132.10803967367350974707@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210111163711.12913-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210111163711.12913-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Async_flips_for_all_ilk+_platforms_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1743013664=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1743013664==
Content-Type: multipart/alternative;
 boundary="===============8758853975881642607=="

--===============8758853975881642607==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Async flips for all ilk+ platforms (rev2)
URL   : https://patchwork.freedesktop.org/series/85627/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9580 -> Patchwork_19315
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19315/index.html

Known issues
------------

  Here are the changes found in Patchwork_19315 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9580/fi-tgl-y/igt@gem_flink_basic@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19315/fi-tgl-y/igt@gem_flink_basic@basic.html

  * igt@gem_huc_copy@huc-copy:
    - fi-byt-j1900:       NOTRUN -> [SKIP][3] ([fdo#109271]) +27 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19315/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][4] -> [SKIP][5] ([fdo#109271])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9580/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19315/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-byt-j1900:       NOTRUN -> [SKIP][6] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19315/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Possible fixes ####

  * igt@vgem_basic@dmabuf-fence-before:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9580/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19315/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 38)
------------------------------

  Additional (1): fi-byt-j1900 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-cml-drallion fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9580 -> Patchwork_19315

  CI-20190529: 20190529
  CI_DRM_9580: 117f9c9bca0ebb0e22ce282eab531575f5154055 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5953: 65c5eea699141e6f942ce0a8fc85db76ce53cd19 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19315: b5239b3cf416cfc73090ddd8ec7bba725278ecaa @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b5239b3cf416 drm/i915: Implement async flips for vlv/chv
6601effeab9e drm/i915: Implement async flip for ilk/snb
711c4297a93a drm/i915: Implement async flip for ivb/hsw
2fd4cac00c8a drm/i915: Implement async flips for bdw
94917f63b8f7 drm/i915: Reuse the async_flip() hook for the async flip disable w/a
89770394ed91 drm/i915: Move the async_flip bit setup into the .async_flip() hook
9655ad213677 drm/i915: Add plane vfuncs to enable/disable flip_done interrupt
2e1ed4a184df drm/i915: Generalize the async flip capability check
87a8d5da85f9 drm/i915: Drop redundant parens
492c717aeb30 drm/i915: Limit plane stride to below TILEOFF.x limit
27179a0516e5 drm/i915: WARN if plane src coords are too big

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19315/index.html

--===============8758853975881642607==
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
<tr><td><b>Series:</b></td><td>drm/i915: Async flips for all ilk+ platforms (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85627/">https://patchwork.freedesktop.org/series/85627/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19315/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19315/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9580 -&gt; Patchwork_19315</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19315/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19315 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_flink_basic@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9580/fi-tgl-y/igt@gem_flink_basic@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19315/fi-tgl-y/igt@gem_flink_basic@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19315/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9580/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19315/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19315/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@vgem_basic@dmabuf-fence-before:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9580/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19315/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Additional (1): fi-byt-j1900 <br />
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-cml-drallion fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9580 -&gt; Patchwork_19315</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9580: 117f9c9bca0ebb0e22ce282eab531575f5154055 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5953: 65c5eea699141e6f942ce0a8fc85db76ce53cd19 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19315: b5239b3cf416cfc73090ddd8ec7bba725278ecaa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b5239b3cf416 drm/i915: Implement async flips for vlv/chv<br />
6601effeab9e drm/i915: Implement async flip for ilk/snb<br />
711c4297a93a drm/i915: Implement async flip for ivb/hsw<br />
2fd4cac00c8a drm/i915: Implement async flips for bdw<br />
94917f63b8f7 drm/i915: Reuse the async_flip() hook for the async flip disable w/a<br />
89770394ed91 drm/i915: Move the async_flip bit setup into the .async_flip() hook<br />
9655ad213677 drm/i915: Add plane vfuncs to enable/disable flip_done interrupt<br />
2e1ed4a184df drm/i915: Generalize the async flip capability check<br />
87a8d5da85f9 drm/i915: Drop redundant parens<br />
492c717aeb30 drm/i915: Limit plane stride to below TILEOFF.x limit<br />
27179a0516e5 drm/i915: WARN if plane src coords are too big</p>

</body>
</html>

--===============8758853975881642607==--

--===============1743013664==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1743013664==--
