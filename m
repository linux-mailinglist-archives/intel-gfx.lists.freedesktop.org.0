Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9EE4011D1
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Sep 2021 23:56:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13BF189AB5;
	Sun,  5 Sep 2021 21:56:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9B78389AB3;
 Sun,  5 Sep 2021 21:56:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 94C17AA0EA;
 Sun,  5 Sep 2021 21:56:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7568711209393366614=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anisse Astier" <anisse@astier.eu>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 05 Sep 2021 21:56:14 -0000
Message-ID: <163087897458.8929.15907400303859638862@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210905211226.3525-1-anisse@astier.eu>
In-Reply-To: <20210905211226.3525-1-anisse@astier.eu>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgR1BE?=
 =?utf-8?q?_Win_Max_display_fixes_=28rev5=29?=
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

--===============7568711209393366614==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: GPD Win Max display fixes (rev5)
URL   : https://patchwork.freedesktop.org/series/90483/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10551 -> Patchwork_20962
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20962/index.html

Known issues
------------

  Here are the changes found in Patchwork_20962 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [PASS][1] -> [INCOMPLETE][2] ([i915#2940])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10551/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20962/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][3] -> [INCOMPLETE][4] ([i915#3921])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10551/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20962/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][5] ([fdo#109271] / [i915#1436] / [i915#3428])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20962/fi-bsw-kefka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [DMESG-WARN][6] ([i915#1982]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10551/fi-kbl-soraka/igt@i915_module_load@reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20962/fi-kbl-soraka/igt@i915_module_load@reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921


Participating hosts (46 -> 39)
------------------------------

  Missing    (7): bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10551 -> Patchwork_20962

  CI-20190529: 20190529
  CI_DRM_10551: 2b58e5151c7043a45a02238d63f7e17cf5cad46a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20962: c389bd6aaaf0388c57184f7a9762bd5bde6e22d9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c389bd6aaaf0 drm: Add orientation quirk for GPD Win Max
539314301edd drm/i915/opregion: add support for mailbox #5 EDID

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20962/index.html

--===============7568711209393366614==
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
<tr><td><b>Series:</b></td><td>GPD Win Max display fixes (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90483/">https://patchwork.freedesktop.org/series/90483/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20962/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20962/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10551 -&gt; Patchwork_20962</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20962/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20962 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10551/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20962/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10551/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20962/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20962/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10551/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20962/fi-kbl-soraka/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (46 -&gt; 39)</h2>
<p>Missing    (7): bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10551 -&gt; Patchwork_20962</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10551: 2b58e5151c7043a45a02238d63f7e17cf5cad46a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20962: c389bd6aaaf0388c57184f7a9762bd5bde6e22d9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c389bd6aaaf0 drm: Add orientation quirk for GPD Win Max<br />
539314301edd drm/i915/opregion: add support for mailbox #5 EDID</p>

</body>
</html>

--===============7568711209393366614==--
