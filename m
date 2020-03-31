Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C0919A023
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 22:49:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1927E6E88B;
	Tue, 31 Mar 2020 20:48:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60A6B6E88B
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 20:48:55 +0000 (UTC)
IronPort-SDR: Mve1UiO+2A1YG+/Q7tsa6uMMIukf2AEjwBhTa4m86RjP9inEEn2i7p8z1igstZ5dxBHRttSTVc
 c64r3e36WYJA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 13:48:54 -0700
IronPort-SDR: u/jhpVkCyYlL+wrzqUgJdI8bfmO0r9kNnxhMNe2wNEmcrIz9LFkWE/HEvWkH6r8Q/pYyhvMSGZ
 bofEUyRkTVrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,329,1580803200"; d="scan'208";a="395667996"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga004.jf.intel.com with ESMTP; 31 Mar 2020 13:48:53 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 31 Mar 2020 13:48:52 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 FMSMSX125.amr.corp.intel.com ([169.254.2.68]) with mapi id 14.03.0439.000;
 Tue, 31 Mar 2020 13:48:53 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?B?dGggW3YyLDEvM10gZHJtL2k5MTUvZHA6IFJldHVybiB0aGUgcmlnaHQgdnN3?=
 =?utf-8?Q?ing_tables?=
Thread-Index: AQHWB0jjgZNBTtB8O0eO/fvFJieX7ahjosQA
Date: Tue, 31 Mar 2020 20:48:52 +0000
Message-ID: <aec0a58409f61499bdfd39b7519191c857a44bc4.camel@intel.com>
References: <20200330210044.130510-1-jose.souza@intel.com>
 <158565126603.5564.10120621848158276112@emeril.freedesktop.org>
In-Reply-To: <158565126603.5564.10120621848158276112@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.252.143.47]
Content-ID: <2F212210CF10F747A79A582486FDD302@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/3=5D_drm/i915/dp=3A_Return_the_righ?=
 =?utf-8?q?t_vswing_tables?=
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

On Tue, 2020-03-31 at 10:41 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [v2,1/3] drm/i915/dp: Return the right
> vswing tables
> URL   : https://patchwork.freedesktop.org/series/75268/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8219_full -> Patchwork_17142_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Pushed to dinq, thanks for the reviews Ville and Clinton.

> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_17142_full that come from
> known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_busy@busy-vcs1:
>     - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +7
> similar issues
>    [1]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb4/igt@gem_busy@busy-vcs1.html
>    [2]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-iclb6/igt@gem_busy@busy-vcs1.html
> 
>   * igt@gem_exec_schedule@implicit-both-bsd:
>     - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#677])
>    [3]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd.html
>    [4]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd.html
> 
>   * igt@gem_exec_schedule@implicit-both-bsd1:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] /
> [i915#677]) +3 similar issues
>    [5]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html
>    [6]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd1.html
> 
>   * igt@gem_exec_schedule@preempt-queue-bsd1:
>     - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +13
> similar issues
>    [7]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
>    [8]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
> 
>   * igt@gem_exec_schedule@wide-bsd:
>     - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +2
> similar issues
>    [9]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb8/igt@gem_exec_schedule@wide-bsd.html
>    [10]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-iclb4/igt@gem_exec_schedule@wide-bsd.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#1527])
>    [11]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk8/igt@i915_pm_rc6_residency@rc6-idle.html
>    [12]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-glk9/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#72])
>    [13]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
>    [14]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
>     - shard-glk:          [PASS][15] -> [INCOMPLETE][16] ([i915#58] /
> [k.org#198133])
>    [15]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
>    [16]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#34])
>    [17]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check.html
>    [18]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
>     - shard-tglb:         [PASS][19] -> [SKIP][20] ([i915#668]) +5
> similar issues
>    [19]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
>    [20]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180])
> +5 similar issues
>    [21]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
>    [22]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
>     - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#69])
>    [23]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
>    [24]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145])
>    [25]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [26]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] /
> [i915#265])
>    [27]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [28]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +2
> similar issues
>    [29]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [30]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_setmode@basic:
>     - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#31])
>    [31]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl3/igt@kms_setmode@basic.html
>    [32]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-skl10/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180])
>    [33]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [34]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@processes:
>     - shard-kbl:          [FAIL][35] ([i915#1528]) -> [PASS][36]
>    [35]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl1/igt@gem_ctx_persistence@processes.html
>    [36]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-kbl7/igt@gem_ctx_persistence@processes.html
> 
>   * igt@gem_exec_schedule@fifo-bsd1:
>     - shard-iclb:         [SKIP][37] ([fdo#109276]) -> [PASS][38] +16
> similar issues
>    [37]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb8/igt@gem_exec_schedule@fifo-bsd1.html
>    [38]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-iclb4/igt@gem_exec_schedule@fifo-bsd1.html
> 
>   * igt@gem_exec_schedule@implicit-both-bsd2:
>     - shard-iclb:         [SKIP][39] ([fdo#109276] / [i915#677]) ->
> [PASS][40]
>    [39]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd2.html
>    [40]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd2.html
> 
>   * igt@gem_exec_schedule@pi-common-bsd:
>     - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42]
>    [41]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
>    [42]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-queue-bsd:
>     - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +3
> similar issues
>    [43]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd.html
>    [44]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46]
> +1 similar issue
>    [45]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html
>    [46]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [DMESG-WARN][47] ([i915#180] / [i915#93] /
> [i915#95]) -> [PASS][48]
>    [47]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [48]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [FAIL][49] ([i915#1188]) -> [PASS][50]
>    [49]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
>    [50]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
>     - shard-apl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52]
>    [51]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>    [52]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][53] ([fdo#108145] / [i915#265]) ->
> [PASS][54]
>    [53]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [54]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56] +2
> similar issues
>    [55]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
>    [56]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@kms_vblank@pipe-b-query-forked-busy-hang:
>     - shard-tglb:         [INCOMPLETE][57] ([i915#1373]) ->
> [PASS][58]
>    [57]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb6/igt@kms_vblank@pipe-b-query-forked-busy-hang.html
>    [58]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-tglb6/igt@kms_vblank@pipe-b-query-forked-busy-hang.html
> 
>   * {igt@perf@polling-parameterized}:
>     - shard-hsw:          [FAIL][59] ([i915#1542]) -> [PASS][60]
>    [59]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-hsw6/igt@perf@polling-parameterized.html
>    [60]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-hsw4/igt@perf@polling-parameterized.html
> 
>   * igt@perf_pmu@init-busy-vcs1:
>     - shard-iclb:         [SKIP][61] ([fdo#112080]) -> [PASS][62] +8
> similar issues
>    [61]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb5/igt@perf_pmu@init-busy-vcs1.html
>    [62]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-iclb1/igt@perf_pmu@init-busy-vcs1.html
> 
>   * {igt@sysfs_heartbeat_interval@mixed@vecs0}:
>     - shard-skl:          [FAIL][63] ([i915#1459]) -> [PASS][64]
>    [63]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl2/igt@sysfs_heartbeat_interval@mixed@vecs0.html
>    [64]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-skl5/igt@sysfs_heartbeat_interval@mixed@vecs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-tglb:         [SKIP][65] ([i915#468]) -> [FAIL][66]
> ([i915#454])
>    [65]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
>    [66]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when
> computing
>           the status of the difference (SUCCESS, WARNING, or
> FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
>   [i915#1459]: https://gitlab.freedesktop.org/drm/intel/issues/1459
>   [i915#1527]: https://gitlab.freedesktop.org/drm/intel/issues/1527
>   [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
>   [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
>   [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
>   [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
> 
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_8219 -> Patchwork_17142
> 
>   CI-20190529: 20190529
>   CI_DRM_8219: 42de3b3c94078845ceed586199c039622561b522 @
> git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5545: 9e5bfd10d56f81b98e0229c6bb14670221fd0b54 @
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_17142: 9cf6b08eb858b72afcae947f9d1695024d7e4bfe @
> git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17142/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
