Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 892854D217C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 20:30:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF5F110E437;
	Tue,  8 Mar 2022 19:30:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B6E710E437
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 19:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646767810; x=1678303810;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=+VUB/Mjh/i3FPetqOhj76NOPMTfq14tpS8dXExu0WsQ=;
 b=UwPG7xYdP0Kk9ZQZctQcIsBvFfet4FoCo9dcAD+bNo3b0VEgrEJ1zFXs
 peMjSuylcxzBspq1tr0ueOBra7W2JsrPVegaStbGAS0NNy+e020T9W8HZ
 2xvC7o5+GTdZGM+t8oGsAw6ylu8iz7no85TcMywkE7HcjvstgsaOhqfIs
 H2zWxNpqNGyJEsq+iySYc4LHNZBseskIEYA4HOZ9Yi2wz4b78yZFagT08
 aEVJM2R6T5d++FwKmfcvP4EOLAp2lgxlNWJHrRQu9g7PYzFfroUHAcUHh
 u9K/i2BR7OXLyIcIOWv/MVTujE0ICCTRShhHw3Zwa+mN5oDzlyR7yqmUr g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="254522798"
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="254522798"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 11:30:09 -0800
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="537702598"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 11:30:09 -0800
Date: Tue, 8 Mar 2022 11:30:07 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yieuv1lsqAhHqwvI@mdroper-desk1.amr.corp.intel.com>
References: <20220301052952.1706597-1-matthew.d.roper@intel.com>
 <164614330459.8599.7220522081377579194@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164614330459.8599.7220522081377579194@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/xehp=3A_Drop_aux_table_invalidation_on_FlatCCS_platforms?=
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

On Tue, Mar 01, 2022 at 02:01:44PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/xehp: Drop aux table invalidation on FlatCCS platforms
> URL   : https://patchwork.freedesktop.org/series/100867/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11300_full -> Patchwork_22445_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks Lucas for the review.


Matt

> 
>   
> 
> Participating hosts (13 -> 13)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22445_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale}:
>     - shard-iclb:         [PASS][1] -> [SKIP][2] +2 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-iclb8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
> 
>   * {igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5}:
>     - {shard-rkl}:        NOTRUN -> [SKIP][3] +8 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
> 
>   * {igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping}:
>     - shard-iclb:         [PASS][4] -> [INCOMPLETE][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-iclb4/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html
> 
>   * {igt@kms_plane_scaling@upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1-upscale-with-rotation}:
>     - {shard-dg1}:        NOTRUN -> [SKIP][6] +8 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-dg1-12/igt@kms_plane_scaling@upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1-upscale-with-rotation.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_11300_full and Patchwork_22445_full:
> 
> ### New IGT tests (1) ###
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22445_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-tglb:         NOTRUN -> [DMESG-WARN][7] ([i915#5076])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb5/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][8] ([i915#5076])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-kbl1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][9] ([i915#4547])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-skl1/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-sync@rcs0:
>     - shard-tglb:         [PASS][12] -> [SKIP][13] ([i915#2848])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-tglb1/igt@gem_exec_fair@basic-sync@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb6/igt@gem_exec_fair@basic-sync@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-contexts-forked-all:
>     - shard-glk:          [PASS][14] -> [DMESG-WARN][15] ([i915#118])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-glk1/igt@gem_exec_whisper@basic-contexts-forked-all.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-glk1/igt@gem_exec_whisper@basic-contexts-forked-all.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#2190])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-skl5/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-tglb:         NOTRUN -> [SKIP][17] ([i915#4613])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@gem_lmem_swapping@parallel-random-verify.html
>     - shard-apl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#4613])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-apl7/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_pxp@create-regular-context-2:
>     - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#4270]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb5/igt@gem_pxp@create-regular-context-2.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#768])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb3/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-tglb:         NOTRUN -> [SKIP][21] ([fdo#110542])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-tglb:         NOTRUN -> [SKIP][22] ([i915#3297])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-tglb:         NOTRUN -> [SKIP][25] ([i915#2527] / [i915#2856]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][26] -> [DMESG-WARN][27] ([i915#1436] / [i915#716])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-skl6/igt@gen9_exec_parse@allowed-single.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-skl4/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-tglb:         NOTRUN -> [FAIL][28] ([i915#454])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-kbl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#1937])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-kbl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-tglb:         [PASS][30] -> [WARN][31] ([i915#2681] / [i915#2684])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-tglb2/igt@i915_pm_rc6_residency@rc6-fence.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb7/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         NOTRUN -> [WARN][32] ([i915#2684])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rpm@modeset-pc8-residency-stress:
>     - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271]) +89 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-apl3/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][34] -> [INCOMPLETE][35] ([i915#3921])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-snb6/igt@i915_selftest@live@hangcheck.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-snb5/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#110725] / [fdo#111614]) +1 similar issue
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb3/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#111614])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>     - shard-tglb:         NOTRUN -> [SKIP][39] ([fdo#111615]) +2 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb5/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#110723])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278] / [i915#3886]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb3/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
>     - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3886])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-skl5/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-apl3/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#3689]) +2 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb5/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-kbl1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][46] ([fdo#111615] / [i915#3689]) +2 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@kms_ccs@pipe-c-missing-ccs-buffer-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109278]) +4 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb3/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#3742])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb7/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium@hdmi-crc-multiple:
>     - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-skl5/igt@kms_chamelium@hdmi-crc-multiple.html
> 
>   * igt@kms_chamelium@hdmi-mode-timings:
>     - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb3/igt@kms_chamelium@hdmi-mode-timings.html
> 
>   * igt@kms_chamelium@vga-hpd-enable-disable-mode:
>     - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-kbl4/igt@kms_chamelium@vga-hpd-enable-disable-mode.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-5:
>     - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-apl3/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-max:
>     - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@kms_color_chamelium@pipe-d-ctm-max.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#3116] / [i915#3299])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][55] ([i915#1319])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-apl6/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x170-random:
>     - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109278] / [fdo#109279])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-max-size-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][57] ([i915#3359])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-max-size-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#3319])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:
>     - shard-kbl:          NOTRUN -> [SKIP][59] ([fdo#109271]) +23 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#109279] / [i915#3359]) +3 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
>     - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#109274] / [fdo#111825]) +4 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-tglb:         [PASS][62] -> [FAIL][63] ([i915#2346] / [i915#533])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@pipe-d-single-bo:
>     - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#533])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-kbl4/igt@kms_cursor_legacy@pipe-d-single-bo.html
> 
>   * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#3528])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [PASS][66] -> [INCOMPLETE][67] ([i915#180] / [i915#636])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109274])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb8/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          [PASS][69] -> [DMESG-WARN][70] ([i915#180]) +3 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][71] ([fdo#109280] / [fdo#111825]) +7 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109280]) +8 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271]) +37 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-skl5/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][74] -> [FAIL][75] ([i915#1188])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_invalid_mode@clock-too-high:
>     - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#4278])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@kms_invalid_mode@clock-too-high.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-tglb:         NOTRUN -> [SKIP][77] ([i915#1839])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#109289]) +1 similar issue
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#533])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-apl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#533])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-skl5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-apl:          NOTRUN -> [FAIL][81] ([fdo#108145] / [i915#265]) +1 similar issue
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][82] -> [FAIL][83] ([fdo#108145] / [i915#265])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>     - shard-skl:          NOTRUN -> [FAIL][84] ([fdo#108145] / [i915#265])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-yf:
>     - shard-tglb:         NOTRUN -> [SKIP][85] ([fdo#111615] / [fdo#112054])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb5/igt@kms_plane_lowres@pipe-b-tiling-yf.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-none:
>     - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#3536]) +1 similar issue
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb5/igt@kms_plane_lowres@pipe-c-tiling-none.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#111068] / [i915#658])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>     - shard-skl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#658])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-skl5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5 (NEW):
>     - {shard-rkl}:        NOTRUN -> [SKIP][89] ([i915#658])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-rkl-4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr@psr2_primary_blt:
>     - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109441])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb8/igt@kms_psr@psr2_primary_blt.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-tglb:         NOTRUN -> [FAIL][91] ([i915#132] / [i915#3467])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb5/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][92] -> [SKIP][93] ([fdo#109441]) +2 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_rotation_crc@multiplane-rotation:
>     - shard-skl:          [PASS][94] -> [DMESG-WARN][95] ([i915#1982])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-skl10/igt@kms_rotation_crc@multiplane-rotation.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-skl6/igt@kms_rotation_crc@multiplane-rotation.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2437])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-apl6/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@nouveau_crc@pipe-a-source-outp-complete:
>     - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#2530])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb8/igt@nouveau_crc@pipe-a-source-outp-complete.html
> 
>   * igt@nouveau_crc@pipe-b-source-outp-complete:
>     - shard-tglb:         NOTRUN -> [SKIP][98] ([i915#2530]) +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@nouveau_crc@pipe-b-source-outp-complete.html
> 
>   * igt@nouveau_crc@pipe-d-source-rg:
>     - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109278] / [i915#2530])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb3/igt@nouveau_crc@pipe-d-source-rg.html
> 
>   * igt@prime_nv_api@i915_nv_double_import:
>     - shard-tglb:         NOTRUN -> [SKIP][100] ([fdo#109291]) +1 similar issue
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@prime_nv_api@i915_nv_double_import.html
> 
>   * igt@prime_nv_api@i915_self_import_to_different_fd:
>     - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109291]) +1 similar issue
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb8/igt@prime_nv_api@i915_self_import_to_different_fd.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109295])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb8/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-iclb:         NOTRUN -> [SKIP][103] ([i915#2994])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb3/igt@sysfs_clients@recycle.html
>     - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#2994])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-skl5/igt@sysfs_clients@recycle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@smoketest:
>     - {shard-dg1}:        [DMESG-WARN][105] ([i915#4892]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-dg1-13/igt@gem_ctx_persistence@smoketest.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-dg1-19/igt@gem_ctx_persistence@smoketest.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][107] ([i915#2481] / [i915#3070]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-iclb6/igt@gem_eio@unwedge-stress.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb3/igt@gem_eio@unwedge-stress.html
>     - {shard-tglu}:       [TIMEOUT][109] ([i915#3063] / [i915#3648]) -> [PASS][110]
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-tglu-8/igt@gem_eio@unwedge-stress.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglu-3/igt@gem_eio@unwedge-stress.html
>     - {shard-rkl}:        [TIMEOUT][111] ([i915#3063]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-rkl-5/igt@gem_eio@unwedge-stress.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-rkl-2/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - {shard-rkl}:        [INCOMPLETE][113] ([i915#3371]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-rkl-1/igt@gem_exec_capture@pi@rcs0.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-rkl-6/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_endless@dispatch@vecs0:
>     - {shard-tglu}:       [INCOMPLETE][115] ([i915#3778]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-tglu-5/igt@gem_exec_endless@dispatch@vecs0.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglu-4/igt@gem_exec_endless@dispatch@vecs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [FAIL][117] ([i915#2842]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][119] ([i915#2842]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-iclb:         [FAIL][121] ([i915#2842]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-iclb6/igt@gem_exec_fair@basic-pace@vcs0.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [FAIL][123] ([i915#2842]) -> [PASS][124] +1 similar issue
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp:
>     - {shard-rkl}:        [SKIP][125] ([i915#1397]) -> [PASS][126] +1 similar issue
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html
> 
>   * igt@i915_pm_rps@reset:
>     - {shard-dg1}:        [FAIL][127] ([i915#3719]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-dg1-16/igt@i915_pm_rps@reset.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-dg1-15/igt@i915_pm_rps@reset.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-snb:          [FAIL][129] ([i915#2521]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-snb5/igt@kms_async_flips@alternate-sync-async-flip.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-snb4/igt@kms_async_flips@alternate-sync-async-flip.html
>     - shard-tglb:         [FAIL][131] ([i915#2521]) -> [PASS][132]
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/shard-tglb2/igt@kms_async_flips@alternate-sync-async-flip.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/shard-tglb5/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_atomic@atomic_plane_dama
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22445/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
