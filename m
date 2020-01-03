Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A8712F8C3
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 14:26:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAFF16E313;
	Fri,  3 Jan 2020 13:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1774A6E312;
 Fri,  3 Jan 2020 13:26:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F481A0009;
 Fri,  3 Jan 2020 13:26:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Jan 2020 13:26:52 -0000
Message-ID: <157805801205.20613.1062891897118527198@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200103104516.1757103-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200103104516.1757103-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/selftest=3A_Move_igt=5Fato?=
 =?utf-8?q?mic=5Fsection=5B=5D_out_of_the_header?=
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

Series: series starting with [1/2] drm/i915/selftest: Move igt_atomic_section[] out of the header
URL   : https://patchwork.freedesktop.org/series/71599/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7673 -> Patchwork_15985
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/index.html

Known issues
------------

  Here are the changes found in Patchwork_15985 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_sync@basic-store-each:
    - fi-byt-n2820:       [PASS][1] -> [FAIL][2] ([i915#860])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-byt-n2820/igt@gem_sync@basic-store-each.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/fi-byt-n2820/igt@gem_sync@basic-store-each.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6770hq:      [PASS][3] -> [INCOMPLETE][4] ([i915#671])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_active:
    - fi-icl-y:           [PASS][5] -> [DMESG-FAIL][6] ([i915#765])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-icl-y/igt@i915_selftest@live_active.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/fi-icl-y/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_blt:
    - fi-byt-j1900:       [PASS][7] -> [DMESG-FAIL][8] ([i915#725])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-byt-j1900/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/fi-byt-j1900/igt@i915_selftest@live_blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-icl-dsi:         [PASS][9] -> [INCOMPLETE][10] ([i915#140])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-icl-dsi/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/fi-icl-dsi/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Possible fixes ####

  * igt@gem_exec_store@basic-all:
    - fi-byt-n2820:       [FAIL][11] ([i915#894]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-byt-n2820/igt@gem_exec_store@basic-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/fi-byt-n2820/igt@gem_exec_store@basic-all.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [INCOMPLETE][13] ([i915#505] / [i915#671]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-hsw-4770:        [SKIP][15] ([fdo#109271]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][17] ([i915#725]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][19] ([i915#553] / [i915#725]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [DMESG-FAIL][21] ([i915#722]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765
  [i915#860]: https://gitlab.freedesktop.org/drm/intel/issues/860
  [i915#894]: https://gitlab.freedesktop.org/drm/intel/issues/894


Participating hosts (45 -> 40)
------------------------------

  Additional (4): fi-skl-lmem fi-blb-e6850 fi-bwr-2160 fi-snb-2520m 
  Missing    (9): fi-hsw-4770r fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-gdg-551 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7673 -> Patchwork_15985

  CI-20190529: 20190529
  CI_DRM_7673: 6e3335ed7b56aaf9d55ddf51cddea4d844dc3a78 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15985: b72498a874fb5e74f609ab51783377cebf2734a3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b72498a874fb drm/i915/selftests: Make headers self-contained
aba7d1f5aa20 drm/i915/selftest: Move igt_atomic_section[] out of the header

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15985/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
