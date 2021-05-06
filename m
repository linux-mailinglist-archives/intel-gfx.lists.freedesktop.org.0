Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 306B53759EF
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 20:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29FAE6E169;
	Thu,  6 May 2021 18:04:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EDCC66E0BA;
 Thu,  6 May 2021 18:04:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E52B9A00C9;
 Thu,  6 May 2021 18:04:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Werner Sembach" <wse@tuxedocomputers.com>
Date: Thu, 06 May 2021 18:04:19 -0000
Message-ID: <162032425990.15693.7456771979638515728@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210506172325.1995964-1-wse@tuxedocomputers.com>
In-Reply-To: <20210506172325.1995964-1-wse@tuxedocomputers.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Try_YCbCr420_color_when_RGB_fails?=
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
Content-Type: multipart/mixed; boundary="===============0369004125=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0369004125==
Content-Type: multipart/alternative;
 boundary="===============1154192390201773236=="

--===============1154192390201773236==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Try YCbCr420 color when RGB fails
URL   : https://patchwork.freedesktop.org/series/89842/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10053 -> Patchwork_20079
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20079/index.html

Known issues
------------

  Here are the changes found in Patchwork_20079 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][1] -> [INCOMPLETE][2] ([i915#2782])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20079/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bdw-gvtdvm fi-ctg-p8600 fi-bsw-kefka fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10053 -> Patchwork_20079

  CI-20190529: 20190529
  CI_DRM_10053: 3e000bbf311ad04f734843e1ba6396b28ba44399 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6080: 1c450c3d4df19cf1087b8ccff3b62cb51addacae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20079: fa1ae5bd837fe78b388ca039c1a80403536eb20f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fa1ae5bd837f drm/i915/display: Use YCbCr420 as fallback when RGB fails
6cff290a93e1 drm/i915/display: Restructure output format computation for better expandability
00bf5b4bbe7e drm/i915/display: New function to avoid duplicate code in upcomming commits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20079/index.html

--===============1154192390201773236==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Try YCbCr420 color when RGB fails</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89842/">https://patchwork.freedesktop.org/series/89842/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20079/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20079/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10053 -&gt; Patchwork_20079</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20079/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20079 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20079/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bdw-gvtdvm fi-ctg-p8600 fi-bsw-kefka fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10053 -&gt; Patchwork_20079</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10053: 3e000bbf311ad04f734843e1ba6396b28ba44399 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6080: 1c450c3d4df19cf1087b8ccff3b62cb51addacae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20079: fa1ae5bd837fe78b388ca039c1a80403536eb20f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fa1ae5bd837f drm/i915/display: Use YCbCr420 as fallback when RGB fails<br />
6cff290a93e1 drm/i915/display: Restructure output format computation for better expandability<br />
00bf5b4bbe7e drm/i915/display: New function to avoid duplicate code in upcomming commits</p>

</body>
</html>

--===============1154192390201773236==--

--===============0369004125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0369004125==--
