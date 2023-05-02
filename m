Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D60F6F4899
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 18:49:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFFBD10E2B5;
	Tue,  2 May 2023 16:49:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 420EC10E22A;
 Tue,  2 May 2023 16:49:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3AB29A02F0;
 Tue,  2 May 2023 16:49:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1389397009787232115=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 02 May 2023 16:49:51 -0000
Message-ID: <168304619120.18872.8185721574109946727@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1683041799.git.jani.nikula@intel.com>
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_fix_kernel-doc_warnings=2C_enable_kernel-doc_-Werror?=
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

--===============1389397009787232115==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: fix kernel-doc warnings, enable kernel-doc -Werror
URL   : https://patchwork.freedesktop.org/series/117207/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13097 -> Patchwork_117207v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117207v1/index.html

Participating hosts (38 -> 37)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_117207v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [PASS][1] -> [DMESG-FAIL][2] ([i915#5334])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117207v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-adln-1:         [PASS][3] -> [INCOMPLETE][4] ([i915#4983] / [i915#7609])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/bat-adln-1/igt@i915_selftest@live@gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117207v1/bat-adln-1/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [PASS][5] -> [ABORT][6] ([i915#4983] / [i915#7911] / [i915#7920])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/bat-rpls-1/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117207v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@fds:
    - {bat-mtlp-8}:       [ABORT][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/bat-mtlp-8/igt@gem_exec_parallel@engines@fds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117207v1/bat-mtlp-8/igt@gem_exec_parallel@engines@fds.html

  * igt@i915_selftest@live@requests:
    - {bat-mtlp-6}:       [ABORT][9] ([i915#4983] / [i915#7920]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/bat-mtlp-6/igt@i915_selftest@live@requests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117207v1/bat-mtlp-6/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#8368]: https://gitlab.freedesktop.org/drm/intel/issues/8368
  [i915#8379]: https://gitlab.freedesktop.org/drm/intel/issues/8379


Build changes
-------------

  * Linux: CI_DRM_13097 -> Patchwork_117207v1

  CI-20190529: 20190529
  CI_DRM_13097: 1413856e3770380da743e274a06896acabf49e0e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7277: 1cb3507f3ff28d11bd5cfabcde576fe78ddab571 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117207v1: 1413856e3770380da743e274a06896acabf49e0e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ad6fdf0ba067 drm/i915: use kernel-doc -Werror when CONFIG_DRM_I915_WERROR=y
6f1d3b3d2f74 drm/i915/scatterlist: fix kernel-doc parameter documentation
0019c25445e8 drm/i915/scatterlist: fix kernel-doc
aabb90062836 drm/i915/pxp: fix kernel-doc for member dev_link
73af7bd35f45 drm/i915/pmu: drop kernel-doc
fbd0c0300468 drm/i915/active: fix kernel-doc for function parameters
ded538d1f4c5 drm/i915/guc: add intel_guc_state_capture member docs for ads_null_cache and max_mmio_per_node
b53dd492eec3 drm/i915/guc: drop lots of kernel-doc markers
5d282e0c3801 drm/i915/guc: add dbgfs_node member kernel-doc
5e51f1082da0 drm/i915/engine: hide preempt_hang selftest member from kernel-doc
252b5418fc2c drm/i915/gtt: fix i915_vm_resv_put() kernel-doc parameter name
378a17d0b8bd drm/i915/context: fix kernel-doc parameter descriptions
50512647a486 drm/i915/engine: fix kernel-doc function name for intel_engine_cleanup_common()
80b0a872e853 drm/i915/ttm: fix i915_ttm_to_gem() kernel-doc
d4fbc5c22cd6 drm/i915/gem: fix function pointer member kernel-doc
bc02cfa5ca46 drm/i915/gem: fix i915_gem_object_lookup_rcu() kernel-doc parameter name
844b95a27beb drm/i915/request: drop kernel-doc
48b3951660b6 drm/i915/error: fix i915_capture_error_state() kernel-doc
cac8e4b6db10 drm/i915/perf: fix i915_perf_ioctl_version() kernel-doc
92562690fd06 drm/i915/vma: fix struct i915_vma_bindinfo kernel-doc
e962b41554a1 drm/i915/vma: document struct i915_vma_resource wakeref member
fa21baa66aaa drm/i915/utils: drop kernel-doc from __wait_for()
3c5d8150aa19 drm/i915/vma: fix kernel-doc function name for i915_vma_size()
0e1b3f55358a drm/i915/gvt: fix intel_vgpu_alloc_resource() kernel-doc parameter

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117207v1/index.html

--===============1389397009787232115==
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
<tr><td><b>Series:</b></td><td>drm/i915: fix kernel-doc warnings, enable kernel-doc -Werror</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117207/">https://patchwork.freedesktop.org/series/117207/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117207v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117207v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13097 -&gt; Patchwork_117207v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117207v1/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117207v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117207v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117207v1/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117207v1/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/bat-mtlp-8/igt@gem_exec_parallel@engines@fds.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117207v1/bat-mtlp-8/igt@gem_exec_parallel@engines@fds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-mtlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/bat-mtlp-6/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117207v1/bat-mtlp-6/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13097 -&gt; Patchwork_117207v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13097: 1413856e3770380da743e274a06896acabf49e0e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7277: 1cb3507f3ff28d11bd5cfabcde576fe78ddab571 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117207v1: 1413856e3770380da743e274a06896acabf49e0e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ad6fdf0ba067 drm/i915: use kernel-doc -Werror when CONFIG_DRM_I915_WERROR=y<br />
6f1d3b3d2f74 drm/i915/scatterlist: fix kernel-doc parameter documentation<br />
0019c25445e8 drm/i915/scatterlist: fix kernel-doc<br />
aabb90062836 drm/i915/pxp: fix kernel-doc for member dev_link<br />
73af7bd35f45 drm/i915/pmu: drop kernel-doc<br />
fbd0c0300468 drm/i915/active: fix kernel-doc for function parameters<br />
ded538d1f4c5 drm/i915/guc: add intel_guc_state_capture member docs for ads_null_cache and max_mmio_per_node<br />
b53dd492eec3 drm/i915/guc: drop lots of kernel-doc markers<br />
5d282e0c3801 drm/i915/guc: add dbgfs_node member kernel-doc<br />
5e51f1082da0 drm/i915/engine: hide preempt_hang selftest member from kernel-doc<br />
252b5418fc2c drm/i915/gtt: fix i915_vm_resv_put() kernel-doc parameter name<br />
378a17d0b8bd drm/i915/context: fix kernel-doc parameter descriptions<br />
50512647a486 drm/i915/engine: fix kernel-doc function name for intel_engine_cleanup_common()<br />
80b0a872e853 drm/i915/ttm: fix i915_ttm_to_gem() kernel-doc<br />
d4fbc5c22cd6 drm/i915/gem: fix function pointer member kernel-doc<br />
bc02cfa5ca46 drm/i915/gem: fix i915_gem_object_lookup_rcu() kernel-doc parameter name<br />
844b95a27beb drm/i915/request: drop kernel-doc<br />
48b3951660b6 drm/i915/error: fix i915_capture_error_state() kernel-doc<br />
cac8e4b6db10 drm/i915/perf: fix i915_perf_ioctl_version() kernel-doc<br />
92562690fd06 drm/i915/vma: fix struct i915_vma_bindinfo kernel-doc<br />
e962b41554a1 drm/i915/vma: document struct i915_vma_resource wakeref member<br />
fa21baa66aaa drm/i915/utils: drop kernel-doc from __wait_for()<br />
3c5d8150aa19 drm/i915/vma: fix kernel-doc function name for i915_vma_size()<br />
0e1b3f55358a drm/i915/gvt: fix intel_vgpu_alloc_resource() kernel-doc parameter</p>

</body>
</html>

--===============1389397009787232115==--
