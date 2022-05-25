Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69334534467
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 21:42:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F39710E14F;
	Wed, 25 May 2022 19:42:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C43E10E14F
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 19:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653507727; x=1685043727;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=wn9OVnRtgZgmslglbgsMd63zT1SIrLysBjlC9FqgN8c=;
 b=cG3QdvvX4HK3HKyrRvMCg5PaAfNu2AGd4uIdUhwrgU4IXk6ygPJXe++t
 VqHWHa76p5gQfGC6HJJ0Z5YaXCXeSTU8e5HP9rqNhHTlIcLyWmCSYqg78
 eQr8MJacMFCJvjb7uU5716TP8LQH/obNf32r78s9TphUjWKskOWLAYdTl
 4k3JtVL1tn+t1q2+BG4ZGtEZKko+jKcNU9SQf0cae0YVAv5UbAbOVZsKv
 0IIqDicZeFH98QbTw+S79WamvWyHb4HgzwumD1Ygjcuh9b4bw3sZKUu2g
 E2qX2TOWhp0V7+4OPJ9rDIUlOBoUfEMDc2JkxE3nYvhlQ8EYHD5aTFuoB w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10358"; a="273921461"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="273921461"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 12:42:05 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="549172930"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 12:42:05 -0700
Date: Wed, 25 May 2022 12:42:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yo6GjEnlxTu34auP@mdroper-desk1.amr.corp.intel.com>
References: <20220524235906.529771-1-matthew.d.roper@intel.com>
 <165346087154.16576.5451428706442437089@emeril.freedesktop.org>
 <Yo5J5ZLJGElRSNlp@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yo5J5ZLJGElRSNlp@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/hwconfig=3A_Future-proof_platform_checks?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 25, 2022 at 08:23:19AM -0700, Matt Roper wrote:
> On Wed, May 25, 2022 at 06:41:11AM +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: drm/i915/hwconfig: Future-proof platform checks
> > URL   : https://patchwork.freedesktop.org/series/104338/
> > State : failure
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_11696_full -> Patchwork_104338v1_full
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **FAILURE**
> > 
> >   Serious unknown changes coming with Patchwork_104338v1_full absolutely need to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_104338v1_full, please notify your bug team to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> > 
> >   
> > 
> > Participating hosts (13 -> 13)
> > ------------------------------
> > 
> >   No changes in participating hosts
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in Patchwork_104338v1_full:
> > 
> > ### IGT changes ###
> > 
> > #### Possible regressions ####
> > 
> >   * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@1x-outputs:
> >     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-tglb3/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@1x-outputs.html
> >    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-tglb8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@1x-outputs.html
> 
> Unexpected incomplete; not errors in the log before the machine/network
> disappeared.  Not related to this series.

Applied to drm-intel-gt-next.

Thanks JohnH for the review.


Matt

> 
> 
> Matt
> 
> > 
> >   
> > #### Suppressed ####
> > 
> >   The following results come from untrusted machines, tests, or statuses.
> >   They do not affect the overall result.
> > 
> >   * igt@kms_color@pipe-a-deep-color:
> >     - {shard-rkl}:        [SKIP][3] ([i915#4070] / [i915#4098]) -> [INCOMPLETE][4]
> >    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-rkl-2/igt@kms_color@pipe-a-deep-color.html
> >    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-rkl-6/igt@kms_color@pipe-a-deep-color.html
> > 
> >   * {igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-edp-1}:
> >     - shard-tglb:         [SKIP][5] ([i915#5176]) -> [SKIP][6] +19 similar issues
> >    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-tglb7/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-edp-1.html
> >    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-tglb5/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-edp-1.html
> > 
> >   * {igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-a-edp-1}:
> >     - shard-iclb:         NOTRUN -> [SKIP][7] +2 similar issues
> >    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-a-edp-1.html
> > 
> >   * {igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-edp-1}:
> >     - shard-iclb:         [SKIP][8] ([i915#5176]) -> [SKIP][9] +17 similar issues
> >    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-iclb8/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-edp-1.html
> >    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb3/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-edp-1.html
> > 
> >   * {igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-edp-1}:
> >     - {shard-rkl}:        NOTRUN -> [SKIP][10] +4 similar issues
> >    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-edp-1.html
> > 
> >   * {igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-d-hdmi-a-1}:
> >     - {shard-tglu}:       [SKIP][11] ([i915#5176]) -> [SKIP][12] +15 similar issues
> >    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-tglu-5/igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-d-hdmi-a-1.html
> >    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-tglu-8/igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-d-hdmi-a-1.html
> > 
> >   * {igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1}:
> >     - {shard-dg1}:        [SKIP][13] ([i915#5176]) -> [SKIP][14] +11 similar issues
> >    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-dg1-17/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1.html
> >    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-dg1-15/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1.html
> > 
> >   
> > New tests
> > ---------
> > 
> >   New tests have been introduced between CI_DRM_11696_full and Patchwork_104338v1_full:
> > 
> > ### New IGT tests (4) ###
> > 
> >   * igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-3:
> >     - Statuses : 1 pass(s)
> >     - Exec time: [0.38] s
> > 
> >   * igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-3:
> >     - Statuses : 1 pass(s)
> >     - Exec time: [0.41] s
> > 
> >   * igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-c-hdmi-a-3:
> >     - Statuses : 1 pass(s)
> >     - Exec time: [0.41] s
> > 
> >   * igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-d-hdmi-a-3:
> >     - Statuses : 1 pass(s)
> >     - Exec time: [0.40] s
> > 
> >   
> > 
> > Known issues
> > ------------
> > 
> >   Here are the changes found in Patchwork_104338v1_full that come from known issues:
> > 
> > ### IGT changes ###
> > 
> > #### Issues hit ####
> > 
> >   * igt@gem_eio@unwedge-stress:
> >     - shard-iclb:         [PASS][15] -> [TIMEOUT][16] ([i915#3070])
> >    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-iclb5/igt@gem_eio@unwedge-stress.html
> >    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb4/igt@gem_eio@unwedge-stress.html
> > 
> >   * igt@gem_exec_fair@basic-none@rcs0:
> >     - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#2842])
> >    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.html
> >    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html
> > 
> >   * igt@gem_exec_fair@basic-none@vcs1:
> >     - shard-iclb:         NOTRUN -> [FAIL][19] ([i915#2842])
> >    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
> > 
> >   * igt@gem_exec_fair@basic-pace-share@rcs0:
> >     - shard-tglb:         [PASS][20] -> [FAIL][21] ([i915#2842])
> >    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> >    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> > 
> >   * igt@gem_exec_fair@basic-pace@vcs0:
> >     - shard-kbl:          NOTRUN -> [FAIL][22] ([i915#2842])
> >    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
> > 
> >   * igt@gem_exec_fair@basic-throttle@rcs0:
> >     - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#2849])
> >    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
> >    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
> > 
> >   * igt@gem_exec_flush@basic-batch-kernel-default-wb:
> >     - shard-snb:          [PASS][25] -> [SKIP][26] ([fdo#109271])
> >    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
> >    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
> > 
> >   * igt@gem_lmem_swapping@heavy-verify-random:
> >     - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#4613]) +1 similar issue
> >    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl3/igt@gem_lmem_swapping@heavy-verify-random.html
> > 
> >   * igt@gem_lmem_swapping@random-engines:
> >     - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#4613])
> >    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl2/igt@gem_lmem_swapping@random-engines.html
> > 
> >   * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
> >     - shard-iclb:         NOTRUN -> [SKIP][29] ([i915#768])
> >    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html
> > 
> >   * igt@gem_userptr_blits@coherency-sync:
> >     - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109290])
> >    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@gem_userptr_blits@coherency-sync.html
> > 
> >   * igt@gem_workarounds@suspend-resume:
> >     - shard-kbl:          NOTRUN -> [DMESG-WARN][31] ([i915#180])
> >    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl4/igt@gem_workarounds@suspend-resume.html
> > 
> >   * igt@gen9_exec_parse@allowed-all:
> >     - shard-iclb:         NOTRUN -> [SKIP][32] ([i915#2856])
> >    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@gen9_exec_parse@allowed-all.html
> >     - shard-glk:          [PASS][33] -> [DMESG-WARN][34] ([i915#5566] / [i915#716])
> >    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-glk3/igt@gen9_exec_parse@allowed-all.html
> >    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-glk7/igt@gen9_exec_parse@allowed-all.html
> > 
> >   * igt@gen9_exec_parse@valid-registers:
> >     - shard-skl:          [PASS][35] -> [DMESG-WARN][36] ([i915#1982])
> >    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-skl1/igt@gen9_exec_parse@valid-registers.html
> >    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl1/igt@gen9_exec_parse@valid-registers.html
> > 
> >   * igt@i915_pm_dc@dc6-dpms:
> >     - shard-skl:          NOTRUN -> [FAIL][37] ([i915#454])
> >    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl2/igt@i915_pm_dc@dc6-dpms.html
> > 
> >   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
> >     - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#1937])
> >    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> > 
> >   * igt@i915_pm_rpm@modeset-non-lpsp:
> >     - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#110892])
> >    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@i915_pm_rpm@modeset-non-lpsp.html
> > 
> >   * igt@i915_selftest@live@hangcheck:
> >     - shard-tglb:         [PASS][40] -> [DMESG-WARN][41] ([i915#5591])
> >    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-tglb3/igt@i915_selftest@live@hangcheck.html
> >    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-tglb8/igt@i915_selftest@live@hangcheck.html
> > 
> >   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
> >     - shard-iclb:         NOTRUN -> [SKIP][42] ([i915#5286])
> >    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb5/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> > 
> >   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
> >     - shard-skl:          NOTRUN -> [FAIL][43] ([i915#3743])
> >    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> > 
> >   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
> >     - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#110725] / [fdo#111614])
> >    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> > 
> >   * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
> >     - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#110723])
> >    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
> > 
> >   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
> >     - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#3886]) +6 similar issues
> >    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> > 
> >   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
> >     - shard-skl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#3886]) +2 similar issues
> >    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl9/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> > 
> >   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
> >     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109278] / [i915#3886])
> >    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> > 
> >   * igt@kms_chamelium@dp-frame-dump:
> >     - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109284] / [fdo#111827]) +1 similar issue
> >    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@kms_chamelium@dp-frame-dump.html
> > 
> >   * igt@kms_chamelium@hdmi-hpd-storm:
> >     - shard-kbl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +13 similar issues
> >    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl3/igt@kms_chamelium@hdmi-hpd-storm.html
> > 
> >   * igt@kms_chamelium@vga-hpd-after-suspend:
> >     - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +4 similar issues
> >    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl2/igt@kms_chamelium@vga-hpd-after-suspend.html
> > 
> >   * igt@kms_color@pipe-d-ctm-0-5:
> >     - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109278] / [i915#1149])
> >    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@kms_color@pipe-d-ctm-0-5.html
> > 
> >   * igt@kms_color_chamelium@pipe-d-ctm-negative:
> >     - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109278] / [fdo#109284] / [fdo#111827])
> >    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@kms_color_chamelium@pipe-d-ctm-negative.html
> > 
> >   * igt@kms_content_protection@uevent:
> >     - shard-kbl:          NOTRUN -> [FAIL][54] ([i915#2105])
> >    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl6/igt@kms_content_protection@uevent.html
> > 
> >   * igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen:
> >     - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109278] / [fdo#109279])
> >    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen.html
> > 
> >   * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
> >     - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109274] / [fdo#109278])
> >    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
> > 
> >   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
> >     - shard-skl:          NOTRUN -> [FAIL][57] ([i915#2346])
> >    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
> > 
> >   * igt@kms_cursor_legacy@pipe-d-single-move:
> >     - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109278]) +11 similar issues
> >    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@kms_cursor_legacy@pipe-d-single-move.html
> > 
> >   * igt@kms_cursor_legacy@pipe-d-torture-move:
> >     - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271]) +62 similar issues
> >    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl2/igt@kms_cursor_legacy@pipe-d-torture-move.html
> > 
> >   * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-4tiled:
> >     - shard-iclb:         NOTRUN -> [SKIP][60] ([i915#5287])
> >    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-4tiled.html
> > 
> >   * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
> >     - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109274]) +1 similar issue
> >    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html
> > 
> >   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
> >     - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#79])
> >    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
> >    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
> > 
> >   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> >     - shard-kbl:          [PASS][64] -> [DMESG-WARN][65] ([i915#180]) +4 similar issues
> >    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> >    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> > 
> >   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
> >     - shard-apl:          [PASS][66] -> [DMESG-WARN][67] ([i915#180]) +2 similar issues
> >    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> >    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite:
> >     - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109280]) +8 similar issues
> >    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite.html
> > 
> >   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
> >     - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#533])
> >    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> > 
> >   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
> >     - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#533]) +1 similar issue
> >    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> >     - shard-skl:          [PASS][71] -> [FAIL][72] ([fdo#108145] / [i915#265])
> >    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> >    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
> >     - shard-kbl:          NOTRUN -> [FAIL][73] ([fdo#108145] / [i915#265]) +1 similar issue
> >    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
> >     - shard-kbl:          NOTRUN -> [FAIL][74] ([i915#265])
> >    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> > 
> >   * igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:
> >     - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#5776]) +2 similar issues
> >    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl2/igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers.html
> > 
> >   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
> >     - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658]) +1 similar issue
> >    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl3/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
> > 
> >   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
> >     - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#658])
> >    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> > 
> >   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
> >     - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658])
> >    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> > 
> >   * igt@kms_psr@psr2_cursor_render:
> >     - shard-iclb:         [PASS][79] -> [SKIP][80] ([fdo#109441])
> >    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
> >    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb1/igt@kms_psr@psr2_cursor_render.html
> > 
> >   * igt@kms_sysfs_edid_timing:
> >     - shard-skl:          NOTRUN -> [FAIL][81] ([IGT#2])
> >    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl2/igt@kms_sysfs_edid_timing.html
> > 
> >   * igt@kms_writeback@writeback-fb-id:
> >     - shard-kbl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2437])
> >    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl6/igt@kms_writeback@writeback-fb-id.html
> > 
> >   * igt@perf@polling-parameterized:
> >     - shard-skl:          [PASS][83] -> [FAIL][84] ([i915#5639])
> >    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-skl9/igt@perf@polling-parameterized.html
> >    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl8/igt@perf@polling-parameterized.html
> > 
> >   * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
> >     - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109291])
> >    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html
> > 
> >   * igt@prime_nv_pcopy@test2:
> >     - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271]) +158 similar issues
> >    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl3/igt@prime_nv_pcopy@test2.html
> > 
> >   * igt@syncobj_timeline@invalid-transfer-non-existent-point:
> >     - shard-skl:          NOTRUN -> [DMESG-WARN][87] ([i915#5098])
> >    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl10/igt@syncobj_timeline@invalid-transfer-non-existent-point.html
> > 
> >   * igt@syncobj_timeline@transfer-timeline-point:
> >     - shard-iclb:         NOTRUN -> [DMESG-FAIL][88] ([i915#5098])
> >    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb5/igt@syncobj_timeline@transfer-timeline-point.html
> > 
> >   * igt@sysfs_clients@fair-3:
> >     - shard-kbl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2994]) +2 similar issues
> >    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl6/igt@sysfs_clients@fair-3.html
> > 
> >   * igt@sysfs_clients@sema-10:
> >     - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#2994])
> >    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@sysfs_clients@sema-10.html
> > 
> >   
> > #### Possible fixes ####
> > 
> >   * igt@gem_ctx_shared@q-smoketest@vcs0:
> >     - shard-kbl:          [INCOMPLETE][91] -> [PASS][92]
> >    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl6/igt@gem_ctx_shared@q-smoketest@vcs0.html
> >    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl6/igt@gem_ctx_shared@q-smoketest@vcs0.html
> > 
> >   * igt@gem_eio@unwedge-stress:
> >     - shard-tglb:         [FAIL][93] ([i915#5784]) -> [PASS][94]
> >    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-tglb8/igt@gem_eio@unwedge-stress.html
> >    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-tglb7/igt@gem_eio@unwedge-stress.html
> > 
> >   * igt@gem_exec_fair@basic-none-share@rcs0:
> >     - shard-iclb:         [FAIL][95] ([i915#2842]) -> [PASS][96]
> >    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
> >    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
> >     - shard-tglb:         [FAIL][97] ([i915#2842]) -> [PASS][98]
> >    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html
> >    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html
> > 
> >   * igt@gem_exec_fair@basic-none@vcs0:
> >     - shard-kbl:          [FAIL][99] ([i915#2842]) -> [PASS][100] +1 similar issue
> >    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
> >    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
> > 
> >   * igt@gem_exec_flush@basic-wb-pro-default:
> >     - shard-snb:          [SKIP][101] ([fdo#109271]) -> [PASS][102]
> >    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-snb6/igt@gem_exec_flush@basic-wb-pro-default.html
> >    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-snb5/igt@gem_exec_flush@basic-wb-pro-default.html
> > 
> >   * igt@gem_exec_whisper@basic-fds-priority:
> >     - shard-glk:          [DMESG-WARN][103] ([i915#118]) -> [PASS][104]
> >    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-glk1/igt@gem_exec_whisper@basic-fds-priority.html
> >    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-glk8/igt@gem_exec_whisper@basic-fds-priority.html
> > 
> >   * igt@gen9_exec_parse@allowed-single:
> >     - shard-skl:          [DMESG-WARN][105] ([i915#5566] / [i915#716]) -> [PASS][106]
> >    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-skl10/igt@gen9_exec_parse@allowed-single.html
> >    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl10/igt@gen9_exec_parse@allowed-single.html
> > 
> >   * igt@gen9_exec_parse@bb-start-far:
> >     - shard-skl:          [DMESG-WARN][107] ([i915#1982]) -> [PASS][108]
> >    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-skl6/igt@gen9_exec_parse@bb-start-far.html
> >    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl8/igt@gen9_exec_parse@bb-start-far.html
> > 
> >   * igt@i915_pm_rpm@cursor-dpms:
> >     - {shard-rkl}:        [SKIP][109] ([i915#1849]) -> [PASS][110]
> >    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-rkl-2/igt@i915_pm_rpm@cursor-dpms.html
> >    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-rkl-6/igt@i915_pm_rpm@cursor-dpms.html
> > 
> >   * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
> >     - {shard-rkl}:        [SKIP][111] ([i915#1397]) -> [PASS][112]
> >    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
> >    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
> > 
> >   * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
> >     - {shard-rkl}:        [SKIP][113] ([fdo#112022] / [i915#4070]) -> [PASS][114] +2 similar issues
> >    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
> >    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
> > 
> >   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> >     - shard-glk:          [FAIL][115] ([i915#2346]) -> [PASS][116]
> >    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> >    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> > 
> >   * igt@kms_dp_aux_dev:
> >     - {shard-rkl}:        [SKIP][117] ([i915#1257]) -> [PASS][118]
> >    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-rkl-2/igt@kms_dp_aux_dev.html
> >    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-rkl-6/igt@kms_dp_aux_dev.html
> > 
> >   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:
> >     - {shard-rkl}:        [SKIP][119] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][120] +4 similar issues
> >    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
> >    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
> > 
> >   * igt@kms_flip@busy-flip@c-edp1:
> >     - shard-skl:          [FAIL][121] -> [PASS][122]
> >    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-skl2/igt@kms_flip@busy-flip@c-edp1.html
> >    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl6/igt@kms_flip@busy-flip@c-edp1.html
> > 
> >   * igt@kms_flip@flip-vs-suspend@c-dp1:
> >     - shard-apl:          [DMESG-WARN][123] ([i915#180]) -> [PASS][124] +1 similar issue
> >    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-apl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
> >    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
> >     - {shard-rkl}:        [SKIP][125] ([i915#3701]) -> [PASS][126]
> >    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
> >    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
> >     - shard-iclb:         [SKIP][127] ([i915#3701]) -> [PASS][128]
> >    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> >    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
> >     - {shard-rkl}:        [SKIP][129] ([i915#1849] / [i915#4098]) -> [PASS][130] +13 similar issues
> >    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
> >    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-suspend:
> >     - shard-kbl:          [DMESG-WARN][131] ([i915#180]) -> [PASS][132] +7 similar issues
> >    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
> >    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
> > 
> >   * igt@kms_invalid_mode@bad-hsync-start:
> >     - {shard-rkl}:        [SKIP][133] ([i915#4278]) -> [PASS][134]
> >    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-rkl-2/igt@kms_invalid_mode@bad-hsync-start.html
> >    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-start.html
> > 
> >   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
> >     - {shard-rkl}:        [SKIP][135] ([i915#1849] / [i915#3558]) -> [PASS][136] +1 similar issue
> >    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-rkl-2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> >    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
> >     - {shard-rkl}:        [SKIP][137] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][138] +4 similar issues
> >    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
> >    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
> > 
> >   * igt@kms_plane_multiple@atomic-pipe-a-tiling-none:
> >     - {shard-rkl}:        [SKIP][139] ([i915#1849] / [i915#3558] / [i915#4070]) -> [PASS][140]
> >    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html
> >    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html
> > 
> >   * igt@kms_psr@cursor_plane_onoff:
> >     - {shard-rkl}:        [SKIP][141] ([i915#1072]) -> [PASS][142] +2 similar issues
> >    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-rkl-2/igt@kms_psr@cursor_plane_onoff.html
> >    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-rkl-6/igt@kms_psr@cursor_plane_onoff.html
> > 
> >   * igt@kms_psr@psr2_cursor_plane_move:
> >     - shard-iclb:         [SKIP][143] ([fdo#109441]) -> [PASS][144]
> >    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html
> >    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
> > 
> >   * igt@kms_universal_plane@disable-primary-vs-flip-pipe-a:
> >     - {shard-rkl}:        [SKIP][145] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][146]
> >    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-rkl-2/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html
> >    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-rkl-6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html
> > 
> >   * igt@kms_vblank@crtc-id:
> >     - {shard-rkl}:        [SKIP][147] ([i915#1845] / [i915#4098]) -> [PASS][148] +17 similar issues
> >    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-rkl-2/igt@kms_vblank@crtc-id.html
> >    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-rkl-6/igt@kms_vblank@crtc-id.html
> > 
> >   
> > #### Warnings ####
> > 
> >   * igt@gem_exec_balancer@parallel:
> >     - shard-iclb:         [DMESG-WARN][149] ([i915#5614]) -> [SKIP][150] ([i915#4525])
> >    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-iclb4/igt@gem_exec_balancer@parallel.html
> >    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb6/igt@gem_exec_balancer@parallel.html
> > 
> >   * igt@gem_exec_balancer@parallel-ordering:
> >     - shard-iclb:         [DMESG-FAIL][151] ([i915#5614]) -> [SKIP][152] ([i915#4525])
> >    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
> >    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html
> > 
> >   * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
> >     - shard-skl:          [SKIP][153] ([fdo#109271] / [i915#1888]) -> [SKIP][154] ([fdo#109271])
> >    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-skl4/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
> >    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-skl7/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
> > 
> >   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
> >     - shard-iclb:         [SKIP][155] ([i915#2920]) -> [SKIP][156] ([i915#658])
> >    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> >    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> > 
> >   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
> >     - shard-iclb:         [SKIP][157] ([i915#658]) -> [SKIP][158] ([i915#2920]) +1 similar issue
> >    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> >    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> > 
> >   * igt@kms_psr2_su@page_flip-nv12:
> >     - shard-iclb:         [SKIP][159] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][160] ([i915#5939])
> >    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-iclb7/igt@kms_psr2_su@page_flip-nv12.html
> >    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
> > 
> >   * igt@runner@aborted:
> >     - shard-kbl:          ([FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92]) -> ([FAIL][177], [FAIL][178], [FAIL][179], [FAIL][180], [FAIL][181], [FAIL][182], [FAIL][183], [FAIL][184], [FAIL][185], [FAIL][186], [FAIL][187], [FAIL][188], [FAIL][189], [FAIL][190]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92])
> >    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl7/igt@runner@aborted.html
> >    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl1/igt@runner@aborted.html
> >    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl4/igt@runner@aborted.html
> >    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl1/igt@runner@aborted.html
> >    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl7/igt@runner@aborted.html
> >    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl6/igt@runner@aborted.html
> >    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl7/igt@runner@aborted.html
> >    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl6/igt@runner@aborted.html
> >    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl1/igt@runner@aborted.html
> >    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl6/igt@runner@aborted.html
> >    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl1/igt@runner@aborted.html
> >    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl7/igt@runner@aborted.html
> >    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl7/igt@runner@aborted.html
> >    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl4/igt@runner@aborted.html
> >    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl4/igt@runner@aborted.html
> >    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11696/shard-kbl7/igt@runner@aborted.html
> >    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl6/igt@runner@aborted.html
> >    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl4/igt@runner@aborted.html
> >    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl1/igt@runner@aborted.html
> >    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl4/igt@runner@aborted.html
> >    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl3/igt@runner@aborted.html
> >    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl6/igt@runner@aborted.html
> >    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl4/igt@runner@aborted.html
> >    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl1/igt@runner@aborted.html
> >    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl1/igt@runner@aborted.html
> >    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl1/igt@runner@aborted.html
> >    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl4/igt@runner@aborted.html
> >    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl1/igt@runner@aborted.html
> >    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl7/igt@runner@aborted.html
> >    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/shard-kbl1/igt@runner@aborted.html
> > 
> >   
> >   {name}: This element is suppressed. This means it is ignored when computing
> >           the status of the difference (SUCCESS, WARNING, or FAILURE).
> > 
> >   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
> >   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
> >   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
> >   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
> >   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
> >   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
> >   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
> >   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
> >   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
> >   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
> >   [fdo#109290]: https://bugs.freedesktop.org/show_bug.cgi?id=109290
> >   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
> >   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
> >   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
> >   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
> >   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
> >   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
> >   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
> >   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
> >   [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
> >   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
> >   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
> >   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
> >   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
> >   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
> >   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
> >   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
> >   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
> >   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
> >   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
> >   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
> >   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
> >   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
> >   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
> >   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
> >   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
> >   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
> >   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
> >   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
> >   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
> >   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
> >   [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
> >   [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
> >   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
> >   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
> >   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
> >   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
> >   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
> >   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
> >   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
> >   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
> >   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
> >   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
> >   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
> >   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
> >   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
> >   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
> >   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
> >   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
> >   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
> >   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
> >   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
> >   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
> >   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
> >   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
> >   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
> >   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
> >   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
> >   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
> >   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
> >   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
> >   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
> >   [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
> >   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
> >   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
> >   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
> >   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
> >   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
> >   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
> >   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
> >   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
> >   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
> >   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
> >   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
> >   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
> >   [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
> >   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
> >   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
> >   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
> >   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
> >   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
> >   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
> >   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
> >   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
> >   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
> >   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
> >   [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
> >   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
> >   [i915#5776]: https://gitlab.freedesktop.org/drm/intel/issues/5776
> >   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
> >   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
> >   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
> >   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
> >   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
> >   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> >   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
> > 
> > 
> > Build changes
> > -------------
> > 
> >   * Linux: CI_DRM_11696 -> Patchwork_104338v1
> > 
> >   CI-20190529: 20190529
> >   CI_DRM_11696: 8bc9722c2f4896a70da425a73d68221b6845291a @ git://anongit.freedesktop.org/gfx-ci/linux
> >   IGT_6488: 4ce82dc0eeb65974c383e5d1f8f0820174b4e9bb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> >   Patchwork_104338v1: 8bc9722c2f4896a70da425a73d68221b6845291a @ git://anongit.freedesktop.org/gfx-ci/linux
> >   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> > 
> > == Logs ==
> > 
> > For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104338v1/index.html
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
