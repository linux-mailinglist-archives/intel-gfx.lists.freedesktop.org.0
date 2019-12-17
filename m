Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAFF12237D
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 06:13:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF8F56E938;
	Tue, 17 Dec 2019 05:13:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1119A6E938;
 Tue, 17 Dec 2019 05:13:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 08A88A363B;
 Tue, 17 Dec 2019 05:13:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 17 Dec 2019 05:13:50 -0000
Message-ID: <157655963000.21848.17229755683440753295@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216220742.34332-1-jose.souza@intel.com>
In-Reply-To: <20191216220742.34332-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C01/11=5D_drm=3A_Add_=5F=5Fdrm=5Fatomi?=
 =?utf-8?b?Y19oZWxwZXJfY3J0Y19zdGF0ZV9yZXNldCgpICYgY28u?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [v3,01/11] drm: Add __drm_atomic_helper_crtc_state_reset() & co.
URL   : https://patchwork.freedesktop.org/series/71009/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7578 -> Patchwork_15803
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15803 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15803, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15803:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-byt-j1900:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-byt-j1900/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-byt-j1900/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-cfl-guc:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-cfl-guc/igt@kms_busy@basic-flip-pipe-b.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-cfl-guc/igt@kms_busy@basic-flip-pipe-b.html
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-cfl-8700k/igt@kms_busy@basic-flip-pipe-b.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-cfl-8700k/igt@kms_busy@basic-flip-pipe-b.html

  * igt@kms_busy@basic-flip-pipe-c:
    - fi-kbl-7500u:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-kbl-7500u/igt@kms_busy@basic-flip-pipe-c.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-kbl-7500u/igt@kms_busy@basic-flip-pipe-c.html
    - fi-skl-guc:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-skl-guc/igt@kms_busy@basic-flip-pipe-c.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-skl-guc/igt@kms_busy@basic-flip-pipe-c.html

  * igt@runner@aborted:
    - fi-whl-u:           NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-whl-u/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-bxt-dsi/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15803 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-byt-j1900:       [PASS][13] -> [DMESG-FAIL][14] ([i915#725])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-byt-j1900/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-byt-j1900/igt@i915_selftest@live_blt.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-skl-6770hq:      [PASS][15] -> [INCOMPLETE][16] ([i915#198])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-skl-6770hq/igt@kms_busy@basic-flip-pipe-b.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-skl-6770hq/igt@kms_busy@basic-flip-pipe-b.html
    - fi-skl-lmem:        [PASS][17] -> [INCOMPLETE][18] ([i915#198])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-skl-lmem/igt@kms_busy@basic-flip-pipe-b.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-skl-lmem/igt@kms_busy@basic-flip-pipe-b.html
    - fi-cml-u2:          [PASS][19] -> [TIMEOUT][20] ([i915#109] / [i915#449])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-cml-u2/igt@kms_busy@basic-flip-pipe-b.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-cml-u2/igt@kms_busy@basic-flip-pipe-b.html
    - fi-apl-guc:         [PASS][21] -> [INCOMPLETE][22] ([fdo#103927])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-apl-guc/igt@kms_busy@basic-flip-pipe-b.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-apl-guc/igt@kms_busy@basic-flip-pipe-b.html
    - fi-bxt-dsi:         [PASS][23] -> [TIMEOUT][24] ([i915#109] / [i915#449])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-bxt-dsi/igt@kms_busy@basic-flip-pipe-b.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-bxt-dsi/igt@kms_busy@basic-flip-pipe-b.html
    - fi-skl-6600u:       [PASS][25] -> [TIMEOUT][26] ([i915#109] / [i915#449])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-skl-6600u/igt@kms_busy@basic-flip-pipe-b.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-skl-6600u/igt@kms_busy@basic-flip-pipe-b.html
    - fi-whl-u:           [PASS][27] -> [TIMEOUT][28] ([i915#109] / [i915#449])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-whl-u/igt@kms_busy@basic-flip-pipe-b.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-whl-u/igt@kms_busy@basic-flip-pipe-b.html
    - fi-icl-y:           [PASS][29] -> [TIMEOUT][30] ([i915#109] / [i915#449])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-icl-y/igt@kms_busy@basic-flip-pipe-b.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-icl-y/igt@kms_busy@basic-flip-pipe-b.html
    - fi-glk-dsi:         [PASS][31] -> [TIMEOUT][32] ([i915#109] / [i915#449])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-glk-dsi/igt@kms_busy@basic-flip-pipe-b.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-glk-dsi/igt@kms_busy@basic-flip-pipe-b.html
    - fi-tgl-y:           [PASS][33] -> [TIMEOUT][34] ([i915#109] / [i915#449] / [i915#561])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-tgl-y/igt@kms_busy@basic-flip-pipe-b.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-tgl-y/igt@kms_busy@basic-flip-pipe-b.html
    - fi-icl-guc:         [PASS][35] -> [TIMEOUT][36] ([i915#109] / [i915#449])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-icl-guc/igt@kms_busy@basic-flip-pipe-b.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-icl-guc/igt@kms_busy@basic-flip-pipe-b.html
    - fi-kbl-r:           [PASS][37] -> [TIMEOUT][38] ([i915#109] / [i915#449])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-kbl-r/igt@kms_busy@basic-flip-pipe-b.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-kbl-r/igt@kms_busy@basic-flip-pipe-b.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@basic:
    - {fi-tgl-u}:         [INCOMPLETE][39] ([i915#476]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-tgl-u/igt@gem_exec_parallel@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-tgl-u/igt@gem_exec_parallel@basic.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [DMESG-FAIL][41] ([i915#722]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-x1275:       [DMESG-WARN][43] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][44] ([i915#62] / [i915#92])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][45] ([i915#62] / [i915#92]) -> [DMESG-WARN][46] ([i915#62] / [i915#92] / [i915#95])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-kbl-x1275:       [DMESG-WARN][47] ([i915#62] / [i915#92] / [i915#95]) -> [INCOMPLETE][48] ([i915#605])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html

  * igt@runner@aborted:
    - fi-icl-guc:         [FAIL][49] ([fdo#110943] / [fdo#111093]) -> [FAIL][50] ([fdo#111093] / [i915#287] / [k.org#203557])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-icl-guc/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/fi-icl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#110943]: https://bugs.freedesktop.org/show_bug.cgi?id=110943
  [fdo#111093]: https://bugs.freedesktop.org/show_bug.cgi?id=111093
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#287]: https://gitlab.freedesktop.org/drm/intel/issues/287
  [i915#449]: https://gitlab.freedesktop.org/drm/intel/issues/449
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#561]: https://gitlab.freedesktop.org/drm/intel/issues/561
  [i915#605]: https://gitlab.freedesktop.org/drm/intel/issues/605
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#203557]: https://bugzilla.kernel.org/show_bug.cgi?id=203557


Participating hosts (51 -> 44)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-icl-u3 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7578 -> Patchwork_15803

  CI-20190529: 20190529
  CI_DRM_7578: cc329d389f5609d2969d0797bc96f754adb26d62 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15803: ae948caa25b0896e58dc261f45fc491b04daec25 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ae948caa25b0 drm/i915/display: Add comment to a function that probably can be removed
4f454f4f7104 drm/i915/display: Check if pipe fastset is allowed by external dependencies
366edbcdd352 drm/i915/dp: Fix MST disable sequences
d7e4652cba05 drm/i915/display: Always enables MST master pipe first
a1c682bbdecc drm/i915/tgl: Select master transcoder for MST stream
f4e33c1eded8 drm/i915/display: Share intel_connector_needs_modeset()
63cf263b701d drm/i915: Introduce intel_plane_state_reset()
6e965a363495 drm/i915: Introduce intel_crtc_state_reset()
daf1ac79fce6 drm/i915: Introduce intel_crtc_{alloc, free}()
b02152ee12cf drm/i915: s/intel_crtc/crtc/ in intel_crtc_init()
b2d4346269f9 drm: Add __drm_atomic_helper_crtc_state_reset() & co.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15803/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
