Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF58434F46
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 17:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC58F6E084;
	Wed, 20 Oct 2021 15:47:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C989D6E084
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 15:47:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="315015773"
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="315015773"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 08:40:08 -0700
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="594706394"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 08:40:06 -0700
Date: Wed, 20 Oct 2021 18:40:02 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Jose Souza <jose.souza@intel.com>, Jani Nikula <jani.nikula@intel.com>
Message-ID: <20211020154002.GC1662819@ideak-desk.fi.intel.com>
References: <20211018094154.1407705-1-imre.deak@intel.com>
 <163465475309.5187.8267112449750521102@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163465475309.5187.8267112449750521102@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Fix_link_parameter_use_in_lack_of_a_valid_DPCD_=28r?=
 =?utf-8?q?ev2=29?=
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

On Tue, Oct 19, 2021 at 02:45:53PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Fix link parameter use in lack of a valid DPCD (rev2)
> URL   : https://patchwork.freedesktop.org/series/95948/
> State : success

Pushed to drm-intel-next, thanks for the reviews.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10753_full -> Patchwork_21374_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21374_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][1] ([i915#3002])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl3/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-tglb:         [PASS][2] -> [INCOMPLETE][3] ([i915#1373])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-tglb1/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_ctx_param@set-priority-not-supported:
>     - shard-iclb:         NOTRUN -> [SKIP][4] ([fdo#109314])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/igt@gem_ctx_param@set-priority-not-supported.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hostile:
>     - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-snb7/igt@gem_ctx_persistence@legacy-engines-hostile.html
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-tglb:         NOTRUN -> [FAIL][6] ([i915#2410])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][7] -> [TIMEOUT][8] ([i915#2369] / [i915#3063] / [i915#3648])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-tglb2/igt@gem_eio@unwedge-stress.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb2/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][9] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-glk9/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_params@no-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][14] ([fdo#109283])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb4/igt@gem_exec_params@no-blt.html
> 
>   * igt@gem_exec_params@secure-non-master:
>     - shard-iclb:         NOTRUN -> [SKIP][15] ([fdo#112283])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb4/igt@gem_exec_params@secure-non-master.html
> 
>   * igt@gem_exec_schedule@u-semaphore-user:
>     - shard-snb:          NOTRUN -> [SKIP][16] ([fdo#109271]) +195 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-snb7/igt@gem_exec_schedule@u-semaphore-user.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-kbl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#2190])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl3/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - shard-tglb:         NOTRUN -> [SKIP][18] ([fdo#111656])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-tglb:         NOTRUN -> [WARN][19] ([i915#2658])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-tglb:         NOTRUN -> [SKIP][20] ([i915#4270])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-iclb:         NOTRUN -> [SKIP][21] ([i915#4270])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb7/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#768]) +1 similar issue
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][23] ([i915#180])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl1/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3323])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl6/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#3297]) +2 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb4/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-tglb:         NOTRUN -> [FAIL][26] ([i915#3318])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl3/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen7_exec_parse@basic-rejected:
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#109289]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb3/igt@gen7_exec_parse@basic-rejected.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][30] -> [FAIL][31] ([i915#454])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-tglb:         NOTRUN -> [WARN][32] ([i915#2681])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_async_flips@crc:
>     - shard-skl:          NOTRUN -> [FAIL][33] ([i915#4272])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl3/igt@kms_async_flips@crc.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition:
>     - shard-tglb:         NOTRUN -> [SKIP][34] ([i915#1769])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/igt@kms_atomic_transition@plane-all-modeset-transition.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>     - shard-glk:          [PASS][35] -> [DMESG-WARN][36] ([i915#118])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#110725] / [fdo#111614])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb7/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3777])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][39] ([i915#3743])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#111615]) +2 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +241 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#110723])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_bw@linear-tiling-4-displays-1920x1080p:
>     - shard-apl:          NOTRUN -> [FAIL][43] ([i915#4299]) +2 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl3/igt@kms_bw@linear-tiling-4-displays-1920x1080p.html
> 
>   * igt@kms_bw@linear-tiling-4-displays-2560x1440p:
>     - shard-kbl:          NOTRUN -> [FAIL][44] ([i915#4299])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl3/igt@kms_bw@linear-tiling-4-displays-2560x1440p.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109278] / [i915#3886]) +5 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-glk:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#3886])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-glk9/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][47] ([i915#3689] / [i915#3886])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb3/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#3886]) +9 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl6/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl5/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#3689]) +3 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][52] ([fdo#109271]) +41 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-glk9/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-crc-fast:
>     - shard-snb:          NOTRUN -> [SKIP][53] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-snb7/igt@kms_chamelium@dp-crc-fast.html
> 
>   * igt@kms_chamelium@vga-edid-read:
>     - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109284] / [fdo#111827]) +5 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb7/igt@kms_chamelium@vga-edid-read.html
>     - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl5/igt@kms_chamelium@vga-edid-read.html
> 
>   * igt@kms_chamelium@vga-hpd:
>     - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [fdo#111827]) +13 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl6/igt@kms_chamelium@vga-hpd.html
> 
>   * igt@kms_chamelium@vga-hpd-without-ddc:
>     - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [fdo#111827]) +10 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl3/igt@kms_chamelium@vga-hpd-without-ddc.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
>     - shard-tglb:         NOTRUN -> [SKIP][58] ([fdo#109284] / [fdo#111827]) +4 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-75:
>     - shard-glk:          NOTRUN -> [SKIP][59] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-glk9/igt@kms_color_chamelium@pipe-d-ctm-0-75.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#111828])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-tglb:         [PASS][61] -> [INCOMPLETE][62] ([i915#2411] / [i915#2828] / [i915#456])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][63] ([i915#3319])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109278] / [fdo#109279]) +1 similar issue
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#109279] / [i915#3359]) +2 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-max-size-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#3359])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-max-size-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-suspend:
>     - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271]) +155 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
>     - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109274] / [fdo#109278])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb2/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [PASS][69] -> [FAIL][70] ([i915#2346])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@pipe-d-single-bo:
>     - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#533]) +2 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl4/igt@kms_cursor_legacy@pipe-d-single-bo.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#533])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl5/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109274]) +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb4/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>     - shard-skl:          [PASS][74] -> [FAIL][75] ([i915#79])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
>     - shard-glk:          [PASS][76] -> [FAIL][77] ([i915#79])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [PASS][78] -> [FAIL][79] ([i915#2122])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][80] ([i915#180]) +1 similar issue
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>     - shard-iclb:         [PASS][81] -> [SKIP][82] ([i915#3701])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2672])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
>     - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#2587])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109280]) +5 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
>     - shard-glk:          [PASS][86] -> [FAIL][87] ([i915#2546])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-glk9/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-glk9/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:
>     - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#111825]) +13 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-kbl:          [PASS][89] -> [DMESG-WARN][90] ([i915#180]) +4 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
>     - shard-tglb:         [PASS][91] -> [INCOMPLETE][92] ([i915#1373] / [i915#2828])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-tglb6/igt@kms_hdr@bpc-switch-suspend.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb7/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-iclb:         NOTRUN -> [SKIP][93] ([i915#1187])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb4/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-apl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#533])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][95] ([fdo#108145] / [i915#265])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][96] ([fdo#108145] / [i915#265]) +1 similar issue
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
>     - shard-skl:          NOTRUN -> [FAIL][97] ([fdo#108145] / [i915#265])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][98] -> [FAIL][99] ([fdo#108145] / [i915#265]) +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][100] ([i915#265])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:
>     - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109278]) +10 similar issues
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-none:
>     - shard-iclb:         NOTRUN -> [SKIP][102] ([i915#3536])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb2/igt@kms_plane_lowres@pipe-a-tiling-none.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
>     - shard-tglb:         NOTRUN -> [SKIP][103] ([i915#2920])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>     - shard-apl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#658]) +4 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>     - shard-skl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#658])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
>     - shard-iclb:         NOTRUN -> [SKIP][106] ([i915#658])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>     - shard-kbl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#658]) +4 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_su@frontbuffer:
>     - shard-tglb:         NOTRUN -> [SKIP][108] ([i915#1911])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/igt@kms_psr2_su@frontbuffer.html
> 
>   * igt@kms_psr@psr2_basic:
>     - shard-tglb:         NOTRUN -> [FAIL][109] ([i915#132] / [i915#3467])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb3/igt@kms_psr@psr2_basic.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109441]) +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [PASS][111] -> [SKIP][112] ([fdo#109441]) +2 similar issues
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-iclb2/igt@kms_psr@psr2_suspend.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb7/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [PASS][113] -> [DMESG-WARN][114] ([i915#180] / [i915#295])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_vblank@pipe-d-query-forked-busy:
>     - shard-skl:          NOTRUN -> [SKIP][115] ([fdo#109271]) +34 similar issues
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl3/igt@kms_vblank@pipe-d-query-forked-busy.html
> 
>   * igt@nouveau_crc@pipe-b-source-rg:
>     - shard-iclb:         NOTRUN -> [SKIP][116] ([i915#2530]) +1 similar issue
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb5/igt@nouveau_crc@pipe-b-source-rg.html
> 
>   * igt@nouveau_crc@pipe-c-ctx-flip-detection:
>     - shard-tglb:         NOTRUN -> [SKIP][117] ([i915#2530]) +1 similar issue
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/igt@nouveau_crc@pipe-c-ctx-flip-detection.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [PASS][118] -> [FAIL][119] ([i915#1542])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-skl1/igt@perf@polling-parameterized.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-skl3/igt@perf@polling-parameterized.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109289])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:
>     - shard-iclb:         NOTRUN -> [SKIP][121] ([fdo#109291])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html
> 
>   * igt@prime_nv_pcopy@test3_3:
>     - shard-tglb:         NOTRUN -> [SKIP][122] ([fdo#109291])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/igt@prime_nv_pcopy@test3_3.html
> 
>   * igt@sysfs_clients@create:
>     - shard-apl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#2994]) +3 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-apl1/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-iclb:         NOTRUN -> [SKIP][124] ([i915#2994])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb2/igt@sysfs_clients@sema-50.html
>     - shard-kbl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-kbl4/igt@sysfs_clients@sema-50.html
> 
>   * igt@sysfs_clients@split-25:
>     - shard-tglb:         NOTRUN -> [SKIP][126] ([i915#2994])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-tglb1/igt@sysfs_clients@split-25.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-glk:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#2994])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-glk9/igt@sysfs_clients@split-50.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-iclb:         NOTRUN -> [SKIP][128] ([fdo#109307])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/shard-iclb8/igt@tools_test@sysfs_l3_parity.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [DMESG-WARN][129] ([i915#180]) -> [PASS][130] +6 similar issues
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patc
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/index.html
