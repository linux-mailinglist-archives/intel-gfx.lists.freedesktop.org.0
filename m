Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C919E89CB93
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 20:18:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D91E510E30C;
	Mon,  8 Apr 2024 18:17:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA39710E37A;
 Mon,  8 Apr 2024 18:17:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0157172190827335065=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/edid=3A_cleanups=2C_res?=
 =?utf-8?q?end?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 08 Apr 2024 18:17:53 -0000
Message-ID: <171260027389.1286010.15339835483480195316@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1712565984.git.jani.nikula@intel.com>
In-Reply-To: <cover.1712565984.git.jani.nikula@intel.com>
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

--===============0157172190827335065==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: cleanups, resend
URL   : https://patchwork.freedesktop.org/series/132142/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14543 -> Patchwork_132142v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132142v1/index.html

Participating hosts (41 -> 34)
------------------------------

  Missing    (7): fi-bsw-n3050 fi-glk-j4005 fi-kbl-8809g fi-cfl-8109u fi-elk-e7500 bat-jsl-1 bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_132142v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_timelines:
    - bat-dg2-8:          [PASS][1] -> [ABORT][2] ([i915#10366])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14543/bat-dg2-8/igt@i915_selftest@live@gt_timelines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132142v1/bat-dg2-8/igt@i915_selftest@live@gt_timelines.html

  
#### Possible fixes ####

  * igt@kms_flip@basic-flip-vs-dpms@a-dp6:
    - {bat-mtlp-9}:       [DMESG-WARN][3] ([i915#10435]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14543/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp6.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132142v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp6.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10435]: https://gitlab.freedesktop.org/drm/intel/issues/10435
  [i915#10436]: https://gitlab.freedesktop.org/drm/intel/issues/10436


Build changes
-------------

  * Linux: CI_DRM_14543 -> Patchwork_132142v1

  CI-20190529: 20190529
  CI_DRM_14543: a533b51ca017728c1228432e8e1e9aba4fd65b02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7801: 7801
  Patchwork_132142v1: a533b51ca017728c1228432e8e1e9aba4fd65b02 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ac3c99dcd507 drm/edid: make drm_edid_are_equal() more convenient for its single user
e591e9e56790 drm/edid: make drm_edid_are_equal() static
ef5a1cbb0773 drm/edid: avoid drm_edid_find_extension() internally
ec2c1cfe4070 drm/edid: rename drm_find_edid_extension() to drm_edid_find_extension()
9b8f8c94bfc3 drm/edid: group struct drm_edid based declarations together
481c13658abb drm/edid: move all internal declarations to drm_crtc_internal.h
aa06e8dcac95 drm/displayid: move drm_displayid.h to drm_displayd_internal.h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132142v1/index.html

--===============0157172190827335065==
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
<tr><td><b>Series:</b></td><td>drm/edid: cleanups, resend</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132142/">https://patchwork.freedesktop.org/series/132142/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132142v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132142v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14543 -&gt; Patchwork_132142v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132142v1/index.html</p>
<h2>Participating hosts (41 -&gt; 34)</h2>
<p>Missing    (7): fi-bsw-n3050 fi-glk-j4005 fi-kbl-8809g fi-cfl-8109u fi-elk-e7500 bat-jsl-1 bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132142v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@gt_timelines:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14543/bat-dg2-8/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132142v1/bat-dg2-8/igt@i915_selftest@live@gt_timelines.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_flip@basic-flip-vs-dpms@a-dp6:<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14543/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp6.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10435">i915#10435</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132142v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp6.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14543 -&gt; Patchwork_132142v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14543: a533b51ca017728c1228432e8e1e9aba4fd65b02 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7801: 7801<br />
  Patchwork_132142v1: a533b51ca017728c1228432e8e1e9aba4fd65b02 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ac3c99dcd507 drm/edid: make drm_edid_are_equal() more convenient for its single user<br />
e591e9e56790 drm/edid: make drm_edid_are_equal() static<br />
ef5a1cbb0773 drm/edid: avoid drm_edid_find_extension() internally<br />
ec2c1cfe4070 drm/edid: rename drm_find_edid_extension() to drm_edid_find_extension()<br />
9b8f8c94bfc3 drm/edid: group struct drm_edid based declarations together<br />
481c13658abb drm/edid: move all internal declarations to drm_crtc_internal.h<br />
aa06e8dcac95 drm/displayid: move drm_displayid.h to drm_displayd_internal.h</p>

</body>
</html>

--===============0157172190827335065==--
