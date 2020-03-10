Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 620EA18096E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 21:44:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E7856E3B5;
	Tue, 10 Mar 2020 20:44:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5AD36E8DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 20:44:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 13:44:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,538,1574150400"; d="scan'208";a="277102740"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga002.fm.intel.com with ESMTP; 10 Mar 2020 13:44:26 -0700
Received: from fmsmsx161.amr.corp.intel.com (10.18.125.9) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 10 Mar 2020 13:44:26 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.253]) by
 FMSMSX161.amr.corp.intel.com ([169.254.12.99]) with mapi id 14.03.0439.000;
 Tue, 10 Mar 2020 13:44:26 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?B?dGggW3YyLDEvMl0gZHJtL2k5MTUvZGlzcGxheTogRGVhY3RpdmUgRkJDIGlu?=
 =?utf-8?Q?_fastsets_when_disabled_by_parameter_(rev2)?=
Thread-Index: AQHV9weZ0uGRX9PxBES7tbyE1vJlVahCwPUA
Date: Tue, 10 Mar 2020 20:44:25 +0000
Message-ID: <b399f0cec696dfdf9cab4dfb6621f9b1473389e2.camel@intel.com>
References: <20200306185833.53984-1-jose.souza@intel.com>
 <158386400153.24168.373248988292673700@emeril.freedesktop.org>
In-Reply-To: <158386400153.24168.373248988292673700@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <BE3FE0E419C2E749B545B2966D2DDF6D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/display=3A_Deactive_F?=
 =?utf-8?q?BC_in_fastsets_when_disabled_by_parameter_=28rev2=29?=
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

On Tue, 2020-03-10 at 18:13 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [v2,1/2] drm/i915/display: Deactive FBC
> in fastsets when disabled by parameter (rev2)
> URL   : https://patchwork.freedesktop.org/series/74401/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8106_full -> Patchwork_16894_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Pushed to dinq, thanks for the reviews Ville

> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16894_full that come from
> known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_busy@close-race:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#977])
>    [1]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-tglb7/igt@gem_busy@close-race.html
>    [2]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-tglb1/igt@gem_busy@close-race.html
> 
>   * igt@gem_ctx_persistence@close-replace-race:
>     - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#1402])
>    [3]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-tglb8/igt@gem_ctx_persistence@close-replace-race.html
>    [4]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html
> 
>   * igt@gem_exec_schedule@pi-common-bsd:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +1
> similar issue
>    [5]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html
>    [6]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-other-bsd:
>     - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +2
> similar issues
>    [7]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb8/igt@gem_exec_schedule@preempt-other-bsd.html
>    [8]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-iclb4/igt@gem_exec_schedule@preempt-other-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-queue-bsd1:
>     - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +13
> similar issues
>    [9]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
>    [10]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd1.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#716])
>    [11]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk5/igt@gen9_exec_parse@allowed-all.html
>    [12]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-glk7/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_pm_dc@dc5-dpms:
>     - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#447])
>    [13]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb8/igt@i915_pm_dc@dc5-dpms.html
>    [14]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#454])
>    [15]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
>    [16]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
> +1 similar issue
>    [17]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [18]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#72])
>    [19]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
>    [20]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_flip@plain-flip-ts-check:
>     - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#34])
>    [21]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk1/igt@kms_flip@plain-flip-ts-check.html
>    [22]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-glk7/igt@kms_flip@plain-flip-ts-check.html
> 
>   * igt@kms_flip_tiling@flip-to-yf-tiled:
>     - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#107931] /
> [i915#167])
>    [23]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-skl6/igt@kms_flip_tiling@flip-to-yf-tiled.html
>    [24]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-skl8/igt@kms_flip_tiling@flip-to-yf-tiled.html
> 
>   * igt@kms
> _frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:
>     - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#49])
>    [25]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html
>    [26]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180])
> +4 similar issues
>    [27]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [28]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@kms_psr2_su@frontbuffer:
>     - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109642] /
> [fdo#111068])
>    [29]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
>    [30]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-iclb3/igt@kms_psr2_su@frontbuffer.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2
> similar issues
>    [31]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
>    [32]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-iclb8/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@perf_pmu@busy-accuracy-98-vcs1:
>     - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#112080]) +6
> similar issues
>    [33]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb2/igt@perf_pmu@busy-accuracy-98-vcs1.html
>    [34]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-iclb8/igt@perf_pmu@busy-accuracy-98-vcs1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@rcs0-s3:
>     - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36]
> +2 similar issues
>    [35]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
>    [36]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
> 
>   * igt@gem_ctx_persistence@close-replace-race:
>     - shard-kbl:          [INCOMPLETE][37] ([i915#1402]) ->
> [PASS][38]
>    [37]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html
>    [38]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-kbl1/igt@gem_ctx_persistence@close-replace-race.html
> 
>   * igt@gem_ctx_persistence@processes:
>     - shard-kbl:          [FAIL][39] ([i915#570] / [i915#679]) ->
> [PASS][40]
>    [39]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl2/igt@gem_ctx_persistence@processes.html
>    [40]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-kbl4/igt@gem_ctx_persistence@processes.html
> 
>   * igt@gem_exec_balancer@hang:
>     - shard-tglb:         [FAIL][41] ([i915#1277]) -> [PASS][42]
>    [41]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-tglb1/igt@gem_exec_balancer@hang.html
>    [42]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-tglb5/igt@gem_exec_balancer@hang.html
> 
>   * igt@gem_exec_schedule@implicit-both-bsd1:
>     - shard-iclb:         [SKIP][43] ([fdo#109276] / [i915#677]) ->
> [PASS][44] +1 similar issue
>    [43]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd1.html
>    [44]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd1.html
> 
>   * igt@gem_exec_schedule@pi-distinct-iova-bsd:
>     - shard-iclb:         [SKIP][45] ([i915#677]) -> [PASS][46]
>    [45]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
>    [46]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
> 
>   * igt@gem_exec_schedule@preemptive-hang-bsd:
>     - shard-iclb:         [SKIP][47] ([fdo#112146]) -> [PASS][48] +6
> similar issues
>    [47]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
>    [48]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html
> 
>   * igt@gem_exec_whisper@basic-queues-forked:
>     - shard-glk:          [DMESG-WARN][49] ([i915#118] / [i915#95])
> -> [PASS][50] +1 similar issue
>    [49]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk2/igt@gem_exec_whisper@basic-queues-forked.html
>    [50]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-glk5/igt@gem_exec_whisper@basic-queues-forked.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [FAIL][51] ([i915#644]) -> [PASS][52]
>    [51]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [52]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-snb:          [DMESG-WARN][53] ([i915#42]) -> [PASS][54]
>    [53]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-snb4/igt@i915_suspend@sysfs-reader.html
>    [54]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-snb4/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>     - shard-glk:          [FAIL][55] ([i915#79]) -> [PASS][56]
>    [55]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
>    [56]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-kbl:          [DMESG-WARN][57] ([i915#180] / [i915#56])
> -> [PASS][58]
>    [57]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [58]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
>    [59]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
>    [60]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>     - shard-skl:          [INCOMPLETE][61] ([i915#69]) -> [PASS][62]
>    [61]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>    [62]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [FAIL][63] ([fdo#108145]) -> [PASS][64]
>    [63]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [64]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +2
> similar issues
>    [65]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [66]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-apl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68]
> +1 similar issue
>    [67]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [68]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@perf_pmu@busy-no-semaphores-vcs1:
>     - shard-iclb:         [SKIP][69] ([fdo#112080]) -> [PASS][70] +11
> similar issues
>    [69]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html
>    [70]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html
> 
>   * igt@prime_busy@hang-bsd2:
>     - shard-iclb:         [SKIP][71] ([fdo#109276]) -> [PASS][72] +10
> similar issues
>    [71]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-iclb5/igt@prime_busy@hang-bsd2.html
>    [72]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-iclb4/igt@prime_busy@hang-bsd2.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_linear_blits@normal:
>     - shard-apl:          [TIMEOUT][73] ([i915#1322]) ->
> [TIMEOUT][74] ([fdo#111732] / [i915#1322])
>    [73]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-apl4/igt@gem_linear_blits@normal.html
>    [74]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-apl6/igt@gem_linear_blits@normal.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-tglb:         [FAIL][75] ([i915#454]) -> [SKIP][76]
> ([i915#468])
>    [75]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
>    [76]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@fences:
>     - shard-snb:          [INCOMPLETE][77] ([i915#82]) -> [SKIP][78]
> ([fdo#109271])
>    [77]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-snb4/igt@i915_pm_rpm@fences.html
>    [78]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-snb5/igt@i915_pm_rpm@fences.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][79], [FAIL][80]) ([i915#1389] /
> [i915#1402] / [i915#92]) -> [FAIL][81] ([i915#92])
>    [79]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl7/igt@runner@aborted.html
>    [80]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/shard-kbl4/igt@runner@aborted.html
>    [81]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/shard-kbl1/igt@runner@aborted.html
> 
>   
>   [fdo#107931]: https://bugs.freedesktop.org/show_bug.cgi?id=107931
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
>   [i915#1322]: https://gitlab.freedesktop.org/drm/intel/issues/1322
>   [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
>   [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
>   [i915#167]: https://gitlab.freedesktop.org/drm/intel/issues/167
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
>   [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
>   [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
>   [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
>   [i915#977]: https://gitlab.freedesktop.org/drm/intel/issues/977
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
>   * Linux: CI_DRM_8106 -> Patchwork_16894
> 
>   CI-20190529: 20190529
>   CI_DRM_8106: 5b0076e8066ea8218e7857ee1aa28b0670acde94 @
> git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5504: d6788bf0404f76b66170e18eb26c85004b5ccb25 @
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_16894: ec28efdaa794a53a2919b550e7835fb5de78cea2 @
> git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16894/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
