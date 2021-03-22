Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4490E3438B0
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 06:35:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9025D89F53;
	Mon, 22 Mar 2021 05:35:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6116789F53
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 05:35:34 +0000 (UTC)
IronPort-SDR: efuSvxkmtwXsB5prJMNbrnwIw2lojDGRuLILy3zmrOR2Aozst5D5K7UXC70X0xVc9grWyRFb6w
 /GSuoWqZjAxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="251558964"
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="251558964"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 22:35:33 -0700
IronPort-SDR: akNgToS0Imm1W8BHNDJXIWeumpcVkIIs71WgVmXIcNRkQHAvUsDnyZOiyXNcAMDxDfllgWU1is
 /Uh/ECa5d7wg==
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="414341444"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 22:35:31 -0700
Date: Mon, 22 Mar 2021 10:49:10 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org, lakshminarayana.vudum@intel.com
Message-ID: <20210322051017.GA4812@intel.com>
References: <20210127100051.30595-1-anshuman.gupta@intel.com>
 <161616037614.8631.5254610405618223923@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161616037614.8631.5254610405618223923@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_mst_streams_type1_capability_check_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-03-19 at 13:26:16 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/hdcp: mst streams type1 capability check (rev2)
> URL   : https://patchwork.freedesktop.org/series/86345/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9874_full -> Patchwork_19809_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_19809_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19809_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19809_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip_tiling@flip-y-tiled@edp-1-pipe-c:
>     - shard-skl:          NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl6/igt@kms_flip_tiling@flip-y-tiled@edp-1-pipe-c.html
Hi Lakshmi ,
Above CI-IGT failures are not related to this patch, this patch is just a rebase and CI results were green at Rev1.
https://patchwork.freedesktop.org/series/86345/#rev1
Could please raise the issue for above failure and re-report the result.

Thanks,
Anshuman Gupta.
> 
>   
> 
> ### Piglit changes ###
> 
> #### Possible regressions ####
> 
>   * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3-uint_uvec3_array3-position (NEW):
>     - {pig-icl-1065g7}:   NOTRUN -> [CRASH][2] +1 similar issue
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/pig-icl-1065g7/spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3-uint_uvec3_array3-position.html
> 
>   * spec@glsl-4.20@execution@vs_in@vs-input-ubyte_uvec4-short_ivec4-position-double_dmat3 (NEW):
>     - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][3] +3 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/pig-icl-1065g7/spec@glsl-4.20@execution@vs_in@vs-input-ubyte_uvec4-short_ivec4-position-double_dmat3.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_9874_full and Patchwork_19809_full:
> 
> ### New Piglit tests (6) ###
> 
>   * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x3-position-double_dvec3:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3-uint_uvec3_array3-position:
>     - Statuses : 1 crash(s)
>     - Exec time: [1.02] s
> 
>   * spec@glsl-4.20@execution@vs_in@vs-input-float_float-position-double_dvec3:
>     - Statuses : 1 crash(s)
>     - Exec time: [1.06] s
> 
>   * spec@glsl-4.20@execution@vs_in@vs-input-position-int_ivec4_array3-double_dvec2_array2:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@glsl-4.20@execution@vs_in@vs-input-ubyte_uvec3-short_int-position-double_dvec4:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@glsl-4.20@execution@vs_in@vs-input-ubyte_uvec4-short_ivec4-position-double_dmat3:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19809_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@chamelium:
>     - shard-iclb:         NOTRUN -> [SKIP][4] ([fdo#111827])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@feature_discovery@chamelium.html
> 
>   * igt@gem_create@create-massive:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][5] ([i915#3002])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl2/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_persistence@clone:
>     - shard-snb:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1099]) +6 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-snb5/igt@gem_ctx_persistence@clone.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-kbl:          NOTRUN -> [SKIP][7] ([fdo#109271]) +11 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl2/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-tglb:         [PASS][8] -> [TIMEOUT][9] ([i915#3063])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-tglb7/igt@gem_eio@in-flight-contexts-10ms.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-tglb1/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-skl:          NOTRUN -> [FAIL][10] ([i915#2846])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl7/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][15] ([i915#2842])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_params@no-vebox:
>     - shard-iclb:         NOTRUN -> [SKIP][16] ([fdo#109283])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@gem_exec_params@no-vebox.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-iclb:         NOTRUN -> [SKIP][17] ([fdo#112283])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_exec_reloc@basic-parallel:
>     - shard-skl:          NOTRUN -> [TIMEOUT][18] ([i915#3183])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl6/igt@gem_exec_reloc@basic-parallel.html
>     - shard-apl:          NOTRUN -> [TIMEOUT][19] ([i915#3183])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl1/igt@gem_exec_reloc@basic-parallel.html
> 
>   * igt@gem_exec_schedule@u-fairslice@vcs0:
>     - shard-tglb:         [PASS][20] -> [DMESG-WARN][21] ([i915#2803])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-tglb5/igt@gem_exec_schedule@u-fairslice@vcs0.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-tglb7/igt@gem_exec_schedule@u-fairslice@vcs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-priority-all:
>     - shard-glk:          [PASS][22] -> [DMESG-WARN][23] ([i915#118] / [i915#95]) +1 similar issue
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-glk8/igt@gem_exec_whisper@basic-fds-priority-all.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk9/igt@gem_exec_whisper@basic-fds-priority-all.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#2190])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_gtt@big-copy-odd:
>     - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#307])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl9/igt@gem_mmap_gtt@big-copy-odd.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl5/igt@gem_mmap_gtt@big-copy-odd.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][27] ([i915#2658])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-snb5/igt@gem_pwrite@basic-exhaustion.html
>     - shard-glk:          NOTRUN -> [WARN][28] ([i915#2658])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk6/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][29] ([i915#3002])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@gem_userptr_blits@input-checking.html
>     - shard-snb:          NOTRUN -> [DMESG-WARN][30] ([i915#3002])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-snb5/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@process-exit-mmap-busy@wc:
>     - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#1699]) +3 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl3/igt@gem_userptr_blits@process-exit-mmap-busy@wc.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-apl:          NOTRUN -> [INCOMPLETE][32] ([i915#2502] / [i915#2667])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl3/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#1436] / [i915#716])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl4/igt@gen9_exec_parse@allowed-single.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          NOTRUN -> [FAIL][35] ([i915#454])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl7/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@modeset-pc8-residency-stress:
>     - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271]) +180 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl3/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][37] ([i915#1886] / [i915#2291])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl7/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#110723])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#2705]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl3/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_chamelium@dp-mode-timings:
>     - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +19 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@kms_chamelium@dp-mode-timings.html
> 
>   * igt@kms_chamelium@hdmi-crc-fast:
>     - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl6/igt@kms_chamelium@hdmi-crc-fast.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-5:
>     - shard-glk:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk6/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-25:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109284] / [fdo#111827]) +3 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_color_chamelium@pipe-c-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
>     - shard-snb:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +20 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-snb5/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][47] ([i915#1319]) +3 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl3/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
>     - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#54])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen:
>     - shard-glk:          NOTRUN -> [SKIP][50] ([fdo#109271]) +25 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk6/igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x512-random:
>     - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109278] / [fdo#109279]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_cursor_crc@pipe-b-cursor-512x512-random.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
>     - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109278]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
>     - shard-snb:          NOTRUN -> [SKIP][53] ([fdo#109271]) +367 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-snb7/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
>     - shard-apl:          NOTRUN -> [DMESG-FAIL][54] ([IGT#6])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533]) +1 similar issue
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl1/igt@kms_cursor_legacy@pipe-d-torture-bo.html
>     - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#533])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl6/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][57] -> [INCOMPLETE][58] ([i915#180])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109274])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-apl:          [PASS][60] -> [DMESG-WARN][61] ([i915#180])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a1:
>     - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#2122])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a1.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>     - shard-glk:          NOTRUN -> [FAIL][64] ([i915#2628])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +80 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl1/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109280]) +5 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][67] ([i915#180])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][68] ([i915#265])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-skl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
>     - shard-apl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265]) +2 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>     - shard-glk:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#658])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
>     - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#658]) +3 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
>     - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr2_su@frontbuffer:
>     - shard-iclb:         [PASS][74] -> [SKIP][75] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][76] -> [SKIP][77] ([fdo#109441]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][78] ([i915#180] / [i915#295])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-glk:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2437])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk6/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [PASS][80] -> [FAIL][81] ([i915#1542])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl7/igt@perf@polling-parameterized.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl8/igt@perf@polling-parameterized.html
> 
>   * igt@prime_nv_test@i915_import_pread_pwrite:
>     - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109291])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@prime_nv_test@i915_import_pread_pwrite.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-kbl:          [PASS][83] -> [FAIL][84] ([i915#3028]) +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl6/igt@sysfs_clients@recycle.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl7/igt@sysfs_clients@recycle.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-snb:          NOTRUN -> [FAIL][85] ([i915#3028])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-snb7/igt@sysfs_clients@recycle-many.html
> 
>   * igt@sysfs_clients@sema-10@vcs0:
>     - shard-apl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#3026]) +2 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl7/igt@sysfs_clients@sema-10@vcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_balancer@hang:
>     - shard-iclb:         [INCOMPLETE][87] ([i915#1895] / [i915#3031]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb2/igt@gem_exec_balancer@hang.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@gem_exec_balancer@hang.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-glk:          [FAIL][89] ([i915#2842]) -> [PASS][90] +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-glk9/igt@gem_exec_fair@basic-none@vecs0.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk7/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_schedule@u-fairslice@rcs0:
>     - shard-tglb:         [DMESG-WARN][91] ([i915#2803]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-tglb5/igt@gem_exec_schedule@u-fairslice@rcs0.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-tglb7/igt@gem_exec_schedule@u-fairslice@rcs0.html
> 
>   * igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-b:
>     - shard-kbl:          [FAIL][93] ([i915#3168]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl4/igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-b.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl6/igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-b.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
>     - shard-skl:          [FAIL][95] ([i915#54]) -> [PASS][96] +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
> 
>   * igt@kms_flip@basic-plain-flip@a-edp1:
>     - shard-skl:          [DMESG-WARN][97] ([i915#1982]) -> [PASS][98] +2 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl7/igt@kms_flip@basic-plain-flip@a-edp1.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl8/igt@kms_flip@basic-plain-flip@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +2 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [FAIL][101] ([i915#1188]) -> [PASS][102] +1 similar issue
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][103] ([fdo#108145] / [i915#265]) -> [PASS][104] +1 similar issue
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_basic:
>     - shard-iclb:         [SKIP][105] ([fdo#109441]) -> [PASS][106] +1 similar issue
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb3/igt@kms_psr@psr2_basic.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb2/igt@kms_psr@psr2_basic.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [FAIL][107] ([i915#1722]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl1/igt@perf@polling-small-buf.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl9/igt@perf@polling-small-buf.html
> 
>   * igt@sysfs_clients@busy@vecs0:
>     - shard-skl:          [FAIL][109] ([i915#3019]) -> [PASS][110]
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl10/igt@sysfs_clients@busy@vecs0.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl4/igt@sysfs_clients@busy@vecs0.html
>     - shard-kbl:          [FAIL][111] ([i915#3009]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl2/igt@sysfs_clients@busy@vecs0.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl1/igt@sysfs_clients@busy@vecs0.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-iclb:         [FAIL][113] ([i915#3028]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb6/igt@sysfs_clients@recycle-many.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb6/igt@sysfs_clients@recycle-many.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][115] ([i915#588]) -> [SKIP][116] ([i915#658])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-iclb:         [SKIP][117] ([fdo#109300] / [fdo#111066]) -> [FAIL][118] ([i915#3137]) +1 similar issue
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb6/igt@kms_content_protection@atomic-dpms.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb1/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-iclb:         [FAIL][119] ([i915#3137]) -> [SKIP][120] ([fdo#109300] / [fdo#111066]) +1 similar issue
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb1/igt@kms_content_protection@legacy.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb8/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
>     - shard-iclb:         [SKIP][121] ([i915#2920]) -> [SKIP][122] ([i915#658]) +1 similar issue
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
>     - shard-iclb:         [SKIP][123] ([i915#658]) -> [SKIP][124] ([i915#2920])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb4/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][125], [FAIL][126], [FAIL][127]) ([i915#180] / [i915#1814] / [i915#2505] / [i915#2724] / [i915#3002]) -> ([FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131]) ([i915#180] / [i915#1814] / [i915#2724] / [i915#3002])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl4/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl4/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl6/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl2/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl4/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl4/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl7/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002]) -> ([FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142]) ([i915#180] / [i915#1814] / [i915#2724] / [i915#3002])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-apl3/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-apl6/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-apl7/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-apl2/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl1/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl3/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl6/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl3/igt@runner@ab
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
