Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 040F62CF63B
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 22:31:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D99446EC78;
	Fri,  4 Dec 2020 21:30:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B5AC96EC78;
 Fri,  4 Dec 2020 21:30:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD330A9A42;
 Fri,  4 Dec 2020 21:30:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 04 Dec 2020 21:30:57 -0000
Message-ID: <160711745770.27542.2848585876894066125@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201204182309.14213-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201204182309.14213-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Reduce_duplicated_switch_cases_in_hpd_code?=
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
Content-Type: multipart/mixed; boundary="===============0068674371=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0068674371==
Content-Type: multipart/alternative;
 boundary="===============7017659650889201789=="

--===============7017659650889201789==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Reduce duplicated switch cases in hpd code
URL   : https://patchwork.freedesktop.org/series/84593/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9444 -> Patchwork_19063
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19063 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19063, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19063/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19063:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-bsw-kefka:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19063/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9444 and Patchwork_19063:

### New CI tests (1) ###

  * boot:
    - Statuses : 1 fail(s) 38 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19063 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][3] -> [INCOMPLETE][4] ([i915#1037] / [i915#2276])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/fi-icl-y/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19063/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/fi-tgl-y/igt@vgem_basic@setversion.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19063/fi-tgl-y/igt@vgem_basic@setversion.html

  
#### Possible fixes ####

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19063/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#2276]: https://gitlab.freedesktop.org/drm/intel/issues/2276
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9444 -> Patchwork_19063

  CI-20190529: 20190529
  CI_DRM_9444: cee8f6ace633b555c64b14938577e6da02710a0b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5881: 10d4e2e9177eb747b9f2ab9122e3ab60e91654fb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19063: ea2f55cba539f1e9f1a54279904d7392351f6dc8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ea2f55cba539 drm/i915: Reduce duplicated switch cases in hpd code

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19063/index.html

--===============7017659650889201789==
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
<tr><td><b>Series:</b></td><td>drm/i915: Reduce duplicated switch cases in hpd code</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84593/">https://patchwork.freedesktop.org/series/84593/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19063/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19063/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9444 -&gt; Patchwork_19063</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19063 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19063, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19063/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19063:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_backlight@basic-brightness:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19063/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9444 and Patchwork_19063:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 1 fail(s) 38 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19063 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19063/fi-icl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2276">i915#2276</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@setversion:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/fi-tgl-y/igt@vgem_basic@setversion.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19063/fi-tgl-y/igt@vgem_basic@setversion.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_self_import@basic-with_one_bo_two_files:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9444/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19063/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9444 -&gt; Patchwork_19063</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9444: cee8f6ace633b555c64b14938577e6da02710a0b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5881: 10d4e2e9177eb747b9f2ab9122e3ab60e91654fb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19063: ea2f55cba539f1e9f1a54279904d7392351f6dc8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ea2f55cba539 drm/i915: Reduce duplicated switch cases in hpd code</p>

</body>
</html>

--===============7017659650889201789==--

--===============0068674371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0068674371==--
