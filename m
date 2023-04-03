Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 567586D517F
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 21:41:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 855C510E1D4;
	Mon,  3 Apr 2023 19:41:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9E8ED10E1D4;
 Mon,  3 Apr 2023 19:41:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 95983A882E;
 Mon,  3 Apr 2023 19:41:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7184320062302146770=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>
Date: Mon, 03 Apr 2023 19:41:53 -0000
Message-ID: <168055091360.24310.6447296326879462528@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230403092313.235320-1-dmitry.baryshkov@linaro.org>
In-Reply-To: <20230403092313.235320-1-dmitry.baryshkov@linaro.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_move_DSC_RC_tables_to_drm=5Fdsc=5Fhelper=2Ec_=28rev5?=
 =?utf-8?q?=29?=
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

--===============7184320062302146770==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: move DSC RC tables to drm_dsc_helper.c (rev5)
URL   : https://patchwork.freedesktop.org/series/114473/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12961 -> Patchwork_114473v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v5/index.html

Participating hosts (36 -> 36)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_114473v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - bat-dg2-9:          [PASS][1] -> [INCOMPLETE][2] ([i915#7873])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/bat-dg2-9/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v5/bat-dg2-9/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [PASS][3] -> [ABORT][4] ([i915#4983])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/bat-rpls-1/igt@i915_selftest@live@reset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v5/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-dg2-11:         NOTRUN -> [SKIP][5] ([i915#5354])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v5/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][6] ([fdo#109271]) +38 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v5/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#7873]: https://gitlab.freedesktop.org/drm/intel/issues/7873


Build changes
-------------

  * Linux: CI_DRM_12961 -> Patchwork_114473v5

  CI-20190529: 20190529
  CI_DRM_12961: 82f1e99798a184af2c21c9c8748f3fba4bdc4556 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7233: 716520b469a2745e1882780f2aabbc88eb19332c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114473v5: 82f1e99798a184af2c21c9c8748f3fba4bdc4556 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

83911d686ecb drm/i915/dsc: make use of several params from drm_dsc_config
ac02a07f037b drm/i915/dsc: use additional DSC helpers
52c214085036 drm/display/dsc: Add flatness and initial scale value calculations
c5d0d315b62a drm/display/dsc: add helper to set semi-const parameters
4b721f84e4c7 drm/display/dsc: add YCbCr 4:2:2 and 4:2:0 RC parameters
42b32a28ff61 drm/display/dsc: include the rest of pre-SCR parameters
0d12f1915ad4 drm/display/dsc: split DSC 1.2 and DSC 1.1 (pre-SCR) parameters
4232eea5d6ae drm/display/dsc: use flat array for rc_parameters lookup
c4bfa82efb59 drm/i915/dsc: stop using interim structure for calculated params
d90f984880d3 drm/i915/dsc: move DSC tables to DRM DSC helper
5b8935920201 drm/i915/dsc: move rc_buf_thresh values to common helper
5377814e1ca0 drm/i915/dsc: change DSC param tables to follow the DSC model

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v5/index.html

--===============7184320062302146770==
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
<tr><td><b>Series:</b></td><td>drm/i915: move DSC RC tables to drm_dsc_helper.c (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114473/">https://patchwork.freedesktop.org/series/114473/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12961 -&gt; Patchwork_114473v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v5/index.html</p>
<h2>Participating hosts (36 -&gt; 36)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114473v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/bat-dg2-9/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v5/bat-dg2-9/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7873">i915#7873</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v5/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v5/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v5/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +38 similar issues</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12961 -&gt; Patchwork_114473v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12961: 82f1e99798a184af2c21c9c8748f3fba4bdc4556 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7233: 716520b469a2745e1882780f2aabbc88eb19332c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114473v5: 82f1e99798a184af2c21c9c8748f3fba4bdc4556 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>83911d686ecb drm/i915/dsc: make use of several params from drm_dsc_config<br />
ac02a07f037b drm/i915/dsc: use additional DSC helpers<br />
52c214085036 drm/display/dsc: Add flatness and initial scale value calculations<br />
c5d0d315b62a drm/display/dsc: add helper to set semi-const parameters<br />
4b721f84e4c7 drm/display/dsc: add YCbCr 4:2:2 and 4:2:0 RC parameters<br />
42b32a28ff61 drm/display/dsc: include the rest of pre-SCR parameters<br />
0d12f1915ad4 drm/display/dsc: split DSC 1.2 and DSC 1.1 (pre-SCR) parameters<br />
4232eea5d6ae drm/display/dsc: use flat array for rc_parameters lookup<br />
c4bfa82efb59 drm/i915/dsc: stop using interim structure for calculated params<br />
d90f984880d3 drm/i915/dsc: move DSC tables to DRM DSC helper<br />
5b8935920201 drm/i915/dsc: move rc_buf_thresh values to common helper<br />
5377814e1ca0 drm/i915/dsc: change DSC param tables to follow the DSC model</p>

</body>
</html>

--===============7184320062302146770==--
