Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D5C3A83D2
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 17:21:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B73836E3AC;
	Tue, 15 Jun 2021 15:21:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5CA6989C88;
 Tue, 15 Jun 2021 15:21:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53C76AA01E;
 Tue, 15 Jun 2021 15:21:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Werner Sembach" <wse@tuxedocomputers.com>
Date: Tue, 15 Jun 2021 15:21:11 -0000
Message-ID: <162377047131.8818.3895458550927508949@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210615141426.6001-1-wse@tuxedocomputers.com>
In-Reply-To: <20210615141426.6001-1-wse@tuxedocomputers.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTmV3?=
 =?utf-8?q?_uAPI_drm_properties_for_color_management?=
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
Content-Type: multipart/mixed; boundary="===============1995156484=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1995156484==
Content-Type: multipart/alternative;
 boundary="===============1382649281992805637=="

--===============1382649281992805637==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: New uAPI drm properties for color management
URL   : https://patchwork.freedesktop.org/series/91523/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10225 -> Patchwork_20374
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20374/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20374:

### CI changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * boot:
    - {fi-tgl-dsi}:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-tgl-dsi/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20374/fi-tgl-dsi/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_20374 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-bsw-nick:        [PASS][3] -> [INCOMPLETE][4] ([i915#2539])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20374/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html
    - fi-bsw-kefka:       [PASS][5] -> [INCOMPLETE][6] ([i915#2539])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20374/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [PASS][7] -> [INCOMPLETE][8] ([i915#2782])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20374/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-icl-y:           NOTRUN -> [FAIL][9] ([i915#2782])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20374/fi-icl-y/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][10] ([i915#3303]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20374/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2539]: https://gitlab.freedesktop.org/drm/intel/issues/2539
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Participating hosts (48 -> 29)
------------------------------

  Missing    (19): fi-ilk-m540 fi-bxt-dsi fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-bwr-2160 fi-snb-2520m fi-ilk-650 fi-ctg-p8600 fi-hsw-4770 bat-adls-4 bat-adlp-4 bat-adls-3 fi-ivb-3770 fi-elk-e7500 fi-pnv-d510 fi-bdw-samus bat-jsl-1 fi-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_10225 -> Patchwork_20374

  CI-20190529: 20190529
  CI_DRM_10225: 52beaf52657f49ffda64af3c46548fb0907cf66d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6107: 2bec4e7619f04d2ca86006917acd3b5c86fb73a0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20374: 72afa8c54272c4ced810d2dd2629f5a5a9e6dbd3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

72afa8c54272 drm/i915/display: Add handling for new "preferred color format" property
8624713f5dea drm/amd/display: Add handling for new "preferred color format" property
a52e822d83fb drm/uAPI: Add "preferred color format" drm property as setting for userspace
3f6c38f8c4e1 drm/i915/display: Add handling for new "active color range" property
fa47f470080a drm/amd/display: Add handling for new "active color range" property
0fccadb22ab7 drm/uAPI: Add "active color range" drm property as feedback for userspace
ae0a4cc4b63e drm/i915/display: Add handling for new "active color format" property
60256618fa4c drm/amd/display: Add handling for new "active color format" property
212584fff8b9 drm/uAPI: Add "active color format" drm property as feedback for userspace
e2c98762abb7 drm/i915/display: Add handling for new "active bpc" property
8681f2f96c3c drm/amd/display: Add handling for new "active bpc" property
e8e22adbee4c drm/uAPI: Add "active bpc" as feedback channel for "max bpc" drm property
c50d857bd4d3 drm/amd/display: Add missing cases convert_dc_color_depth_into_bpc
3ad7ae056858 drm/amd/display: Remove unnecessary SIGNAL_TYPE_HDMI_TYPE_A check

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20374/index.html

--===============1382649281992805637==
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
<tr><td><b>Series:</b></td><td>New uAPI drm properties for color management</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91523/">https://patchwork.freedesktop.org/series/91523/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20374/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20374/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10225 -&gt; Patchwork_20374</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20374/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20374:</p>
<h3>CI changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>boot:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-tgl-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20374/fi-tgl-dsi/boot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20374 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20374/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2539">i915#2539</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20374/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2539">i915#2539</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-icl-y/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20374/fi-icl-y/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20374/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20374/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (48 -&gt; 29)</h2>
<p>Missing    (19): fi-ilk-m540 fi-bxt-dsi fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-bwr-2160 fi-snb-2520m fi-ilk-650 fi-ctg-p8600 fi-hsw-4770 bat-adls-4 bat-adlp-4 bat-adls-3 fi-ivb-3770 fi-elk-e7500 fi-pnv-d510 fi-bdw-samus bat-jsl-1 fi-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10225 -&gt; Patchwork_20374</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10225: 52beaf52657f49ffda64af3c46548fb0907cf66d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6107: 2bec4e7619f04d2ca86006917acd3b5c86fb73a0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20374: 72afa8c54272c4ced810d2dd2629f5a5a9e6dbd3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>72afa8c54272 drm/i915/display: Add handling for new "preferred color format" property<br />
8624713f5dea drm/amd/display: Add handling for new "preferred color format" property<br />
a52e822d83fb drm/uAPI: Add "preferred color format" drm property as setting for userspace<br />
3f6c38f8c4e1 drm/i915/display: Add handling for new "active color range" property<br />
fa47f470080a drm/amd/display: Add handling for new "active color range" property<br />
0fccadb22ab7 drm/uAPI: Add "active color range" drm property as feedback for userspace<br />
ae0a4cc4b63e drm/i915/display: Add handling for new "active color format" property<br />
60256618fa4c drm/amd/display: Add handling for new "active color format" property<br />
212584fff8b9 drm/uAPI: Add "active color format" drm property as feedback for userspace<br />
e2c98762abb7 drm/i915/display: Add handling for new "active bpc" property<br />
8681f2f96c3c drm/amd/display: Add handling for new "active bpc" property<br />
e8e22adbee4c drm/uAPI: Add "active bpc" as feedback channel for "max bpc" drm property<br />
c50d857bd4d3 drm/amd/display: Add missing cases convert_dc_color_depth_into_bpc<br />
3ad7ae056858 drm/amd/display: Remove unnecessary SIGNAL_TYPE_HDMI_TYPE_A check</p>

</body>
</html>

--===============1382649281992805637==--

--===============1995156484==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1995156484==--
