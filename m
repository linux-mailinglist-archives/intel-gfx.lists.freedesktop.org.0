Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0728587F4
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 22:23:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EC0B10E64A;
	Fri, 16 Feb 2024 21:23:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A509610E5E3;
 Fri, 16 Feb 2024 21:23:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6444883996816633916=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/buddy=3A_Modify_duplica?=
 =?utf-8?q?te_list=5Fsplice=5Ftail_call?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin Paneer Selvam" <arunpravin.paneerselvam@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Feb 2024 21:23:29 -0000
Message-ID: <170811860967.54066.2136367584864142273@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240216100048.4101-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20240216100048.4101-1-Arunpravin.PaneerSelvam@amd.com>
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

--===============6444883996816633916==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/buddy: Modify duplicate list_splice_tail call
URL   : https://patchwork.freedesktop.org/series/129988/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14286 -> Patchwork_129988v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129988v1/index.html

Participating hosts (36 -> 35)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129988v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_create@basic-files:
    - {bat-arls-2}:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-arls-2/igt@gem_ctx_create@basic-files.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129988v1/bat-arls-2/igt@gem_ctx_create@basic-files.html

  
Known issues
------------

  Here are the changes found in Patchwork_129988v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_create@basic@smem:
    - {bat-arls-1}:       [DMESG-WARN][3] ([i915#10194]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-arls-1/igt@gem_exec_create@basic@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129988v1/bat-arls-1/igt@gem_exec_create@basic@smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194


Build changes
-------------

  * Linux: CI_DRM_14286 -> Patchwork_129988v1

  CI-20190529: 20190529
  CI_DRM_14286: 41e3752f995d1c3a9b5b88b11450ff6b88f65973 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7716: 7716
  Patchwork_129988v1: 41e3752f995d1c3a9b5b88b11450ff6b88f65973 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129988v1/index.html

--===============6444883996816633916==
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
<tr><td><b>Series:</b></td><td>drm/buddy: Modify duplicate list_splice_tail call</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129988/">https://patchwork.freedesktop.org/series/129988/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129988v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129988v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14286 -&gt; Patchwork_129988v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129988v1/index.html</p>
<h2>Participating hosts (36 -&gt; 35)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129988v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_ctx_create@basic-files:<ul>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-arls-2/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129988v1/bat-arls-2/igt@gem_ctx_create@basic-files.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129988v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_create@basic@smem:<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14286/bat-arls-1/igt@gem_exec_create@basic@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10194">i915#10194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129988v1/bat-arls-1/igt@gem_exec_create@basic@smem.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14286 -&gt; Patchwork_129988v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14286: 41e3752f995d1c3a9b5b88b11450ff6b88f65973 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7716: 7716<br />
  Patchwork_129988v1: 41e3752f995d1c3a9b5b88b11450ff6b88f65973 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>

</body>
</html>

--===============6444883996816633916==--
