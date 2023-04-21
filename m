Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D056EACBA
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 16:21:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCAF610EE27;
	Fri, 21 Apr 2023 14:21:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C780010EE27;
 Fri, 21 Apr 2023 14:21:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C0C75A02F0;
 Fri, 21 Apr 2023 14:21:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3675090317045198469=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 21 Apr 2023 14:21:46 -0000
Message-ID: <168208690678.5828.12186187374381619600@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1682077472.git.jani.nikula@intel.com>
In-Reply-To: <cover.1682077472.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/display_=26_drm/i915=3A_more_struct_drm=5Fedid_conversions?=
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

--===============3675090317045198469==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/display & drm/i915: more struct drm_edid conversions
URL   : https://patchwork.freedesktop.org/series/116813/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13041 -> Patchwork_116813v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/index.html

Participating hosts (37 -> 36)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_116813v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-adlp-9:         NOTRUN -> [SKIP][1] ([i915#3546]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@basic:
    - {bat-mtlp-8}:       [FAIL][2] -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/bat-mtlp-8/igt@gem_exec_parallel@engines@basic.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/bat-mtlp-8/igt@gem_exec_parallel@engines@basic.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-bsw-n3050:       [DMESG-WARN][4] ([i915#1982]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/fi-bsw-n3050/igt@i915_suspend@basic-s2idle-without-i915.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/fi-bsw-n3050/igt@i915_suspend@basic-s2idle-without-i915.html

  
#### Warnings ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [DMESG-FAIL][6] ([i915#6997]) -> [DMESG-FAIL][7] ([i915#6367] / [i915#7996])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996


Build changes
-------------

  * Linux: CI_DRM_13041 -> Patchwork_116813v1

  CI-20190529: 20190529
  CI_DRM_13041: a172f81b6b3534fd9e5c1e0f25764fceabdd8343 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7264: 2f0a07378e58e5c7d7b589b39ace7e3a2317f6b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116813v1: a172f81b6b3534fd9e5c1e0f25764fceabdd8343 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

06b49e8d44ec drm/i915/display: switch the rest of the connectors to struct drm_edid
7a23607a15a2 drm/display/dp_mst: convert to struct drm_edid
72c89e375955 drm/edid: make drm_edid_duplicate() safe to call with NULL parameter
a73fb9511920 drm/i915/lvds: switch to drm_edid_read_switcheroo()
965b828ff6ce drm/edid: add drm_edid_read_switcheroo()
2b018fb0546b drm/i915/sdvo: stop caching has_hdmi_audio in struct intel_sdvo
fb9b63218d7f drm/i915/sdvo: stop caching has_hdmi_monitor in struct intel_sdvo
a30cbde3e239 drm/i915/hdmi: stop caching has_hdmi_sink in struct intel_hdmi
e2747783cf4e drm/i915/hdmi: stop caching has_audio in struct intel_hdmi
36c08f927f1a drm/i915/dp: stop caching has_hdmi_sink in struct intel_dp
3bf07467679e drm/i915/dp: stop caching has_audio in struct intel_dp
5a4029334bdf drm/display/dp_mst: drop has_audio from struct drm_dp_mst_port
9f8cc0d0be0f drm/edid: parse display info has_audio similar to is_hdmi

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/index.html

--===============3675090317045198469==
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
<tr><td><b>Series:</b></td><td>drm/display &amp; drm/i915: more struct drm_edid conversions</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116813/">https://patchwork.freedesktop.org/series/116813/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13041 -&gt; Patchwork_116813v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116813v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pipe_crc_basic@read-crc:<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/bat-mtlp-8/igt@gem_exec_parallel@engines@basic.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/bat-mtlp-8/igt@gem_exec_parallel@engines@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/fi-bsw-n3050/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/fi-bsw-n3050/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116813v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7996">i915#7996</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13041 -&gt; Patchwork_116813v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13041: a172f81b6b3534fd9e5c1e0f25764fceabdd8343 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7264: 2f0a07378e58e5c7d7b589b39ace7e3a2317f6b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116813v1: a172f81b6b3534fd9e5c1e0f25764fceabdd8343 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>06b49e8d44ec drm/i915/display: switch the rest of the connectors to struct drm_edid<br />
7a23607a15a2 drm/display/dp_mst: convert to struct drm_edid<br />
72c89e375955 drm/edid: make drm_edid_duplicate() safe to call with NULL parameter<br />
a73fb9511920 drm/i915/lvds: switch to drm_edid_read_switcheroo()<br />
965b828ff6ce drm/edid: add drm_edid_read_switcheroo()<br />
2b018fb0546b drm/i915/sdvo: stop caching has_hdmi_audio in struct intel_sdvo<br />
fb9b63218d7f drm/i915/sdvo: stop caching has_hdmi_monitor in struct intel_sdvo<br />
a30cbde3e239 drm/i915/hdmi: stop caching has_hdmi_sink in struct intel_hdmi<br />
e2747783cf4e drm/i915/hdmi: stop caching has_audio in struct intel_hdmi<br />
36c08f927f1a drm/i915/dp: stop caching has_hdmi_sink in struct intel_dp<br />
3bf07467679e drm/i915/dp: stop caching has_audio in struct intel_dp<br />
5a4029334bdf drm/display/dp_mst: drop has_audio from struct drm_dp_mst_port<br />
9f8cc0d0be0f drm/edid: parse display info has_audio similar to is_hdmi</p>

</body>
</html>

--===============3675090317045198469==--
