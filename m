Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DF14D6607
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 17:24:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF8310E1F9;
	Fri, 11 Mar 2022 16:24:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C57210E1F9
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 16:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647015849; x=1678551849;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=0QJdT4GgjGYjcijH+JdECIjzxPwY11qYkTRjI0QpyVU=;
 b=i/cRv4tOeqh5QKswip5TsPe7+Q7R8KmCkZaMZY+iMMnnkncz7sKDcW6y
 K0FgmwaSEgP8VK9asWkOqevmJTFQHysEOfgSIN2CRg9T1D0TRegyjWUGu
 hZKKmOhSvOmOwYqHpBEvI+yltP15CVQAtkmpf/tVnY/B5ZraMcd4RspFF
 KWFpoAGAyY+VOAgwd3lEfvL6lPjnQ3pBUBmEpB6hv2N9cx2Uiltq4uh40
 pn6bsG/oGsIgL/Jaduw36JwQXBgtn/WFIpR31fYEjk0ea5lS/GSqav7ix
 NYPFD64OxJ7NNJSzzQTkNBXrFpvPkyMelwSlX1cwHjzEUdf/AK/Umn7YN Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="235554482"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="235554482"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 08:24:08 -0800
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="612200082"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 08:24:08 -0800
Date: Fri, 11 Mar 2022 08:24:07 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yit3p/8/KIpQGNoS@mdroper-desk1.amr.corp.intel.com>
References: <20220311062835.163744-1-matthew.d.roper@intel.com>
 <164699357662.23982.4766462922393255525@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164699357662.23982.4766462922393255525@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Remove_GEN12=5FSFC=5FDONE=5FMAX_from_register_defs_?=
 =?utf-8?q?header?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 11, 2022 at 10:12:56AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gt: Remove GEN12_SFC_DONE_MAX from register defs header
> URL   : https://patchwork.freedesktop.org/series/101270/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11350_full -> Patchwork_22539_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 

Applied to drm-intel-gt-next.  Thanks Jani for the review.


Matt

>   
> 
> Participating hosts (13 -> 12)
> ------------------------------
> 
>   Missing    (1): shard-dg1 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22539_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@api_intel_bb@destroy-bb:
>     - {shard-tglu}:       [PASS][1] -> [SKIP][2] +69 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-2/igt@api_intel_bb@destroy-bb.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@api_intel_bb@destroy-bb.html
> 
>   * igt@feature_discovery@display-4x:
>     - {shard-tglu}:       [SKIP][3] ([i915#1839]) -> [SKIP][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-2/igt@feature_discovery@display-4x.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@feature_discovery@display-4x.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
>     - {shard-tglu}:       NOTRUN -> [SKIP][5] +9 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - {shard-tglu}:       [SKIP][6] ([fdo#110542]) -> [SKIP][7]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-2/igt@gem_userptr_blits@coherency-sync.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt:
>     - {shard-rkl}:        NOTRUN -> [INCOMPLETE][8] +1 similar issue
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-rkl-5/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - {shard-tglu}:       [PASS][9] -> [DMESG-WARN][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-6/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-1/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - {shard-rkl}:        NOTRUN -> [SKIP][11]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
>     - {shard-tglu}:       [SKIP][12] ([i915#5286]) -> [SKIP][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - {shard-tglu}:       [SKIP][14] ([fdo#111614]) -> [SKIP][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - {shard-tglu}:       [SKIP][16] ([i915#3689] / [i915#3886]) -> [SKIP][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-2/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - {shard-tglu}:       [SKIP][18] ([i915#3689]) -> [SKIP][19] +1 similar issue
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-2/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:
>     - {shard-tglu}:       [SKIP][20] ([fdo#111615] / [i915#3689]) -> [SKIP][21]
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-2/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@hdmi-crc-multiple:
>     - {shard-tglu}:       [SKIP][22] ([fdo#111827]) -> [SKIP][23] +2 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-2/igt@kms_chamelium@hdmi-crc-multiple.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@kms_chamelium@hdmi-crc-multiple.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen:
>     - {shard-tglu}:       [SKIP][24] ([fdo#109279] / [i915#3359]) -> [SKIP][25] +1 similar issue
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-2/igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x32-random:
>     - {shard-tglu}:       [SKIP][26] ([i915#3319]) -> [SKIP][27]
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-2/igt@kms_cursor_crc@pipe-c-cursor-32x32-random.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@kms_cursor_crc@pipe-c-cursor-32x32-random.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-4tiled:
>     - {shard-tglu}:       [SKIP][28] ([i915#5287]) -> [SKIP][29]
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-2/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-4tiled.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-4tiled.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
>     - {shard-tglu}:       [SKIP][30] ([fdo#109274]) -> [SKIP][31] +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:
>     - {shard-tglu}:       [SKIP][32] ([fdo#110189]) -> [SKIP][33] +3 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - {shard-tglu}:       [SKIP][34] ([fdo#109280]) -> [SKIP][35] +7 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
>     - {shard-tglu}:       [SKIP][36] ([fdo#109289]) -> [SKIP][37]
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-2/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - {shard-tglu}:       [SKIP][38] ([fdo#111068] / [i915#658]) -> [SKIP][39]
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - {shard-tglu}:       [SKIP][40] ([fdo#111615]) -> [SKIP][41] +2 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglu-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglu-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22539_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][42] ([i915#4991])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-apl4/igt@gem_create@create-massive.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-skl:          [PASS][43] -> [TIMEOUT][44] ([i915#3063])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-skl8/igt@gem_eio@unwedge-stress.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-skl9/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         NOTRUN -> [DMESG-WARN][45] ([i915#5076])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         NOTRUN -> [FAIL][46] ([i915#2842]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [PASS][47] -> [FAIL][48] ([i915#2842])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_params@no-vebox:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109283])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb4/igt@gem_exec_params@no-vebox.html
> 
>   * igt@gem_exec_whisper@basic-queues-all:
>     - shard-glk:          [PASS][50] -> [DMESG-WARN][51] ([i915#118])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-glk8/igt@gem_exec_whisper@basic-queues-all.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-glk4/igt@gem_exec_whisper@basic-queues-all.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][52] -> [SKIP][53] ([i915#2190])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-tglb8/igt@gem_huc_copy@huc-copy.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglb6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-iclb:         NOTRUN -> [SKIP][54] ([i915#4613])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb8/igt@gem_lmem_swapping@heavy-random.html
>     - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#4613])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-apl8/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-glk:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#4613])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-glk7/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#4613])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-skl8/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_pxp@create-regular-buffer:
>     - shard-iclb:         NOTRUN -> [SKIP][58] ([i915#4270])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb8/igt@gem_pxp@create-regular-buffer.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-tglb:         NOTRUN -> [SKIP][59] ([i915#4270])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglb2/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][60] ([i915#768]) +3 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb4/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-glk:          NOTRUN -> [SKIP][61] ([fdo#109271]) +35 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-glk7/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gen3_render_linear_blits:
>     - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#109289])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglb2/igt@gen3_render_linear_blits.html
> 
>   * igt@gen7_exec_parse@basic-rejected:
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109289])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb4/igt@gen7_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-iclb:         NOTRUN -> [SKIP][64] ([i915#2856])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb1/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_pm_lpsp@screens-disabled:
>     - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#1902])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb4/igt@i915_pm_lpsp@screens-disabled.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         NOTRUN -> [WARN][66] ([i915#2684])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#110892])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb1/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][68] ([i915#5286]) +1 similar issue
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#110725] / [fdo#111614])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb8/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][70] ([i915#3743]) +2 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#3777])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][72] ([i915#3763])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>     - shard-glk:          [PASS][73] -> [DMESG-WARN][74] ([i915#118] / [i915#1888])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-glk3/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-glk8/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-glk:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-glk7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271]) +108 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-apl8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_joiner@2x-modeset:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#2705])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb8/igt@kms_big_joiner@2x-modeset.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109278] / [i915#3886]) +4 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb4/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#111615] / [i915#3689])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglb2/igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3886])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-kbl7/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3886]) +6 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-skl8/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-apl7/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>     - shard-glk:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-glk7/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#3689])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglb2/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-crc-multiple:
>     - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-apl7/igt@kms_chamelium@dp-crc-multiple.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-glk:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-glk7/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium@hdmi-audio:
>     - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109284] / [fdo#111827]) +11 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb1/igt@kms_chamelium@hdmi-audio.html
> 
>   * igt@kms_chamelium@hdmi-hpd-after-suspend:
>     - shard-snb:          NOTRUN -> [SKIP][88] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-snb2/igt@kms_chamelium@hdmi-hpd-after-suspend.html
> 
>   * igt@kms_color@pipe-d-ctm-0-5:
>     - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109278] / [i915#1149])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb8/igt@kms_color@pipe-d-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-max:
>     - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [fdo#111827]) +9 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-skl8/igt@kms_color_chamelium@pipe-b-ctm-max.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-apl:          NOTRUN -> [TIMEOUT][91] ([i915#1319])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-apl1/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109278] / [fdo#109279])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb4/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:
>     - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109278]) +18 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb4/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
>     - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109274] / [fdo#109278]) +1 similar issue
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-tglb:         NOTRUN -> [SKIP][95] ([fdo#109274] / [fdo#111825]) +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglb2/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#533]) +1 similar issue
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-apl4/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-4tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#5287]) +1 similar issue
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-4tiled.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109274]) +3 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb8/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:
>     - shard-glk:          [PASS][99] -> [FAIL][100] ([i915#79])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [PASS][101] -> [DMESG-WARN][102] ([i915#180]) +7 similar issues
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@c-edp1:
>     - shard-skl:          [PASS][103] -> [FAIL][104] ([i915#2122]) +1 similar issue
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-skl1/igt@kms_flip@plain-flip-ts-check@c-edp1.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-skl1/igt@kms_flip@plain-flip-ts-check@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][105] ([fdo#109271]) +114 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-skl8/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite:
>     - shard-tglb:         NOTRUN -> [SKIP][106] ([fdo#109280] / [fdo#111825]) +4 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][107] ([fdo#109280]) +19 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-apl:          [PASS][108] -> [DMESG-WARN][109] ([i915#180]) +3 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-apl8/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render:
>     - shard-kbl:          NOTRUN -> [SKIP][110] ([fdo#109271]) +4 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-kbl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - shard-kbl:          [PASS][111] -> [DMESG-WARN][112] ([i915#180] / [i915#1982])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#533]) +1 similar issue
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-skl:          NOTRUN -> [FAIL][114] ([fdo#108145] / [i915#265]) +1 similar issue
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
>     - shard-kbl:          NOTRUN -> [FAIL][115] ([fdo#108145] / [i915#265])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][116] -> [FAIL][117] ([fdo#108145] / [i915#265])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-glk:          NOTRUN -> [FAIL][118] ([fdo#108145] / [i915#265])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-glk7/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-4:
>     - shard-iclb:         NOTRUN -> [SKIP][119] ([i915#5288])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb4/igt@kms_plane_lowres@pipe-a-tiling-4.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-yf:
>     - shard-iclb:         NOTRUN -> [SKIP][120] ([i915#3536])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb4/igt@kms_plane_lowres@pipe-c-tiling-yf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-apl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#658])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-apl4/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#658])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-glk7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-skl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#658]) +3 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-skl8/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][124] ([fdo#109441]) +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-iclb:         [PASS][125] -> [SKIP][126] ([fdo#109441]) +2 similar issues
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-apl:          NOTRUN -> [FAIL][127] ([IGT#2])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-apl8/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [PASS][128] -> [DMESG-WARN][129] ([i915#180] / [i915#295])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-iclb:         NOTRUN -> [SKIP][130] ([fdo#109502])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-iclb4/igt@kms_vrr@flipline.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-apl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#2437])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/shard-apl8/i
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22539/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
