Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C52605A9998
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 16:00:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FB0E890D2;
	Thu,  1 Sep 2022 14:00:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 05E6B10E67E;
 Thu,  1 Sep 2022 14:00:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F28A6A0099;
 Thu,  1 Sep 2022 14:00:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0331345974909437332=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 01 Sep 2022 14:00:35 -0000
Message-ID: <166204083595.11920.5924003013595591995@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1662036058.git.jani.nikula@intel.com>
In-Reply-To: <cover.1662036058.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_convert_to_using_is=5Fhdmi_and_has=5Faudio_from_display_inf?=
 =?utf-8?q?o?=
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

--===============0331345974909437332==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: convert to using is_hdmi and has_audio from display info
URL   : https://patchwork.freedesktop.org/series/108024/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12061 -> Patchwork_108024v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108024v1/index.html

Participating hosts (35 -> 35)
------------------------------

  Additional (1): bat-dg2-8 
  Missing    (1): fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_108024v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem:
    - fi-pnv-d510:        NOTRUN -> [DMESG-FAIL][1] ([i915#4528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108024v1/fi-pnv-d510/igt@i915_selftest@live@gem.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][2] ([i915#4312])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108024v1/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@guc:
    - {bat-rpls-1}:       [DMESG-WARN][3] ([i915#6471]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/bat-rpls-1/igt@i915_selftest@live@guc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108024v1/bat-rpls-1/igt@i915_selftest@live@guc.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [DMESG-FAIL][5] ([i915#4528]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108024v1/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-kefka:       [FAIL][7] ([i915#6298]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108024v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6471]: https://gitlab.freedesktop.org/drm/intel/issues/6471
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645


Build changes
-------------

  * Linux: CI_DRM_12061 -> Patchwork_108024v1

  CI-20190529: 20190529
  CI_DRM_12061: d25f068998ce803ef0a05883616344c0afcbc55a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6639: ba61c48dba71d5597d7297a07dc3e307665f961b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108024v1: d25f068998ce803ef0a05883616344c0afcbc55a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

cf6d1e71252a drm/rockchip: convert to using has_audio from display_info
996d7cf93006 drm/rockchip: cdn-dp: call drm_connector_update_edid_property() unconditionally
6abf43e98a1b drm/sti/sti_hdmi: convert to using is_hdmi from display info
6b3edf5831ad drm/i2c/tda998x: convert to using has_audio from display_info
b2bebb6fca8e drm/exynos: convert to using is_hdmi from display info
221630873846 drm/tegra: convert to using is_hdmi from display info
f03e00dd5889 drm/radeon: convert to using is_hdmi and has_audio from display info
42914fe2e19f drm/nouveau: convert to using is_hdmi and has_audio from display info
7aa208acdcf7 drm/edid: parse display info has_audio similar to is_hdmi

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108024v1/index.html

--===============0331345974909437332==
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
<tr><td><b>Series:</b></td><td>drm: convert to using is_hdmi and has_audio from display info</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108024/">https://patchwork.freedesktop.org/series/108024/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108024v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108024v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12061 -&gt; Patchwork_108024v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108024v1/index.html</p>
<h2>Participating hosts (35 -&gt; 35)</h2>
<p>Additional (1): bat-dg2-8 <br />
  Missing    (1): fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108024v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108024v1/fi-pnv-d510/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108024v1/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/bat-rpls-1/igt@i915_selftest@live@guc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6471">i915#6471</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108024v1/bat-rpls-1/igt@i915_selftest@live@guc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108024v1/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12061/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108024v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12061 -&gt; Patchwork_108024v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12061: d25f068998ce803ef0a05883616344c0afcbc55a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6639: ba61c48dba71d5597d7297a07dc3e307665f961b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108024v1: d25f068998ce803ef0a05883616344c0afcbc55a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>cf6d1e71252a drm/rockchip: convert to using has_audio from display_info<br />
996d7cf93006 drm/rockchip: cdn-dp: call drm_connector_update_edid_property() unconditionally<br />
6abf43e98a1b drm/sti/sti_hdmi: convert to using is_hdmi from display info<br />
6b3edf5831ad drm/i2c/tda998x: convert to using has_audio from display_info<br />
b2bebb6fca8e drm/exynos: convert to using is_hdmi from display info<br />
221630873846 drm/tegra: convert to using is_hdmi from display info<br />
f03e00dd5889 drm/radeon: convert to using is_hdmi and has_audio from display info<br />
42914fe2e19f drm/nouveau: convert to using is_hdmi and has_audio from display info<br />
7aa208acdcf7 drm/edid: parse display info has_audio similar to is_hdmi</p>

</body>
</html>

--===============0331345974909437332==--
