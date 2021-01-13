Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF532F4C75
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 14:49:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A6416E9D7;
	Wed, 13 Jan 2021 13:49:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 76C2C6E9D6;
 Wed, 13 Jan 2021 13:49:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6F3B7A47E8;
 Wed, 13 Jan 2021 13:49:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 13 Jan 2021 13:49:09 -0000
Message-ID: <161054574942.11118.8794772039164839227@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210113124600.656-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210113124600.656-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/10=5D_drm/i915=3A_Mark_up_protected_use?=
 =?utf-8?q?s_of_=27i915=5Frequest=5Fcompleted=27?=
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
Content-Type: multipart/mixed; boundary="===============1427729799=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1427729799==
Content-Type: multipart/alternative;
 boundary="===============0135397571196509643=="

--===============0135397571196509643==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/10] drm/i915: Mark up protected uses of 'i915_request_completed'
URL   : https://patchwork.freedesktop.org/series/85803/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9601 -> Patchwork_19331
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/index.html

Known issues
------------

  Here are the changes found in Patchwork_19331 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@nop-compute0:
    - fi-tgl-y:           NOTRUN -> [SKIP][1] ([fdo#109315] / [i915#2575]) +10 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/fi-tgl-y/igt@amdgpu/amd_cs_nop@nop-compute0.html

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402]) +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [PASS][4] -> [FAIL][5] ([i915#1888])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [PASS][6] -> [DMESG-WARN][7] ([i915#2411] / [i915#402])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][8] -> [FAIL][9] ([i915#579])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7500u:       [PASS][10] -> [DMESG-WARN][11] ([i915#2605])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-tgl-y:           [DMESG-WARN][12] ([i915#402]) -> [PASS][13] +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/fi-tgl-y/igt@gem_close_race@basic-threads.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/fi-tgl-y/igt@gem_close_race@basic-threads.html

  
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9601 -> Patchwork_19331

  CI-20190529: 20190529
  CI_DRM_9601: 35180379602fb11cc044e6a9a77f4f758e641aad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5957: 2a2b3418f7458dfa1fac255cc5c71603f617690a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19331: d824af9423406f1bec5c7e3788bb31a465c2e6a4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d824af942340 drm/i915/gt: Reduce GT runtime stats from seqlock to a latch
e36118043d45 drm/i915/gt: Reduce engine runtime stats from seqlock to a latch
ce188455388e drm/i915/gt: Convert stats.active to plain unsigned int
39586d91fdb9 drm/i915/gt: Extract busy-stats for ring-scheduler
7e2285388a39 drm/i915/gt: Drop atomic for engine->fw_active tracking
c9cdc86bd411 drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()
92211d1cb256 drm/i915/gem: Reduce ctx->engines_mutex for get_engines()
6103c5f91828 drm/i915/gem: Reduce ctx->engine_mutex for reading the clone source
194b07e485e2 drm/i915: Drop i915_request.lock serialisation around await_start
f916fef99165 drm/i915: Mark up protected uses of 'i915_request_completed'

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/index.html

--===============0135397571196509643==
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
<tr><td><b>Series:</b></td><td>series starting with [01/10] drm/i915: Mark up protected uses of &#39;i915_request_completed&#39;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85803/">https://patchwork.freedesktop.org/series/85803/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9601 -&gt; Patchwork_19331</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19331 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-compute0:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/fi-tgl-y/igt@amdgpu/amd_cs_nop@nop-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_close_race@basic-threads:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/fi-tgl-y/igt@gem_close_race@basic-threads.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/fi-tgl-y/igt@gem_close_race@basic-threads.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9601 -&gt; Patchwork_19331</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9601: 35180379602fb11cc044e6a9a77f4f758e641aad @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5957: 2a2b3418f7458dfa1fac255cc5c71603f617690a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19331: d824af9423406f1bec5c7e3788bb31a465c2e6a4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d824af942340 drm/i915/gt: Reduce GT runtime stats from seqlock to a latch<br />
e36118043d45 drm/i915/gt: Reduce engine runtime stats from seqlock to a latch<br />
ce188455388e drm/i915/gt: Convert stats.active to plain unsigned int<br />
39586d91fdb9 drm/i915/gt: Extract busy-stats for ring-scheduler<br />
7e2285388a39 drm/i915/gt: Drop atomic for engine-&gt;fw_active tracking<br />
c9cdc86bd411 drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()<br />
92211d1cb256 drm/i915/gem: Reduce ctx-&gt;engines_mutex for get_engines()<br />
6103c5f91828 drm/i915/gem: Reduce ctx-&gt;engine_mutex for reading the clone source<br />
194b07e485e2 drm/i915: Drop i915_request.lock serialisation around await_start<br />
f916fef99165 drm/i915: Mark up protected uses of 'i915_request_completed'</p>

</body>
</html>

--===============0135397571196509643==--

--===============1427729799==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1427729799==--
