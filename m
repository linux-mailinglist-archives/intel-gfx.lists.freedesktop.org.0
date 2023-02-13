Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17788694868
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 15:45:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C88010E5DB;
	Mon, 13 Feb 2023 14:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4092C10E5D4;
 Mon, 13 Feb 2023 14:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676299518; x=1707835518;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ierx0qC0bPJq9W17TE4GmzjJ9MSXVn6Edovb6iPBrrs=;
 b=mlGfTGLvL9iaKEBhaqqd5FCOTKp9xKiZq1TWsm3GlZ4ilmyIdZbsySGP
 S3OxRW2V+FCZQL8b+Wg+fmmN2ZGx3qr7gaPQtAhlpR1EnVSKdIUYwnHLL
 jmbqzX7ejDm7eqMgAUC2O6FHA5pznQIxJ1k0kd2I1DpRSz5nLCJf5xug+
 /24mcK5SjitTihStjASEXFyUdQP2CLmBAEdC00+mRljOT9MbwNsvGfdpl
 8LkXJIyx7oTAFg8fHZ1WSZ1220jxibQ/ITCZsBf4Zdkwwp5kWSDyY05N6
 qOx2EFWCT6LgGBkn/wbaPmQm9du3zG5NLX9qUHi6q5Tz8XpM8plmKf6l1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="328607619"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="328607619"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 06:45:17 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="997709666"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="997709666"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.19.172])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 06:45:14 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
Date: Mon, 13 Feb 2023 15:45:11 +0100
Message-ID: <9064404.CDJkKcVGEf@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <167628715047.20211.8156625702692029298@emeril.freedesktop.org>
References: <20230213093132.12763-1-janusz.krzysztofik@linux.intel.com>
 <167628715047.20211.8156625702692029298@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgdGVz?=
 =?utf-8?q?ts/i915/perf=3A_Add_stress_/_race_exercises_=28rev3=29?=
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
Cc: Arkadiusz Hiler <arek@hiler.eu>, intel-gfx@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>, Petri Latvala <adrinael@adrinael.net>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Monday, 13 February 2023 12:19:10 CET Patchwork wrote:
> == Series Details ==
> 
> Series: tests/i915/perf: Add stress / race exercises (rev3)
> URL   : https://patchwork.freedesktop.org/series/113522/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from IGT_7160_full -> IGTPW_8488_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with IGTPW_8488_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in IGTPW_8488_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/index.html
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   Additional (1): shard-tglu-9 
>   Missing    (1): shard-rkl0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in IGTPW_8488_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * {igt@gem_barrier_race@remote-request@rcs0} (NEW):
>     - {shard-rkl}:        NOTRUN -> [ABORT][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-rkl-6/igt@gem_barrier_race@remote-request@rcs0.html
>     - {shard-tglu}:       NOTRUN -> [ABORT][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-tglu-8/igt@gem_barrier_race@remote-request@rcs0.html

Expected list corruptions.

> 
>   * igt@kms_mmap_write_crc@main@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [FAIL][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl6/igt@kms_mmap_write_crc@main@pipe-a-dp-1.html

False positive, BUG Filing team notified and requested to update filters and re-report.

Thanks,
Janusz


> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between IGT_7160_full and IGTPW_8488_full:
> 
> ### New IGT tests (12) ###
> 
>   * igt@gem_barrier_race@remote-request:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_barrier_race@remote-request@rcs0:
>     - Statuses : 2 abort(s) 2 pass(s) 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_cursor_edge_walk@128x128-right-edge@pipe-a-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_cursor_edge_walk@128x128-right-edge@pipe-d-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_cursor_edge_walk@128x128-top-bottom@pipe-d-hdmi-a-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_cursor_edge_walk@256x256-left-edge@pipe-b-edp-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_cursor_edge_walk@256x256-right-edge@pipe-b-edp-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_cursor_edge_walk@64x64-left-edge@pipe-d-hdmi-a-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_cursor_edge_walk@64x64-right-edge@pipe-a-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_cursor_edge_walk@64x64-right-edge@pipe-d-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_cursor_edge_walk@64x64-top-bottom@pipe-a-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_cursor_edge_walk@64x64-top-bottom@pipe-d-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in IGTPW_8488_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-apl:          NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#6334])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl3/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-apl:          NOTRUN -> [FAIL][5] ([i915#2846])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl7/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2842])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-apl:          NOTRUN -> [FAIL][8] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-apl:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#2190])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-apl:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#4613]) +18 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl2/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][11] ([i915#2658]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl2/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
>     - shard-apl:          NOTRUN -> [SKIP][12] ([fdo#109271]) +1214 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl7/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-apl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#3323])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl2/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-apl:          NOTRUN -> [FAIL][14] ([i915#3318])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl7/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-apl:          NOTRUN -> [FAIL][15] ([i915#7036]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl4/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#1937])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#3886]) +50 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_color@ctm-max@pipe-a-hdmi-a-1:
>     - shard-snb:          NOTRUN -> [SKIP][18] ([fdo#109271]) +24 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-snb1/igt@kms_color@ctm-max@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_content_protection@lic@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [TIMEOUT][19] ([i915#7173]) +4 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl3/igt@kms_content_protection@lic@pipe-a-dp-1.html
> 
>   * igt@kms_content_protection@uevent@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [FAIL][20] ([i915#1339])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl1/igt@kms_content_protection@uevent@pipe-a-dp-1.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#2346])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-dp1:
>     - shard-apl:          NOTRUN -> [FAIL][23] ([i915#79])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl7/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
> 
>   * igt@kms_flip@flip-vs-rmfb@b-dp1:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][24] ([i915#62]) +18 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl6/igt@kms_flip@flip-vs-rmfb@b-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
>     - shard-glk:          NOTRUN -> [SKIP][25] ([fdo#109271]) +3 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-glk4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [FAIL][26] ([i915#7862]) +1 similar issue
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl3/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-dp-1.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [FAIL][27] ([i915#4573]) +5 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl7/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#658]) +17 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_setmode@basic@pipe-a-vga-1:
>     - shard-snb:          NOTRUN -> [FAIL][29] ([i915#5465]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-snb5/igt@kms_setmode@basic@pipe-a-vga-1.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#533])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl7/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#2437]) +3 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl3/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][32] ([i915#1982] / [i915#62]) +1 similar issue
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-apl6/igt@perf_pmu@module-unload.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@virtual-idle:
>     - {shard-rkl}:        [FAIL][33] ([i915#7742]) -> [PASS][34] +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-rkl-2/igt@drm_fdinfo@virtual-idle.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html
> 
>   * igt@gem_ctx_persistence@engines-hang@bcs0:
>     - {shard-rkl}:        [SKIP][35] ([i915#6252]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-rkl-2/igt@gem_ctx_persistence@engines-hang@bcs0.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - {shard-dg1}:        [DMESG-WARN][37] ([i915#4391]) -> [PASS][38]
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-dg1-12/igt@gem_eio@in-flight-suspend.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-dg1-18/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_eio@kms:
>     - {shard-dg1}:        [FAIL][39] ([i915#5784]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-dg1-14/igt@gem_eio@kms.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-dg1-16/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@fairslice:
>     - {shard-rkl}:        [SKIP][41] ([i915#6259]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-rkl-2/igt@gem_exec_balancer@fairslice.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - {shard-rkl}:        [FAIL][43] ([i915#2842]) -> [PASS][44]
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-rkl-1/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-rkl-5/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-wc-read-noreloc:
>     - {shard-rkl}:        [SKIP][45] ([i915#3281]) -> [PASS][46] +13 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-rkl-1/igt@gem_exec_reloc@basic-wc-read-noreloc.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-rkl-5/igt@gem_exec_reloc@basic-wc-read-noreloc.html
> 
>   * igt@gem_partial_pwrite_pread@write-uncached:
>     - {shard-rkl}:        [SKIP][47] ([i915#3282]) -> [PASS][48] +3 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-rkl-3/igt@gem_partial_pwrite_pread@write-uncached.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-rkl-5/igt@gem_partial_pwrite_pread@write-uncached.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - {shard-rkl}:        [SKIP][49] ([i915#2527]) -> [PASS][50] +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-rkl-2/igt@gen9_exec_parse@batch-without-end.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-rkl-5/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
>     - {shard-rkl}:        [SKIP][51] ([i915#1397]) -> [PASS][52] +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-rkl-1/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * {igt@i915_power@sanity}:
>     - {shard-rkl}:        [SKIP][53] ([i915#7984]) -> [PASS][54]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-rkl-2/igt@i915_power@sanity.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-rkl-5/igt@i915_power@sanity.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
>     - {shard-tglu}:       [SKIP][55] ([i915#1845] / [i915#7651]) -> [PASS][56] +6 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-tglu-6/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-tglu-5/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - {shard-rkl}:        [SKIP][57] ([fdo#110189] / [i915#3955]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-rkl-2/igt@kms_fbcon_fbt@psr.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-rkl-6/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-linear:
>     - {shard-rkl}:        [SKIP][59] ([i915#1849] / [i915#4098]) -> [PASS][60] +10 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - {shard-rkl}:        [SKIP][61] ([i915#1849]) -> [PASS][62] +2 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-rkl-3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_psr@sprite_render:
>     - {shard-rkl}:        [SKIP][63] ([i915#1072]) -> [PASS][64] +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-rkl-2/igt@kms_psr@sprite_render.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-rkl-6/igt@kms_psr@sprite_render.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-idle:
>     - {shard-rkl}:        [SKIP][65] ([i915#1845] / [i915#4098]) -> [PASS][66] +11 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-rkl-2/igt@kms_vblank@pipe-b-ts-continuation-idle.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-rkl-6/igt@kms_vblank@pipe-b-ts-continuation-idle.html
> 
>   * igt@prime_vgem@basic-write:
>     - {shard-rkl}:        [SKIP][67] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][68] +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-rkl-4/igt@prime_vgem@basic-write.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-rkl-5/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - {shard-rkl}:        [SKIP][69] ([fdo#109295] / [fdo#111656] / [i915#3708]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7160/shard-rkl-1/igt@prime_vgem@coherency-gtt.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/shard-rkl-5/igt@prime_vgem@coherency-gtt.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1339]: https://gitlab.freedesktop.org/drm/intel/issues/1339
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
>   [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6493]: https://gitlab.freedesktop.org/drm/intel/issues/6493
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
>   [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
>   [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
>   [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7862]: https://gitlab.freedesktop.org/drm/intel/issues/7862
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
>   [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
>   [i915#8018]: https://gitlab.freedesktop.org/drm/intel/issues/8018
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * IGT: IGT_7160 -> IGTPW_8488
> 
>   CI-20190529: 20190529
>   CI_DRM_12730: c54b5fcf3e686a0abfdd7d6af53e9014c137023a @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGTPW_8488: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/index.html
>   IGT_7160: 45da871dd2684227e93a2fc002b87dfc58bd5fd9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8488/index.html
> 




