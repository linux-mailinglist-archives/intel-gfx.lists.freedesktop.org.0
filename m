Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BB35FB7C0
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 17:52:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD8AB10E380;
	Tue, 11 Oct 2022 15:52:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C92E10E380;
 Tue, 11 Oct 2022 15:52:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70C89A73C7;
 Tue, 11 Oct 2022 15:52:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6732941572823608010=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 11 Oct 2022 15:52:34 -0000
Message-ID: <166550355442.5541.11352792948079865313@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1665496046.git.jani.nikula@intel.com>
In-Reply-To: <cover.1665496046.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_EDID_override_refactoring_and_fixes?=
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

--===============6732941572823608010==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: EDID override refactoring and fixes
URL   : https://patchwork.freedesktop.org/series/109579/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12233 -> Patchwork_109579v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109579v1/index.html

Participating hosts (45 -> 42)
------------------------------

  Missing    (3): fi-ctg-p8600 fi-icl-u2 fi-tgl-dsi 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109579v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live:
    - {fi-tgl-mst}:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109579v1/fi-tgl-mst/igt@i915_selftest@live.html

  * igt@i915_selftest@live@guc_hang:
    - {bat-rpls-2}:       [PASS][2] -> [DMESG-FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12233/bat-rpls-2/igt@i915_selftest@live@guc_hang.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109579v1/bat-rpls-2/igt@i915_selftest@live@guc_hang.html

  
Known issues
------------

  Here are the changes found in Patchwork_109579v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-apl-guc:         [PASS][4] -> [INCOMPLETE][5] ([i915#7073])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12233/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109579v1/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - {fi-tgl-mst}:       [DMESG-WARN][6] ([i915#5537]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12233/fi-tgl-mst/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109579v1/fi-tgl-mst/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@guc:
    - {bat-rpls-1}:       [DMESG-WARN][8] ([i915#6471]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12233/bat-rpls-1/igt@i915_selftest@live@guc.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109579v1/bat-rpls-1/igt@i915_selftest@live@guc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6471]: https://gitlab.freedesktop.org/drm/intel/issues/6471
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559
  [i915#6596]: https://gitlab.freedesktop.org/drm/intel/issues/6596
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7073]: https://gitlab.freedesktop.org/drm/intel/issues/7073


Build changes
-------------

  * Linux: CI_DRM_12233 -> Patchwork_109579v1

  CI-20190529: 20190529
  CI_DRM_12233: 6fbcc8bcd3c991362bec9b644b6a982630406d6b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7009: cf55acdeea3747c668074a8734029364960e5f5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109579v1: 6fbcc8bcd3c991362bec9b644b6a982630406d6b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

bcd53fa7d1e7 drm/edid: convert to device specific logging
1963639e6b93 drm/edid/firmware: convert to drm device specific logging
966fab794f5d drm/edid: move edid load declarations to internal header
c48e0e554102 drm/edid: use struct drm_edid for override/firmware EDID
a9415f54aa87 drm/edid/firmware: rename drm_load_edid_firmware() to drm_edid_load_firmware()
fa090e8be028 drm/edid/firmware: drop redundant connector_name variable/parameter
ec6e3efd1e3e drm/edid: detach debugfs EDID override from EDID property update
b2cd67b22e4d drm/edid: add function for checking drm_edid validity
0f04ee686827 drm/edid: split drm_edid block count helper
7723a53f5f51 drm/edid: rename drm_add_override_edid_modes() to drm_edid_override_connector_update()
06a01b72a136 drm/edid: abstract debugfs override EDID show better
e46e50c41da8 drm/edid: debug log EDID override set/reset
99b4eab97641 drm/amd/display: stop using connector->override_edid
0831b3d1b520 drm/i915/hdmi: stop using connector->override_edid
d2e3cab454f7 drm/i915/hdmi: do dual mode detect only if connected

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109579v1/index.html

--===============6732941572823608010==
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
<tr><td><b>Series:</b></td><td>drm/edid: EDID override refactoring and fixes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/109579/">https://patchwork.freedesktop.org/series/109579/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109579v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109579v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12233 -&gt; Patchwork_109579v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109579v1/index.html</p>
<h2>Participating hosts (45 -&gt; 42)</h2>
<p>Missing    (3): fi-ctg-p8600 fi-icl-u2 fi-tgl-dsi </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_109579v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>{fi-tgl-mst}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109579v1/fi-tgl-mst/igt@i915_selftest@live.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_hang:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12233/bat-rpls-2/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109579v1/bat-rpls-2/igt@i915_selftest@live@guc_hang.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109579v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12233/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109579v1/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7073">i915#7073</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{fi-tgl-mst}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12233/fi-tgl-mst/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5537">i915#5537</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109579v1/fi-tgl-mst/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12233/bat-rpls-1/igt@i915_selftest@live@guc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6471">i915#6471</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109579v1/bat-rpls-1/igt@i915_selftest@live@guc.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12233 -&gt; Patchwork_109579v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12233: 6fbcc8bcd3c991362bec9b644b6a982630406d6b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7009: cf55acdeea3747c668074a8734029364960e5f5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109579v1: 6fbcc8bcd3c991362bec9b644b6a982630406d6b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>bcd53fa7d1e7 drm/edid: convert to device specific logging<br />
1963639e6b93 drm/edid/firmware: convert to drm device specific logging<br />
966fab794f5d drm/edid: move edid load declarations to internal header<br />
c48e0e554102 drm/edid: use struct drm_edid for override/firmware EDID<br />
a9415f54aa87 drm/edid/firmware: rename drm_load_edid_firmware() to drm_edid_load_firmware()<br />
fa090e8be028 drm/edid/firmware: drop redundant connector_name variable/parameter<br />
ec6e3efd1e3e drm/edid: detach debugfs EDID override from EDID property update<br />
b2cd67b22e4d drm/edid: add function for checking drm_edid validity<br />
0f04ee686827 drm/edid: split drm_edid block count helper<br />
7723a53f5f51 drm/edid: rename drm_add_override_edid_modes() to drm_edid_override_connector_update()<br />
06a01b72a136 drm/edid: abstract debugfs override EDID show better<br />
e46e50c41da8 drm/edid: debug log EDID override set/reset<br />
99b4eab97641 drm/amd/display: stop using connector-&gt;override_edid<br />
0831b3d1b520 drm/i915/hdmi: stop using connector-&gt;override_edid<br />
d2e3cab454f7 drm/i915/hdmi: do dual mode detect only if connected</p>

</body>
</html>

--===============6732941572823608010==--
