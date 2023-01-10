Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E72664EB2
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 23:22:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 269C610E0AC;
	Tue, 10 Jan 2023 22:22:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 392E210E124;
 Tue, 10 Jan 2023 22:22:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2FD40A7E03;
 Tue, 10 Jan 2023 22:22:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3573097067239590058=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Deepak R Varma" <drv@mailo.com>
Date: Tue, 10 Jan 2023 22:22:11 -0000
Message-ID: <167338933116.5202.13972935010837311451@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1673375066.git.drv@mailo.com>
In-Reply-To: <cover.1673375066.git.drv@mailo.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gvt=3A_Avoid_full_proxy_f=5Fops_debug_attributes?=
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

--===============3573097067239590058==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gvt: Avoid full proxy f_ops debug attributes
URL   : https://patchwork.freedesktop.org/series/112630/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12569 -> Patchwork_112630v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112630v1/index.html

Participating hosts (41 -> 40)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_112630v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [PASS][1] -> [FAIL][2] ([i915#7229])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12569/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112630v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live@guc_hang:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][3] ([i915#7640])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112630v1/fi-kbl-soraka/igt@i915_selftest@live@guc_hang.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-n3050:       [PASS][4] -> [FAIL][5] ([i915#6298])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12569/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112630v1/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [DMESG-FAIL][6] ([i915#5334]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12569/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112630v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_lrc:
    - {bat-adlp-9}:       [INCOMPLETE][8] ([i915#4983]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12569/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112630v1/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - fi-kbl-soraka:      [INCOMPLETE][10] ([i915#7640]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12569/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112630v1/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7640]: https://gitlab.freedesktop.org/drm/intel/issues/7640
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828


Build changes
-------------

  * Linux: CI_DRM_12569 -> Patchwork_112630v1

  CI-20190529: 20190529
  CI_DRM_12569: 739b2ee4e76d9cd64e5fbe834b682e550e496cf4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7115: c162d70b00c6f4cf6a0ba1ca7a7e2ad8f7190646 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112630v1: 739b2ee4e76d9cd64e5fbe834b682e550e496cf4 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f66b7a25610a drm/i915/gvt: Avoid full proxy f_ops for vgpu_status debug attributes
26f67451ed4f drm/i915/gvt: Avoid full proxy f_ops for scan_nonprivbb debug attributes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112630v1/index.html

--===============3573097067239590058==
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
<tr><td><b>Series:</b></td><td>drm/i915/gvt: Avoid full proxy f_ops debug attributes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112630/">https://patchwork.freedesktop.org/series/112630/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112630v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112630v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12569 -&gt; Patchwork_112630v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112630v1/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112630v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12569/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112630v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_hang:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112630v1/fi-kbl-soraka/igt@i915_selftest@live@guc_hang.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7640">i915#7640</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12569/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112630v1/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12569/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112630v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{bat-adlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12569/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112630v1/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12569/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7640">i915#7640</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112630v1/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12569 -&gt; Patchwork_112630v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12569: 739b2ee4e76d9cd64e5fbe834b682e550e496cf4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7115: c162d70b00c6f4cf6a0ba1ca7a7e2ad8f7190646 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112630v1: 739b2ee4e76d9cd64e5fbe834b682e550e496cf4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f66b7a25610a drm/i915/gvt: Avoid full proxy f_ops for vgpu_status debug attributes<br />
26f67451ed4f drm/i915/gvt: Avoid full proxy f_ops for scan_nonprivbb debug attributes</p>

</body>
</html>

--===============3573097067239590058==--
