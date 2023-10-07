Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFDB7BC545
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Oct 2023 08:57:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86FA910E06E;
	Sat,  7 Oct 2023 06:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 46DD310E06E;
 Sat,  7 Oct 2023 06:57:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 40A6FA03D2;
 Sat,  7 Oct 2023 06:57:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5772036507147539051=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Date: Sat, 07 Oct 2023 06:57:31 -0000
Message-ID: <169666185123.8259.7887370239964252591@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231006182051.1599923-1-jonathan.cavitt@intel.com>
In-Reply-To: <20231006182051.1599923-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Define_and_use_GuC_and_CTB_TLB_invalidation_routines_?=
 =?utf-8?b?KHJldjIp?=
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

--===============5772036507147539051==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Define and use GuC and CTB TLB invalidation routines (rev2)
URL   : https://patchwork.freedesktop.org/series/124744/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13723 -> Patchwork_124744v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v2/index.html

Participating hosts (40 -> 38)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_124744v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][1] -> [ABORT][2] ([i915#8668])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13723/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8913]: https://gitlab.freedesktop.org/drm/intel/issues/8913


Build changes
-------------

  * Linux: CI_DRM_13723 -> Patchwork_124744v2

  CI-20190529: 20190529
  CI_DRM_13723: 2f2f3a5735816736995263c4de4f221480183a99 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7519: d1db7333d9c5fbbb05e50b0804123950d9dc1c46 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124744v2: 2f2f3a5735816736995263c4de4f221480183a99 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d6083b4e9d85 drm/i915: Enable GuC TLB invalidations for MTL
6536fdbf6df0 drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
08fb23f5dbf8 drm/i915: No TLB invalidation on wedged GT
cc1ccfe706c7 drm/i915: No TLB invalidation on suspended GT
ff8680ace9bf drm/i915: Define and use GuC and CTB TLB invalidation routines
f512934e96d1 drm/i915/guc: Add CT size delay helper
5262a952d056 drm/i915: Add GuC TLB Invalidation device info flags

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v2/index.html

--===============5772036507147539051==
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
<tr><td><b>Series:</b></td><td>drm/i915: Define and use GuC and CTB TLB invalidation routines (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124744/">https://patchwork.freedesktop.org/series/124744/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13723 -&gt; Patchwork_124744v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v2/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124744v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13723/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13723 -&gt; Patchwork_124744v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13723: 2f2f3a5735816736995263c4de4f221480183a99 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7519: d1db7333d9c5fbbb05e50b0804123950d9dc1c46 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124744v2: 2f2f3a5735816736995263c4de4f221480183a99 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d6083b4e9d85 drm/i915: Enable GuC TLB invalidations for MTL<br />
6536fdbf6df0 drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck<br />
08fb23f5dbf8 drm/i915: No TLB invalidation on wedged GT<br />
cc1ccfe706c7 drm/i915: No TLB invalidation on suspended GT<br />
ff8680ace9bf drm/i915: Define and use GuC and CTB TLB invalidation routines<br />
f512934e96d1 drm/i915/guc: Add CT size delay helper<br />
5262a952d056 drm/i915: Add GuC TLB Invalidation device info flags</p>

</body>
</html>

--===============5772036507147539051==--
