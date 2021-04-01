Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 531F33522D9
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Apr 2021 00:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCCD26ECF4;
	Thu,  1 Apr 2021 22:41:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 005926ECF4
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Apr 2021 22:41:26 +0000 (UTC)
IronPort-SDR: EWMzpvrib3c87fKHaHbRw3i2d7m/FqXKIS280j91an61JjFix239eRjYhrGCAZWLqM9PY0DBRQ
 Y10K9PaCWzQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="171761908"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="171761908"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 15:41:26 -0700
IronPort-SDR: Dh/SxJh0RIXun+rEtLMe8YtmXsoRyGgjIJwJewYUgqoWT9rnE/aC/7lUltgZ/BFk1jEjglPB7u
 SsvJYGttR4Ig==
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="419394926"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 15:41:24 -0700
Date: Fri, 2 Apr 2021 01:41:20 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Sang Oliver <oliver.sang@intel.com>,
 Xing Zhengjun <zhengjun.xing@linux.intel.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Edward Baker <edward.baker@intel.com>
Message-ID: <20210401224120.GC1546918@ideak-desk.fi.intel.com>
References: <20210311144529.3059024-1-imre.deak@intel.com>
 <161548452755.28799.17859462621084637123@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161548452755.28799.17859462621084637123@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Uninit_the_DMC_FW_loader_state_during_shutdown?=
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
Cc: Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 11, 2021 at 05:42:07PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Uninit the DMC FW loader state during shutdown
> URL   : https://patchwork.freedesktop.org/series/87883/
> State : failure

Thanks for the reports testing and review, patch pushed to -din.

One unrelated failure, see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9849_full -> Patchwork_19781_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_19781_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19781_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19781_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-tglb5/igt@perf_pmu@rc6-suspend.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-tglb8/igt@perf_pmu@rc6-suspend.html

The changes in the patch have an effect only during shutdown and reboot
so can't be related to the above failure.

> #### Warnings ####
> 
>   * igt@gem_exec_reloc@basic-parallel:
>     - shard-kbl:          [TIMEOUT][3] ([i915#1729]) -> [TIMEOUT][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl6/igt@gem_exec_reloc@basic-parallel.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-kbl6/igt@gem_exec_reloc@basic-parallel.html
>     - shard-tglb:         [TIMEOUT][5] ([i915#1729]) -> [TIMEOUT][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-tglb7/igt@gem_exec_reloc@basic-parallel.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-tglb5/igt@gem_exec_reloc@basic-parallel.html
>     - shard-skl:          [TIMEOUT][7] ([i915#1729]) -> [TIMEOUT][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl4/igt@gem_exec_reloc@basic-parallel.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl6/igt@gem_exec_reloc@basic-parallel.html
>     - shard-apl:          [TIMEOUT][9] ([i915#1729]) -> [TIMEOUT][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-apl2/igt@gem_exec_reloc@basic-parallel.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl3/igt@gem_exec_reloc@basic-parallel.html
>     - shard-iclb:         [TIMEOUT][11] ([i915#1729]) -> [TIMEOUT][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb5/igt@gem_exec_reloc@basic-parallel.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb3/igt@gem_exec_reloc@basic-parallel.html
>     - shard-glk:          [TIMEOUT][13] ([i915#1729]) -> [TIMEOUT][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-glk7/igt@gem_exec_reloc@basic-parallel.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-glk8/igt@gem_exec_reloc@basic-parallel.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19781_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-iclb:         NOTRUN -> [DMESG-WARN][15] ([i915#3002])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb1/igt@gem_create@create-massive.html
>     - shard-skl:          NOTRUN -> [DMESG-WARN][16] ([i915#3002])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl2/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_persistence@clone:
>     - shard-snb:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#1099]) +4 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-snb5/igt@gem_ctx_persistence@clone.html
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-iclb:         [PASS][18] -> [INCOMPLETE][19] ([i915#3057])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb8/igt@gem_ctx_persistence@many-contexts.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb6/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-skl:          NOTRUN -> [FAIL][20] ([i915#2846])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl9/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#2842])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#2842])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-kbl:          [PASS][25] -> [FAIL][26] ([i915#2842]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl2/igt@gem_exec_fair@basic-none@vecs0.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-kbl2/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#2842]) +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@bcs0:
>     - shard-apl:          NOTRUN -> [FAIL][29] ([i915#2389]) +3 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@rcs0:
>     - shard-snb:          NOTRUN -> [FAIL][30] ([i915#2389]) +2 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-snb5/igt@gem_exec_reloc@basic-wide-active@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked:
>     - shard-glk:          [PASS][31] -> [DMESG-WARN][32] ([i915#118] / [i915#95]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-glk1/igt@gem_exec_whisper@basic-fds-forked.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-glk5/igt@gem_exec_whisper@basic-fds-forked.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#2190])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl8/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_offset@clear:
>     - shard-skl:          NOTRUN -> [FAIL][34] ([i915#3160])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl7/igt@gem_mmap_offset@clear.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][35] ([i915#2658])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-snb5/igt@gem_pwrite@basic-exhaustion.html
>     - shard-apl:          NOTRUN -> [WARN][36] ([i915#2658])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl1/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_render_copy@linear-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([i915#768])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb3/igt@gem_render_copy@linear-to-vebox-y-tiled.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][38] ([i915#3002])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-snb7/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@mmap-offset-invalidate-active@wb:
>     - shard-snb:          NOTRUN -> [SKIP][39] ([fdo#109271]) +347 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-snb7/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html
> 
>   * igt@gem_userptr_blits@mmap-offset-invalidate-idle@uc:
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([i915#1317]) +3 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb3/igt@gem_userptr_blits@mmap-offset-invalidate-idle@uc.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#112306])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb3/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][42] -> [FAIL][43] ([i915#454])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
>     - shard-skl:          NOTRUN -> [FAIL][44] ([i915#454])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl9/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress:
>     - shard-skl:          [PASS][45] -> [INCOMPLETE][46] ([i915#151])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl9/igt@i915_pm_rpm@gem-execbuf-stress.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl3/igt@i915_pm_rpm@gem-execbuf-stress.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][47] ([i915#2782])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-snb5/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#110725] / [fdo#111614])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb1/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_joiner@invalid-modeset:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([i915#2705])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb3/igt@kms_big_joiner@invalid-modeset.html
>     - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#2705])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl2/igt@kms_big_joiner@invalid-modeset.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180:
>     - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111304])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl2/igt@kms_ccs@pipe-c-crc-primary-rotation-180.html
> 
>   * igt@kms_ccs@pipe-d-bad-rotation-90:
>     - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109278]) +8 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb1/igt@kms_ccs@pipe-d-bad-rotation-90.html
> 
>   * igt@kms_chamelium@hdmi-edid-change-during-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [fdo#111827]) +19 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl1/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium@vga-hpd-without-ddc:
>     - shard-snb:          NOTRUN -> [SKIP][54] ([fdo#109271] / [fdo#111827]) +18 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-snb7/igt@kms_chamelium@vga-hpd-without-ddc.html
> 
>   * igt@kms_color@pipe-d-ctm-max:
>     - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271]) +88 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl7/igt@kms_color@pipe-d-ctm-max.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-25:
>     - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl7/igt@kms_color_chamelium@pipe-b-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-5:
>     - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109284] / [fdo#111827]) +7 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb1/igt@kms_color_chamelium@pipe-c-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-d-degamma:
>     - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb3/igt@kms_color_chamelium@pipe-d-degamma.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-apl:          NOTRUN -> [FAIL][59] ([i915#2105])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl2/igt@kms_content_protection@uevent.html
>     - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109300] / [fdo#111066])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb3/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-apl:          [PASS][61] -> [DMESG-WARN][62] ([i915#180])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109274] / [fdo#109278])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb3/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
>     - shard-apl:          NOTRUN -> [DMESG-FAIL][64] ([IGT#6])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl8/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-tglb:         [PASS][65] -> [DMESG-WARN][66] ([i915#2411])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-tglb8/igt@kms_fbcon_fbt@psr-suspend.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-tglb5/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109274]) +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb3/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@d-edp1:
>     - shard-tglb:         [PASS][68] -> [FAIL][69] ([i915#79])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@d-edp1.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@d-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
>     - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2642])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109280]) +7 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
>     - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +170 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_getfb@getfb-handle-closed:
>     - shard-skl:          [PASS][73] -> [DMESG-WARN][74] ([i915#1982])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl4/igt@kms_getfb@getfb-handle-closed.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl9/igt@kms_getfb@getfb-handle-closed.html
> 
>   * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109289])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb3/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#533]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][77] ([i915#180]) +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][78] ([i915#198])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][79] ([fdo#108145] / [i915#265]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][80] ([fdo#108145] / [i915#265]) +4 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][81] -> [FAIL][82] ([fdo#108145] / [i915#265])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_scaling@plane-scaling:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][83] ([i915#3182])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl5/igt@kms_plane_scaling@plane-scaling.html
> 
>   * igt@kms_prime@basic-crc@first-to-second:
>     - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#1836])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb3/igt@kms_prime@basic-crc@first-to-second.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
>     - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#658]) +4 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
>     - shard-iclb:         NOTRUN -> [SKIP][86] ([i915#658]) +1 similar issue
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
>     - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#658]) +3 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][88] -> [SKIP][89] ([fdo#109441])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-apl:          NOTRUN -> [FAIL][90] ([IGT#2])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl2/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#2437])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl2/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [PASS][92] -> [FAIL][93] ([i915#1722])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl4/igt@perf@polling-small-buf.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl9/igt@perf@polling-small-buf.html
> 
>   * igt@perf@short-reads:
>     - shard-skl:          [PASS][94] -> [FAIL][95] ([i915#51])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl4/igt@perf@short-reads.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl9/igt@perf@short-reads.html
> 
>   * igt@prime_nv_test@i915_nv_sharing:
>     - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#109291])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb3/igt@prime_nv_test@i915_nv_sharing.html
> 
>   * igt@sysfs_clients@busy@vcs1:
>     - shard-kbl:          [PASS][97] -> [FAIL][98] ([i915#3009])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl2/igt@sysfs_clients@busy@vcs1.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-kbl2/igt@sysfs_clients@busy@vcs1.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-skl:          [PASS][99] -> [FAIL][100] ([i915#3028])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl3/igt@sysfs_clients@recycle-many.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl2/igt@sysfs_clients@recycle-many.html
> 
>   * igt@sysfs_clients@split-10@bcs0:
>     - shard-apl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#3026])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl2/igt@sysfs_clients@split-10@bcs0.html
> 
>   * igt@sysfs_clients@split-10@vcs0:
>     - shard-skl:          [PASS][102] -> [SKIP][103] ([fdo#109271] / [i915#3026])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl10/igt@sysfs_clients@split-10@vcs0.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl6/igt@sysfs_clients@split-10@vcs0.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@vcs0:
>     - shard-kbl:          [PASS][104] -> [INCOMPLETE][105] ([i915#1731])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl1/igt@sysfs_heartbeat_interval@mixed@vcs0.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-kbl6/igt@sysfs_heartbeat_interval@mixed@vcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][106] ([i915#2369] / [i915#3063]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-tglb5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-kbl:          [FAIL][108] ([i915#2842]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl2/igt@gem_exec_fair@basic-none@vcs1.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-kbl2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-glk:          [FAIL][110] ([i915#2842]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-glk1/igt@gem_exec_fair@basic-none@vecs0.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-glk6/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglb:         [FAIL][112] ([i915#2842]) -> [PASS][113] +1 similar issue
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-tglb1/igt@gem_exec_fair@basic-pace@rcs0.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_schedule@u-fairslice@rcs0:
>     - shard-iclb:         [DMESG-WARN][114] ([i915#2803]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb2/igt@gem_exec_schedule@u-fairslice@rcs0.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb1/igt@gem_exec_schedule@u-fairslice@rcs0.html
>     - shard-skl:          [DMESG-WARN][116] ([i915#1610] / [i915#2803]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl6/igt@gem_exec_schedule@u-fairslice@rcs0.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl2/igt@gem_exec_schedule@u-fairslice@rcs0.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-iclb:         [FAIL][118] ([i915#307]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb8/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-apl:          [DMESG-WARN][120] ([i915#180]) -> [PASS][121] +1 similar issue
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-apl3/igt@i915_suspend@sysfs-reader.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-apl8/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [DMESG-WARN][122] ([i915#180]) -> [PASS][123] +2 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [FAIL][124] ([i915#2122]) -> [PASS][125] +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [FAIL][126] ([fdo#108145] / [i915#265]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         [SKIP][128] ([fdo#109441]) -> [PASS][129] +3 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm:
>     - shard-skl:          [DMESG-WARN][130] ([i915#1982]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-kbl:          [FAIL][132] ([i915#3028]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-kbl3/igt@sysfs_clients@recycle-many.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-kbl7/igt@sysfs_clients@recycle-many.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [FAIL][134] ([i915#2680] / [i915#2681]) -> [WARN][135] ([i915#1804] / [i915#2684])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_content_protection@content_type_change:
>     - shard-iclb:         [FAIL][136] ([i915#3144]) -> [SKIP][137] ([fdo#109300] / [fdo#111066]) +1 similar issue
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb1/igt@kms_content_protection@content_type_change.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb5/igt@kms_content_protection@content_type_change.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-iclb:         [SKIP][138] ([i915#3116]) -> [FAIL][139] ([i915#3137])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb2/igt@kms_content_protection@dp-mst-lic-type-0.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb1/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-iclb:         [FAIL][140] ([i915#3137]) -> [SKIP][141] ([i915#3116])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb1/igt@kms_content_protection@dp-mst-type-1.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb5/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>     - shard-iclb:         [SKIP][142] ([i915#2920]) -> [SKIP][143] ([i915#658]) +2 similar issues
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
>     - shard-iclb:         [SKIP][144] ([i915#658]) -> [SKIP][145] ([i915#2920])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149]) ([i915#180] / [i915#2505] / [i915#2724] / [i915#3002]) -> ([FAIL][150], [FAIL][151], [FAIL][152]) ([i915#2724] / [i915#3002])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/shard-k
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
