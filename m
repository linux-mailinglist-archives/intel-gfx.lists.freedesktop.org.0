Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 789773C1C56
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 01:57:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FD866E93B;
	Thu,  8 Jul 2021 23:57:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3467B6E934;
 Thu,  8 Jul 2021 23:57:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2C3B5A41FB;
 Thu,  8 Jul 2021 23:57:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 08 Jul 2021 23:57:46 -0000
Message-ID: <162578866615.32074.17577886029565699254@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210708211827.288601-1-jose.souza@intel.com>
In-Reply-To: <20210708211827.288601-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_drm/i915=3A_Settle_on_=22adl-x=22_i?=
 =?utf-8?q?n_WA_comments?=
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
Content-Type: multipart/mixed; boundary="===============1357418823=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1357418823==
Content-Type: multipart/alternative;
 boundary="===============0961796481313747323=="

--===============0961796481313747323==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/7] drm/i915: Settle on "adl-x" in WA comments
URL   : https://patchwork.freedesktop.org/series/92342/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10320 -> Patchwork_20558
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20558/index.html

Known issues
------------

  Here are the changes found in Patchwork_20558 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888


Participating hosts (40 -> 39)
------------------------------

  Missing    (1): fi-bsw-cyan 


Build changes
-------------

  * Linux: CI_DRM_10320 -> Patchwork_20558

  CI-20190529: 20190529
  CI_DRM_10320: 7d61ab4a59bcbb206324b6a430748b4c15dd8adb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6132: 61fb9cdf2a9132e3618c8b08b9d20fec0c347831 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20558: 0be142e780934cd09e46b4699fe3f7cd9b7adde0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0be142e78093 drm/i915/display/xelpd: Exetend Wa_14011508470
8d9f68df0f34 drm/i915/display/adl_p: Correctly program MBUS DBOX A credits
ccd65a2b8785 drm/i915: Limit Wa_22010178259 to affected platforms
4818897f7082 drm/i915: Limit maximum number of memory channels
1a869323ea02 drm/i915/adl_s: Extend Wa_1406941453
6cea025795d1 drm/i915: Implement Wa_1508744258
78692bfbbdb4 drm/i915: Settle on "adl-x" in WA comments

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20558/index.html

--===============0961796481313747323==
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
<tr><td><b>Series:</b></td><td>series starting with [1/7] drm/i915: Settle on &quot;adl-x&quot; in WA comments</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92342/">https://patchwork.freedesktop.org/series/92342/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20558/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20558/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10320 -&gt; Patchwork_20558</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20558/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20558 that come from known issues:</p>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Missing    (1): fi-bsw-cyan </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10320 -&gt; Patchwork_20558</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10320: 7d61ab4a59bcbb206324b6a430748b4c15dd8adb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6132: 61fb9cdf2a9132e3618c8b08b9d20fec0c347831 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20558: 0be142e780934cd09e46b4699fe3f7cd9b7adde0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0be142e78093 drm/i915/display/xelpd: Exetend Wa_14011508470<br />
8d9f68df0f34 drm/i915/display/adl_p: Correctly program MBUS DBOX A credits<br />
ccd65a2b8785 drm/i915: Limit Wa_22010178259 to affected platforms<br />
4818897f7082 drm/i915: Limit maximum number of memory channels<br />
1a869323ea02 drm/i915/adl_s: Extend Wa_1406941453<br />
6cea025795d1 drm/i915: Implement Wa_1508744258<br />
78692bfbbdb4 drm/i915: Settle on "adl-x" in WA comments</p>

</body>
</html>

--===============0961796481313747323==--

--===============1357418823==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1357418823==--
