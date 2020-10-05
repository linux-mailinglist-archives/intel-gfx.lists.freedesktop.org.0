Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 410F528437B
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 02:47:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A2966E212;
	Tue,  6 Oct 2020 00:47:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B913B6E212
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 00:47:51 +0000 (UTC)
IronPort-SDR: OJ0J1qUwvhSZNNT80zlU5IDjgZMWsTsVY2O0WrF46dpTA+AF5BolhoqtidYDmsK+137gCUrLF/
 /xpV/D2AynZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="151990822"
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="151990822"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2020 16:48:40 -0700
IronPort-SDR: j+F+OEnX1rA2JY5R3NxXCqwCj84aT4Vmlh88x6/qLqTMPA48leptNuNv1LQ6gEfxBPTagJHFh9
 EuZEv5n7FvwA==
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="353782595"
Received: from gomezj5-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.18.193])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2020 15:53:01 -0700
Date: Mon, 5 Oct 2020 15:52:47 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201005225247.hkxt6csikd2egsc5@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20201001063917.3133475-1-lucas.demarchi@intel.com>
 <160154158346.16178.13288765125135544892@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160154158346.16178.13288765125135544892@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915=3A_don=27t_conflate_i?=
 =?utf-8?q?s=5Fdgfx_with_fake_lmem?=
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 01, 2020 at 08:39:43AM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: series starting with [CI,1/2] drm/i915: don't conflate is_dgfx with fake lmem
>URL   : https://patchwork.freedesktop.org/series/82283/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_9085_full -> Patchwork_18604_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_18604_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_18604_full, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_18604_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
>    - shard-skl:          NOTRUN -> [INCOMPLETE][1]

it would be suspicious if it was on the skl with fake lmem.  Nothing
related here though.

Lucas De Marchi

>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-skl4/igt@kms_color_chamelium@pipe-a-ctm-0-75.html
>
>
>Known issues
>------------
>
>  Here are the changes found in Patchwork_18604_full that come from known issues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@gem_exec_whisper@basic-contexts-priority:
>    - shard-glk:          [PASS][2] -> [DMESG-WARN][3] ([i915#118] / [i915#95])
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-glk8/igt@gem_exec_whisper@basic-contexts-priority.html
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-glk2/igt@gem_exec_whisper@basic-contexts-priority.html
>
>  * igt@i915_pm_rpm@system-suspend:
>    - shard-skl:          [PASS][4] -> [INCOMPLETE][5] ([i915#151])
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-skl7/igt@i915_pm_rpm@system-suspend.html
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-skl10/igt@i915_pm_rpm@system-suspend.html
>
>  * igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:
>    - shard-skl:          [PASS][6] -> [DMESG-WARN][7] ([i915#1982]) +10 similar issues
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-skl5/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-skl5/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
>
>  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>    - shard-kbl:          [PASS][8] -> [DMESG-WARN][9] ([i915#180])
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
>
>  * igt@kms_flip_tiling@flip-y-tiled:
>    - shard-apl:          [PASS][10] -> [DMESG-WARN][11] ([i915#1635] / [i915#1982])
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-apl7/igt@kms_flip_tiling@flip-y-tiled.html
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-apl7/igt@kms_flip_tiling@flip-y-tiled.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
>    - shard-tglb:         [PASS][12] -> [DMESG-WARN][13] ([i915#1982]) +1 similar issue
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
>
>  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>    - shard-skl:          [PASS][14] -> [FAIL][15] ([fdo#108145] / [i915#265]) +1 similar issue
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>
>  * igt@kms_psr@psr2_cursor_mmap_cpu:
>    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#109441])
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
>
>  * igt@kms_setmode@basic:
>    - shard-apl:          [PASS][18] -> [FAIL][19] ([i915#1635] / [i915#31])
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-apl4/igt@kms_setmode@basic.html
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-apl8/igt@kms_setmode@basic.html
>
>
>#### Possible fixes ####
>
>  * {igt@core_hotunplug@unbind-rebind}:
>    - shard-skl:          [DMESG-WARN][20] ([i915#1982]) -> [PASS][21] +3 similar issues
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-skl2/igt@core_hotunplug@unbind-rebind.html
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-skl5/igt@core_hotunplug@unbind-rebind.html
>
>  * igt@gem_exec_reloc@basic-many-active@rcs0:
>    - shard-hsw:          [FAIL][22] ([i915#2389]) -> [PASS][23]
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-hsw4/igt@gem_exec_reloc@basic-many-active@rcs0.html
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-hsw6/igt@gem_exec_reloc@basic-many-active@rcs0.html
>
>  * igt@i915_module_load@reload-with-fault-injection:
>    - shard-apl:          [DMESG-WARN][24] ([i915#1635] / [i915#1982]) -> [PASS][25]
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-apl7/igt@i915_module_load@reload-with-fault-injection.html
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-apl7/igt@i915_module_load@reload-with-fault-injection.html
>
>  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
>    - shard-glk:          [FAIL][26] ([i915#2521]) -> [PASS][27]
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-glk3/igt@kms_async_flips@async-flip-with-page-flip-events.html
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-glk3/igt@kms_async_flips@async-flip-with-page-flip-events.html
>    - shard-apl:          [FAIL][28] ([i915#1635] / [i915#2521]) -> [PASS][29]
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-apl6/igt@kms_async_flips@async-flip-with-page-flip-events.html
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-apl6/igt@kms_async_flips@async-flip-with-page-flip-events.html
>
>  * igt@kms_cursor_legacy@short-flip-after-cursor-toggle:
>    - shard-glk:          [DMESG-WARN][30] ([i915#1982]) -> [PASS][31]
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-glk6/igt@kms_cursor_legacy@short-flip-after-cursor-toggle.html
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-glk9/igt@kms_cursor_legacy@short-flip-after-cursor-toggle.html
>
>  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
>    - shard-skl:          [INCOMPLETE][32] ([i915#198]) -> [PASS][33]
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
>
>  * igt@kms_flip@flip-vs-suspend@c-dp1:
>    - shard-kbl:          [DMESG-WARN][34] ([i915#180]) -> [PASS][35] +3 similar issues
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
>
>  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>    - shard-skl:          [FAIL][36] ([i915#2122]) -> [PASS][37]
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>
>  * igt@kms_plane@plane-position-hole-dpms-pipe-b-planes:
>    - shard-snb:          [SKIP][38] ([fdo#109271]) -> [PASS][39] +1 similar issue
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-snb6/igt@kms_plane@plane-position-hole-dpms-pipe-b-planes.html
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-snb7/igt@kms_plane@plane-position-hole-dpms-pipe-b-planes.html
>
>  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>    - shard-skl:          [DMESG-FAIL][40] ([fdo#108145] / [i915#1982]) -> [PASS][41]
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>
>  * igt@kms_psr@psr2_dpms:
>    - shard-iclb:         [SKIP][42] ([fdo#109441]) -> [PASS][43]
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-iclb3/igt@kms_psr@psr2_dpms.html
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-iclb2/igt@kms_psr@psr2_dpms.html
>
>  * igt@perf@polling:
>    - shard-skl:          [FAIL][44] ([i915#1542]) -> [PASS][45]
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-skl5/igt@perf@polling.html
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-skl5/igt@perf@polling.html
>
>  * igt@sysfs_timeslice_duration@timeout@rcs0:
>    - shard-skl:          [FAIL][46] ([i915#1732]) -> [PASS][47]
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-skl3/igt@sysfs_timeslice_duration@timeout@rcs0.html
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-skl10/igt@sysfs_timeslice_duration@timeout@rcs0.html
>
>
>#### Warnings ####
>
>  * igt@gem_exec_suspend@basic-s0:
>    - shard-tglb:         [DMESG-WARN][48] ([i915#2411]) -> [INCOMPLETE][49] ([i915#456])
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-tglb5/igt@gem_exec_suspend@basic-s0.html
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-tglb1/igt@gem_exec_suspend@basic-s0.html
>
>  * igt@gem_workarounds@suspend-resume:
>    - shard-tglb:         [INCOMPLETE][50] ([i915#1436] / [i915#1602] / [i915#1887] / [i915#456]) -> [DMESG-WARN][51] ([i915#1436] / [i915#1602] / [i915#1887] / [i915#2411])
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-tglb3/igt@gem_workarounds@suspend-resume.html
>   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-tglb3/igt@gem_workarounds@suspend-resume.html
>
>  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>    - shard-skl:          [DMESG-FAIL][52] ([i915#1982] / [i915#79]) -> [FAIL][53] ([i915#79])
>   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9085/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
>   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
>
>
>  {name}: This element is suppressed. This means it is ignored when computing
>          the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
>  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
>  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>  [i915#1732]: https://gitlab.freedesktop.org/drm/intel/issues/1732
>  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
>  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
>  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
>  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
>
>
>Participating hosts (11 -> 11)
>------------------------------
>
>  No changes in participating hosts
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_9085 -> Patchwork_18604
>
>  CI-20190529: 20190529
>  CI_DRM_9085: aa4b8d5f7de07ec566086ca7c2bdb5138284d3a3 @ git://anongit.freedesktop.org/gfx-ci/linux
>  IGT_5796: 19ae9421a5af7b03a1c9a577c57f2cf8b16a0116 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>  Patchwork_18604: df6fee7006e59c974479e04644e8dc8102d5ea54 @ git://anongit.freedesktop.org/gfx-ci/linux
>  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
>
>== Logs ==
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18604/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
