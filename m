Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4241D84CD
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 20:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492A86E466;
	Mon, 18 May 2020 18:15:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C9176E463;
 Mon, 18 May 2020 18:15:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 54AE4A00E7;
 Mon, 18 May 2020 18:15:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 18 May 2020 18:15:36 -0000
Message-ID: <158982573634.31688.5608691001101250305@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200518143947.30606-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200518143947.30606-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Measure_dispatch_latency_=28rev8=29?=
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

Series: drm/i915/selftests: Measure dispatch latency (rev8)
URL   : https://patchwork.freedesktop.org/series/77308/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8495 -> Patchwork_17695
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17695/index.html

Known issues
------------

  Here are the changes found in Patchwork_17695 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-bsw-nick:        [INCOMPLETE][1] ([i915#1250] / [i915#1436]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8495/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17695/fi-bsw-nick/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live@execlists:
    - fi-skl-lmem:        [INCOMPLETE][3] ([i915#1874]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8495/fi-skl-lmem/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17695/fi-skl-lmem/igt@i915_selftest@live@execlists.html
    - fi-whl-u:           [INCOMPLETE][5] ([i915#656]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8495/fi-whl-u/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17695/fi-whl-u/igt@i915_selftest@live@execlists.html
    - fi-kbl-guc:         [INCOMPLETE][7] ([i915#656]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8495/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17695/fi-kbl-guc/igt@i915_selftest@live@execlists.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][9] ([fdo#109271]) -> [FAIL][10] ([i915#62])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8495/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17695/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1250]: https://gitlab.freedesktop.org/drm/intel/issues/1250
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1874]: https://gitlab.freedesktop.org/drm/intel/issues/1874
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (52 -> 44)
------------------------------

  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8495 -> Patchwork_17695

  CI-20190529: 20190529
  CI_DRM_8495: 695b7d214a475060bb448c2609e4184fc450d69a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5659: 66ab5e42811fee3dea8c21ab29e70e323a0650de @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17695: 2633bb73f44c35def35771444a87a1cc99411d8a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2633bb73f44c drm/i915/selftests: Measure dispatch latency

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17695/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
