Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9B47C443F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 00:36:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9BE010E3EC;
	Tue, 10 Oct 2023 22:36:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 11FC210E3EC;
 Tue, 10 Oct 2023 22:36:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0C930A7DFB;
 Tue, 10 Oct 2023 22:36:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4797530696838302600=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Tue, 10 Oct 2023 22:36:20 -0000
Message-ID: <169697738002.28099.4403606918597289893@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231010114120.2504103-1-jouni.hogander@intel.com>
In-Reply-To: <20231010114120.2504103-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRnJh?=
 =?utf-8?q?mework_for_display_parameters_=28rev2=29?=
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

--===============4797530696838302600==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Framework for display parameters (rev2)
URL   : https://patchwork.freedesktop.org/series/124645/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13736 -> Patchwork_124645v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/index.html

Participating hosts (36 -> 37)
------------------------------

  Additional (1): fi-hsw-4770 

Known issues
------------

  Here are the changes found in Patchwork_124645v2 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-hsw-4770:        NOTRUN -> [FAIL][1] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/fi-hsw-4770/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@mman:
    - bat-rpls-1:         [PASS][2] -> [TIMEOUT][3] ([i915#6794] / [i915#7392])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/bat-rpls-1/igt@i915_selftest@live@mman.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/bat-rpls-1/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-1:         [PASS][4] -> [WARN][5] ([i915#8747])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-adlp-9:         NOTRUN -> [SKIP][6] ([i915#3546]) +2 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - fi-kbl-guc:         NOTRUN -> [SKIP][7] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/fi-kbl-guc/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-mtlp-6:         [FAIL][8] ([fdo#103375]) -> [PASS][9] +2 other tests pass
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/bat-mtlp-6/igt@i915_suspend@basic-s2idle-without-i915.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/bat-mtlp-6/igt@i915_suspend@basic-s2idle-without-i915.html
    - fi-apl-guc:         [INCOMPLETE][10] ([i915#1982] / [i915#4528]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/fi-apl-guc/igt@i915_suspend@basic-s2idle-without-i915.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/fi-apl-guc/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-kbl-guc:         [ABORT][12] -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/fi-kbl-guc/igt@i915_suspend@basic-s3-without-i915.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/fi-kbl-guc/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8747]: https://gitlab.freedesktop.org/drm/intel/issues/8747
  [i915#8981]: https://gitlab.freedesktop.org/drm/intel/issues/8981


Build changes
-------------

  * Linux: CI_DRM_13736 -> Patchwork_124645v2

  CI-20190529: 20190529
  CI_DRM_13736: 251e78c6b6f76712187d25034bc2ebed0eb33654 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7527: 46f98a3041f73a1d6ee7ec3ace6eba79b15369c4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124645v2: 251e78c6b6f76712187d25034bc2ebed0eb33654 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d8ddae195a28 drm/i915/display: Use same permissions for enable_sagv as for rest
d27eb23603d4 drm/i915/display: Move enable_dp_mst under display
13f57f255bf7 drm/i915/display: Move nuclear_pageflip under display
48ba8d0e105e drm/i915/display: Move verbose_state_checks under display
64fdc54e5683 drm/i915/display: Use device parameters instead of module in I915_STATE_WARN
e5fcb32bf7d8 drm/i915/display: Move disable_display parameter under display
bd9d5d54b131 drm/i915/display: Move force_reset_modeset_test parameter under display
a1c3fa674b51 drm/i915/display: Move load_detect_test parameter under display
69dee895c2df drm/i915/display: Move enable_dpcd_backlightmodule parameter under display
5badb12f5b9b drm/i915/display: Move fastboot module parameter under display
9b1b0c2ee0e9 drm/i915/display: Move edp_vswing module parameter under display
6bfe7fdc42b3 drm/i915/display: Move invert_brightness module parameter under display
cd0bc023bb29 drm/i915/display: Move enable_ips module parameter under display
c88e20a0fafe drm/i915/display: Move disable_power_well module parameter under display
064e1e99739d drm/i915/display: Move enable_sagv module parameter under display
015cbcf58c9e drm/i915/display: Move enable_dpt module parameter under display
30989dddcaee drm/i915/display: Move enable_dc module parameter under display
2caf54820db1 drm/i915/display: Move vbt_sdvo_panel_type module parameter under display
24253d544913 drm/i915/display: Move panel_use_ssc module parameter under display
9343b8e2fb6a drm/i915/display: Move lvds_channel_mode module parameter under display
70c7e6b0eac4 drm/i915/display: Move vbt_firmware module parameter under display
e5655ea8cad8 drm/i915/display: Move psr related module parameters under display
a4e999fe2a9d drm/i915/display: Move enable_fbc module parameter under display
344ccb41eb8c drm/i915/display: Dump also display parameters into GPU error dump
7b84102055ae drm/i915/display: Add framework to add parameters specific to display

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/index.html

--===============4797530696838302600==
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
<tr><td><b>Series:</b></td><td>Framework for display parameters (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124645/">https://patchwork.freedesktop.org/series/124645/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13736 -&gt; Patchwork_124645v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/index.html</p>
<h2>Participating hosts (36 -&gt; 37)</h2>
<p>Additional (1): fi-hsw-4770 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124645v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/fi-hsw-4770/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/bat-rpls-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/bat-rpls-1/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8747">i915#8747</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/fi-kbl-guc/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/bat-mtlp-6/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/bat-mtlp-6/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> +2 other tests pass</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/fi-apl-guc/igt@i915_suspend@basic-s2idle-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/fi-apl-guc/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/fi-kbl-guc/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v2/fi-kbl-guc/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13736 -&gt; Patchwork_124645v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13736: 251e78c6b6f76712187d25034bc2ebed0eb33654 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7527: 46f98a3041f73a1d6ee7ec3ace6eba79b15369c4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124645v2: 251e78c6b6f76712187d25034bc2ebed0eb33654 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d8ddae195a28 drm/i915/display: Use same permissions for enable_sagv as for rest<br />
d27eb23603d4 drm/i915/display: Move enable_dp_mst under display<br />
13f57f255bf7 drm/i915/display: Move nuclear_pageflip under display<br />
48ba8d0e105e drm/i915/display: Move verbose_state_checks under display<br />
64fdc54e5683 drm/i915/display: Use device parameters instead of module in I915_STATE_WARN<br />
e5fcb32bf7d8 drm/i915/display: Move disable_display parameter under display<br />
bd9d5d54b131 drm/i915/display: Move force_reset_modeset_test parameter under display<br />
a1c3fa674b51 drm/i915/display: Move load_detect_test parameter under display<br />
69dee895c2df drm/i915/display: Move enable_dpcd_backlightmodule parameter under display<br />
5badb12f5b9b drm/i915/display: Move fastboot module parameter under display<br />
9b1b0c2ee0e9 drm/i915/display: Move edp_vswing module parameter under display<br />
6bfe7fdc42b3 drm/i915/display: Move invert_brightness module parameter under display<br />
cd0bc023bb29 drm/i915/display: Move enable_ips module parameter under display<br />
c88e20a0fafe drm/i915/display: Move disable_power_well module parameter under display<br />
064e1e99739d drm/i915/display: Move enable_sagv module parameter under display<br />
015cbcf58c9e drm/i915/display: Move enable_dpt module parameter under display<br />
30989dddcaee drm/i915/display: Move enable_dc module parameter under display<br />
2caf54820db1 drm/i915/display: Move vbt_sdvo_panel_type module parameter under display<br />
24253d544913 drm/i915/display: Move panel_use_ssc module parameter under display<br />
9343b8e2fb6a drm/i915/display: Move lvds_channel_mode module parameter under display<br />
70c7e6b0eac4 drm/i915/display: Move vbt_firmware module parameter under display<br />
e5655ea8cad8 drm/i915/display: Move psr related module parameters under display<br />
a4e999fe2a9d drm/i915/display: Move enable_fbc module parameter under display<br />
344ccb41eb8c drm/i915/display: Dump also display parameters into GPU error dump<br />
7b84102055ae drm/i915/display: Add framework to add parameters specific to display</p>

</body>
</html>

--===============4797530696838302600==--
