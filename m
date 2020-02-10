Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F67158057
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 18:00:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99F0B6E9C8;
	Mon, 10 Feb 2020 17:00:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35BCC6E9C8
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 17:00:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 09:00:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,425,1574150400"; d="scan'208";a="433381035"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga006.fm.intel.com with ESMTP; 10 Feb 2020 09:00:51 -0800
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 10 Feb 2020 09:00:50 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 FMSMSX153.amr.corp.intel.com ([169.254.9.171]) with mapi id 14.03.0439.000;
 Mon, 10 Feb 2020 09:00:50 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZGlzcGxheS9l?=
 =?utf-8?Q?hl:_Add_HBR2_and_HBR3_voltage_swing_table?=
Thread-Index: AQHV3nKHMPoEei7MIkaflLWYpYG0B6gVMICA
Date: Mon, 10 Feb 2020 17:00:49 +0000
Message-ID: <b93a1efa24dbfe560ed85f84c94ac596ef271fca.camel@intel.com>
References: <20200205205647.64902-1-jose.souza@intel.com>
 <158116115445.30229.10583500231366459831@emeril.freedesktop.org>
In-Reply-To: <158116115445.30229.10583500231366459831@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.12.101]
Content-ID: <BB9CD9C4A132E54A989B9EECFCB70E52@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display/ehl=3A_Add_HBR2_and_HBR3_voltage_swing_table?=
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

On Sat, 2020-02-08 at 11:25 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display/ehl: Add HBR2 and HBR3 voltage swing table
> URL   : https://patchwork.freedesktop.org/series/73055/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7871_full -> Patchwork_16443_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_16443_full absolutely
> need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the
> changes
>   introduced in Patchwork_16443_full, please notify your bug team to
> allow them
>   to document this new failure mode, which will reduce false
> positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in
> Patchwork_16443_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl1/igt@gem_ctx_exec@basic-nohangcheck.html
>    [2]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-skl8/igt@gem_ctx_exec@basic-nohangcheck.html


Not related as this changes are on display and only related to GEN11.

So pushed to dinq, thanks for the review Matt.

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16443_full that come from
> known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_busy@busy-vcs1:
>     - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +20
> similar issues
>    [3]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb1/igt@gem_busy@busy-vcs1.html
>    [4]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-iclb8/igt@gem_busy@busy-vcs1.html
> 
>   * igt@gem_exec_balancer@hang:
>     - shard-tglb:         [PASS][5] -> [TIMEOUT][6] ([fdo#112271])
>    [5]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-tglb5/igt@gem_exec_balancer@hang.html
>    [6]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-tglb5/igt@gem_exec_balancer@hang.html
> 
>   * igt@gem_exec_schedule@in-order-bsd:
>     - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +4
> similar issues
>    [7]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html
>    [8]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html
> 
>   * igt@gem_exec_schedule@independent-bsd2:
>     - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +28
> similar issues
>    [9]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html
>    [10]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html
> 
>   * igt@gem_partial_pwrite_pread@write-snoop:
>     - shard-hsw:          [PASS][11] -> [FAIL][12] ([i915#694]) +2
> similar issues
>    [11]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-hsw5/igt@gem_partial_pwrite_pread@write-snoop.html
>    [12]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-hsw7/igt@gem_partial_pwrite_pread@write-snoop.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#644])
>    [13]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [14]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@i915_pm_rps@min-max-config-loaded:
>     - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#370])
>    [15]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb4/igt@i915_pm_rps@min-max-config-loaded.html
>    [16]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-iclb7/igt@i915_pm_rps@min-max-config-loaded.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#69])
>    [17]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl8/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [18]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-hsw:          [PASS][19] -> [DMESG-WARN][20] ([i915#44])
>    [19]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-hsw8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [20]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-hsw5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank:
>     - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#79])
>    [21]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html
>    [22]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@plain-flip-ts-check:
>     - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#34])
>    [23]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl8/igt@kms_flip@plain-flip-ts-check.html
>    [24]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-skl8/igt@kms_flip@plain-flip-ts-check.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180])
> +6 similar issues
>    [25]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [26]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +2
> similar issues
>    [27]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [28]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180])
> +2 similar issues
>    [29]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
>    [30]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@vcs1-dirty-create:
>     - shard-iclb:         [SKIP][31] ([fdo#112080]) -> [PASS][32] +14
> similar issues
>    [31]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-create.html
>    [32]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
> 
>   * igt@gem_ctx_persistence@processes:
>     - shard-skl:          [FAIL][33] ([i915#570] / [i915#679]) ->
> [PASS][34]
>    [33]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl10/igt@gem_ctx_persistence@processes.html
>    [34]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-skl2/igt@gem_ctx_persistence@processes.html
> 
>   * igt@gem_ctx_shared@exec-single-timeline-bsd:
>     - shard-iclb:         [SKIP][35] ([fdo#110841]) -> [PASS][36]
>    [35]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
>    [36]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
> 
>   * igt@gem_ctx_shared@q-independent-blt:
>     - shard-kbl:          [FAIL][37] ([fdo#112118] / [i915#935]) ->
> [PASS][38]
>    [37]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-kbl1/igt@gem_ctx_shared@q-independent-blt.html
>    [38]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-kbl7/igt@gem_ctx_shared@q-independent-blt.html
> 
>   * igt@gem_exec_schedule@pi-distinct-iova-bsd:
>     - shard-iclb:         [SKIP][39] ([i915#677]) -> [PASS][40] +2
> similar issues
>    [39]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
>    [40]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-other-chain-bsd:
>     - shard-iclb:         [SKIP][41] ([fdo#112146]) -> [PASS][42] +10
> similar issues
>    [41]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
>    [42]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
>     - shard-hsw:          [FAIL][43] ([i915#694]) -> [PASS][44]
>    [43]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
>    [44]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-hsw1/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-skl:          [FAIL][45] ([i915#644]) -> [PASS][46]
>    [45]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [46]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-skl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-apl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48]
> +2 similar issues
>    [47]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-apl4/igt@gem_softpin@noreloc-s3.html
>    [48]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-apl2/igt@gem_softpin@noreloc-s3.html
>     - shard-skl:          [INCOMPLETE][49] ([i915#69]) -> [PASS][50]
>    [49]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl8/igt@gem_softpin@noreloc-s3.html
>    [50]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-skl1/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [DMESG-WARN][51] ([i915#716]) -> [PASS][52]
>    [51]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl1/igt@gen9_exec_parse@allowed-single.html
>    [52]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-skl3/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rps@waitboost:
>     - shard-iclb:         [FAIL][53] ([i915#413]) -> [PASS][54]
>    [53]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb7/igt@i915_pm_rps@waitboost.html
>    [54]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-iclb3/igt@i915_pm_rps@waitboost.html
> 
>   * igt@i915_selftest@live_gtt:
>     - shard-skl:          [TIMEOUT][55] ([fdo#111732] / [fdo#112271])
> -> [PASS][56]
>    [55]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl2/igt@i915_selftest@live_gtt.html
>    [56]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-skl7/igt@i915_selftest@live_gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
>     - shard-skl:          [FAIL][57] ([i915#49]) -> [PASS][58]
>    [57]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
>    [58]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [FAIL][59] ([fdo#108145]) -> [PASS][60] +2
> similar issues
>    [59]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [60]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_psr2_su@frontbuffer:
>     - shard-iclb:         [SKIP][61] ([fdo#109642] / [fdo#111068]) ->
> [PASS][62]
>    [61]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb8/igt@kms_psr2_su@frontbuffer.html
>    [62]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
> 
>   * igt@kms_psr@no_drrs:
>     - shard-iclb:         [FAIL][63] ([i915#173]) -> [PASS][64]
>    [63]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb1/igt@kms_psr@no_drrs.html
>    [64]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-iclb6/igt@kms_psr@no_drrs.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +1
> similar issue
>    [65]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
>    [66]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_psr@suspend:
>     - shard-skl:          [INCOMPLETE][67] ([i915#198]) -> [PASS][68]
>    [67]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl2/igt@kms_psr@suspend.html
>    [68]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-skl9/igt@kms_psr@suspend.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [FAIL][69] ([i915#31]) -> [PASS][70]
>    [69]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-apl3/igt@kms_setmode@basic.html
>    [70]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-apl6/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72]
> +4 similar issues
>    [71]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [72]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@prime_mmap_coherency@ioctl-errors:
>     - shard-hsw:          [FAIL][73] ([i915#831]) -> [PASS][74]
>    [73]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-hsw8/igt@prime_mmap_coherency@ioctl-errors.html
>    [74]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html
> 
>   * igt@prime_vgem@fence-wait-bsd2:
>     - shard-iclb:         [SKIP][75] ([fdo#109276]) -> [PASS][76] +21
> similar issues
>    [75]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html
>    [76]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-kbl:          [INCOMPLETE][77] ([fdo#103665] /
> [i915#667]) -> [INCOMPLETE][78] ([fdo#103665])
>    [77]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-kbl2/igt@gem_ctx_exec@basic-nohangcheck.html
>    [78]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-kbl1/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@i915_pm_rpm@system-suspend-devices:
>     - shard-snb:          [INCOMPLETE][79] ([i915#82]) -> [SKIP][80]
> ([fdo#109271])
>    [79]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-snb2/igt@i915_pm_rpm@system-suspend-devices.html
>    [80]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-snb2/igt@i915_pm_rpm@system-suspend-devices.html
> 
>   * igt@i915_selftest@live_blt:
>     - shard-hsw:          [DMESG-FAIL][81] ([i915#553] / [i915#725])
> -> [DMESG-FAIL][82] ([i915#725])
>    [81]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-hsw5/igt@i915_selftest@live_blt.html
>    [82]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-hsw2/igt@i915_selftest@live_blt.html
> 
>   * igt@kms_dp_dsc@basic-dsc-enable-edp:
>     - shard-iclb:         [SKIP][83] ([fdo#109349]) -> [DMESG-
> WARN][84] ([fdo#107724])
>    [83]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html
>    [84]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when
> computing
>           the status of the difference (SUCCESS, WARNING, or
> FAILURE).
> 
>   [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
>   [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112118]: https://bugs.freedesktop.org/show_bug.cgi?id=112118
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
>   [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
>   [i915#370]: https://gitlab.freedesktop.org/drm/intel/issues/370
>   [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
>   [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
>   [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
>   [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
>   [i915#935]: https://gitlab.freedesktop.org/drm/intel/issues/935
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
>   * Linux: CI_DRM_7871 -> Patchwork_16443
> 
>   CI-20190529: 20190529
>   CI_DRM_7871: c9b0237ee7ffb1bbb62f864f0b2d7b290ee1313d @
> git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5419: 44913a91e77434b03001bb9ea53216cd03c476e6 @
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_16443: 5dfde56b068c1ddb1b8ef3e6aac8dc584cd86b20 @
> git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16443/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
