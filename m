Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 889CA37937D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 18:15:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0577F6E88B;
	Mon, 10 May 2021 16:15:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 45C7C6E88A;
 Mon, 10 May 2021 16:15:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3B2C8A47DB;
 Mon, 10 May 2021 16:15:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Werner Sembach" <wse@tuxedocomputers.com>
Date: Mon, 10 May 2021 16:15:21 -0000
Message-ID: <162066332123.9577.9027198888766775263@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210510133349.14491-1-wse@tuxedocomputers.com>
In-Reply-To: <20210510133349.14491-1-wse@tuxedocomputers.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Try_YCbCr420_color_when_RGB_fails_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0038110848=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0038110848==
Content-Type: multipart/alternative;
 boundary="===============5006717327041282019=="

--===============5006717327041282019==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Try YCbCr420 color when RGB fails (rev2)
URL   : https://patchwork.freedesktop.org/series/89842/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10063 -> Patchwork_20094
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20094/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10063 and Patchwork_20094:

### New IGT tests (50) ###

  * igt@kms_flip@basic-flip-vs-dpms@a-dp2:
    - Statuses : 4 pass(s)
    - Exec time: [0.58, 1.34] s

  * igt@kms_flip@basic-flip-vs-dpms@a-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.55, 2.00] s

  * igt@kms_flip@basic-flip-vs-dpms@a-dvi-d1:
    - Statuses : 1 pass(s)
    - Exec time: [1.16] s

  * igt@kms_flip@basic-flip-vs-dpms@a-lvds1:
    - Statuses : 1 pass(s)
    - Exec time: [1.69] s

  * igt@kms_flip@basic-flip-vs-dpms@b-dp2:
    - Statuses : 4 pass(s)
    - Exec time: [0.57, 1.37] s

  * igt@kms_flip@basic-flip-vs-dpms@b-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.34, 1.71] s

  * igt@kms_flip@basic-flip-vs-dpms@b-dvi-d1:
    - Statuses : 1 pass(s)
    - Exec time: [1.16] s

  * igt@kms_flip@basic-flip-vs-dpms@b-lvds1:
    - Statuses : 1 pass(s)
    - Exec time: [1.48] s

  * igt@kms_flip@basic-flip-vs-dpms@c-dp2:
    - Statuses : 4 pass(s)
    - Exec time: [0.58, 1.35] s

  * igt@kms_flip@basic-flip-vs-dpms@c-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.34, 1.70] s

  * igt@kms_flip@basic-flip-vs-dpms@c-vga1:
    - Statuses : 2 pass(s)
    - Exec time: [0.84, 0.85] s

  * igt@kms_flip@basic-flip-vs-dpms@d-dsi1:
    - Statuses : 1 pass(s)
    - Exec time: [1.65] s

  * igt@kms_flip@basic-flip-vs-modeset@a-dp2:
    - Statuses : 4 pass(s)
    - Exec time: [0.58, 1.35] s

  * igt@kms_flip@basic-flip-vs-modeset@a-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.55, 1.94] s

  * igt@kms_flip@basic-flip-vs-modeset@a-dvi-d1:
    - Statuses : 1 pass(s)
    - Exec time: [1.02] s

  * igt@kms_flip@basic-flip-vs-modeset@a-lvds1:
    - Statuses : 1 pass(s)
    - Exec time: [1.74] s

  * igt@kms_flip@basic-flip-vs-modeset@b-dp2:
    - Statuses : 4 pass(s)
    - Exec time: [0.58, 1.33] s

  * igt@kms_flip@basic-flip-vs-modeset@b-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.34, 1.51] s

  * igt@kms_flip@basic-flip-vs-modeset@b-dvi-d1:
    - Statuses : 1 pass(s)
    - Exec time: [1.16] s

  * igt@kms_flip@basic-flip-vs-modeset@b-lvds1:
    - Statuses : 1 pass(s)
    - Exec time: [1.41] s

  * igt@kms_flip@basic-flip-vs-modeset@c-dp2:
    - Statuses : 4 pass(s)
    - Exec time: [0.58, 1.35] s

  * igt@kms_flip@basic-flip-vs-modeset@c-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.35, 1.58] s

  * igt@kms_flip@basic-flip-vs-modeset@c-vga1:
    - Statuses : 2 pass(s)
    - Exec time: [0.85, 0.86] s

  * igt@kms_flip@basic-flip-vs-modeset@d-dsi1:
    - Statuses : 1 pass(s)
    - Exec time: [1.56] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp2:
    - Statuses : 4 pass(s)
    - Exec time: [0.91, 1.27] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.92, 2.00] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dvi-d1:
    - Statuses : 1 pass(s)
    - Exec time: [1.41] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-lvds1:
    - Statuses : 1 pass(s)
    - Exec time: [1.92] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-dp2:
    - Statuses : 4 pass(s)
    - Exec time: [0.89, 1.25] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.81, 1.89] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-dvi-d1:
    - Statuses : 1 pass(s)
    - Exec time: [1.39] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-lvds1:
    - Statuses : 1 pass(s)
    - Exec time: [1.89] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp2:
    - Statuses : 4 pass(s)
    - Exec time: [0.97, 1.27] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.74, 1.89] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-vga1:
    - Statuses : 2 pass(s)
    - Exec time: [1.10] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@d-dsi1:
    - Statuses : 1 pass(s)
    - Exec time: [1.75] s

  * igt@kms_flip@basic-plain-flip@a-dp2:
    - Statuses : 4 pass(s)
    - Exec time: [0.60, 0.97] s

  * igt@kms_flip@basic-plain-flip@a-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.50, 1.74] s

  * igt@kms_flip@basic-plain-flip@a-dvi-d1:
    - Statuses : 1 pass(s)
    - Exec time: [0.94] s

  * igt@kms_flip@basic-plain-flip@a-lvds1:
    - Statuses : 1 pass(s)
    - Exec time: [1.43] s

  * igt@kms_flip@basic-plain-flip@a-vga1:
    - Statuses : 8 pass(s)
    - Exec time: [0.70, 1.44] s

  * igt@kms_flip@basic-plain-flip@b-dp2:
    - Statuses : 4 pass(s)
    - Exec time: [0.60, 1.01] s

  * igt@kms_flip@basic-plain-flip@b-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.42, 1.50] s

  * igt@kms_flip@basic-plain-flip@b-dvi-d1:
    - Statuses : 1 pass(s)
    - Exec time: [1.05] s

  * igt@kms_flip@basic-plain-flip@b-lvds1:
    - Statuses : 1 pass(s)
    - Exec time: [1.41] s

  * igt@kms_flip@basic-plain-flip@b-vga1:
    - Statuses : 8 pass(s)
    - Exec time: [0.65, 1.31] s

  * igt@kms_flip@basic-plain-flip@c-dp2:
    - Statuses : 4 pass(s)
    - Exec time: [0.60, 1.08] s

  * igt@kms_flip@basic-plain-flip@c-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.41, 1.53] s

  * igt@kms_flip@basic-plain-flip@c-vga1:
    - Statuses : 2 pass(s)
    - Exec time: [0.82] s

  * igt@kms_flip@basic-plain-flip@d-dsi1:
    - Statuses : 1 pass(s)
    - Exec time: [1.58] s

  

Known issues
------------

  Here are the changes found in Patchwork_20094 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2416]: https://gitlab.freedesktop.org/drm/intel/issues/2416
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Participating hosts (42 -> 40)
------------------------------

  Missing    (2): fi-ilk-m540 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10063 -> Patchwork_20094

  CI-20190529: 20190529
  CI_DRM_10063: da07ff0745f8eb4f079ee06bbbf04692eec85538 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6081: fdff4bba7abf9cb7c8ea21abf14e36d344ebb8c1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20094: 8383b9c2aba7bb0d9443af6ee4de20f9667b394b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8383b9c2aba7 drm/i915/display: Use YCbCr420 as fallback when RGB fails
2fed7f8601e6 drm/i915/display: Restructure output format computation for better expandability
3eac4a6979b0 drm/i915/display: New function to avoid duplicate code in upcomming commits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20094/index.html

--===============5006717327041282019==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Try YCbCr420 color when RGB fails (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89842/">https://patchwork.freedesktop.org/series/89842/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20094/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20094/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10063 -&gt; Patchwork_20094</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20094/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10063 and Patchwork_20094:</p>
<h3>New IGT tests (50)</h3>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dp2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.58, 1.34] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.55, 2.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dvi-d1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-lvds1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.69] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.57, 1.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.34, 1.71] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dvi-d1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-lvds1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.48] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-dp2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.58, 1.35] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.34, 1.70] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-vga1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.84, 0.85] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-dsi1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.65] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-dp2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.58, 1.35] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.55, 1.94] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-dvi-d1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-lvds1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.74] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dp2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.58, 1.33] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.34, 1.51] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dvi-d1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-lvds1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dp2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.58, 1.35] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.35, 1.58] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-vga1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.85, 0.86] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-dsi1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-dp2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.91, 1.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.92, 2.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-dvi-d1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-lvds1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.92] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-dp2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.89, 1.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.81, 1.89] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-dvi-d1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.39] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-lvds1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.89] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-dp2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.97, 1.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.74, 1.89] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-vga1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@d-dsi1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.75] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-dp2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.60, 0.97] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.50, 1.74] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-dvi-d1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.94] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-lvds1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.43] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-vga1:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.70, 1.44] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-dp2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.60, 1.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.42, 1.50] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-dvi-d1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-lvds1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-vga1:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.65, 1.31] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.60, 1.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.41, 1.53] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-vga1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.82] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@d-dsi1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.58] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20094 that come from known issues:</p>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): fi-ilk-m540 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10063 -&gt; Patchwork_20094</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10063: da07ff0745f8eb4f079ee06bbbf04692eec85538 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6081: fdff4bba7abf9cb7c8ea21abf14e36d344ebb8c1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20094: 8383b9c2aba7bb0d9443af6ee4de20f9667b394b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8383b9c2aba7 drm/i915/display: Use YCbCr420 as fallback when RGB fails<br />
2fed7f8601e6 drm/i915/display: Restructure output format computation for better expandability<br />
3eac4a6979b0 drm/i915/display: New function to avoid duplicate code in upcomming commits</p>

</body>
</html>

--===============5006717327041282019==--

--===============0038110848==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0038110848==--
