Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8921A536634
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 18:57:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32D9610E368;
	Fri, 27 May 2022 16:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8563D10E0EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 May 2022 16:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653670643; x=1685206643;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tuY1vQ5I0Az7zyQf90ntGVNG2OMYi0gH2AIJL+YbbRE=;
 b=Dm57YYTCsuB4TcomX/+9dbZ3DvVzJzZhYEnEojpEt5qfVz2hOOz5lo1d
 HIRuq706VjBEF3z4srm5Qo735FHOQ2IqR/Lf02UyzIUVeNw1Q0NFsIMPt
 KHVxAjBlgl/SuV/GP4DG6d2c2XH6/SZX0pjl+PMDxiDtCMdd8iGNFH3rg
 cMV0VWH4AzeIEbpfsoc1V6OTlM5ZyQPo5vXhA3cvqiyi620WBhUHwMW6z
 5jpNLx5w2NhPuAvZiS7BYZSH8hfuGyiIR0fK9p9USOnXWpxGRHR0tzsSh
 7+IvJ0N9VWS2yPPscQqoKpArq7ZBOGsakrXM2BBM4Ss68XuhNSArIqiUF A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="274627068"
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="274627068"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 09:57:22 -0700
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="574927653"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 09:57:22 -0700
Date: Fri, 27 May 2022 09:57:21 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YpEC8RvqS0gmeunE@mdroper-desk1.amr.corp.intel.com>
References: <20220526064935.969225-1-balasubramani.vivekanandan@intel.com>
 <165357853377.19749.2071208767984433071@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165357853377.19749.2071208767984433071@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display/adl=5Fp=3A__Updates_to_HDMI_combo_PHY_voltage_swi?=
 =?utf-8?q?ng_table?=
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

On Thu, May 26, 2022 at 03:22:13PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display/adl_p: Updates to HDMI combo PHY voltage swing table
> URL   : https://patchwork.freedesktop.org/series/104393/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11702_full -> Patchwork_104393v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-next; thanks for the patch and review.

BTW, I think there might have been some small DP/eDP table changes on
ADL-P too (not as widespread as the changes to the HDMI table, just a
couple values here and there).  Can you double check whether we'll need
a follow-up patch to correct those tables too?

Thanks.


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
>   Here are the unknown changes that may have been introduced in Patchwork_104393v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation}:
>     - {shard-rkl}:        NOTRUN -> [SKIP][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * {igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1}:
>     - {shard-dg1}:        NOTRUN -> [SKIP][2] +3 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-dg1-19/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104393v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][3] ([i915#4991])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl6/igt@gem_create@create-massive.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-skl:          NOTRUN -> [FAIL][4] ([i915#2846])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl7/igt@gem_exec_fair@basic-deadline.html
>     - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#2846])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-glk5/igt@gem_exec_fair@basic-deadline.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-glk5/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][7] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#2842]) +2 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html
>     - shard-apl:          [PASS][10] -> [FAIL][11] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][12] ([i915#2842]) +1 similar issue
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html
>     - shard-kbl:          [PASS][13] -> [SKIP][14] ([fdo#109271])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-snb:          [PASS][15] -> [SKIP][16] ([fdo#109271]) +2 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gem_exec_params@no-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][17] ([fdo#109283])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb5/igt@gem_exec_params@no-blt.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-skl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#2190])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl8/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-iclb:         NOTRUN -> [SKIP][19] ([i915#4613])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb5/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#4613])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-apl1/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-skl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl8/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][22] ([i915#2658])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl4/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#4270]) +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb6/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#768])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb6/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gem_spin_batch@spin-each:
>     - shard-skl:          NOTRUN -> [FAIL][25] ([i915#2898])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl3/igt@gem_spin_batch@spin-each.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-iclb:         NOTRUN -> [SKIP][26] ([i915#3323])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb5/igt@gem_userptr_blits@dmabuf-sync.html
>     - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3323])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl4/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][28] ([i915#4991])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-apl2/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-skl:          NOTRUN -> [FAIL][29] ([i915#3318])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl4/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([i915#2856])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb6/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#1937])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-apl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#110892])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb6/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][33] ([i915#5286])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][34] ([i915#3743]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#110725] / [fdo#111614])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][36] ([i915#3763])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#1888])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-apl1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-glk7/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#3886])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-kbl4/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278] / [i915#3886])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb5/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#6095]) +4 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl10/igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109278]) +13 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb5/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#3886]) +16 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl10/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271]) +84 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-apl2/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_chamelium@dp-edid-change-during-suspend:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109284] / [fdo#111827]) +4 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb6/igt@kms_chamelium@dp-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium@vga-hpd:
>     - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-apl8/igt@kms_chamelium@vga-hpd.html
> 
>   * igt@kms_color@pipe-d-ctm-0-25:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109278] / [i915#1149])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb6/igt@kms_color@pipe-d-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-0-75:
>     - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-kbl4/igt@kms_color_chamelium@pipe-a-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
>     - shard-glk:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-glk7/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-max:
>     - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +27 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl8/igt@kms_color_chamelium@pipe-b-ctm-max.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          NOTRUN -> [FAIL][52] ([i915#2346] / [i915#533])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109274]) +2 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb6/igt@kms_flip@2x-flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][54] ([i915#180]) +1 similar issue
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#3701])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
>     - shard-iclb:         NOTRUN -> [SKIP][56] ([i915#2587])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109285])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb5/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +404 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl4/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-apl:          [PASS][59] -> [DMESG-WARN][60] ([i915#180])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move:
>     - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109280]) +10 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-glk:          NOTRUN -> [SKIP][62] ([fdo#109271]) +51 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-glk7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d:
>     - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#533])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-kbl4/igt@kms_pipe_crc_basic@read-crc-pipe-d.html
>     - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#533]) +1 similar issue
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl7/igt@kms_pipe_crc_basic@read-crc-pipe-d.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-kbl:          [PASS][65] -> [DMESG-WARN][66] ([i915#180])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>     - shard-skl:          NOTRUN -> [FAIL][67] ([fdo#108145] / [i915#265]) +6 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][68] -> [FAIL][69] ([fdo#108145] / [i915#265])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>     - shard-kbl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#658])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-glk:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#658])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-glk7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-kbl4/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#658])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-apl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#658]) +6 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl3/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [PASS][76] -> [SKIP][77] ([fdo#109441])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109441])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
>     - shard-skl:          [PASS][79] -> [DMESG-WARN][80] ([i915#1982]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-skl3/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl6/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html
> 
>   * igt@kms_vrr@flip-basic:
>     - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#3555])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb5/igt@kms_vrr@flip-basic.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-glk:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2437])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-glk7/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl7/igt@kms_writeback@writeback-pixel-formats.html
>     - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#2437])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb6/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@nouveau_crc@pipe-d-source-outp-inactive:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109278] / [i915#2530])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb5/igt@nouveau_crc@pipe-d-source-outp-inactive.html
> 
>   * igt@perf@gen12-mi-rpc:
>     - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271]) +20 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-kbl4/igt@perf@gen12-mi-rpc.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          NOTRUN -> [FAIL][87] ([i915#1722])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl8/igt@perf@polling-small-buf.html
> 
>   * igt@prime_nv_api@nv_self_import_to_different_fd:
>     - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109291])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb6/igt@prime_nv_api@nv_self_import_to_different_fd.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109295])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb5/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@syncobj_timeline@transfer-timeline-point:
>     - shard-apl:          NOTRUN -> [DMESG-FAIL][90] ([i915#5098])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-apl4/igt@syncobj_timeline@transfer-timeline-point.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-skl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#2994]) +3 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl4/igt@sysfs_clients@fair-0.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2994])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-kbl4/igt@sysfs_clients@fair-7.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-iclb:         NOTRUN -> [SKIP][93] ([i915#2994])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb6/igt@sysfs_clients@recycle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@info:
>     - {shard-rkl}:        [SKIP][94] ([i915#2582]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-rkl-1/igt@fbdev@info.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-rkl-6/igt@fbdev@info.html
> 
>   * igt@fbdev@nullptr:
>     - {shard-rkl}:        ([SKIP][96], [SKIP][97]) ([i915#2582]) -> [PASS][98]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-rkl-4/igt@fbdev@nullptr.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-rkl-1/igt@fbdev@nullptr.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-rkl-6/igt@fbdev@nullptr.html
> 
>   * igt@feature_discovery@psr2:
>     - {shard-rkl}:        [SKIP][99] ([i915#658]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-rkl-1/igt@feature_discovery@psr2.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-rkl-6/igt@feature_discovery@psr2.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          [FAIL][101] ([i915#2846]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][103] ([i915#2842]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [FAIL][105] ([i915#2842]) -> [PASS][106] +1 similar issue
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_flush@basic-wb-rw-default:
>     - shard-snb:          [SKIP][107] ([fdo#109271]) -> [PASS][108] +1 similar issue
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-snb6/igt@gem_exec_flush@basic-wb-rw-default.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-snb7/igt@gem_exec_flush@basic-wb-rw-default.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked-all:
>     - shard-skl:          [INCOMPLETE][109] ([i915#5843]) -> [PASS][110]
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-skl3/igt@gem_exec_whisper@basic-fds-forked-all.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl6/igt@gem_exec_whisper@basic-fds-forked-all.html
> 
>   * igt@gem_exec_whisper@basic-fds-priority-all:
>     - {shard-tglu}:       [INCOMPLETE][111] ([i915#6044]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-tglu-5/igt@gem_exec_whisper@basic-fds-priority-all.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-tglu-4/igt@gem_exec_whisper@basic-fds-priority-all.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [DMESG-WARN][113] ([i915#5566] / [i915#716]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-apl2/igt@gen9_exec_parse@allowed-single.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-apl1/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rpm@drm-resources-equal:
>     - {shard-rkl}:        [SKIP][115] ([fdo#109308]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-rkl-1/igt@i915_pm_rpm@drm-resources-equal.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp:
>     - {shard-dg1}:        [SKIP][117] ([i915#5174]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - {shard-rkl}:        [SKIP][119] ([i915#1845] / [i915#4098]) -> [PASS][120] +9 similar issues
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-rkl-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
>     - {shard-rkl}:        [SKIP][121] ([fdo#112022] / [i915#4070]) -> [PASS][122] +2 similar issues
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
> 
>   * igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge:
>     - {shard-rkl}:        [SKIP][123] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][124] +1 similar issue
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - {shard-rkl}:        [SKIP][125] ([fdo#111825] / [i915#4070]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-rkl-1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
> 
>   * igt@kms_cursor_legacy@pipe-c-forked-bo:
>     - {shard-rkl}:        [SKIP][127] ([i915#4070]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-forked-bo.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-forked-bo.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
>     - {shard-rkl}:        [SKIP][129] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [INCOMPLETE][131] ([i915#180] / [i915#1982] / [i915#5849]) -> [PASS][132]
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:
>     - shard-glk:          [FAIL][133] ([i915#79]) -> [PASS][134]
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-apl:          [DMESG-WARN][135] ([i915#180]) -> [PASS][136] +5 similar issues
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-dp1:
>     - shard-kbl:          [INCOMPLETE][137] ([i915#3614]) -> [PASS][138]
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-kbl3/igt@kms_flip@flip-vs-suspend@b-dp1.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-kbl4/igt@kms_flip@flip-vs-suspend@b-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:
>     - {shard-rkl}:        [SKIP][139] ([i915#1849] / [i915#4098]) -> [PASS][140] +14 similar issues
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>     - {shard-rkl}:        ([SKIP][141], [SKIP][142]) ([i915#1849] / [i915#4098]) -> [PASS][143] +1 similar issue
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-rkl-1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-rkl-3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [SKIP][144] ([fdo#109441]) -> [PASS][145] +2 similar issues
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr@sprite_render:
>     - {shard-rkl}:        [SKIP][146] ([i915#1072]) -> [PASS][147]
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-rkl-1/igt@kms_psr@sprite_render.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-rkl-6/igt@kms_psr@sprite_render.html
> 
>   * igt@kms_universal_plane@disable-primary-vs-flip-pipe-a:
>     - {shard-rkl}:        [SKIP][148] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-rkl-1/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-rkl-6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html
> 
>   * igt@perf@invalid-oa-format-id:
>     - {shard-dg1}:        [SKIP][150] ([i915#5608]) -> [PASS][151] +1 similar issue
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-dg1-19/igt@perf@invalid-oa-format-id.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-dg1-15/igt@perf@invalid-oa-format-id.html
> 
>   * igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-submitted-signaled:
>     - {shard-dg1}:        [SKIP][152] ([i915#2575]) -> [PASS][153] +43 similar issues
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-dg1-19/igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-submitted-signaled.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-dg1-15/igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-submitted-signaled.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [DMESG-WARN][154] ([i915#5614]) -> [SKIP][155] ([i915#4525])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [SKIP][156] ([i915#4525]) -> [DMESG-WARN][157] ([i915#5614]) +1 similar issue
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-iclb5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [DMESG-FAIL][158] ([i915#5614]) -> [SKIP][159] ([i915#4525])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          [SKIP][160] ([fdo#109271] / [i915#1888]) -> [SKIP][161] ([fdo#109271]) +1 similar issue
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-skl6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl10/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-blue-to-red:
>     - shard-skl:          [SKIP][162] ([fdo#109271] / [fdo#111827] / [i915#1888]) -> [SKIP][163] ([fdo#109271] / [fdo#111827])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-skl6/igt@kms_color_chamelium@pipe-c-ctm-blue-to-red.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl10/igt@kms_color_chamelium@pipe-c-ctm-blue-to-red.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][164] ([i915#658]) -> [SKIP][165] ([i915#2920])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-iclb6/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][166] ([i915#2920]) -> [SKIP][167] ([fdo#111068] / [i915#658])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-skl:          ([FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175]) ([i915#2029] / [i915#3002] / [i915#4312] / [i915#5257])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-skl10/igt@runner@aborted.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-skl7/igt@runner@aborted.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-skl8/igt@runner@aborted.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11702/shard-skl3/igt@runner@aborted.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl3/igt@runner@aborted.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl10/igt@runner@aborted.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl8/igt@runner@aborted.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/shard-skl6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
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
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2898]: https://gitlab.freedesktop.org/drm/intel/issues/2898
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
>   [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
>   [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
>   [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
>   [i915#5843]: https://gitlab.freedesktop.org/drm/intel/issues/5843
>   [i915#5849]: https://gitlab.freedesktop.org/drm/intel/issues/5849
>   [i915#6044]: https://gitlab.freedesktop.org/drm/intel/issues/6044
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11702 -> Patchwork_104393v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11702: 16f4a53e2ab9d4d3e6ffcbf0610f320afc90c888 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6493: fbf50cdeb06c4bb32faa2fbed66a6910ed248060 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104393v1: 16f4a53e2ab9d4d3e6ffcbf0610f320afc90c888 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104393v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
