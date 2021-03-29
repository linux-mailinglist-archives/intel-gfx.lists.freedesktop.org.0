Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1CE34D26D
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Mar 2021 16:33:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01CD06E426;
	Mon, 29 Mar 2021 14:33:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C53426E417;
 Mon, 29 Mar 2021 14:33:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BD55DA8830;
 Mon, 29 Mar 2021 14:33:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 29 Mar 2021 14:33:26 -0000
Message-ID: <161702840674.26038.3572251471574027507@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1617024940.git.jani.nikula@intel.com>
In-Reply-To: <cover.1617024940.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_overhaul_displayid_iterator_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============0749094523=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0749094523==
Content-Type: multipart/alternative;
 boundary="===============8422304730645706966=="

--===============8422304730645706966==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: overhaul displayid iterator (rev3)
URL   : https://patchwork.freedesktop.org/series/87802/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9912 -> Patchwork_19875
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19875/index.html

Known issues
------------

  Here are the changes found in Patchwork_19875 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9912/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19875/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#3278]: https://gitlab.freedesktop.org/drm/intel/issues/3278
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9912 -> Patchwork_19875

  CI-20190529: 20190529
  CI_DRM_9912: b402d48c2c4f33ad87bb5f705391ce40a0ac84ce @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6047: 3887134e739f480cefe1dc7f13eb54f7bf3ca27f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19875: fc942436e112d2a319b7b93ed14c5f0849747030 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fc942436e112 drm/displayid: rename displayid_hdr to displayid_header
bf3edd798098 drm/displayid: allow data blocks with 0 payload length
7a3c9bd06b98 drm/edid: use the new displayid iterator for tile info
b4a04fbb258a drm/edid: use the new displayid iterator for finding CEA extension
4096d6cff65a drm/edid: use the new displayid iterator for detailed modes
df2339d6ea39 drm/displayid: add new displayid section/block iterators
d0337807fed3 drm/displayid: add separate drm_displayid.c
7e7342d215ff drm/edid: make a number of functions, parameters and variables const

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19875/index.html

--===============8422304730645706966==
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
<tr><td><b>Series:</b></td><td>drm/edid: overhaul displayid iterator (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87802/">https://patchwork.freedesktop.org/series/87802/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19875/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19875/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9912 -&gt; Patchwork_19875</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19875/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19875 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9912/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19875/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9912 -&gt; Patchwork_19875</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9912: b402d48c2c4f33ad87bb5f705391ce40a0ac84ce @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6047: 3887134e739f480cefe1dc7f13eb54f7bf3ca27f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19875: fc942436e112d2a319b7b93ed14c5f0849747030 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fc942436e112 drm/displayid: rename displayid_hdr to displayid_header<br />
bf3edd798098 drm/displayid: allow data blocks with 0 payload length<br />
7a3c9bd06b98 drm/edid: use the new displayid iterator for tile info<br />
b4a04fbb258a drm/edid: use the new displayid iterator for finding CEA extension<br />
4096d6cff65a drm/edid: use the new displayid iterator for detailed modes<br />
df2339d6ea39 drm/displayid: add new displayid section/block iterators<br />
d0337807fed3 drm/displayid: add separate drm_displayid.c<br />
7e7342d215ff drm/edid: make a number of functions, parameters and variables const</p>

</body>
</html>

--===============8422304730645706966==--

--===============0749094523==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0749094523==--
