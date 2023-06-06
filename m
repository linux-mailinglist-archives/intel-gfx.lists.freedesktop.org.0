Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2D9725022
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 00:48:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EA1A10E3E6;
	Tue,  6 Jun 2023 22:48:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1F21F10E3E6;
 Tue,  6 Jun 2023 22:48:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18182AADD2;
 Tue,  6 Jun 2023 22:48:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4722499867205405733=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 06 Jun 2023 22:48:05 -0000
Message-ID: <168609168509.22675.11542921842346714460@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Load_LUTs_with_DSB_=28rev2=29?=
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

--===============4722499867205405733==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Load LUTs with DSB (rev2)
URL   : https://patchwork.freedesktop.org/series/113042/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13238 -> Patchwork_113042v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/index.html

Participating hosts (41 -> 39)
------------------------------

  Missing    (2): bat-rpls-2 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_113042v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-dg2-11:         NOTRUN -> [SKIP][1] ([i915#7828])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/bat-dg2-11/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
    - bat-adlm-1:         NOTRUN -> [SKIP][2] ([i915#7828])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/bat-adlm-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:
    - bat-dg2-8:          [PASS][3] -> [FAIL][4] ([i915#7932])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-adlm-1:         NOTRUN -> [SKIP][5] ([i915#1845])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/bat-adlm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-11:         [ABORT][6] ([i915#7913] / [i915#7979]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-dg2-11/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/bat-dg2-11/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [DMESG-WARN][8] ([i915#6367]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@workarounds:
    - bat-adlm-1:         [INCOMPLETE][10] ([i915#4983] / [i915#7677]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-adlm-1/igt@i915_selftest@live@workarounds.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/bat-adlm-1/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#7677]: https://gitlab.freedesktop.org/drm/intel/issues/7677
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7979]: https://gitlab.freedesktop.org/drm/intel/issues/7979
  [i915#8260]: https://gitlab.freedesktop.org/drm/intel/issues/8260


Build changes
-------------

  * Linux: CI_DRM_13238 -> Patchwork_113042v2

  CI-20190529: 20190529
  CI_DRM_13238: 8c0b302811d744b945dcb6d78164a76188914db9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7320: 1c96b08a4cde6f2d49824a8cc3303bd860617b52 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113042v2: 8c0b302811d744b945dcb6d78164a76188914db9 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

674b64159bd8 drm/i915: Do state check for color management changes
2e1001ec3012 drm/i915/dsb: Re-instate DSB for LUT updates
6e43a7fee4a7 drm/i915/dsb: Use DEwake to combat PkgC latency
5ec7a070502b drm/i915: Introudce intel_crtc_scanline_to_hw()
50f7843e76d9 drm/i915: Introduce skl_watermark_max_latency()
3f7be7a944e2 drm/i915/dsb: Evade transcoder undelayed vblank when using DSB
846fdd8f2a28 drm/i915/dsb: Use non-posted register writes for legacy LUT
cc7c791acea8 drm/i915/dsb: Load LUTs using the DSB during vblank
807de1a55e42 drm/i915/dsb: Don't use DSB to load the LUTs during full modeset
3d819e893e5e drm/i915/dsb: Add support for non-posted DSB registers writes
a80ebb27076d drm/i915/dsb: Introduce intel_dsb_reg_write_masked()
ded9559af5c6 drm/i915/dsb: Introduce intel_dsb_noop()
400f9b4d04a6 drm/i915/dsb: Don't use indexed writes when byte enables are not all set
5933dcfa8f94 drm/i915/dsb: Avoid corrupting the first register write
97f695db6320 drm/i915/dsb: Define the contents of some intstructions bit better
869a10664145 drm/i915/dsb: Define more DSB bits
99bd1791ac1c drm/i915/dsb: Dump the DSB command buffer when DSB fails
871d9c000850 drm/i915/dsb: Use non-locked register access
aee9c9b77994 drm/i915: Constify LUT entries in checker

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/index.html

--===============4722499867205405733==
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
<tr><td><b>Series:</b></td><td>drm/i915: Load LUTs with DSB (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113042/">https://patchwork.freedesktop.org/series/113042/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13238 -&gt; Patchwork_113042v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/index.html</p>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Missing    (2): bat-rpls-2 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113042v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/bat-dg2-11/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/bat-adlm-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/bat-adlm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7979">i915#7979</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-adlm-1/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7677">i915#7677</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113042v2/bat-adlm-1/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13238 -&gt; Patchwork_113042v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13238: 8c0b302811d744b945dcb6d78164a76188914db9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7320: 1c96b08a4cde6f2d49824a8cc3303bd860617b52 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113042v2: 8c0b302811d744b945dcb6d78164a76188914db9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>674b64159bd8 drm/i915: Do state check for color management changes<br />
2e1001ec3012 drm/i915/dsb: Re-instate DSB for LUT updates<br />
6e43a7fee4a7 drm/i915/dsb: Use DEwake to combat PkgC latency<br />
5ec7a070502b drm/i915: Introudce intel_crtc_scanline_to_hw()<br />
50f7843e76d9 drm/i915: Introduce skl_watermark_max_latency()<br />
3f7be7a944e2 drm/i915/dsb: Evade transcoder undelayed vblank when using DSB<br />
846fdd8f2a28 drm/i915/dsb: Use non-posted register writes for legacy LUT<br />
cc7c791acea8 drm/i915/dsb: Load LUTs using the DSB during vblank<br />
807de1a55e42 drm/i915/dsb: Don't use DSB to load the LUTs during full modeset<br />
3d819e893e5e drm/i915/dsb: Add support for non-posted DSB registers writes<br />
a80ebb27076d drm/i915/dsb: Introduce intel_dsb_reg_write_masked()<br />
ded9559af5c6 drm/i915/dsb: Introduce intel_dsb_noop()<br />
400f9b4d04a6 drm/i915/dsb: Don't use indexed writes when byte enables are not all set<br />
5933dcfa8f94 drm/i915/dsb: Avoid corrupting the first register write<br />
97f695db6320 drm/i915/dsb: Define the contents of some intstructions bit better<br />
869a10664145 drm/i915/dsb: Define more DSB bits<br />
99bd1791ac1c drm/i915/dsb: Dump the DSB command buffer when DSB fails<br />
871d9c000850 drm/i915/dsb: Use non-locked register access<br />
aee9c9b77994 drm/i915: Constify LUT entries in checker</p>

</body>
</html>

--===============4722499867205405733==--
