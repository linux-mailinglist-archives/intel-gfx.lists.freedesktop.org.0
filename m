Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3E02D2AB6
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 13:27:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E00E6E0C4;
	Tue,  8 Dec 2020 12:27:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8E63A6E0C4;
 Tue,  8 Dec 2020 12:27:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 844DEA363B;
 Tue,  8 Dec 2020 12:27:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 08 Dec 2020 12:27:02 -0000
Message-ID: <160743042250.9599.9409581484362139437@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1607422863.git.jani.nikula@intel.com>
In-Reply-To: <cover.1607422863.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gvt=3A_make_headers_self-contained?=
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
Content-Type: multipart/mixed; boundary="===============1030454264=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1030454264==
Content-Type: multipart/alternative;
 boundary="===============0624859617852283441=="

--===============0624859617852283441==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gvt: make headers self-contained
URL   : https://patchwork.freedesktop.org/series/84678/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9458 -> Patchwork_19079
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19079/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9458 and Patchwork_19079:

### New CI tests (1) ###

  * boot:
    - Statuses : 1 fail(s) 39 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19079 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_vgem@basic-read:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9458/fi-tgl-y/igt@prime_vgem@basic-read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19079/fi-tgl-y/igt@prime_vgem@basic-read.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - fi-tgl-y:           [DMESG-WARN][3] ([i915#402]) -> [PASS][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9458/fi-tgl-y/igt@fbdev@read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19079/fi-tgl-y/igt@fbdev@read.html

  
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 40)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9458 -> Patchwork_19079

  CI-20190529: 20190529
  CI_DRM_9458: 7eeed064e42528645b01910bfd6249096ac0cf73 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5884: b1015a3267bbccb985b2fa7e3accb778c7bff0ed @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19079: fc9fd6a12b0a5ea2773969c55bf65514d4a86258 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fc9fd6a12b0a drm/i915/gvt: make mpt.h self-contained
aea7461b2bc1 drm/i915/gvt: make scheduler.h self-contained
b9e5378b4040 drm/i915/gvt: make gvt.h self-contained
22185b38ebcc drm/i915/gvt: make mmio_context.h self-contained
95eba910fc82 drm/i915/gvt: make interrupt.h self-contained
aaf3d9f6941e drm/i915/gvt: make gtt.h self-contained
0430340c747d drm/i915/gvt: make fb_decoder.h self-contained
835535436710 drm/i915/gvt: make execlist.h self-contained

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19079/index.html

--===============0624859617852283441==
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
<tr><td><b>Series:</b></td><td>drm/i915/gvt: make headers self-contained</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84678/">https://patchwork.freedesktop.org/series/84678/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19079/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19079/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9458 -&gt; Patchwork_19079</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19079/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9458 and Patchwork_19079:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 1 fail(s) 39 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19079 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@prime_vgem@basic-read:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9458/fi-tgl-y/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19079/fi-tgl-y/igt@prime_vgem@basic-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@fbdev@read:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9458/fi-tgl-y/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19079/fi-tgl-y/igt@fbdev@read.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9458 -&gt; Patchwork_19079</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9458: 7eeed064e42528645b01910bfd6249096ac0cf73 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5884: b1015a3267bbccb985b2fa7e3accb778c7bff0ed @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19079: fc9fd6a12b0a5ea2773969c55bf65514d4a86258 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fc9fd6a12b0a drm/i915/gvt: make mpt.h self-contained<br />
aea7461b2bc1 drm/i915/gvt: make scheduler.h self-contained<br />
b9e5378b4040 drm/i915/gvt: make gvt.h self-contained<br />
22185b38ebcc drm/i915/gvt: make mmio_context.h self-contained<br />
95eba910fc82 drm/i915/gvt: make interrupt.h self-contained<br />
aaf3d9f6941e drm/i915/gvt: make gtt.h self-contained<br />
0430340c747d drm/i915/gvt: make fb_decoder.h self-contained<br />
835535436710 drm/i915/gvt: make execlist.h self-contained</p>

</body>
</html>

--===============0624859617852283441==--

--===============1030454264==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1030454264==--
