Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E76515814A
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 18:24:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 957206E9C9;
	Mon, 10 Feb 2020 17:24:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC06B6E21A
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 17:24:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 09:24:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,425,1574150400"; d="scan'208";a="256197604"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga004.fm.intel.com with ESMTP; 10 Feb 2020 09:24:17 -0800
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 10 Feb 2020 09:24:17 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.52]) with mapi id 14.03.0439.000;
 Mon, 10 Feb 2020 09:24:17 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZGMzY286IEFk?=
 =?utf-8?Q?d_description_of_how_it_works?=
Thread-Index: AQHV3np/k58zrbDowkiTdxWks/ll9KgVNv4A
Date: Mon, 10 Feb 2020 17:24:17 +0000
Message-ID: <0d30b34193ba4ce010b971cbdf31a59795da85c2.camel@intel.com>
References: <20200205214945.131012-1-jose.souza@intel.com>
 <158116457583.30228.6101651827469349087@emeril.freedesktop.org>
In-Reply-To: <158116457583.30228.6101651827469349087@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.12.101]
Content-ID: <11DCEE8F3BCFF7469A87C498BADB1719@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dc3co=3A_Add_description_of_how_it_works?=
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

On Sat, 2020-02-08 at 12:22 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dc3co: Add description of how it works
> URL   : https://patchwork.freedesktop.org/series/73058/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7871_full -> Patchwork_16444_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_16444_full absolutely
> need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the
> changes
>   introduced in Patchwork_16444_full, please notify your bug team to
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
> Patchwork_16444_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@runner@aborted:
>     - shard-apl:          NOTRUN -> [FAIL][1]
>    [1]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-apl8/igt@runner@aborted.html
> 

No functional changes in this patch so this is not related.

Pushed to dinq, thanks for the review Imre.

>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16444_full that come from
> known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_busy@busy-vcs1:
>     - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#112080]) +15
> similar issues
>    [2]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb1/igt@gem_busy@busy-vcs1.html
>    [3]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-iclb8/igt@gem_busy@busy-vcs1.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-apl:          [PASS][4] -> [INCOMPLETE][5] ([fdo#103927])
>    [4]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-apl6/igt@gem_ctx_exec@basic-nohangcheck.html
>    [5]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-apl8/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_isolation@rcs0-s3:
>     - shard-kbl:          [PASS][6] -> [DMESG-WARN][7] ([i915#180])
> +6 similar issues
>    [6]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
>    [7]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html
> 
>   * igt@gem_exec_schedule@in-order-bsd:
>     - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#112146]) +3
> similar issues
>    [8]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html
>    [9]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html
> 
>   * igt@gem_exec_schedule@independent-bsd2:
>     - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#109276]) +24
> similar issues
>    [10]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html
>    [11]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-hsw:          [PASS][12] -> [FAIL][13] ([i915#694]) +2
> similar issues
>    [12]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
>    [13]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-hsw5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180])
> +2 similar issues
>    [14]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
>    [15]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [PASS][16] -> [FAIL][17] ([i915#454])
>    [16]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html
>    [17]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_selftest@live_execlists:
>     - shard-glk:          [PASS][18] -> [INCOMPLETE][19] ([i915#529]
> / [i915#58] / [k.org#198133])
>    [18]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-glk6/igt@i915_selftest@live_execlists.html
>    [19]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-glk3/igt@i915_selftest@live_execlists.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-skl:          [PASS][20] -> [INCOMPLETE][21] ([i915#221])
>    [20]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [21]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms
> _frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-tglb:         [PASS][22] -> [SKIP][23] ([i915#668]) +2
> similar issues
>    [22]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
>    [23]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-y:
>     - shard-glk:          [PASS][24] -> [FAIL][25] ([i915#899])
>    [24]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-y.html
>    [25]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-y.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-c-tiling-yf:
>     - shard-skl:          [PASS][26] -> [DMESG-WARN][27] ([IGT#6])
>    [26]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl3/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html
>    [27]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-skl7/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#109441]) +2
> similar issues
>    [28]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [29]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-kbl:          [INCOMPLETE][30] ([fdo#103665] /
> [i915#667]) -> [PASS][31]
>    [30]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-kbl2/igt@gem_ctx_exec@basic-nohangcheck.html
>    [31]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-kbl7/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_persistence@processes:
>     - shard-skl:          [FAIL][32] ([i915#570] / [i915#679]) ->
> [PASS][33]
>    [32]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl10/igt@gem_ctx_persistence@processes.html
>    [33]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-skl2/igt@gem_ctx_persistence@processes.html
> 
>   * igt@gem_ctx_shared@exec-single-timeline-bsd:
>     - shard-iclb:         [SKIP][34] ([fdo#110841]) -> [PASS][35]
>    [34]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
>    [35]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
> 
>   * igt@gem_ctx_shared@q-independent-blt:
>     - shard-kbl:          [FAIL][36] ([fdo#112118] / [i915#935]) ->
> [PASS][37]
>    [36]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-kbl1/igt@gem_ctx_shared@q-independent-blt.html
>    [37]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-kbl7/igt@gem_ctx_shared@q-independent-blt.html
> 
>   * igt@gem_exec_schedule@pi-distinct-iova-bsd:
>     - shard-iclb:         [SKIP][38] ([i915#677]) -> [PASS][39] +2
> similar issues
>    [38]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
>    [39]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-other-chain-bsd:
>     - shard-iclb:         [SKIP][40] ([fdo#112146]) -> [PASS][41] +6
> similar issues
>    [40]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
>    [41]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
>     - shard-hsw:          [FAIL][42] ([i915#694]) -> [PASS][43]
>    [42]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
>    [43]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-hsw5/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [FAIL][44] ([i915#644]) -> [PASS][45]
>    [44]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [45]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-skl:          [INCOMPLETE][46] ([i915#69]) -> [PASS][47]
>    [46]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl8/igt@gem_softpin@noreloc-s3.html
>    [47]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-skl9/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [DMESG-WARN][48] ([i915#716]) -> [PASS][49]
>    [48]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl1/igt@gen9_exec_parse@allowed-single.html
>    [49]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-skl3/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][50] ([i915#454]) -> [PASS][51]
>    [50]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
>    [51]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rps@waitboost:
>     - shard-iclb:         [FAIL][52] ([i915#413]) -> [PASS][53]
>    [52]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb7/igt@i915_pm_rps@waitboost.html
>    [53]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-iclb2/igt@i915_pm_rps@waitboost.html
> 
>   * igt@i915_selftest@live_blt:
>     - shard-hsw:          [DMESG-FAIL][54] ([i915#553] / [i915#725])
> -> [PASS][55]
>    [54]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-hsw5/igt@i915_selftest@live_blt.html
>    [55]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-hsw5/igt@i915_selftest@live_blt.html
> 
>   * igt@i915_selftest@live_gtt:
>     - shard-skl:          [TIMEOUT][56] ([fdo#111732] / [fdo#112271])
> -> [PASS][57]
>    [56]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl2/igt@i915_selftest@live_gtt.html
>    [57]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-skl1/igt@i915_selftest@live_gtt.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-apl:          [DMESG-WARN][58] ([i915#180]) -> [PASS][59]
> +1 similar issue
>    [58]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-apl6/igt@i915_suspend@debugfs-reader.html
>    [59]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-apl2/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
>     - shard-skl:          [FAIL][60] ([i915#49]) -> [PASS][61]
>    [60]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
>    [61]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [FAIL][62] ([fdo#108145]) -> [PASS][63]
>    [62]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [63]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_psr@no_drrs:
>     - shard-iclb:         [FAIL][64] ([i915#173]) -> [PASS][65]
>    [64]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb1/igt@kms_psr@no_drrs.html
>    [65]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-iclb4/igt@kms_psr@no_drrs.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [SKIP][66] ([fdo#109441]) -> [PASS][67] +2
> similar issues
>    [66]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html
>    [67]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [FAIL][68] ([i915#31]) -> [PASS][69]
>    [68]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-apl3/igt@kms_setmode@basic.html
>    [69]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-apl4/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [DMESG-WARN][70] ([i915#180]) -> [PASS][71]
> +4 similar issues
>    [70]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [71]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@perf_pmu@init-busy-vcs1:
>     - shard-iclb:         [SKIP][72] ([fdo#112080]) -> [PASS][73] +10
> similar issues
>    [72]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb5/igt@perf_pmu@init-busy-vcs1.html
>    [73]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-iclb1/igt@perf_pmu@init-busy-vcs1.html
> 
>   * igt@prime_busy@hang-bsd2:
>     - shard-iclb:         [SKIP][74] ([fdo#109276]) -> [PASS][75] +21
> similar issues
>    [74]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb7/igt@prime_busy@hang-bsd2.html
>    [75]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-iclb2/igt@prime_busy@hang-bsd2.html
> 
>   * igt@prime_mmap_coherency@ioctl-errors:
>     - shard-hsw:          [FAIL][76] ([i915#831]) -> [PASS][77]
>    [76]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-hsw8/igt@prime_mmap_coherency@ioctl-errors.html
>    [77]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-hsw8/igt@prime_mmap_coherency@ioctl-errors.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
>     - shard-iclb:         [SKIP][78] ([fdo#112080]) -> [FAIL][79]
> ([IGT#28])
>    [78]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
>    [79]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-tglb:         [FAIL][80] ([i915#454]) -> [SKIP][81]
> ([i915#468])
>    [80]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
>    [81]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@system-suspend-devices:
>     - shard-snb:          [INCOMPLETE][82] ([i915#82]) -> [SKIP][83]
> ([fdo#109271])
>    [82]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/shard-snb2/igt@i915_pm_rpm@system-suspend-devices.html
>    [83]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/shard-snb2/igt@i915_pm_rpm@system-suspend-devices.html
> 
>   
>   [IGT#28]: 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
>   [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
>   [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
>   [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
>   [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112118]: https://bugs.freedesktop.org/show_bug.cgi?id=112118
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
>   [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
>   [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
>   [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
>   [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
>   [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
>   [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
>   [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
>   [i915#935]: https://gitlab.freedesktop.org/drm/intel/issues/935
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
>   * Linux: CI_DRM_7871 -> Patchwork_16444
> 
>   CI-20190529: 20190529
>   CI_DRM_7871: c9b0237ee7ffb1bbb62f864f0b2d7b290ee1313d @
> git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5419: 44913a91e77434b03001bb9ea53216cd03c476e6 @
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_16444: 49f94cc6b68f80e6b92e2540b1d7c8fbb5cf6213 @
> git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
