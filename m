Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39546829FD9
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 18:55:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C59C010E781;
	Wed, 10 Jan 2024 17:54:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 268D110E781;
 Wed, 10 Jan 2024 17:54:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1556586975841228912=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Panel_replay_selective_upda?=
 =?utf-8?q?te_support_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Date: Wed, 10 Jan 2024 17:54:58 -0000
Message-ID: <170490929815.240792.16882023395924549457@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
In-Reply-To: <20240110131304.2470006-1-jouni.hogander@intel.com>
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

--===============1556586975841228912==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Panel replay selective update support (rev2)
URL   : https://patchwork.freedesktop.org/series/128193/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14108 -> Patchwork_128193v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v2/index.html

Participating hosts (38 -> 34)
------------------------------

  Missing    (4): bat-kbl-2 bat-dg2-9 fi-snb-2520m fi-bsw-n3050 

Known issues
------------

  Here are the changes found in Patchwork_128193v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-atsm-1:         NOTRUN -> [SKIP][1] ([i915#1836])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v2/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@lmem0:
    - bat-atsm-1:         [ABORT][2] -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14108/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v2/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10022]: https://gitlab.freedesktop.org/drm/intel/issues/10022
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#9943]: https://gitlab.freedesktop.org/drm/intel/issues/9943


Build changes
-------------

  * Linux: CI_DRM_14108 -> Patchwork_128193v2

  CI-20190529: 20190529
  CI_DRM_14108: c58d1352dd193d8df380a14e95c05455acaf5b82 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7666: 5f97adfd0e1636788a6af5b592f0d15b4f1027c8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_128193v2: c58d1352dd193d8df380a14e95c05455acaf5b82 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

5b2af80709ac drm/i915/psr: Add panel replay sel update support to debugfs interface
f702a2603a88 drm/i915/psr: Modify intel_dp_get_su_granularity to support panel replay
30d778a29269 drm/panelreplay: dpcd register definition for panelreplay SU
4afdb41b6ac2 drm/i915/psr: Split intel_psr2_config_valid for panel replay
b64834631574 drm/i915/psr: Detect panel replay selective update support
e13ef0e6bf8a drm/i915/psr: Add sink_panel_replay_su_support to intel_psr
1feb8b68b97f drm/i915/psr: Add some documentation of variables used in psr code
43e000242422 drm/i915/psr: Rename psr2_enabled as sel_update_enabled
a1b165fa852d drm/i915/psr: Rename has_psr2 as has_sel_update
245aa06c12de drm/i915/psr: Unify panel replay enable sink
44603b0f21a1 drm/i915/psr: Do not check alpm on DP or capability change for panel replay
2d7dfe178c9c drm/i915/psr: Intel_psr_pause/resume needs to support panel replay
693d0b295779 drm/i915/psr: Disable panel replay for now

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v2/index.html

--===============1556586975841228912==
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
<tr><td><b>Series:</b></td><td>Panel replay selective update support (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128193/">https://patchwork.freedesktop.org/series/128193/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14108 -&gt; Patchwork_128193v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v2/index.html</p>
<h2>Participating hosts (38 -&gt; 34)</h2>
<p>Missing    (4): bat-kbl-2 bat-dg2-9 fi-snb-2520m fi-bsw-n3050 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128193v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc:<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v2/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1836">i915#1836</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3@lmem0:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14108/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v2/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14108 -&gt; Patchwork_128193v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14108: c58d1352dd193d8df380a14e95c05455acaf5b82 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7666: 5f97adfd0e1636788a6af5b592f0d15b4f1027c8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_128193v2: c58d1352dd193d8df380a14e95c05455acaf5b82 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>5b2af80709ac drm/i915/psr: Add panel replay sel update support to debugfs interface<br />
f702a2603a88 drm/i915/psr: Modify intel_dp_get_su_granularity to support panel replay<br />
30d778a29269 drm/panelreplay: dpcd register definition for panelreplay SU<br />
4afdb41b6ac2 drm/i915/psr: Split intel_psr2_config_valid for panel replay<br />
b64834631574 drm/i915/psr: Detect panel replay selective update support<br />
e13ef0e6bf8a drm/i915/psr: Add sink_panel_replay_su_support to intel_psr<br />
1feb8b68b97f drm/i915/psr: Add some documentation of variables used in psr code<br />
43e000242422 drm/i915/psr: Rename psr2_enabled as sel_update_enabled<br />
a1b165fa852d drm/i915/psr: Rename has_psr2 as has_sel_update<br />
245aa06c12de drm/i915/psr: Unify panel replay enable sink<br />
44603b0f21a1 drm/i915/psr: Do not check alpm on DP or capability change for panel replay<br />
2d7dfe178c9c drm/i915/psr: Intel_psr_pause/resume needs to support panel replay<br />
693d0b295779 drm/i915/psr: Disable panel replay for now</p>

</body>
</html>

--===============1556586975841228912==--
