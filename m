Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 466036FDC7B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 13:18:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB63A10E483;
	Wed, 10 May 2023 11:18:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2383D10E483;
 Wed, 10 May 2023 11:18:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1CB7EAADE7;
 Wed, 10 May 2023 11:18:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4304385730266271056=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 10 May 2023 11:18:10 -0000
Message-ID: <168371749008.7574.13973048461822472428@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230510103131.1618266-1-imre.deak@intel.com>
In-Reply-To: <20230510103131.1618266-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tc=3A_Add_a_workaround_for_an_IOM/TCSS_firmware_hang_issu?=
 =?utf-8?b?ZSAocmV2MTEp?=
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

--===============4304385730266271056==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/tc: Add a workaround for an IOM/TCSS firmware hang issue (rev11)
URL   : https://patchwork.freedesktop.org/series/117004/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13129 -> Patchwork_117004v11
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v11/index.html

Participating hosts (41 -> 39)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_117004v11 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness@edp-1:
    - bat-rplp-1:         NOTRUN -> [ABORT][1] ([i915#7077])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v11/bat-rplp-1/igt@i915_pm_backlight@basic-brightness@edp-1.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][2] -> [ABORT][3] ([i915#7911] / [i915#7913])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13129/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v11/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         [PASS][4] -> [DMESG-WARN][5] ([i915#6367])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13129/bat-rpls-2/igt@i915_selftest@live@slpc.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v11/bat-rpls-2/igt@i915_selftest@live@slpc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - {bat-mtlp-8}:       [ABORT][6] ([i915#4983] / [i915#7920] / [i915#7953]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13129/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v11/bat-mtlp-8/igt@i915_selftest@live@requests.html
    - {bat-mtlp-6}:       [ABORT][8] ([i915#4983] / [i915#7920] / [i915#7953]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13129/bat-mtlp-6/igt@i915_selftest@live@requests.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v11/bat-mtlp-6/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rplp-1:         [ABORT][10] ([i915#8260]) -> [SKIP][11] ([i915#3555] / [i915#4579])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13129/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v11/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7953]: https://gitlab.freedesktop.org/drm/intel/issues/7953
  [i915#8260]: https://gitlab.freedesktop.org/drm/intel/issues/8260


Build changes
-------------

  * Linux: CI_DRM_13129 -> Patchwork_117004v11

  CI-20190529: 20190529
  CI_DRM_13129: 451e49cfbaa90720149e63f4fa9c7824013c783d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7285: d1cbf2bad9c2664ab8bd3bd0946510a52800912f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117004v11: 451e49cfbaa90720149e63f4fa9c7824013c783d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

10ff32832e41 drm/i915/tc: Reset TypeC PHYs left enabled in DP-alt mode after the sink disconnects
ee8c5f01994b drm/i915/tc: Call TypeC port flush_work/cleanup without modeset locks held
dd42b48eac05 drm/i915: Factor out a helper for handling atomic modeset locks/state
788a9d13ada7 drm/i915/dp: Factor out intel_dp_get_active_pipes()
64c33fbb767f drm/i915/dp: Prevent link training fallback on disconnected port
3fb5a6327794 drm/i915/dp: Convert link training error to debug message on disconnected sink
511b92f206f5 drm/i915/dp: Add link training debug and error printing helpers
f6253f25571f drm/i915: Add support for disabling any CRTCs during HW readout/sanitization
9d0c2d68cd9c drm/i915: Factor out set_encoder_for_connector()
ec9ce6236409 drm/i915: Separate intel_crtc_disable_noatomic_begin/complete()
4c4d0f2a7ab7 drm/i915: Update connector atomic state before crtc sanitize-disabling
098c094aa48b drm/i915: Make the CRTC state consistent during sanitize-disabling
bf2de6fd1906 drm/i915: Add helpers to reference/unreference a DPLL for a CRTC
a47a22007f36 drm/i915: Fix PIPEDMC disabling for a bigjoiner configuration

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v11/index.html

--===============4304385730266271056==
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
<tr><td><b>Series:</b></td><td>drm/i915/tc: Add a workaround for an IOM/TCSS firmware hang issue (rev11)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117004/">https://patchwork.freedesktop.org/series/117004/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v11/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v11/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13129 -&gt; Patchwork_117004v11</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v11/index.html</p>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117004v11 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_backlight@basic-brightness@edp-1:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v11/bat-rplp-1/igt@i915_pm_backlight@basic-brightness@edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7077">i915#7077</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13129/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v11/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13129/bat-rpls-2/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v11/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13129/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v11/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
<li>
<p>{bat-mtlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13129/bat-mtlp-6/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v11/bat-mtlp-6/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_setmode@basic-clone-single-crtc:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13129/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8260">i915#8260</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117004v11/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13129 -&gt; Patchwork_117004v11</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13129: 451e49cfbaa90720149e63f4fa9c7824013c783d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7285: d1cbf2bad9c2664ab8bd3bd0946510a52800912f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117004v11: 451e49cfbaa90720149e63f4fa9c7824013c783d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>10ff32832e41 drm/i915/tc: Reset TypeC PHYs left enabled in DP-alt mode after the sink disconnects<br />
ee8c5f01994b drm/i915/tc: Call TypeC port flush_work/cleanup without modeset locks held<br />
dd42b48eac05 drm/i915: Factor out a helper for handling atomic modeset locks/state<br />
788a9d13ada7 drm/i915/dp: Factor out intel_dp_get_active_pipes()<br />
64c33fbb767f drm/i915/dp: Prevent link training fallback on disconnected port<br />
3fb5a6327794 drm/i915/dp: Convert link training error to debug message on disconnected sink<br />
511b92f206f5 drm/i915/dp: Add link training debug and error printing helpers<br />
f6253f25571f drm/i915: Add support for disabling any CRTCs during HW readout/sanitization<br />
9d0c2d68cd9c drm/i915: Factor out set_encoder_for_connector()<br />
ec9ce6236409 drm/i915: Separate intel_crtc_disable_noatomic_begin/complete()<br />
4c4d0f2a7ab7 drm/i915: Update connector atomic state before crtc sanitize-disabling<br />
098c094aa48b drm/i915: Make the CRTC state consistent during sanitize-disabling<br />
bf2de6fd1906 drm/i915: Add helpers to reference/unreference a DPLL for a CRTC<br />
a47a22007f36 drm/i915: Fix PIPEDMC disabling for a bigjoiner configuration</p>

</body>
</html>

--===============4304385730266271056==--
