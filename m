Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B0536B768
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 19:03:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C9EB6E84F;
	Mon, 26 Apr 2021 17:03:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8167F6E0BA;
 Mon, 26 Apr 2021 17:03:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79156A0009;
 Mon, 26 Apr 2021 17:03:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
Date: Mon, 26 Apr 2021 17:03:35 -0000
Message-ID: <161945661547.18668.15350280340087004223@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210422160544.2427123-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210422160544.2427123-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Disable_PSR2_if_TGL_Display_stepping_is_B1_fro?=
 =?utf-8?q?m_A0_=28rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============0155171651=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0155171651==
Content-Type: multipart/alternative;
 boundary="===============2638039165198733920=="

--===============2638039165198733920==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Disable PSR2 if TGL Display stepping is B1 from A0 (rev4)
URL   : https://patchwork.freedesktop.org/series/89348/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10009 -> Patchwork_19991
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19991/index.html

Known issues
------------

  Here are the changes found in Patchwork_19991 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-soraka:      [DMESG-WARN][1] ([i915#1982]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10009/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19991/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html

  
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982


Participating hosts (40 -> 37)
------------------------------

  Missing    (3): fi-bsw-cyan fi-bdw-samus fi-bsw-n3050 


Build changes
-------------

  * Linux: CI_DRM_10009 -> Patchwork_19991

  CI-20190529: 20190529
  CI_DRM_10009: b26f008c13c6bb6a8f46a670fe0e72d77de9c531 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6075: ccf602c569257291045415ff504a6d2460986c28 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19991: 433075cc93cb5e1bef16249d64f7a1ba7fb8fe54 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

433075cc93cb drm/i915/display: Disable PSR2 if TGL Display stepping is B1 from A0

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19991/index.html

--===============2638039165198733920==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Disable PSR2 if TGL Display stepping is B1 from A0 (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89348/">https://patchwork.freedesktop.org/series/89348/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19991/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19991/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10009 -&gt; Patchwork_19991</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19991/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19991 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10009/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19991/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 37)</h2>
<p>Missing    (3): fi-bsw-cyan fi-bdw-samus fi-bsw-n3050 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10009 -&gt; Patchwork_19991</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10009: b26f008c13c6bb6a8f46a670fe0e72d77de9c531 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6075: ccf602c569257291045415ff504a6d2460986c28 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19991: 433075cc93cb5e1bef16249d64f7a1ba7fb8fe54 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>433075cc93cb drm/i915/display: Disable PSR2 if TGL Display stepping is B1 from A0</p>

</body>
</html>

--===============2638039165198733920==--

--===============0155171651==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0155171651==--
