Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB6318DB53
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 23:48:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E322B6EB83;
	Fri, 20 Mar 2020 22:48:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCDFD6EB83
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 22:48:47 +0000 (UTC)
IronPort-SDR: 3iGVtHHhEFcyzGIxbtvOlkFZf13lPSzgurQZa8jHT57/jen7BGRBBkq9n1pMMKcyNeBX7CLeGq
 NZeE2uO6VuRQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 15:48:47 -0700
IronPort-SDR: RqcibI3d5vdLhG9IMsEQ4bdxa1O0HyLFnjSCMOxZpT8d8gpYEJoZeG2Zm/RFYMp55ZUJwB0OLS
 7SDWztA2ToHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,286,1580803200"; d="scan'208";a="356551378"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga001.fm.intel.com with ESMTP; 20 Mar 2020 15:48:46 -0700
Received: from fmsmsx122.amr.corp.intel.com (10.18.125.37) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 20 Mar 2020 15:48:46 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 fmsmsx122.amr.corp.intel.com ([169.254.5.168]) with mapi id 14.03.0439.000;
 Fri, 20 Mar 2020 15:48:46 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0gIOKclyBGaS5DSS5JR1Q6IGZhaWx1cmUgZm9yIGRybS9p?=
 =?utf-8?B?OTE1L2Rpc3BsYXkvZmJjOiBNYWtlIGZlbmNlcyBhIG5pY2UtdG8taGF2ZSBm?=
 =?utf-8?Q?or_GEN9+?=
Thread-Index: AQHV/k1OPbczJBvhU0OaHzfaJR+diKhSX2YAgAAtHwA=
Date: Fri, 20 Mar 2020 22:48:45 +0000
Message-ID: <a4bd20734483f397a07504fc2a92c461a02eed27.camel@intel.com>
References: <20200319211535.114625-1-jose.souza@intel.com>
 <158466360038.11036.18356039211210745057@emeril.freedesktop.org>
 <5ee3972d3dacf8aac2dd08d65fff58b1ac210b77.camel@intel.com>
In-Reply-To: <5ee3972d3dacf8aac2dd08d65fff58b1ac210b77.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <D1BF6AB64FCDDE4084FCD08CB18CA01C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display/fbc=3A_Make_fences_a_nice-to-have_for_GEN9+?=
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

On Fri, 2020-03-20 at 20:07 +0000, Souza, Jose wrote:
> On Fri, 2020-03-20 at 00:20 +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: drm/i915/display/fbc: Make fences a nice-to-have for GEN9+
> > URL   : https://patchwork.freedesktop.org/series/74890/
> > State : failure
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_8160_full -> Patchwork_17029_full
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **FAILURE**
> > 
> >   Serious unknown changes coming with Patchwork_17029_full
> > absolutely
> > need to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the
> > changes
> >   introduced in Patchwork_17029_full, please notify your bug team
> > to
> > allow them
> >   to document this new failure mode, which will reduce false
> > positives in CI.
> > 
> >   
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in
> > Patchwork_17029_full:
> > 
> > ### IGT changes ###
> > 
> > #### Possible regressions ####
> > 
> >   * igt@kms_fbcon_fbt@fbc:
> >     - shard-glk:          [PASS][1] -> [FAIL][2] +3 similar issues
> >    [1]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-glk9/igt@kms_fbcon_fbt@fbc.html
> >    [2]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-glk4/igt@kms_fbcon_fbt@fbc.html
> 
> Will update this test to handle the FBC changes.

Patches handling this case here: 
https://patchwork.freedesktop.org/series/74934/

Will merge this series monday unless someone is against it.

> 
> >   * igt@kms_frontbuffer_tracking@fbc-tilingchange:
> >     - shard-iclb:         [PASS][3] -> [FAIL][4] +3 similar issues
> >    [3]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-tilingchange.html
> >    [4]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-tilingchange.html
> >     - shard-tglb:         [PASS][5] -> [FAIL][6] +3 similar issues
> >    [5]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-tilingchange.html
> >    [6]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-tilingchange.html
> > 
> >   * igt@kms_hdr@static-toggle-dpms:
> >     - shard-tglb:         NOTRUN -> [SKIP][7]
> >    [7]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-tglb6/igt@kms_hdr@static-toggle-dpms.html
> 
> This two are handled by: 
> https://patchwork.freedesktop.org/series/74606/
> 
> >   
> > Known issues
> > ------------
> > 
> >   Here are the changes found in Patchwork_17029_full that come from
> > known issues:
> > 
> > ### IGT changes ###
> > 
> > #### Issues hit ####
> > 
> >   * igt@gem_ctx_isolation@bcs0-s3:
> >     - shard-kbl:          [PASS][8] -> [DMESG-WARN][9] ([i915#180])
> > +5 similar issues
> >    [8]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-kbl6/igt@gem_ctx_isolation@bcs0-s3.html
> >    [9]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-kbl7/igt@gem_ctx_isolation@bcs0-s3.html
> > 
> >   * igt@gem_ctx_persistence@close-replace-race:
> >     - shard-tglb:         [PASS][10] -> [INCOMPLETE][11]
> > ([i915#1402])
> >    [10]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb5/igt@gem_ctx_persistence@close-replace-race.html
> >    [11]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-tglb7/igt@gem_ctx_persistence@close-replace-race.html
> >     - shard-kbl:          [PASS][12] -> [INCOMPLETE][13]
> > ([i915#1402])
> >    [12]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-kbl7/igt@gem_ctx_persistence@close-replace-race.html
> >    [13]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html
> >     - shard-skl:          [PASS][14] -> [INCOMPLETE][15]
> > ([i915#1402])
> >    [14]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl5/igt@gem_ctx_persistence@close-replace-race.html
> >    [15]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-skl5/igt@gem_ctx_persistence@close-replace-race.html
> > 
> >   * igt@gem_exec_parallel@vcs1-fds:
> >     - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#112080])
> > +14
> > similar issues
> >    [16]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
> >    [17]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
> > 
> >   * igt@gem_exec_schedule@implicit-read-write-bsd2:
> >     - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#109276] /
> > [i915#677]) +1 similar issue
> >    [18]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd2.html
> >    [19]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd2.html
> > 
> >   * igt@gem_exec_schedule@out-order-bsd2:
> >     - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#109276])
> > +8
> > similar issues
> >    [20]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb1/igt@gem_exec_schedule@out-order-bsd2.html
> >    [21]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-iclb5/igt@gem_exec_schedule@out-order-bsd2.html
> > 
> >   * igt@gem_exec_schedule@pi-distinct-iova-bsd:
> >     - shard-iclb:         [PASS][22] -> [SKIP][23] ([i915#677])
> >    [22]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
> >    [23]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
> > 
> >   * igt@gem_exec_schedule@preempt-other-chain-bsd:
> >     - shard-iclb:         [PASS][24] -> [SKIP][25] ([fdo#112146])
> > +4
> > similar issues
> >    [24]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
> >    [25]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
> > 
> >   * igt@i915_selftest@live@execlists:
> >     - shard-apl:          [PASS][26] -> [INCOMPLETE][27]
> > ([fdo#103927] / [i915#656])
> >    [26]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl3/igt@i915_selftest@live@execlists.html
> >    [27]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-apl1/igt@i915_selftest@live@execlists.html
> > 
> >   * igt@kms_big_fb@linear-16bpp-rotate-0:
> >     - shard-glk:          [PASS][28] -> [FAIL][29] ([i915#1119])
> >    [28]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-glk6/igt@kms_big_fb@linear-16bpp-rotate-0.html
> >    [29]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-glk7/igt@kms_big_fb@linear-16bpp-rotate-0.html
> > 
> >   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> >     - shard-skl:          [PASS][30] -> [FAIL][31] ([IGT#5])
> >    [30]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> >    [31]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> > 
> >   * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
> >     - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#177] /
> > [i915#52] / [i915#54])
> >    [32]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
> >    [33]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
> > 
> >   * igt@kms_draw_crc@draw-method-rgb565-render-untiled:
> >     - shard-glk:          [PASS][34] -> [FAIL][35] ([i915#52] /
> > [i915#54]) +8 similar issues
> >    [34]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
> >    [35]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
> > 
> >   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
> >     - shard-hsw:          [PASS][36] -> [INCOMPLETE][37]
> > ([i915#61])
> >    [36]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-hsw4/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> >    [37]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-hsw1/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-suspend:
> >     - shard-apl:          [PASS][38] -> [DMESG-WARN][39]
> > ([i915#180]
> > / [i915#95])
> >    [38]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
> >    [39]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
> > 
> >   * igt@kms
> > _frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
> >     - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#49])
> >    [40]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
> >    [41]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
> > 
> >   * igt@kms_hdr@bpc-switch:
> >     - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#1188])
> >    [42]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl6/igt@kms_hdr@bpc-switch.html
> >    [43]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-skl4/igt@kms_hdr@bpc-switch.html
> > 
> >   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
> >     - shard-skl:          [PASS][44] -> [INCOMPLETE][45]
> > ([i915#69])
> >    [44]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> >    [45]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
> >     - shard-skl:          [PASS][46] -> [FAIL][47] ([fdo#108145])
> >    [46]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> >    [47]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> > 
> >   * igt@kms_plane_lowres@pipe-a-tiling-none:
> >     - shard-glk:          [PASS][48] -> [FAIL][49] ([i915#899])
> >    [48]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-none.html
> >    [49]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-none.html
> > 
> >   * igt@kms_psr2_su@page_flip:
> >     - shard-tglb:         [PASS][50] -> [FAIL][51] ([i915#608])
> >    [50]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb1/igt@kms_psr2_su@page_flip.html
> >    [51]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-tglb8/igt@kms_psr2_su@page_flip.html
> > 
> >   * igt@kms_psr@psr2_primary_page_flip:
> >     - shard-iclb:         [PASS][52] -> [SKIP][53] ([fdo#109441])
> > +2
> > similar issues
> >    [52]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
> >    [53]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html
> > 
> >   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
> >     - shard-apl:          [PASS][54] -> [DMESG-WARN][55]
> > ([i915#180])
> > +2 similar issues
> >    [54]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> >    [55]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> > 
> >   
> > #### Possible fixes ####
> > 
> >   * igt@gem_busy@busy-vcs1:
> >     - shard-iclb:         [SKIP][56] ([fdo#112080]) -> [PASS][57]
> > +12
> > similar issues
> >    [56]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb6/igt@gem_busy@busy-vcs1.html
> >    [57]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-iclb1/igt@gem_busy@busy-vcs1.html
> > 
> >   * igt@gem_ctx_persistence@close-replace-race:
> >     - shard-iclb:         [INCOMPLETE][58] ([i915#1402]) ->
> > [PASS][59]
> >    [58]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb1/igt@gem_ctx_persistence@close-replace-race.html
> >    [59]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-iclb5/igt@gem_ctx_persistence@close-replace-race.html
> > 
> >   * igt@gem_ctx_persistence@engines-mixed-process@bcs0:
> >     - shard-iclb:         [FAIL][60] ([i915#679]) -> [PASS][61]
> >    [60]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb4/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html
> >    [61]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-iclb2/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html
> > 
> >   * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
> >     - shard-iclb:         [INCOMPLETE][62] ([i915#1239]) ->
> > [PASS][63]
> >    [62]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb4/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
> >    [63]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-iclb2/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
> > 
> >   * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
> >     - shard-tglb:         [FAIL][64] ([i915#679]) -> [PASS][65]
> >    [64]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb2/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
> >    [65]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
> > 
> >   * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
> >     - shard-tglb:         [INCOMPLETE][66] ([i915#1239]) ->
> > [PASS][67]
> >    [66]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb2/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
> >    [67]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
> > 
> >   * igt@gem_exec_schedule@implicit-both-bsd1:
> >     - shard-iclb:         [SKIP][68] ([fdo#109276] / [i915#677]) ->
> > [PASS][69] +1 similar issue
> >    [68]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd1.html
> >    [69]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html
> > 
> >   * igt@gem_exec_schedule@implicit-write-read-bsd:
> >     - shard-iclb:         [SKIP][70] ([i915#677]) -> [PASS][71]
> >    [70]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd.html
> >    [71]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-iclb7/igt@gem_exec_schedule@implicit-write-read-bsd.html
> > 
> >   * igt@gem_exec_schedule@preemptive-hang-bsd:
> >     - shard-iclb:         [SKIP][72] ([fdo#112146]) -> [PASS][73]
> > +5
> > similar issues
> >    [72]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
> >    [73]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html
> > 
> >   * igt@gem_exec_whisper@basic-fds-forked:
> >     - shard-tglb:         [INCOMPLETE][74] ([i915#1318] /
> > [i915#1401]) -> [PASS][75]
> >    [74]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb1/igt@gem_exec_whisper@basic-fds-forked.html
> >    [75]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-tglb6/igt@gem_exec_whisper@basic-fds-forked.html
> > 
> >   * igt@i915_pm_dc@dc5-dpms:
> >     - shard-iclb:         [FAIL][76] ([i915#447]) -> [PASS][77]
> >    [76]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
> >    [77]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-iclb5/igt@i915_pm_dc@dc5-dpms.html
> > 
> >   * igt@i915_pm_rps@waitboost:
> >     - shard-tglb:         [FAIL][78] ([i915#413]) -> [PASS][79]
> >    [78]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb1/igt@i915_pm_rps@waitboost.html
> >    [79]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-tglb3/igt@i915_pm_rps@waitboost.html
> > 
> >   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
> >     - shard-skl:          [FAIL][80] ([i915#46]) -> [PASS][81]
> >    [80]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> >    [81]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> > 
> >   * igt@kms_flip@plain-flip-fb-recreate-interruptible:
> >     - shard-glk:          [FAIL][82] ([i915#34]) -> [PASS][83] +1
> > similar issue
> >    [82]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-glk4/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
> >    [83]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-glk6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
> > 
> >   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
> >     - shard-skl:          [FAIL][84] ([i915#49]) -> [PASS][85]
> >    [84]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html
> >    [85]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html
> > 
> >   * igt@kms_hdr@bpc-switch-suspend:
> >     - shard-skl:          [FAIL][86] ([i915#1188]) -> [PASS][87]
> >    [86]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
> >    [87]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
> > 
> >   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
> >     - shard-kbl:          [DMESG-WARN][88] ([i915#180]) ->
> > [PASS][89]
> > +4 similar issues
> >    [88]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> >    [89]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> > 
> >   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
> >     - shard-apl:          [DMESG-WARN][90] ([i915#180]) ->
> > [PASS][91]
> > +1 similar issue
> >    [90]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
> >    [91]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
> > 
> >   * igt@kms_plane_lowres@pipe-a-tiling-x:
> >     - shard-glk:          [FAIL][92] ([i915#899]) -> [PASS][93]
> >    [92]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html
> >    [93]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html
> > 
> >   * igt@kms_psr@psr2_sprite_plane_move:
> >     - shard-iclb:         [SKIP][94] ([fdo#109441]) -> [PASS][95]
> > +1
> > similar issue
> >    [94]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html
> >    [95]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
> > 
> >   * igt@kms_setmode@basic:
> >     - shard-kbl:          [FAIL][96] ([i915#31]) -> [PASS][97]
> >    [96]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-kbl3/igt@kms_setmode@basic.html
> >    [97]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-kbl1/igt@kms_setmode@basic.html
> > 
> >   * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
> >     - shard-skl:          [INCOMPLETE][98] ([i915#69]) ->
> > [PASS][99]
> >    [98]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl9/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
> >    [99]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-skl3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
> > 
> >   * igt@prime_busy@hang-bsd2:
> >     - shard-iclb:         [SKIP][100] ([fdo#109276]) -> [PASS][101]
> > +18 similar issues
> >    [100]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb6/igt@prime_busy@hang-bsd2.html
> >    [101]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-iclb1/igt@prime_busy@hang-bsd2.html
> > 
> >   
> > #### Warnings ####
> > 
> >   * igt@runner@aborted:
> >     - shard-kbl:          [FAIL][102] ([i915#92]) -> ([FAIL][103],
> > [FAIL][104]) ([i915#1389] / [i915#1402] / [i915#92])
> >    [102]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-kbl6/igt@runner@aborted.html
> >    [103]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-kbl6/igt@runner@aborted.html
> >    [104]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-kbl1/igt@runner@aborted.html
> >     - shard-apl:          ([FAIL][105], [FAIL][106]) ([fdo#103927]
> > /
> > [i915#1402]) -> ([FAIL][107], [FAIL][108], [FAIL][109])
> > ([fdo#103927]
> > / [i915#1402] / [i915#529])
> >    [105]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl4/igt@runner@aborted.html
> >    [106]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl1/igt@runner@aborted.html
> >    [107]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-apl8/igt@runner@aborted.html
> >    [108]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-apl7/igt@runner@aborted.html
> >    [109]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-apl1/igt@runner@aborted.html
> >     - shard-tglb:         [FAIL][110] ([i915#1318]) -> [FAIL][111]
> > ([i915#1389])
> >    [110]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb1/igt@runner@aborted.html
> >    [111]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/shard-tglb7/igt@runner@aborted.html
> > 
> >   
> >   [IGT#5]: 
> > https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
> >   [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
> >   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
> >   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
> >   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
> >   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
> >   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
> >   [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
> >   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
> >   [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
> >   [i915#1318]: https://gitlab.freedesktop.org/drm/intel/issues/1318
> >   [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
> >   [i915#1401]: https://gitlab.freedesktop.org/drm/intel/issues/1401
> >   [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
> >   [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
> >   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
> >   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
> >   [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
> >   [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
> >   [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
> >   [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
> >   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
> >   [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
> >   [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
> >   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
> >   [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
> >   [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
> >   [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
> >   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
> >   [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
> >   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
> >   [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
> >   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
> >   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
> > 
> > 
> > Participating hosts (10 -> 10)
> > ------------------------------
> > 
> >   No changes in participating hosts
> > 
> > 
> > Build changes
> > -------------
> > 
> >   * CI: CI-20190529 -> None
> >   * Linux: CI_DRM_8160 -> Patchwork_17029
> > 
> >   CI-20190529: 20190529
> >   CI_DRM_8160: 6ba1729e5025761ab74914f6b8aa3288f493e9c7 @
> > git://anongit.freedesktop.org/gfx-ci/linux
> >   IGT_5523: cf6d524007ac51a7d5a48503ea3dd5f01fd4ebab @
> > git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> >   Patchwork_17029: e67c9d8b107777dcb7678579240a1def62211d79 @
> > git://anongit.freedesktop.org/gfx-ci/linux
> >   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> > git://anongit.freedesktop.org/piglit
> > 
> > == Logs ==
> > 
> > For more details see: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17029/index.html
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
