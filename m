Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A22DD974F2B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 12:00:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF8E710E821;
	Wed, 11 Sep 2024 10:00:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jEqCb1+Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19CFF10E821
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 10:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726048821; x=1757584821;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=cfS7nTjDXSwLHBileZoNfNocLOd0f2xvCyYXbr4XP/c=;
 b=jEqCb1+ZKpnookeDhhnWDEhs9XpdkEirl49FeW9NNWar2Bqraw1CvwA5
 +PBSl1spAg5qKORDgvG6wY94j8TZPGzbnZPAGaM4YPyutiO8kFoCvrPBJ
 ybPUJlRNhPw0Im24yp6nDRv2gvziEF1A8naMVaCxwQ6Uf+BsfJ7uALd9I
 f+SxcmZ+vBA/HiUBhaZBof+7mE9ZCiwkqcj501wrv5h77KwkxEV9LxH8a
 KSxf38aGjdxmyujWvL2KMj6xKkbQq42V+vemMFNNTC+N6JSjAdgQ47LBm
 jqmTQSSAxII7hDt8F/AnSESo0YETO0x4PS9pVf0DKd1W5iROIQM6VEHeM w==;
X-CSE-ConnectionGUID: zoKucMwATGy5TeZ30PFtuA==
X-CSE-MsgGUID: rmB/yQLmRJCNKAiuOtegtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="28577263"
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="28577263"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 03:00:11 -0700
X-CSE-ConnectionGUID: Mmn/94OmRamLzlEK+5G3xA==
X-CSE-MsgGUID: 41ylZv1UQzWE37OpR/+u1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="67156530"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 03:00:09 -0700
Date: Wed, 11 Sep 2024 13:00:31 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Ankit K Nautiyal <ankit.k.nautiyal@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: =?utf-8?B?4pyTIEZpLkNJLklHVDogc3VjY2Vz?= =?utf-8?Q?s?= for
 drm/i915/dp: Dump the LTTPR PHY descriptors (rev2)
Message-ID: <ZuFqP3RKc__Rib6d@ideak-desk.fi.intel.com>
References: <20240909135627.2926906-1-imre.deak@intel.com>
 <172600890912.982706.9627751512690958519@2413ebb6fbb6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <172600890912.982706.9627751512690958519@2413ebb6fbb6>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 10, 2024 at 10:55:09PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Dump the LTTPR PHY descriptors (rev2)
> URL   : https://patchwork.freedesktop.org/series/138405/
> State : success

Thanks for the reviews, patch is pushed to drm-intel-next.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15385_full -> Patchwork_138405v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **WARNING**
> 
>   Minor unknown changes coming with Patchwork_138405v2_full need to be verified
>   manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_138405v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 10)
> ------------------------------
> 
>   Additional (1): shard-snb-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_138405v2_full:
> 
> ### IGT changes ###
> 
> #### Warnings ####
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
>     - shard-mtlp:         [SKIP][1] ([i915#3555] / [i915#8813]) -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_138405v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-rkl:          NOTRUN -> [SKIP][3] ([i915#6230])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-2/igt@api_intel_bb@crc32.html
> 
>   * igt@drm_fdinfo@most-busy-check-all:
>     - shard-rkl:          NOTRUN -> [FAIL][4] ([i915#12179])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all.html
> 
>   * igt@drm_fdinfo@most-busy-check-all@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][5] ([i915#7742])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html
> 
>   * igt@gem_ctx_freq@sysfs:
>     - shard-dg2:          [PASS][6] -> [FAIL][7] ([i915#9561]) +1 other test fail
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-5/igt@gem_ctx_freq@sysfs.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-11/igt@gem_ctx_freq@sysfs.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-dg1:          NOTRUN -> [SKIP][8] ([i915#8555])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg1-16/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_eio@kms:
>     - shard-dg2:          [PASS][9] -> [FAIL][10] ([i915#5784])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-10/igt@gem_eio@kms.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-4/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_endless@dispatch:
>     - shard-dg2:          [PASS][11] -> [TIMEOUT][12] ([i915#7016])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-5/igt@gem_exec_endless@dispatch.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-11/igt@gem_exec_endless@dispatch.html
> 
>   * igt@gem_exec_endless@dispatch@bcs0:
>     - shard-dg2:          [PASS][13] -> [TIMEOUT][14] ([i915#3778] / [i915#7016])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-5/igt@gem_exec_endless@dispatch@bcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-11/igt@gem_exec_endless@dispatch@bcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo:
>     - shard-glk:          NOTRUN -> [FAIL][15] ([i915#2842]) +1 other test fail
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-glk7/igt@gem_exec_fair@basic-none-solo.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][16] ([i915#2842]) +1 other test fail
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-2/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-rkl:          [PASS][17] -> [FAIL][18] ([i915#2842])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-rkl-1/igt@gem_exec_fair@basic-none@vcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#2842]) +1 other test fail
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fence@submit:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#4812])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-6/igt@gem_exec_fence@submit.html
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#5107])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-6/igt@gem_exec_params@rsvd2-dirt.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu-active:
>     - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#3281]) +2 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-cpu-active.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][24] ([i915#3281])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg1-16/igt@gem_exec_reloc@basic-write-gtt.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-glk:          NOTRUN -> [SKIP][25] ([i915#4613]) +1 other test skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-glk1/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_media_vme:
>     - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#284])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg1-16/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_offset@clear:
>     - shard-mtlp:         [PASS][27] -> [ABORT][28] ([i915#10729])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-mtlp-7/igt@gem_mmap_offset@clear.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-mtlp-6/igt@gem_mmap_offset@clear.html
> 
>   * igt@gem_mmap_offset@clear@smem0:
>     - shard-mtlp:         [PASS][29] -> [ABORT][30] ([i915#10029] / [i915#10729])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-mtlp-7/igt@gem_mmap_offset@clear@smem0.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-mtlp-6/igt@gem_mmap_offset@clear@smem0.html
> 
>   * igt@gem_mmap_wc@coherency:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4083])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-6/igt@gem_mmap_wc@coherency.html
> 
>   * igt@gem_partial_pwrite_pread@reads-snoop:
>     - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#3282])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg1-16/igt@gem_partial_pwrite_pread@reads-snoop.html
> 
>   * igt@gem_partial_pwrite_pread@write-uncached:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3282])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-6/igt@gem_partial_pwrite_pread@write-uncached.html
>     - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#3282]) +2 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-2/igt@gem_partial_pwrite_pread@write-uncached.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-glk:          NOTRUN -> [WARN][35] ([i915#2658])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-glk7/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#4270])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-2/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#3282] / [i915#3297])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#3297])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-2/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][39] -> [ABORT][40] ([i915#5566])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-glk8/igt@gen9_exec_parse@allowed-single.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-glk7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#2527]) +1 other test skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglu:         [PASS][42] -> [ABORT][43] ([i915#9820])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-tglu-9/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         [PASS][44] -> [ABORT][45] ([i915#10131])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#8399])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-2/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_selftest@mock:
>     - shard-glk:          NOTRUN -> [DMESG-WARN][47] ([i915#9311]) +1 other test dmesg-warn
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-glk7/igt@i915_selftest@mock.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-rc-ccs-cc:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#8709]) +11 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-11/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-rc-ccs-cc.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#1769] / [i915#3555])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
>     - shard-snb:          [PASS][50] -> [FAIL][51] ([i915#5956]) +3 other tests fail
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-snb1/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-snb2/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
>     - shard-tglu:         [PASS][52] -> [FAIL][53] ([i915#11808]) +1 other test fail
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-180:
>     - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#5286]) +3 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#3638]) +2 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#4538] / [i915#5190])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_joiner@invalid-modeset-force-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#10656])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-2/igt@kms_big_joiner@invalid-modeset-force-joiner.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [SKIP][58] +94 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-glk1/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc:
>     - shard-snb:          NOTRUN -> [SKIP][59] +19 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-snb2/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#12042])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-c-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#10307] / [i915#6095]) +103 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-11/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-c-dp-4.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#6095]) +48 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-multiple:
>     - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#7828]) +3 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_chamelium_frames@hdmi-crc-multiple.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#7828])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-6/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-fast:
>     - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#7828])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg1-16/igt@kms_chamelium_hpd@dp-hpd-fast.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#9424])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-6/igt@kms_content_protection@lic-type-1.html
>     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#9424])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-2/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#7118] / [i915#9424])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_content_protection@uevent@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][69] ([i915#1339] / [i915#7173])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>     - shard-dg1:          NOTRUN -> [SKIP][70]
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg1-16/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [PASS][71] -> [FAIL][72] ([i915#2346])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4103] / [i915#4213])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#4103]) +1 other test skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#3555] / [i915#3840]) +1 other test skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#658])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][77] +3 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-dg1:          NOTRUN -> [SKIP][78] ([i915#9934])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg1-16/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#2672] / [i915#3555])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#2672])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#1825]) +20 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#3458]) +2 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][83] +12 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#5354]) +2 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
>     - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#3458])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#9766])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg1-16/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#8708]) +1 other test skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#3023]) +8 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#3555] / [i915#8228])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_plane@pixel-format-source-clamping:
>     - shard-mtlp:         [PASS][90] -> [ABORT][91] ([i915#10354]) +3 other tests abort
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-mtlp-6/igt@kms_plane@pixel-format-source-clamping.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-mtlp-5/igt@kms_plane@pixel-format-source-clamping.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][92] ([i915#8292])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][93] ([i915#8292])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#9423]) +4 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#9728]) +3 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#9423]) +11 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-dp-4.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#9685])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [PASS][98] -> [SKIP][99] ([i915#9340])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [PASS][100] -> [SKIP][101] ([i915#9519])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>     - shard-rkl:          [PASS][102] -> [SKIP][103] ([i915#9519]) +1 other test skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#6524])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-2/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#11520]) +1 other test skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#9683])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-primary-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#1072] / [i915#9732]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-6/igt@kms_psr@fbc-pr-primary-blt.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#1072] / [i915#9732]) +1 other test skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg1-16/igt@kms_psr@fbc-psr2-cursor-blt.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#3555])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-6/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_setmode@invalid-clone-exclusive-crtc:
>     - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#3555])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg1-16/igt@kms_setmode@invalid-clone-exclusive-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#8623])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#3555]) +1 other test skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-2/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#11920])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@kms_vrr@lobf.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-glk:          NOTRUN -> [SKIP][115] ([i915#2437]) +1 other test skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-glk1/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#9917])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-4/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@syncobj_wait@invalid-wait-zero-handles:
>     - shard-dg1:          NOTRUN -> [FAIL][117] ([i915#9781])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg1-16/igt@syncobj_wait@invalid-wait-zero-handles.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@hostile:
>     - shard-tglu:         [FAIL][118] ([i915#11980]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-tglu-10/igt@gem_ctx_persistence@hostile.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-tglu-5/igt@gem_ctx_persistence@hostile.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-rkl:          [FAIL][120] ([i915#2842]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-2/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          [ABORT][122] ([i915#9820]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg1-16/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          [INCOMPLETE][124] -> [PASS][125] +1 other test pass
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
>     - shard-dg1:          [FAIL][126] ([i915#3591]) -> [PASS][127] +1 other test pass
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [SKIP][128] ([i915#7984]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-mtlp-1/igt@i915_power@sanity.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-mtlp-2/igt@i915_power@sanity.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition:
>     - shard-snb:          [FAIL][130] ([i915#5956]) -> [PASS][131] +1 other test pass
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-snb7/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-snb1/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-snb:          [SKIP][132] -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-snb6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-snb4/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-snb:          [INCOMPLETE][134] ([i915#4839]) -> [PASS][135] +1 other test pass
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-snb2/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          [SKIP][136] ([i915#3555] / [i915#8228]) -> [PASS][137]
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-5/igt@kms_hdr@static-toggle-suspend.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [SKIP][138] ([i915#4281]) -> [PASS][139]
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-rkl:          [SKIP][140] ([i915#9519]) -> [PASS][141]
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-rkl-4/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-rkl-3/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg2:          [FAIL][142] ([IGT#2]) -> [PASS][143]
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-6/igt@kms_sysfs_edid_timing.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-11/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>     - shard-snb:          [FAIL][144] ([i915#9196]) -> [PASS][145] +1 other test pass
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-snb1/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [FAIL][146] ([i915#4349]) -> [PASS][147] +4 other tests pass
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-5/igt@perf_pmu@busy-double-start@vecs1.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_selftest@mock:
>     - shard-dg1:          [DMESG-WARN][148] ([i915#9311]) -> [DMESG-WARN][149] ([i915#1982] / [i915#9311])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg1-15/igt@i915_selftest@mock.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg1-15/igt@i915_selftest@mock.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg2:          [SKIP][150] ([i915#7118] / [i915#9424]) -> [FAIL][151] ([i915#1339] / [i915#7173])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-5/igt@kms_content_protection@uevent.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-11/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-dg2:          [SKIP][152] ([i915#11453]) -> [SKIP][153] ([i915#11453] / [i915#3359])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         [SKIP][154] ([i915#8810]) -> [ABORT][155] ([i915#10354])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
>     - shard-dg2:          [SKIP][156] ([i915#10433] / [i915#3458]) -> [SKIP][157] ([i915#3458])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][158] ([i915#3458]) -> [SKIP][159] ([i915#10433] / [i915#3458]) +1 other test skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          [SKIP][160] ([i915#6953] / [i915#9423]) -> [FAIL][161] ([i915#8292])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-5/igt@kms_plane_scaling@intel-max-src-size.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_psr@fbc-psr2-primary-mmap-cpu:
>     - shard-dg2:          [SKIP][162] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][163] ([i915#1072] / [i915#9732]) +5 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-11/igt@kms_psr@fbc-psr2-primary-mmap-cpu.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-5/igt@kms_psr@fbc-psr2-primary-mmap-cpu.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-dg2:          [SKIP][164] ([i915#1072] / [i915#9732]) -> [SKIP][165] ([i915#1072] / [i915#9673] / [i915#9732]) +19 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-5/igt@kms_psr@psr2-primary-mmap-gtt.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-11/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   * igt@kms_rotation_crc@bad-tiling:
>     - shard-dg2:          [SKIP][166] ([i915#11131]) -> [SKIP][167] ([i915#11131] / [i915#4235]) +1 other test skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-5/igt@kms_rotation_crc@bad-tiling.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-11/igt@kms_rotation_crc@bad-tiling.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-dg2:          [SKIP][168] ([i915#11131] / [i915#5190]) -> [SKIP][169] ([i915#11131] / [i915#4235] / [i915#5190]) +1 other test skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-dg2:          [SKIP][170] ([i915#11131] / [i915#4235] / [i915#5190]) -> [SKIP][171] ([i915#11131] / [i915#5190])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15385/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/shard-dg2-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [i915#10029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10029
>   [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10354
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10729
>   [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
>   [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#11980]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980
>   [i915#12042]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12042
>   [i915#12179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12179
>   [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3778
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#5107]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5107
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7016]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7016
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9728]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9728
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15385 -> Patchwork_138405v2
> 
>   CI-20190529: 20190529
>   CI_DRM_15385: bd6c4b2266ebc908d55e8ec3f419b832ebdc3945 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8011: 26dca87f1252b7f6f0c0f833050256f0244d61e9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_138405v2: bd6c4b2266ebc908d55e8ec3f419b832ebdc3945 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138405v2/index.html
