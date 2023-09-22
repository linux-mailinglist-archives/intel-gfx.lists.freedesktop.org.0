Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5A67AAC90
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 10:26:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86F6910E132;
	Fri, 22 Sep 2023 08:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 580AF10E03E;
 Fri, 22 Sep 2023 08:26:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46A70A02F0;
 Fri, 22 Sep 2023 08:26:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5196286943007612767=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 22 Sep 2023 08:26:35 -0000
Message-ID: <169537119524.5196.4670042619108938087@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230921195159.2646027-1-imre.deak@intel.com>
In-Reply-To: <20230921195159.2646027-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_BW_management_on_FDI_links?=
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

--===============5196286943007612767==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Improve BW management on FDI links
URL   : https://patchwork.freedesktop.org/series/124078/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13668 -> Patchwork_124078v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124078v1/index.html

Participating hosts (39 -> 37)
------------------------------

  Missing    (2): fi-hsw-4770 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_124078v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [PASS][1] -> [DMESG-FAIL][2] ([i915#5334])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13668/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124078v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][3] -> [ABORT][4] ([i915#8668])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13668/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124078v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
#### Possible fixes ####

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][5] ([IGT#3]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13668/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124078v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668


Build changes
-------------

  * Linux: CI_DRM_13668 -> Patchwork_124078v1

  CI-20190529: 20190529
  CI_DRM_13668: 5413464caa6cf37b1f511ba81d894ca40a28cbf2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7496: 6a96d3ad178e468b74a58cc10dead2f57bc1558d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124078v1: 5413464caa6cf37b1f511ba81d894ca40a28cbf2 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1f0cdd9d938e drm/i915/fdi: Recompute state for affected CRTCs on FDI links
92e559e9315b drm/i915/fdi: Improve FDI BW sharing between pipe B and C
ef80556f60f4 drm/i915: Add helpers for BW management on shared display links
822208f97ab4 drm/i915: Factor out a helper to check/compute all the CRTC states
89c743d73a5b drm/i915: Rename intel_modeset_all_pipes() to intel_modeset_all_pipes_late()
612937691770 drm/i915: Add helper to modeset a set of pipes
4df7b47f28de drm/i915/dp: Limit the output link bpp in DSC mode
b4b1c4f69e40 drm/i915/dp: Update the link bpp limits for DSC mode
5a207ce050e2 drm/i915/dp: Skip computing a non-DSC link config if DSC is needed
3ff1dfc3bbcf drm/i915/dp: Track the pipe and link bpp limits separately
6ea10ee3442b drm/i915/dp: Factor out helpers to compute the link limits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124078v1/index.html

--===============5196286943007612767==
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
<tr><td><b>Series:</b></td><td>drm/i915: Improve BW management on FDI links</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124078/">https://patchwork.freedesktop.org/series/124078/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124078v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124078v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13668 -&gt; Patchwork_124078v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124078v1/index.html</p>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Missing    (2): fi-hsw-4770 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124078v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13668/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124078v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13668/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124078v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_hdmi_inject@inject-audio:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13668/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124078v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13668 -&gt; Patchwork_124078v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13668: 5413464caa6cf37b1f511ba81d894ca40a28cbf2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7496: 6a96d3ad178e468b74a58cc10dead2f57bc1558d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124078v1: 5413464caa6cf37b1f511ba81d894ca40a28cbf2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1f0cdd9d938e drm/i915/fdi: Recompute state for affected CRTCs on FDI links<br />
92e559e9315b drm/i915/fdi: Improve FDI BW sharing between pipe B and C<br />
ef80556f60f4 drm/i915: Add helpers for BW management on shared display links<br />
822208f97ab4 drm/i915: Factor out a helper to check/compute all the CRTC states<br />
89c743d73a5b drm/i915: Rename intel_modeset_all_pipes() to intel_modeset_all_pipes_late()<br />
612937691770 drm/i915: Add helper to modeset a set of pipes<br />
4df7b47f28de drm/i915/dp: Limit the output link bpp in DSC mode<br />
b4b1c4f69e40 drm/i915/dp: Update the link bpp limits for DSC mode<br />
5a207ce050e2 drm/i915/dp: Skip computing a non-DSC link config if DSC is needed<br />
3ff1dfc3bbcf drm/i915/dp: Track the pipe and link bpp limits separately<br />
6ea10ee3442b drm/i915/dp: Factor out helpers to compute the link limits</p>

</body>
</html>

--===============5196286943007612767==--
