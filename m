Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A77F40B8B4
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 22:06:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C8BD6E5D2;
	Tue, 14 Sep 2021 20:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 941756E5D4;
 Tue, 14 Sep 2021 20:06:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8AB73AA915;
 Tue, 14 Sep 2021 20:06:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9043469661419554350=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Sep 2021 20:06:50 -0000
Message-ID: <163165001056.3457.10275844488380855926@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210914193112.497379-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210914193112.497379-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Suspend_/_resume_backup-_and_restore_of_LMEM=2E_=28rev?=
 =?utf-8?q?4=29?=
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

--===============9043469661419554350==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Suspend / resume backup- and restore of LMEM. (rev4)
URL   : https://patchwork.freedesktop.org/series/94278/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10584 -> Patchwork_21046
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21046/index.html

Known issues
------------

  Here are the changes found in Patchwork_21046 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722


Participating hosts (39 -> 38)
------------------------------

  Additional (3): fi-kbl-soraka fi-tgl-1115g4 fi-kbl-guc 
  Missing    (4): fi-bdw-samus fi-bsw-cyan bat-dg1-6 bat-dg1-5 


Build changes
-------------

  * Linux: CI_DRM_10584 -> Patchwork_21046

  CI-20190529: 20190529
  CI_DRM_10584: 7fa18a9066276df7e4c9ffe45c98f4604bd92bdd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6209: 07d6594ed02f55b68d64fa6dd7f80cfbc1ce4ef8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21046: 62cf1113c535090369956f6de8583f56418ba8d1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

62cf1113c535 drm/i915: Reduce the number of objects subject to memcpy recover
21ff3e091982 drm/i915: Don't back up pinned LMEM context images and rings during suspend
d7decd7ad236 drm/i915/gt: Register the migrate contexts with their engines
05ab254d5b1f drm/i915 Implement LMEM backup and restore for suspend / resume
329f8dcaaa17 drm/i915/gem: Implement a function to process all gem objects of a region
c4b15f1489b7 drm/i915/ttm: Implement a function to copy the contents of two TTM-based objects

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21046/index.html

--===============9043469661419554350==
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
<tr><td><b>Series:</b></td><td>drm/i915: Suspend / resume backup- and restore of LMEM. (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94278/">https://patchwork.freedesktop.org/series/94278/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21046/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21046/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10584 -&gt; Patchwork_21046</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21046/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21046 that come from known issues:</p>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Additional (3): fi-kbl-soraka fi-tgl-1115g4 fi-kbl-guc <br />
  Missing    (4): fi-bdw-samus fi-bsw-cyan bat-dg1-6 bat-dg1-5 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10584 -&gt; Patchwork_21046</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10584: 7fa18a9066276df7e4c9ffe45c98f4604bd92bdd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6209: 07d6594ed02f55b68d64fa6dd7f80cfbc1ce4ef8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21046: 62cf1113c535090369956f6de8583f56418ba8d1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>62cf1113c535 drm/i915: Reduce the number of objects subject to memcpy recover<br />
21ff3e091982 drm/i915: Don't back up pinned LMEM context images and rings during suspend<br />
d7decd7ad236 drm/i915/gt: Register the migrate contexts with their engines<br />
05ab254d5b1f drm/i915 Implement LMEM backup and restore for suspend / resume<br />
329f8dcaaa17 drm/i915/gem: Implement a function to process all gem objects of a region<br />
c4b15f1489b7 drm/i915/ttm: Implement a function to copy the contents of two TTM-based objects</p>

</body>
</html>

--===============9043469661419554350==--
