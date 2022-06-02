Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BB353BAA5
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 16:24:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB62C112E17;
	Thu,  2 Jun 2022 14:24:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C091112E13
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 14:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654179891; x=1685715891;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=H9FtxCZfxvSzGoRQd+TenRqacxFxtPM/lYoIZNHeFCY=;
 b=nl/VnB02C8lfESNFWgPsVZyo67a88UPLMvic5t+3pzr9u8Y6c6Yv+AbV
 OvpxQpP3hi+6SAMMtKaIr/UD3sjWdvyJD0Nf554UrffBLB6TAnzKavM8q
 hdFVc5t6xwud/WpDSMnCU+Dr8BcaTchUdLt115s5iuXEHBOblTjxkfH3y
 6UUUjBmNG1aCwLpAqMiqoW6XxEwTKuTxQ4O2phEuRutg81zgRfdUaVUzW
 vUdOdxrHTeVgGMbxuJUA6wm968jNOwK9pC2v14ZoKiFpgt9pgXogxzSDM
 tgiPGpKbx2hHYgpmmnfsbRwUQ1nczr0Nwfexs04v/opFeBXJaedFWrvHo w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10365"; a="275971965"
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="275971965"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 07:24:50 -0700
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="680664315"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 07:24:50 -0700
Date: Thu, 2 Jun 2022 07:24:49 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YpjIMY+ixprLSo4A@mdroper-desk1.amr.corp.intel.com>
References: <20220601150725.521468-1-matthew.d.roper@intel.com>
 <165411672858.17293.11095704279955572189@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165411672858.17293.11095704279955572189@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5=3A_SSEU_handling_updates?=
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

On Wed, Jun 01, 2022 at 08:52:08PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: SSEU handling updates
> URL   : https://patchwork.freedesktop.org/series/104611/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11717_full -> Patchwork_104611v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Series applied to drm-intel-gt-next with one minor checkpatch warning
fixed.  Thanks Bala and Tvrtko for the reviews.


Matt

> 
>   
> 
> Participating hosts (10 -> 13)
> ------------------------------
> 
>   Additional (3): shard-rkl shard-dg1 shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_104611v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_flip@wf_vblank-ts-check@a-edp1:
>     - {shard-rkl}:        NOTRUN -> [FAIL][1] +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-rkl-6/igt@kms_flip@wf_vblank-ts-check@a-edp1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1:
>     - {shard-rkl}:        NOTRUN -> [SKIP][2] +3 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - {shard-tglu}:       NOTRUN -> [DMESG-WARN][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-tglu-3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>   * igt@perf_pmu@module-unload:
>     - {shard-tglu}:       NOTRUN -> [FAIL][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-tglu-5/igt@perf_pmu@module-unload.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104611v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_buddy@all@buddy_alloc_smoke:
>     - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#5800])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-skl2/igt@drm_buddy@all@buddy_alloc_smoke.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl7/igt@drm_buddy@all@buddy_alloc_smoke.html
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#658])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb2/igt@feature_discovery@psr2.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb5/igt@feature_discovery@psr2.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#5784]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-tglb7/igt@gem_eio@kms.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-tglb1/igt@gem_eio@kms.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [PASS][11] -> [TIMEOUT][12] ([i915#3070])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb7/igt@gem_eio@unwedge-stress.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb8/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][13] ([i915#2842])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-kbl:          [PASS][14] -> [FAIL][15] ([i915#2842]) +3 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][16] -> [FAIL][17] ([i915#2842])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-iclb:         [PASS][18] -> [FAIL][19] ([i915#2842]) +1 similar issue
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb5/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         NOTRUN -> [FAIL][20] ([i915#2842])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_params@no-bsd:
>     - shard-iclb:         NOTRUN -> [SKIP][21] ([fdo#109283])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@gem_exec_params@no-bsd.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][22] -> [SKIP][23] ([i915#2190])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-tglb2/igt@gem_huc_copy@huc-copy.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl4/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#4613])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-apl2/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][26] ([i915#4613])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl9/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-iclb:         NOTRUN -> [WARN][28] ([i915#2658])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][29] ([i915#768])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][30] ([i915#4991])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl9/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gen7_exec_parse@chained-batch:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109289])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@gen7_exec_parse@chained-batch.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][32] -> [DMESG-WARN][33] ([i915#5566] / [i915#716])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-glk7/igt@gen9_exec_parse@allowed-single.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-glk7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-skl:          NOTRUN -> [FAIL][34] ([i915#454])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl9/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][35] ([i915#5286])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#110723])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_joiner@2x-modeset:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([i915#2705])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@kms_big_joiner@2x-modeset.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl10/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl4/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109278] / [i915#3886]) +2 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@vga-frame-dump:
>     - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-apl2/igt@kms_chamelium@vga-frame-dump.html
> 
>   * igt@kms_chamelium@vga-hpd-fast:
>     - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl4/igt@kms_chamelium@vga-hpd-fast.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-5:
>     - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-25:
>     - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109284] / [fdo#111827])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@kms_color_chamelium@pipe-c-ctm-0-25.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109300] / [fdo#111066])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109278] / [fdo#109279])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +1 similar issue
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen:
>     - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271]) +91 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109278]) +10 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109274] / [fdo#109278])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@pipe-d-single-bo:
>     - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#533])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl10/igt@kms_cursor_legacy@pipe-d-single-bo.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-4tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][53] ([i915#5287])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-4tiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          NOTRUN -> [FAIL][54] ([i915#4767])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109274])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271]) +83 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl9/igt@kms_flip@2x-flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@2x-nonexisting-fb:
>     - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271]) +97 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-apl1/igt@kms_flip@2x-nonexisting-fb.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-apl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180]) +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109280]) +10 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-kbl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#533])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-kbl:          NOTRUN -> [FAIL][62] ([fdo#108145] / [i915#265])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][63] ([i915#265])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][64] ([fdo#108145] / [i915#265])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-edp-1:
>     - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#5176]) +2 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#658]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl4/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#658]) +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-apl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#658]) +1 similar issue
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-iclb:         [PASS][69] -> [SKIP][70] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb3/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [PASS][71] -> [SKIP][72] ([fdo#109441]) +1 similar issue
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb5/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2437])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-apl1/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@prime_nv_pcopy@test3_4:
>     - shard-iclb:         NOTRUN -> [SKIP][74] ([fdo#109291])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@prime_nv_pcopy@test3_4.html
> 
>   * igt@sw_sync@sync_merge_same:
>     - shard-apl:          NOTRUN -> [FAIL][75] ([i915#6140])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-apl2/igt@sw_sync@sync_merge_same.html
> 
>   * igt@sw_sync@sync_multi_timeline_wait:
>     - shard-iclb:         NOTRUN -> [FAIL][76] ([i915#6140])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@sw_sync@sync_multi_timeline_wait.html
> 
>   * igt@sysfs_clients@busy:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#2994])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@sysfs_clients@busy.html
> 
>   * igt@sysfs_clients@create:
>     - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2994])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-apl1/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl7/igt@sysfs_clients@sema-25.html
> 
>   * igt@sysfs_clients@split-10:
>     - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2994])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl10/igt@sysfs_clients@split-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - shard-tglb:         [TIMEOUT][81] ([i915#3063]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-tglb1/igt@gem_eio@in-flight-contexts-1us.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-tglb2/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-apl:          [TIMEOUT][83] ([i915#3063]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-apl8/igt@gem_eio@in-flight-contexts-immediate.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-apl3/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [SKIP][85] ([i915#4525]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb6/igt@gem_exec_balancer@parallel-balancer.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][87] ([i915#2842]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][89] ([i915#2842]) -> [PASS][90] +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][91] ([i915#2842]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [FAIL][93] ([i915#2842]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_flush@basic-wb-rw-before-default:
>     - shard-snb:          [SKIP][95] ([fdo#109271]) -> [PASS][96] +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-snb6/igt@gem_exec_flush@basic-wb-rw-before-default.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-snb2/igt@gem_exec_flush@basic-wb-rw-before-default.html
> 
>   * igt@gem_exec_schedule@wide@rcs0:
>     - shard-apl:          [FAIL][97] ([i915#5965]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-apl3/igt@gem_exec_schedule@wide@rcs0.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-apl1/igt@gem_exec_schedule@wide@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked-all:
>     - shard-skl:          [INCOMPLETE][99] ([i915#5843]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-skl4/igt@gem_exec_whisper@basic-fds-forked-all.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl10/igt@gem_exec_whisper@basic-fds-forked-all.html
> 
>   * igt@gem_exec_whisper@basic-queues-priority:
>     - shard-iclb:         [INCOMPLETE][101] ([i915#5498]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb7/igt@gem_exec_whisper@basic-queues-priority.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-tglb:         [DMESG-WARN][103] ([i915#5591]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-tglb3/igt@i915_selftest@live@hangcheck.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-tglb6/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-kbl:          [DMESG-WARN][105] ([i915#180]) -> [PASS][106] +1 similar issue
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-kbl4/igt@i915_suspend@debugfs-reader.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl4/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [DMESG-WARN][107] ([i915#180]) -> [PASS][108] +2 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
>     - shard-skl:          [FAIL][109] ([i915#2122]) -> [PASS][110] +1 similar issue
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-skl2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl7/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
>     - shard-apl:          [FAIL][111] ([i915#79]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][113] ([i915#3701]) -> [PASS][114] +1 similar issue
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
>     - shard-kbl:          [FAIL][115] -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-kbl3/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl6/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         [SKIP][117] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb5/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [SKIP][119] ([fdo#109441]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-iclb:         [SKIP][121] ([i915#5519]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@perf@short-reads:
>     - shard-skl:          [FAIL][123] ([i915#51]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-skl4/igt@perf@short-reads.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl1/igt@perf@short-reads.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         [FAIL][125] ([i915#2852]) -> [FAIL][126] ([i915#2842])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          [SKIP][127] ([fdo#109271]) -> [SKIP][128] ([fdo#109271] / [i915#1888])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-skl9/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl7/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:
>     - shard-skl:          [SKIP][129] ([fdo#109271] / [i915#1888]) -> [SKIP][130] ([fdo#109271]) +1 similar issue
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-skl1/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl6/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-iclb:         [SKIP][131] ([i915#2920]) -> [SKIP][132] ([i915#658])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-iclb:         [FAIL][133] ([i915#5939]) -> [SKIP][134] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-iclb5/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@runner@aborted:
>     - shard-skl:          ([FAIL][135], [FAIL][136]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][137], [FAIL][138], [FAIL][139]) ([i915#2029] / [i915#3002] / [i915#4312] / [i915#5257])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-skl4/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-skl6/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl3/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl3/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-skl9/igt@runner@aborted.html
>     - shard-kbl:          ([FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-kbl3/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-kbl4/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-kbl4/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/shard-kbl4/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl7/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl3/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl4/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/shard-kbl4/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4929]: https://gitlab.freedesktop.org/drm/intel/issues/4929
>   [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
>   [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
>   [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5264]: https://gitlab.freedesktop.org/drm/intel/issues/5264
>   [i915#5266]: https://gitlab.freedesktop.org/drm/intel/issues/5266
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5303]: https://gitlab.freedesktop.org/drm/intel/issues/5303
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5498]: https://gitlab.freedesktop.org/drm/intel/issues/5498
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5800]: https://gitlab.freedesktop.org/drm/intel/issues/5800
>   [i915#5843]: https://gitlab.freedesktop.org/drm/intel/issues/5843
>   [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#5965]: https://gitlab.freedesktop.org/drm/intel/issues/5965
>   [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
>   [i915#6076]: https://gitlab.freedesktop.org/drm/intel/issues/6076
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
>   [i915#6141]: https://gitlab.freedesktop.org/drm/intel/issues/6141
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11717 -> Patchwork_104611v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11717: 9b2cd0320680e7397a9d7bd18eeed5e6a8b3f713 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6504: b31fd736fe7c30a111cca9a76255cad7c18d58db @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104611v1: 9b2cd0320680e7397a9d7bd18eeed5e6a8b3f713 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104611v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
