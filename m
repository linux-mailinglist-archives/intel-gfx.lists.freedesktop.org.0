Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F057136B559
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 17:00:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AFEE6E201;
	Mon, 26 Apr 2021 15:00:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CF766E1EE
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Apr 2021 15:00:34 +0000 (UTC)
IronPort-SDR: WLgz5PgGSuWTYGN5DnhGmn4u010c1LlAykqjV4893Iwopp5Ok8e5g88oWr9PiwaynY1ioFRUZr
 LXDTVDMTBTxA==
X-IronPort-AV: E=McAfee;i="6200,9189,9966"; a="193160753"
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; d="scan'208";a="193160753"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2021 08:00:33 -0700
IronPort-SDR: USPfz7vPHv0SgOU9XEJLX+8DQlTe9xRJ4ashuHyKNxZtOIsIEx90m7dTuyeP0kS9tQh3pKjneB
 rxl2L0d0hn4A==
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; d="scan'208";a="402947843"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2021 08:00:31 -0700
Date: Mon, 26 Apr 2021 18:00:28 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Juha-Pekka =?iso-8859-1?Q?Heikkil=E4?= <juha-pekka.heikkila@intel.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20210426150028.GD3777213@ideak-desk.fi.intel.com>
References: <20210421121959.3577881-1-imre.deak@intel.com>
 <161904724472.19926.11433667965991183752@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161904724472.19926.11433667965991183752@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Simplify_CCS_and_UV_plane_alignment_handling?=
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

On Wed, Apr 21, 2021 at 11:20:44PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Simplify CCS and UV plane alignment handling
> URL   : https://patchwork.freedesktop.org/series/89299/
> State : failure

Thanks for the reviews, pushed to -din with a TODO: update about using
a 4k linear UV plane alignment everywhere.

Lakshmi, please see the unrelated failure below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9993_full -> Patchwork_19963_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_19963_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19963_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19963_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_sync@basic-many-each:
>     - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb4/igt@gem_sync@basic-many-each.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-iclb2/igt@gem_sync@basic-many-each.html

Starting subtest: basic-many-each
runner: This test was killed due to a kernel taint (0x280).
runner: This test was killed due to exceeding disk usage limit. (Used 23707386 bytes, limit 10485760)

Looks like a test or CI config issue, do we have ticket for this?


> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19963_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@file:
>     - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-snb5/igt@gem_ctx_persistence@file.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-apl8/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_eio@kms:
>     - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#3115])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-glk4/igt@gem_eio@kms.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-glk8/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-skl:          NOTRUN -> [SKIP][7] ([fdo#109271]) +84 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl10/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglb:         [PASS][8] -> [FAIL][9] ([i915#2842]) +1 similar issue
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-queues-priority-all:
>     - shard-iclb:         [PASS][12] -> [INCOMPLETE][13] ([i915#1895])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb7/igt@gem_exec_whisper@basic-queues-priority-all.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-iclb7/igt@gem_exec_whisper@basic-queues-priority-all.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-skl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#2190])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl2/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_gtt@big-copy-xy:
>     - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#307])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-glk8/igt@gem_mmap_gtt@big-copy-xy.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-glk8/igt@gem_mmap_gtt@big-copy-xy.html
> 
>   * igt@gem_userptr_blits@set-cache-level:
>     - shard-skl:          NOTRUN -> [FAIL][17] ([i915#3324])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl7/igt@gem_userptr_blits@set-cache-level.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-snb:          NOTRUN -> [FAIL][18] ([i915#2724])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-snb5/igt@gem_userptr_blits@vma-merge.html
>     - shard-apl:          NOTRUN -> [FAIL][19] ([i915#3318])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-apl8/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gem_vm_create@destroy-race:
>     - shard-tglb:         [PASS][20] -> [FAIL][21] ([i915#2822])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-tglb5/igt@gem_vm_create@destroy-race.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-tglb1/igt@gem_vm_create@destroy-race.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-skl:          NOTRUN -> [FAIL][22] ([i915#3296])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl1/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@i915_hangman@engine-error@vecs0:
>     - shard-kbl:          NOTRUN -> [SKIP][23] ([fdo#109271]) +38 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl4/igt@i915_hangman@engine-error@vecs0.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][24] -> [FAIL][25] ([i915#454])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
>     - shard-skl:          NOTRUN -> [FAIL][26] ([i915#454])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl7/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#151])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl1/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl9/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@kms_async_flips@test-time-stamp:
>     - shard-tglb:         [PASS][29] -> [FAIL][30] ([i915#2574])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-tglb2/igt@kms_async_flips@test-time-stamp.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-tglb6/igt@kms_async_flips@test-time-stamp.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic:
>     - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111304])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl7/igt@kms_ccs@pipe-c-crc-sprite-planes-basic.html
> 
>   * igt@kms_chamelium@dp-mode-timings:
>     - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +9 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-apl2/igt@kms_chamelium@dp-mode-timings.html
> 
>   * igt@kms_chamelium@vga-hpd-for-each-pipe:
>     - shard-snb:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-snb5/igt@kms_chamelium@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium@vga-hpd-without-ddc:
>     - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl4/igt@kms_chamelium@vga-hpd-without-ddc.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-negative:
>     - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl1/igt@kms_color_chamelium@pipe-c-ctm-negative.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-kbl:          NOTRUN -> [FAIL][36] ([i915#2105])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl4/igt@kms_content_protection@uevent.html
>     - shard-apl:          NOTRUN -> [FAIL][37] ([i915#2105])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-apl1/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
>     - shard-snb:          NOTRUN -> [SKIP][38] ([fdo#109271]) +66 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [PASS][39] -> [DMESG-WARN][40] ([i915#1982])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
>     - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#2122]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#2672])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
>     - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#2672])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
>     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#2642])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-apl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:
>     - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#49])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#533]) +2 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-apl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#533]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl2/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - shard-kbl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180]) +5 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
>     - shard-tglb:         [PASS][52] -> [FAIL][53] ([i915#2839])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-tglb5/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-tglb1/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][54] ([i915#265])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][55] ([fdo#108145] / [i915#265])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][56] ([fdo#108145] / [i915#265])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][57] -> [FAIL][58] ([fdo#108145] / [i915#265])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>     - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#2733])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl10/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
>     - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#658]) +2 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
>     - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#658]) +2 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl10/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
>     - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [PASS][63] -> [SKIP][64] ([fdo#109441]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-apl:          NOTRUN -> [FAIL][65] ([IGT#2])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-apl1/igt@kms_sysfs_edid_timing.html
>     - shard-kbl:          NOTRUN -> [FAIL][66] ([IGT#2])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl4/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-d-wait-forked-hang:
>     - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271]) +135 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-apl8/igt@kms_vblank@pipe-d-wait-forked-hang.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2437])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-apl2/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-apl2/igt@sysfs_clients@fair-1.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl4/igt@sysfs_clients@sema-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_create@create-clear:
>     - shard-skl:          [FAIL][71] ([i915#1888] / [i915#3160]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl8/igt@gem_create@create-clear.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl4/igt@gem_create@create-clear.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [FAIL][73] ([i915#2846]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-glk9/igt@gem_exec_fair@basic-deadline.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-glk8/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-kbl:          [SKIP][75] ([fdo#109271]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [FAIL][77] ([i915#2842]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-iclb:         [FAIL][79] ([i915#2428]) -> [PASS][80] +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-skl:          [INCOMPLETE][81] ([i915#198] / [i915#2405]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl7/igt@gem_workarounds@suspend-resume-fd.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl10/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@i915_selftest@mock@requests:
>     - shard-skl:          [INCOMPLETE][83] ([i915#198]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl6/igt@i915_selftest@mock@requests.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl7/igt@i915_selftest@mock@requests.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][85] ([i915#180]) -> [PASS][86] +1 similar issue
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
>     - shard-skl:          [FAIL][87] ([i915#2346]) -> [PASS][88] +1 similar issue
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:
>     - shard-glk:          [FAIL][89] ([i915#52] / [i915#54]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-glk3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-glk7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:
>     - shard-skl:          [FAIL][91] ([i915#2122]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [SKIP][93] ([fdo#109441]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb5/igt@kms_psr@psr2_no_drrs.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - shard-skl:          [INCOMPLETE][95] ([i915#198] / [i915#2828]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][97] ([i915#1542]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl7/igt@perf@polling-parameterized.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl8/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][99] ([i915#1804] / [i915#2684]) -> [WARN][100] ([i915#2684])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>     - shard-iclb:         [SKIP][101] ([i915#658]) -> [SKIP][102] ([i915#2920]) +1 similar issue
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
>     - shard-iclb:         [SKIP][103] ([i915#2920]) -> [SKIP][104] ([i915#658])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#602]) -> ([FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118]) ([i915#180] / [i915#1814] / [i915#2505] / [i915#3002])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl6/igt@runner@aborted.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl2/igt@runner@aborted.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl6/igt@runner@aborted.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl2/igt@runner@aborted.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl1/igt@runner@aborted.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl1/igt@runner@aborted.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl1/igt@runner@aborted.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl2/igt@runner@aborted.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl6/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl6/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl7/igt@runner@aborted.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl1/igt@runner@aborted.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl6/igt@runner@aborted.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-kbl2/igt@runner@aborted.html
>     - shard-iclb:         ([FAIL][119], [FAIL][120]) ([i915#3002]) -> ([FAIL][121], [FAIL][122], [FAIL][123]) ([i915#2722] / [i915#3002])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb6/igt@runner@aborted.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb8/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-iclb8/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-iclb3/igt@runner@aborted.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-iclb2/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][124], [FAIL][125], [FAIL][126]) ([i915#180] / [i915#3002]) -> ([FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130]) ([i915#1610] / [i915#180] / [i915#1814] / [i915#2292] / [i915#3002])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-apl3/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-apl6/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-apl8/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-apl8/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-apl8/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-apl1/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-apl1/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][131], [FAIL][132], [FAIL][133]) ([i915#1436] / [i915#2722] / [i915#3002]) -> ([FAIL][134], [FAIL][135]) ([i915#3002])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl10/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl4/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl6/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl2/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/shard-skl1/igt@runner@aborted.html
> 
>   
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1895]: https://gitlab.freedesktop.org/drm/intel/issues/1895
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2292]: https://gitlab.freedesktop.org/drm/intel/issues/2292
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
>   [i915#2428]: https://gitlab.freedesktop.org/drm/intel/issues/2428
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
>   [i915#2574]: https://gitlab.freedesktop.org/drm/intel/issues/2574
>   [i915#2642]: https://gitlab.freedesktop.org/drm/intel/issues/2642
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
>   [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
>   [i915#2733]: https://gitlab.freedesktop.org/drm/intel/issues/2733
>   [i915#2822]: https://gitlab.freedesktop.org/drm/intel/issues/2822
>   [i915#2828]: https://gitlab.freedesktop.org/drm/intel/issues/2828
>   [i915#2839]: https://gitlab.freedesktop.org/drm/intel/issues/2839
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#307]: https://gitlab.freedesktop.org/drm/intel/issues/307
>   [i915#3115]: https://gitlab.freedesktop.org/drm/intel/issues/3115
>   [i915#3160]: https://gitlab.freedesktop.org/drm/intel/issues/3160
>   [i915#3296]: https://gitlab.freedesktop.org/drm/intel/issues/3296
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3324]: https://gitlab.freedesktop.org/drm/intel/issues/3324
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#602]: https://gitlab.freedesktop.org/drm/intel/issues/602
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
> 
> 
> Participating hosts (11 -> 10)
> ------------------------------
> 
>   Missing    (1): pig-skl-6260u 
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_9993 -> Patchwork_19963
> 
>   CI-20190529: 20190529
>   CI_DRM_9993: 629d3809e6d926c77ba5e9c5405e64eeba564560 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6072: 0a51f49df9f5ca535fc0206a27a6780de6b52320 @ git://anongit.freedesktop.or
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19963/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
