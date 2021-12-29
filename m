Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 697EF481768
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Dec 2021 23:58:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E1D410E182;
	Wed, 29 Dec 2021 22:58:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EE76D10E182;
 Wed, 29 Dec 2021 22:58:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EBBE7AA0EB;
 Wed, 29 Dec 2021 22:58:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8990685578140582767=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anisse Astier" <anisse@astier.eu>
Date: Wed, 29 Dec 2021 22:58:48 -0000
Message-ID: <164081872893.17180.3178585184615941550@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211229222200.53128-1-anisse@astier.eu>
In-Reply-To: <20211229222200.53128-1-anisse@astier.eu>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgR1BE?=
 =?utf-8?q?_Win_Max_display_fixes_=28rev7=29?=
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

--===============8990685578140582767==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: GPD Win Max display fixes (rev7)
URL   : https://patchwork.freedesktop.org/series/90483/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11039 -> Patchwork_21908
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/index.html

Participating hosts (42 -> 31)
------------------------------

  Missing    (11): fi-kbl-soraka bat-dg1-6 fi-tgl-u2 fi-tgl-dsi fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-pnv-d510 bat-rpls-1 bat-jsl-2 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_21908 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@bad-flink:
    - fi-skl-6600u:       [PASS][1] -> [FAIL][2] ([i915#4547])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html

  * igt@runner@aborted:
    - fi-skl-6600u:       NOTRUN -> [FAIL][3] ([i915#4312])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/fi-skl-6600u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][4] ([i915#4269]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][6] ([i915#3303]) -> [INCOMPLETE][7] ([i915#4785])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785


Build changes
-------------

  * Linux: CI_DRM_11039 -> Patchwork_21908

  CI-20190529: 20190529
  CI_DRM_11039: c90264924b9988493890773248bde3173a4866b4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6321: 85a5938090cd3da34e4fba8f541fbe240210b47d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21908: 8b5753e9c404ab1da33b5fe59b9daaa2ef0f4734 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8b5753e9c404 drm: Add orientation quirk for GPD Win Max
ace525da9b7f drm/i915/opregion: add support for mailbox #5 EDID

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/index.html

--===============8990685578140582767==
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
<tr><td><b>Series:</b></td><td>GPD Win Max display fixes (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90483/">https://patchwork.freedesktop.org/series/90483/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11039 -&gt; Patchwork_21908</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/index.html</p>
<h2>Participating hosts (42 -&gt; 31)</h2>
<p>Missing    (11): fi-kbl-soraka bat-dg1-6 fi-tgl-u2 fi-tgl-dsi fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-pnv-d510 bat-rpls-1 bat-jsl-2 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21908 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11039/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21908/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11039 -&gt; Patchwork_21908</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11039: c90264924b9988493890773248bde3173a4866b4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6321: 85a5938090cd3da34e4fba8f541fbe240210b47d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21908: 8b5753e9c404ab1da33b5fe59b9daaa2ef0f4734 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8b5753e9c404 drm: Add orientation quirk for GPD Win Max<br />
ace525da9b7f drm/i915/opregion: add support for mailbox #5 EDID</p>

</body>
</html>

--===============8990685578140582767==--
