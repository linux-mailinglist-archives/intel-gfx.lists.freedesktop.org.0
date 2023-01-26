Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0755267C2F2
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 03:57:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00C9110E8DE;
	Thu, 26 Jan 2023 02:57:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 12CF310E8DE;
 Thu, 26 Jan 2023 02:57:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 04C05AADE2;
 Thu, 26 Jan 2023 02:57:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5056957259362557086=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Thu, 26 Jan 2023 02:57:05 -0000
Message-ID: <167470182598.539.12827332601747819630@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230125203743.564009-1-jim.cromie@gmail.com>
In-Reply-To: <20230125203743.564009-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZml4?=
 =?utf-8?q?_DRM=5FUSE=5FDYNAMIC=5FDEBUG_regression?=
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

--===============5056957259362557086==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: fix DRM_USE_DYNAMIC_DEBUG regression
URL   : https://patchwork.freedesktop.org/series/113363/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12640 -> Patchwork_113363v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113363v1/index.html

Participating hosts (37 -> 37)
------------------------------

  Additional (1): fi-bsw-kefka 
  Missing    (1): fi-rkl-11600 

Known issues
------------

  Here are the changes found in Patchwork_113363v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - fi-bsw-nick:        NOTRUN -> [SKIP][1] ([fdo#109271]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113363v1/fi-bsw-nick/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][2] ([fdo#109271]) +26 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113363v1/fi-bsw-kefka/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-adlp-9}:       [DMESG-WARN][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/bat-adlp-9/igt@gem_exec_suspend@basic-s0@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113363v1/bat-adlp-9/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [INCOMPLETE][5] ([i915#7911]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113363v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@migrate:
    - {bat-dg2-11}:       [DMESG-WARN][7] ([i915#7699]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113363v1/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size:
    - fi-bsw-n3050:       [FAIL][9] ([i915#2346]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113363v1/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#7625]: https://gitlab.freedesktop.org/drm/intel/issues/7625
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911


Build changes
-------------

  * Linux: CI_DRM_12640 -> Patchwork_113363v1

  CI-20190529: 20190529
  CI_DRM_12640: cc7783f223ac644092bb8788f0750fc5c68aa00e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7136: 31b6af91747ad8c705399c9006cdb81cb1864146 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113363v1: cc7783f223ac644092bb8788f0750fc5c68aa00e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

c22c4369f162 jump_label: RFC / temporary for CI - tolerate toggled state
0cc6565a85d2 test-dyndbg: tune sub-module behavior
b8c945421dab test-dyndbg: disable WIP dyndbg-trace params
36b4db92e876 test-dyndbg: rename DD_SYS_WRAP to DYNDBG_CLASSMAP_PARAM
c7e6b41aaa05 test-dyndbg: build test_dynamic_debug_submod
dd1cc200239f drm_print: fix stale macro-name in comment
5776c51534ed dyndbg-API: DYNDBG_CLASSMAP_DEFINE() improvements
30bf62590141 dyndbg-API: DYNDBG_CLASSMAP_USE drop extra args
9936163af8e9 dyndbg-API: specialize DYNDBG_CLASSMAP_(DEFINE|USE)
4084facfa255 dyndbg-API: split DECLARE_(DYNDBG_CLASSMAP) to $1(_DEFINE|_USE)
2ef4fff96f42 dyndbg: constify ddebug_apply_class_bitmap args
8a019aeb5649 dyndbg: tighten ddebug_class_name() 1st arg
9ce5d2edb055 dyndbg: reduce verbose/debug clutter
8756aa4479ed dyndbg: drop NUM_TYPE_ARRAY
63724ad24516 dyndbg: split param_set_dyndbg_classes to inner/outer fns
4f6279d5a6ca dyndbg: make ddebug_apply_class_bitmap more selective
a731fe9c137e dyndbg: replace classmap list with a vector
73fc8e6873fc test-dyndbg: show that DEBUG enables prdbgs at compiletime
c0ed6ccec06c test-dyndbg: fixup CLASSMAP usage error

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113363v1/index.html

--===============5056957259362557086==
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
<tr><td><b>Series:</b></td><td>fix DRM_USE_DYNAMIC_DEBUG regression</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113363/">https://patchwork.freedesktop.org/series/113363/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113363v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113363v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12640 -&gt; Patchwork_113363v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113363v1/index.html</p>
<h2>Participating hosts (37 -&gt; 37)</h2>
<p>Additional (1): fi-bsw-kefka <br />
  Missing    (1): fi-rkl-11600 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113363v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113363v1/fi-bsw-nick/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113363v1/fi-bsw-kefka/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-adlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/bat-adlp-9/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113363v1/bat-adlp-9/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113363v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113363v1/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113363v1/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12640 -&gt; Patchwork_113363v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12640: cc7783f223ac644092bb8788f0750fc5c68aa00e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7136: 31b6af91747ad8c705399c9006cdb81cb1864146 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113363v1: cc7783f223ac644092bb8788f0750fc5c68aa00e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>c22c4369f162 jump_label: RFC / temporary for CI - tolerate toggled state<br />
0cc6565a85d2 test-dyndbg: tune sub-module behavior<br />
b8c945421dab test-dyndbg: disable WIP dyndbg-trace params<br />
36b4db92e876 test-dyndbg: rename DD_SYS_WRAP to DYNDBG_CLASSMAP_PARAM<br />
c7e6b41aaa05 test-dyndbg: build test_dynamic_debug_submod<br />
dd1cc200239f drm_print: fix stale macro-name in comment<br />
5776c51534ed dyndbg-API: DYNDBG_CLASSMAP_DEFINE() improvements<br />
30bf62590141 dyndbg-API: DYNDBG_CLASSMAP_USE drop extra args<br />
9936163af8e9 dyndbg-API: specialize DYNDBG_CLASSMAP_(DEFINE|USE)<br />
4084facfa255 dyndbg-API: split DECLARE_(DYNDBG_CLASSMAP) to $1(_DEFINE|_USE)<br />
2ef4fff96f42 dyndbg: constify ddebug_apply_class_bitmap args<br />
8a019aeb5649 dyndbg: tighten ddebug_class_name() 1st arg<br />
9ce5d2edb055 dyndbg: reduce verbose/debug clutter<br />
8756aa4479ed dyndbg: drop NUM_TYPE_ARRAY<br />
63724ad24516 dyndbg: split param_set_dyndbg_classes to inner/outer fns<br />
4f6279d5a6ca dyndbg: make ddebug_apply_class_bitmap more selective<br />
a731fe9c137e dyndbg: replace classmap list with a vector<br />
73fc8e6873fc test-dyndbg: show that DEBUG enables prdbgs at compiletime<br />
c0ed6ccec06c test-dyndbg: fixup CLASSMAP usage error</p>

</body>
</html>

--===============5056957259362557086==--
