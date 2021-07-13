Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E33C63C79AC
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 00:31:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A2776E14B;
	Tue, 13 Jul 2021 22:31:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BCD1B6E141;
 Tue, 13 Jul 2021 22:31:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6652A47EB;
 Tue, 13 Jul 2021 22:31:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 13 Jul 2021 22:31:24 -0000
Message-ID: <162621548471.711.6625473570609972041@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210713193635.3390052-1-matthew.d.roper@intel.com>
In-Reply-To: <20210713193635.3390052-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTWlu?=
 =?utf-8?q?or_revid/stepping_and_workaround_cleanup_=28rev5=29?=
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
Content-Type: multipart/mixed; boundary="===============0838463205=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0838463205==
Content-Type: multipart/alternative;
 boundary="===============5213566318019816102=="

--===============5213566318019816102==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Minor revid/stepping and workaround cleanup (rev5)
URL   : https://patchwork.freedesktop.org/series/92299/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10343 -> Patchwork_20590
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/index.html

Known issues
------------

  Here are the changes found in Patchwork_20590 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717


Participating hosts (39 -> 36)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10343 -> Patchwork_20590

  CI-20190529: 20190529
  CI_DRM_10343: 5b5a6e26ea2a5dc93aba918c28159c46a1cb3b02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6137: 2fee489255f7a8cd6a584373c30e3d44a07a78ea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20590: 8aac230553bb4343f6430278d0342cf62900cfc0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8aac230553bb drm/i915/icl: Drop workarounds that only apply to pre-production steppings
4616f4431b2a drm/i915/cnl: Drop all workarounds
c7a0a64af9c3 drm/i915/dg1: Use revid->stepping tables
d459b42fb71d drm/i915/rkl: Use revid->stepping tables
2eb0bd7f91f4 drm/i915/jsl_ehl: Use revid->stepping tables
7609fedec7c6 drm/i915/icl: Use revid->stepping tables
16a24e1a17f6 drm/i915/glk: Use revid->stepping tables
55db7b1abf0b drm/i915/bxt: Use revid->stepping tables
57b7fcc6d24f drm/i915/kbl: Drop pre-production revision from stepping table
595f9e313f2d drm/i915/skl: Use revid->stepping tables
5a7f5fb477f9 drm/i915: Make pre-production detection use direct revid comparison
486210f705f0 drm/i915/step: s/<platform>_revid_tbl/<platform>_revids

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/index.html

--===============5213566318019816102==
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
<tr><td><b>Series:</b></td><td>Minor revid/stepping and workaround cleanup (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92299/">https://patchwork.freedesktop.org/series/92299/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10343 -&gt; Patchwork_20590</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20590/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20590 that come from known issues:</p>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10343 -&gt; Patchwork_20590</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10343: 5b5a6e26ea2a5dc93aba918c28159c46a1cb3b02 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6137: 2fee489255f7a8cd6a584373c30e3d44a07a78ea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20590: 8aac230553bb4343f6430278d0342cf62900cfc0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8aac230553bb drm/i915/icl: Drop workarounds that only apply to pre-production steppings<br />
4616f4431b2a drm/i915/cnl: Drop all workarounds<br />
c7a0a64af9c3 drm/i915/dg1: Use revid-&gt;stepping tables<br />
d459b42fb71d drm/i915/rkl: Use revid-&gt;stepping tables<br />
2eb0bd7f91f4 drm/i915/jsl_ehl: Use revid-&gt;stepping tables<br />
7609fedec7c6 drm/i915/icl: Use revid-&gt;stepping tables<br />
16a24e1a17f6 drm/i915/glk: Use revid-&gt;stepping tables<br />
55db7b1abf0b drm/i915/bxt: Use revid-&gt;stepping tables<br />
57b7fcc6d24f drm/i915/kbl: Drop pre-production revision from stepping table<br />
595f9e313f2d drm/i915/skl: Use revid-&gt;stepping tables<br />
5a7f5fb477f9 drm/i915: Make pre-production detection use direct revid comparison<br />
486210f705f0 drm/i915/step: s/<platform>_revid_tbl/<platform>_revids</p>

</body>
</html>

--===============5213566318019816102==--

--===============0838463205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0838463205==--
