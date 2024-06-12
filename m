Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 479D590591F
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2024 18:49:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75E8C10E2A3;
	Wed, 12 Jun 2024 16:49:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A493510E2A3;
 Wed, 12 Jun 2024 16:49:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3989729076846057169=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_series_starting_with_=5B1/2?=
 =?utf-8?q?=5D_drm/doc=3A_Document_drm=5Fget=5Fencoder_ioctl_more_thoroughly?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jun 2024 16:49:23 -0000
Message-ID: <171821096367.70996.1439538163858608192@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240612141903.17219-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240612141903.17219-1-ville.syrjala@linux.intel.com>
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

--===============3989729076846057169==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/doc: Document drm_get_encoder ioctl more thoroughly
URL   : https://patchwork.freedesktop.org/series/134771/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14928 -> Patchwork_134771v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134771v1/index.html

Participating hosts (41 -> 39)
------------------------------

  Missing    (2): bat-dg2-14 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_134771v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - {bat-mtlp-9}:       [CRASH][1] ([i915#10911]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14928/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134771v1/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - {bat-mtlp-9}:       [DMESG-WARN][3] ([i915#11009]) -> [PASS][4] +2 other tests pass
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14928/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134771v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - {bat-mtlp-9}:       [SKIP][5] ([i915#10580]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14928/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134771v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580
  [i915#10911]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10911
  [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
  [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121


Build changes
-------------

  * Linux: CI_DRM_14928 -> Patchwork_134771v1

  CI-20190529: 20190529
  CI_DRM_14928: ade7ab20e5168dd828b15ed18b2f718b67544604 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7884: 3c02edb64e6feef931f1df9898d129b0a92a39eb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134771v1: ade7ab20e5168dd828b15ed18b2f718b67544604 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134771v1/index.html

--===============3989729076846057169==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/doc: Document drm_get_encoder ioctl more thoroughly</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134771/">https://patchwork.freedesktop.org/series/134771/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134771v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134771v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14928 -&gt; Patchwork_134771v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134771v1/index.html</p>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Missing    (2): bat-dg2-14 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134771v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14928/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10911">i915#10911</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134771v1/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14928/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134771v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14928/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580">i915#10580</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134771v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14928 -&gt; Patchwork_134771v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14928: ade7ab20e5168dd828b15ed18b2f718b67544604 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7884: 3c02edb64e6feef931f1df9898d129b0a92a39eb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134771v1: ade7ab20e5168dd828b15ed18b2f718b67544604 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3989729076846057169==--
