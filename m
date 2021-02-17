Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7BE31DB73
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 15:27:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFED66E0A1;
	Wed, 17 Feb 2021 14:27:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 81F9389C17;
 Wed, 17 Feb 2021 14:27:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A4EBA8169;
 Wed, 17 Feb 2021 14:27:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 17 Feb 2021 14:27:29 -0000
Message-ID: <161357204946.25001.1196247267062920286@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210215155616.26330-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210215155616.26330-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Wrap_all_access_to_i915?=
 =?utf-8?b?X3ZtYS5ub2RlLnN0YXJ0fHNpemUgKHJldjMp?=
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
Content-Type: multipart/mixed; boundary="===============1966647230=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1966647230==
Content-Type: multipart/alternative;
 boundary="===============1698480312081038936=="

--===============1698480312081038936==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915: Wrap all access to i915_vma.node.start|size (rev3)
URL   : https://patchwork.freedesktop.org/series/87102/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9781 -> Patchwork_19693
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19693/index.html

Known issues
------------

  Here are the changes found in Patchwork_19693 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-kbl-7500u:       [PASS][1] -> [DMESG-WARN][2] ([i915#2605])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9781/fi-kbl-7500u/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19693/fi-kbl-7500u/igt@i915_module_load@reload.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9781/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19693/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html

  
#### Possible fixes ####

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9781/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19693/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9781 -> Patchwork_19693

  CI-20190529: 20190529
  CI_DRM_9781: fcfb6981006e381b8ee4a97152991a615161e003 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6005: b69a3c463f0aec46b19c14ac24351d292cb11c08 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19693: dde47dc31b1385bb12afd61f5b6a98bf49d53c4d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

dde47dc31b13 drm/i915: Refine VT-d scanout workaround
a19a594007ea drm/i915: Introduce guard pages to i915_vma
6e60f8692b68 drm/i915: Wrap all access to i915_vma.node.start|size

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19693/index.html

--===============1698480312081038936==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915: Wrap all access to i915_vma.node.start|size (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87102/">https://patchwork.freedesktop.org/series/87102/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19693/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19693/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9781 -&gt; Patchwork_19693</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19693/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19693 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9781/fi-kbl-7500u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19693/fi-kbl-7500u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-bad-modifier:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9781/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19693/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_getparams_basic@basic-subslice-total:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9781/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19693/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9781 -&gt; Patchwork_19693</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9781: fcfb6981006e381b8ee4a97152991a615161e003 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6005: b69a3c463f0aec46b19c14ac24351d292cb11c08 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19693: dde47dc31b1385bb12afd61f5b6a98bf49d53c4d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>dde47dc31b13 drm/i915: Refine VT-d scanout workaround<br />
a19a594007ea drm/i915: Introduce guard pages to i915_vma<br />
6e60f8692b68 drm/i915: Wrap all access to i915_vma.node.start|size</p>

</body>
</html>

--===============1698480312081038936==--

--===============1966647230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1966647230==--
