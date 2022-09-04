Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C555AC7F5
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 00:22:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E40D310E1EC;
	Sun,  4 Sep 2022 22:22:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9461E10E1EC;
 Sun,  4 Sep 2022 22:22:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8BC86AA0EA;
 Sun,  4 Sep 2022 22:22:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2732771479835007105=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Sun, 04 Sep 2022 22:22:27 -0000
Message-ID: <166233014753.28365.18297471357977629514@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220904214134.408619-1-jim.cromie@gmail.com>
In-Reply-To: <20220904214134.408619-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRFlO?=
 =?utf-8?q?DBG=3A_opt-in_class=27d_debug_for_modules=2C_use_in_drm=2E_=28r?=
 =?utf-8?q?ev4=29?=
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

--===============2732771479835007105==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: DYNDBG: opt-in class'd debug for modules, use in drm. (rev4)
URL   : https://patchwork.freedesktop.org/series/106427/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12068 -> Patchwork_106427v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106427v4/index.html

Participating hosts (25 -> 31)
------------------------------

  Additional (7): bat-dg2-8 bat-adlm-1 bat-dg2-9 bat-adlp-6 bat-adln-1 bat-rpls-1 bat-dg2-11 
  Missing    (1): fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_106427v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem:
    - fi-pnv-d510:        [PASS][1] -> [DMESG-FAIL][2] ([i915#4528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12068/fi-pnv-d510/igt@i915_selftest@live@gem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106427v4/fi-pnv-d510/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [PASS][3] -> [INCOMPLETE][4] ([i915#3303] / [i915#4785])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12068/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106427v4/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][5] ([fdo#109271] / [i915#2403] / [i915#4312])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106427v4/fi-pnv-d510/igt@runner@aborted.html
    - fi-hsw-g3258:       NOTRUN -> [FAIL][6] ([fdo#109271] / [i915#4312] / [i915#6246])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106427v4/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-kefka:       [FAIL][7] ([i915#6298]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12068/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106427v4/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
  [i915#6106]: https://gitlab.freedesktop.org/drm/intel/issues/6106
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6380]: https://gitlab.freedesktop.org/drm/intel/issues/6380
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6641]: https://gitlab.freedesktop.org/drm/intel/issues/6641
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645


Build changes
-------------

  * Linux: CI_DRM_12068 -> Patchwork_106427v4

  CI-20190529: 20190529
  CI_DRM_12068: f2c3a05d33693ad51996fa7d12d3b2d4b0f372eb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6642: c018ce1d1ab8e570f665cf5d58c9802a44d66cc1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106427v4: f2c3a05d33693ad51996fa7d12d3b2d4b0f372eb @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

5fd533ab49d1 dyndbg: fiddle with readback value on LEVEL_NAMES types
d754acb46c8f dyndbg: work ddebug_map_site
102cba9f7463 dyndbg: dynamic_debug_sites_reclaim() using free_reserved_page() WAG
dd76d240ada7 dyndbg: add .gnu.linkonce. & __dyndbg* sections in module.lds.h
bf901b089ce1 dyndbg: add/use is_dyndbg_header then set _uplink
389dd7ea9547 dyndbg: add DEFINE_DYNAMIC_DEBUG_TABLE, use it tacitly RFC
dd1423fa21ff dyndbg: prevent build bugs via -DNO_DYNAMIC_DEBUG_TABLE
aba6d5ecdf4b dyndbg: count unique callsites
fd173a392fc8 dyndbg: add structs _ddebug_hdr, _ddebug_site_hdr
6f15860929c2 dyndbg: add .gnu.linkonce slot in vmlinux.lds.h KEEPs
bae00c17bcdd dyndbg: demote iter->site in _init
bf22959dfd89 dyndbg: drop site-> in add-module, more needed
e72757036bc3 dyndbg: de-duplicate sites
72d1ab37676c dyndbg: extend __ddebug_add_module proto to allow packing sites
647f3b753727 dyndbg: add _index, _map to struct _ddebug
ab82ccb8f4b5 dyndbg: shrink lineno field by 2 bits
44f6e5321021 dyndbg: split repeating columns to new struct _ddebug_site
2e6351429ee0 dyndbg: abstraction macros for modname, function, filename fields
12902e00d023 dyndbg/drm: POC add tracebits sysfs-knob
8215d12d6906 dyndbg: add 2 more trace-events: pr_debug, dev_dbg
d01dc8d53694 dyndbg: add 2 trace-events: drm_debug, drm_devdbg
5081564cc577 dyndbg: add write-events-to-tracefs code
96c3cffb4983 dyndbg: add _DPRINTK_FLAGS_TRACE
e1c700af31cb dyndbg: add _DPRINTK_FLAGS_ENABLED
778b49d55e49 nouveau: WIP add 2 LEVEL_NUM classmaps for CLI, SUBDEV
764d4e08e7ba nouveau: adapt NV_DEBUG, NV_ATOMIC to use DRM.debug
b87fe7ecb83f nouveau: change nvkm_debug/trace to use dev_dbg POC
b8970cfb3051 drm_print: add _ddebug descriptor to drm_*dbg prototypes
dc74090d4b9c drm_print: prefer bare printk KERN_DEBUG on generic fn
9059aacbf597 drm_print: refine drm_debug_enabled for jump-label
6f824eb47fab drm-print: add drm_dbg_driver to improve namespace symmetry
7e0b77af32e1 drm-print.h: include dyndbg header
d7c3ff8c7ab8 drm_print: wrap drm_*_dbg in dyndbg descriptor factory macro
1dec84ba6e60 drm_print: interpose drm_*dbg with forwarding macros
7269d42e2452 drm: POC drm on dyndbg - use in core, 2 helpers, 3 drivers.
77564a54028b drm_print: condense enum drm_debug_category
0e504c95c347 dyndbg: test DECLARE_DYNDBG_CLASSMAP, sysfs nodes
5d764fee59b8 dyndbg: add drm.debug style (drm/parameters/debug) bitmap support
e59b72d90205 doc-dyndbg: edit dynamic-debug-howto for brevity, audience
e23df6982083 doc-dyndbg: describe "class CLASS_NAME" query support
4229a55849fc dyndbg: validate class FOO by checking with module
8eb2bd5852e4 dyndbg: add ddebug_attach_module_classes
5c745c3ada5d kernel/module: add __dyndbg_classes section
ce3432dc656b dyndbg: add DECLARE_DYNDBG_CLASSMAP macro
091465031cfc dyndbg: add __pr_debug_cls for testing
70de6d455ddf dyndbg: add class_id to pr_debug callsites
c16405d3305f dyndbg: gather __dyndbg[] state into struct _ddebug_info
e8afae1b206a dyndbg: cleanup auto vars in dynamic_debug_init
06c6316b2c91 dyndbg: drop EXPORTed dynamic_debug_exec_queries
1de1b0d226ec dyndbg: add test_dynamic_debug module
c930b4037649 dyndbg: let query-modname override actual module name
ce88fc477f7e dyndbg: use ESCAPE_SPACE for cat control
d995093195e0 dyndbg: reverse module.callsite walk in cat control
4a816b9df5e5 dyndbg: reverse module walk in cat control
d1407f2f028b dyndbg: show both old and new in change-info
fe0fc38d1c9f dyndbg: fix module.dyndbg handling
9aef95263ab5 dyndbg: fix static_branch manipulation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106427v4/index.html

--===============2732771479835007105==
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
<tr><td><b>Series:</b></td><td>DYNDBG: opt-in class&#39;d debug for modules, use in drm. (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/106427/">https://patchwork.freedesktop.org/series/106427/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106427v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106427v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12068 -&gt; Patchwork_106427v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106427v4/index.html</p>
<h2>Participating hosts (25 -&gt; 31)</h2>
<p>Additional (7): bat-dg2-8 bat-adlm-1 bat-dg2-9 bat-adlp-6 bat-adln-1 bat-rpls-1 bat-dg2-11 <br />
  Missing    (1): fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106427v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12068/fi-pnv-d510/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106427v4/fi-pnv-d510/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12068/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106427v4/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106427v4/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106427v4/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12068/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106427v4/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12068 -&gt; Patchwork_106427v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12068: f2c3a05d33693ad51996fa7d12d3b2d4b0f372eb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6642: c018ce1d1ab8e570f665cf5d58c9802a44d66cc1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106427v4: f2c3a05d33693ad51996fa7d12d3b2d4b0f372eb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>5fd533ab49d1 dyndbg: fiddle with readback value on LEVEL_NAMES types<br />
d754acb46c8f dyndbg: work ddebug_map_site<br />
102cba9f7463 dyndbg: dynamic_debug_sites_reclaim() using free_reserved_page() WAG<br />
dd76d240ada7 dyndbg: add .gnu.linkonce. &amp; __dyndbg<em> sections in module.lds.h<br />
bf901b089ce1 dyndbg: add/use is_dyndbg_header then set <em>uplink<br />
389dd7ea9547 dyndbg: add DEFINE_DYNAMIC_DEBUG_TABLE, use it tacitly RFC<br />
dd1423fa21ff dyndbg: prevent build bugs via -DNO_DYNAMIC_DEBUG_TABLE<br />
aba6d5ecdf4b dyndbg: count unique callsites<br />
fd173a392fc8 dyndbg: add structs _ddebug_hdr, _ddebug_site_hdr<br />
6f15860929c2 dyndbg: add .gnu.linkonce slot in vmlinux.lds.h KEEPs<br />
bae00c17bcdd dyndbg: demote iter-&gt;site in _init<br />
bf22959dfd89 dyndbg: drop site-&gt; in add-module, more needed<br />
e72757036bc3 dyndbg: de-duplicate sites<br />
72d1ab37676c dyndbg: extend __ddebug_add_module proto to allow packing sites<br />
647f3b753727 dyndbg: add _index, _map to struct _ddebug<br />
ab82ccb8f4b5 dyndbg: shrink lineno field by 2 bits<br />
44f6e5321021 dyndbg: split repeating columns to new struct _ddebug_site<br />
2e6351429ee0 dyndbg: abstraction macros for modname, function, filename fields<br />
12902e00d023 dyndbg/drm: POC add tracebits sysfs-knob<br />
8215d12d6906 dyndbg: add 2 more trace-events: pr_debug, dev_dbg<br />
d01dc8d53694 dyndbg: add 2 trace-events: drm_debug, drm_devdbg<br />
5081564cc577 dyndbg: add write-events-to-tracefs code<br />
96c3cffb4983 dyndbg: add _DPRINTK_FLAGS_TRACE<br />
e1c700af31cb dyndbg: add _DPRINTK_FLAGS_ENABLED<br />
778b49d55e49 nouveau: WIP add 2 LEVEL_NUM classmaps for CLI, SUBDEV<br />
764d4e08e7ba nouveau: adapt NV_DEBUG, NV_ATOMIC to use DRM.debug<br />
b87fe7ecb83f nouveau: change nvkm_debug/trace to use dev_dbg POC<br />
b8970cfb3051 drm_print: add _ddebug descriptor to drm</em></em>dbg prototypes<br />
dc74090d4b9c drm_print: prefer bare printk KERN_DEBUG on generic fn<br />
9059aacbf597 drm_print: refine drm_debug_enabled for jump-label<br />
6f824eb47fab drm-print: add drm_dbg_driver to improve namespace symmetry<br />
7e0b77af32e1 drm-print.h: include dyndbg header<br />
d7c3ff8c7ab8 drm_print: wrap drm_<em><em>dbg in dyndbg descriptor factory macro<br />
1dec84ba6e60 drm_print: interpose drm</em></em>dbg with forwarding macros<br />
7269d42e2452 drm: POC drm on dyndbg - use in core, 2 helpers, 3 drivers.<br />
77564a54028b drm_print: condense enum drm_debug_category<br />
0e504c95c347 dyndbg: test DECLARE_DYNDBG_CLASSMAP, sysfs nodes<br />
5d764fee59b8 dyndbg: add drm.debug style (drm/parameters/debug) bitmap support<br />
e59b72d90205 doc-dyndbg: edit dynamic-debug-howto for brevity, audience<br />
e23df6982083 doc-dyndbg: describe "class CLASS_NAME" query support<br />
4229a55849fc dyndbg: validate class FOO by checking with module<br />
8eb2bd5852e4 dyndbg: add ddebug_attach_module_classes<br />
5c745c3ada5d kernel/module: add __dyndbg_classes section<br />
ce3432dc656b dyndbg: add DECLARE_DYNDBG_CLASSMAP macro<br />
091465031cfc dyndbg: add __pr_debug_cls for testing<br />
70de6d455ddf dyndbg: add class_id to pr_debug callsites<br />
c16405d3305f dyndbg: gather __dyndbg[] state into struct _ddebug_info<br />
e8afae1b206a dyndbg: cleanup auto vars in dynamic_debug_init<br />
06c6316b2c91 dyndbg: drop EXPORTed dynamic_debug_exec_queries<br />
1de1b0d226ec dyndbg: add test_dynamic_debug module<br />
c930b4037649 dyndbg: let query-modname override actual module name<br />
ce88fc477f7e dyndbg: use ESCAPE_SPACE for cat control<br />
d995093195e0 dyndbg: reverse module.callsite walk in cat control<br />
4a816b9df5e5 dyndbg: reverse module walk in cat control<br />
d1407f2f028b dyndbg: show both old and new in change-info<br />
fe0fc38d1c9f dyndbg: fix module.dyndbg handling<br />
9aef95263ab5 dyndbg: fix static_branch manipulation</p>

</body>
</html>

--===============2732771479835007105==--
