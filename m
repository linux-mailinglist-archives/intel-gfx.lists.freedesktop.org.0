Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC174C0E57
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 09:38:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30A6F10F0F5;
	Wed, 23 Feb 2022 08:38:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8B2F110F0F6;
 Wed, 23 Feb 2022 08:38:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86222AADD3;
 Wed, 23 Feb 2022 08:38:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5534144472664813114=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Cheng" <michael.cheng@intel.com>
Date: Wed, 23 Feb 2022 08:38:35 -0000
Message-ID: <164560551551.25288.4455692390570349360@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220223055900.415627-1-michael.cheng@intel.com>
In-Reply-To: <20220223055900.415627-1-michael.cheng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgVXNl?=
 =?utf-8?q?_drm=5Fclflush*_instead_of_clflush_=28rev10=29?=
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

--===============5534144472664813114==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Use drm_clflush* instead of clflush (rev10)
URL   : https://patchwork.freedesktop.org/series/99450/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11269 -> Patchwork_22366
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22366/index.html

Participating hosts (16 -> 16)
------------------------------

  Additional (1): bat-rpls-2 
  Missing    (1): fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_22366 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][1] -> [DMESG-FAIL][2] ([i915#5026])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11269/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22366/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@runner@aborted:
    - fi-blb-e6850:       NOTRUN -> [FAIL][3] ([fdo#109271] / [i915#2403] / [i915#2426] / [i915#4312])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22366/fi-blb-e6850/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@perf:
    - {fi-tgl-dsi}:       [DMESG-WARN][4] ([i915#2867]) -> [PASS][5] +17 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11269/fi-tgl-dsi/igt@i915_selftest@live@perf.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22366/fi-tgl-dsi/igt@i915_selftest@live@perf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898
  [i915#5026]: https://gitlab.freedesktop.org/drm/intel/issues/5026


Build changes
-------------

  * Linux: CI_DRM_11269 -> Patchwork_22366

  CI-20190529: 20190529
  CI_DRM_11269: 09d2de01f86139b074e80a1245e824311157aae9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6352: 11b4d227d8f0efad522519c8fd9525774247c8d8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22366: 5a4f7d6bae061f39308ea3055eafbdfbdb0b9543 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5a4f7d6bae06 drm/i915/gt: replace cache_clflush_range
70b3d4fedcc1 drm/i915/: Re-work clflush_write32
8b02f7f23860 drm/i915/gt: Re-work reset_csb
7f401242b602 drm/i915/gt: Drop invalidate_csb_entries
2b91c9fe06d4 drm/i915/gt: Re-work intel_write_status_page
0bcb5f73bfd4 drm: Add arch arm64 for drm_clflush_virt_range

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22366/index.html

--===============5534144472664813114==
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
<tr><td><b>Series:</b></td><td>Use drm_clflush* instead of clflush (rev10)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99450/">https://patchwork.freedesktop.org/series/99450/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22366/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22366/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11269 -&gt; Patchwork_22366</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22366/index.html</p>
<h2>Participating hosts (16 -&gt; 16)</h2>
<p>Additional (1): bat-rpls-2 <br />
  Missing    (1): fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22366 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11269/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22366/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5026">i915#5026</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22366/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@perf:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11269/fi-tgl-dsi/igt@i915_selftest@live@perf.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22366/fi-tgl-dsi/igt@i915_selftest@live@perf.html">PASS</a> +17 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11269 -&gt; Patchwork_22366</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11269: 09d2de01f86139b074e80a1245e824311157aae9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6352: 11b4d227d8f0efad522519c8fd9525774247c8d8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22366: 5a4f7d6bae061f39308ea3055eafbdfbdb0b9543 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5a4f7d6bae06 drm/i915/gt: replace cache_clflush_range<br />
70b3d4fedcc1 drm/i915/: Re-work clflush_write32<br />
8b02f7f23860 drm/i915/gt: Re-work reset_csb<br />
7f401242b602 drm/i915/gt: Drop invalidate_csb_entries<br />
2b91c9fe06d4 drm/i915/gt: Re-work intel_write_status_page<br />
0bcb5f73bfd4 drm: Add arch arm64 for drm_clflush_virt_range</p>

</body>
</html>

--===============5534144472664813114==--
