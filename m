Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFA621A5A7
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 19:18:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E0156E42A;
	Thu,  9 Jul 2020 17:18:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02B326E42A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 17:18:26 +0000 (UTC)
IronPort-SDR: MMLd031R/7PTWqyoLycLR+rG945PZmecNUNzh5y1ER9JoeAVuhN6xf+czfCEFY9X56KZjf7N9C
 /L1yMhL0qfNQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="148041389"
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="148041389"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 10:18:25 -0700
IronPort-SDR: oZxAjesClkUMC1BqGVTD/DSRp5t0vlzIsJevrTn5eD12N0hUC2zxkjQbqrv7p1NDO4YT0hz8/l
 ZUvxg6fVhsFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="457984753"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga005.jf.intel.com with ESMTP; 09 Jul 2020 10:18:25 -0700
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 9 Jul 2020 10:18:25 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 fmsmsx111.amr.corp.intel.com ([169.254.12.48]) with mapi id 14.03.0439.000;
 Thu, 9 Jul 2020 10:18:25 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvdGdsOiBJbXBs?=
 =?utf-8?Q?ement_WAs_18011464164_and_22010931296?=
Thread-Index: AQHWVac71WdFX4IVvUGKgfkYxk5R86j/9HIA
Date: Thu, 9 Jul 2020 17:18:24 +0000
Message-ID: <0e0b984da04af4a77327bb323bc19e0c0b8606a8.camel@intel.com>
References: <20200708212947.40178-1-jose.souza@intel.com>
 <159426797660.31093.13920908816194577957@emeril.freedesktop.org>
In-Reply-To: <159426797660.31093.13920908816194577957@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.48.224]
Content-ID: <13B044E43978154D89E840B7EE9FF5BC@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Implement_WAs_18011464164_and_22010931296?=
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

On Thu, 2020-07-09 at 04:12 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tgl: Implement WAs 18011464164 and 22010931296
> URL   : https://patchwork.freedesktop.org/series/79268/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8717_full -> Patchwork_18117_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_18117_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_18117_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_18117_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_vblank@pipe-a-wait-busy:
>     - shard-hsw:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-hsw6/igt@kms_vblank@pipe-a-wait-busy.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-hsw4/igt@kms_vblank@pipe-a-wait-busy.html
> 

Not related as this changes only touch GT and TGL.
Pushed to dinq, thanks for the review.


>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_18117_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@bonded-early:
>     - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#926])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-iclb4/igt@gem_exec_balancer@bonded-early.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-iclb4/igt@gem_exec_balancer@bonded-early.html
> 
>   * igt@gem_exec_fence@basic-wait-all:
>     - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1635] / [i915#95]) +12 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl3/igt@gem_exec_fence@basic-wait-all.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-apl4/igt@gem_exec_fence@basic-wait-all.html
> 
>   * igt@gem_exec_reloc@basic-concurrent0:
>     - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#1930])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-glk3/igt@gem_exec_reloc@basic-concurrent0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-glk9/igt@gem_exec_reloc@basic-concurrent0.html
> 
>   * igt@gem_exec_whisper@basic-contexts:
>     - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#118] / [i915#95])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-glk4/igt@gem_exec_whisper@basic-contexts.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-glk6/igt@gem_exec_whisper@basic-contexts.html
> 
>   * igt@i915_module_load@reload:
>     - shard-tglb:         [PASS][11] -> [DMESG-WARN][12] ([i915#402])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-tglb2/igt@i915_module_load@reload.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-tglb8/igt@i915_module_load@reload.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#636] / [i915#69])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl4/igt@i915_suspend@forcewake.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-skl2/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-0:
>     - shard-kbl:          [PASS][15] -> [DMESG-FAIL][16] ([i915#95])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl1/igt@kms_big_fb@linear-16bpp-rotate-0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-kbl3/igt@kms_big_fb@linear-16bpp-rotate-0.html
>     - shard-apl:          [PASS][17] -> [DMESG-FAIL][18] ([i915#1635] / [i915#95])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl7/igt@kms_big_fb@linear-16bpp-rotate-0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-apl4/igt@kms_big_fb@linear-16bpp-rotate-0.html
> 
>   * igt@kms_color@pipe-b-ctm-negative:
>     - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +7 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl6/igt@kms_color@pipe-b-ctm-negative.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-skl2/igt@kms_color@pipe-b-ctm-negative.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement:
>     - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#93] / [i915#95]) +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#72])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
>     - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl7/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-apl4/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +2 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
>     - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#2122])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-tglb:         [PASS][31] -> [DMESG-WARN][32] ([i915#1982]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#1188])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping:
>     - shard-iclb:         [PASS][35] -> [DMESG-WARN][36] ([i915#1982])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-iclb8/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-iclb3/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109642] / [fdo#111068])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-iclb2/igt@kms_psr2_su@page_flip.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-iclb5/igt@kms_psr2_su@page_flip.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-iclb2/igt@kms_psr@psr2_suspend.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-iclb5/igt@kms_psr@psr2_suspend.html
> 
>   * igt@perf_pmu@semaphore-busy@rcs0:
>     - shard-kbl:          [PASS][41] -> [FAIL][42] ([i915#1820])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl4/igt@perf_pmu@semaphore-busy@rcs0.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-kbl4/igt@perf_pmu@semaphore-busy@rcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_param@non-root-set:
>     - shard-apl:          [DMESG-WARN][43] ([i915#1635] / [i915#95]) -> [PASS][44] +14 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl6/igt@gem_ctx_param@non-root-set.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-apl3/igt@gem_ctx_param@non-root-set.html
> 
>   * igt@gem_exec_whisper@basic-contexts-forked:
>     - shard-glk:          [DMESG-WARN][45] ([i915#118] / [i915#95]) -> [PASS][46] +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-glk4/igt@gem_exec_whisper@basic-contexts-forked.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [DMESG-WARN][47] ([i915#1436] / [i915#716]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl6/igt@gen9_exec_parse@allowed-all.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-apl4/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_module_load@reload:
>     - shard-apl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl1/igt@i915_module_load@reload.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-apl1/igt@i915_module_load@reload.html
> 
>   * igt@i915_selftest@mock@requests:
>     - shard-skl:          [INCOMPLETE][51] ([i915#198] / [i915#2110]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl5/igt@i915_selftest@mock@requests.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-skl1/igt@i915_selftest@mock@requests.html
> 
>   * igt@kms_addfb_basic@size-max:
>     - shard-skl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +4 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl6/igt@kms_addfb_basic@size-max.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-skl10/igt@kms_addfb_basic@size-max.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-180:
>     - shard-glk:          [DMESG-FAIL][55] ([i915#118] / [i915#95]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-glk6/igt@kms_big_fb@linear-64bpp-rotate-180.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
>     - shard-snb:          [TIMEOUT][57] ([i915#1958] / [i915#2119]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
>     - shard-tglb:         [DMESG-WARN][61] ([i915#402]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack:
>     - shard-tglb:         [DMESG-WARN][63] ([i915#1982]) -> [PASS][64] +3 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-skl:          [FAIL][65] ([i915#49]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][67] ([fdo#108145] / [i915#265]) -> [PASS][68] +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_sprite_render:
>     - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +2 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-iclb5/igt@kms_psr@psr2_sprite_render.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
> 
>   * igt@kms_pwrite_crc:
>     - shard-skl:          [FAIL][71] ([i915#150]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl2/igt@kms_pwrite_crc.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-skl6/igt@kms_pwrite_crc.html
> 
>   * igt@kms_setmode@basic:
>     - shard-kbl:          [FAIL][73] ([i915#31]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl2/igt@kms_setmode@basic.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-kbl6/igt@kms_setmode@basic.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_reloc@basic-concurrent16:
>     - shard-snb:          [TIMEOUT][75] ([i915#1958] / [i915#2119]) -> [FAIL][76] ([i915#1930])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html
> 
>   * igt@gem_vm_create@execbuf:
>     - shard-snb:          [TIMEOUT][77] ([i915#1958] / [i915#2119]) -> [SKIP][78] ([fdo#109271]) +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-snb6/igt@gem_vm_create@execbuf.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-snb4/igt@gem_vm_create@execbuf.html
> 
>   * igt@kms_chamelium@hdmi-crc-fast:
>     - shard-apl:          [SKIP][79] ([fdo#109271] / [fdo#111827]) -> [SKIP][80] ([fdo#109271] / [fdo#111827] / [i915#1635])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl8/igt@kms_chamelium@hdmi-crc-fast.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-apl1/igt@kms_chamelium@hdmi-crc-fast.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
>     - shard-apl:          [FAIL][81] ([i915#49]) -> [DMESG-FAIL][82] ([i915#1635] / [i915#49] / [i915#95])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
>     - shard-apl:          [SKIP][83] ([fdo#109271]) -> [SKIP][84] ([fdo#109271] / [i915#1635]) +7 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-apl7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>     - shard-apl:          [DMESG-FAIL][85] ([fdo#108145] / [i915#1635] / [i915#95]) -> [FAIL][86] ([fdo#108145] / [i915#265])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-d-coverage-vs-premult-vs-constant:
>     - shard-apl:          [SKIP][87] ([fdo#109271] / [i915#1635]) -> [SKIP][88] ([fdo#109271]) +4 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl7/igt@kms_plane_alpha_blend@pipe-d-coverage-vs-premult-vs-constant.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-apl2/igt@kms_plane_alpha_blend@pipe-d-coverage-vs-premult-vs-constant.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [DMESG-WARN][89] ([i915#93] / [i915#95]) -> [DMESG-WARN][90] ([i915#180] / [i915#93] / [i915#95])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][91], [FAIL][92], [FAIL][93]) ([fdo#109271] / [i915#1610] / [i915#1635] / [i915#2110] / [i915#716]) -> [FAIL][94] ([i915#1635] / [i915#2110])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl6/igt@runner@aborted.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl2/igt@runner@aborted.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl6/igt@runner@aborted.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/shard-apl3/igt@runner@aborted.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#150]: https://gitlab.freedesktop.org/drm/intel/issues/150
>   [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
>   [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
>   [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
>   [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
>   [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926
>   [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
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
>   * Linux: CI_DRM_8717 -> Patchwork_18117
> 
>   CI-20190529: 20190529
>   CI_DRM_8717: 6e5ac4c72af4e86138f04cc2dd089b069bad873f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5728: 6988eebf78e9ce9746b8c2b7d21cb4174d6623a9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_18117: 73b7c0631b80b178c11f94f39dff4793bc8755ca @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18117/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
